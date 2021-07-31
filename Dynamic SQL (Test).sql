-- TOP 4 KC (M-SEDAN)
declare @NDC_KCT nvarchar(max), @NDC_MXH nvarchar(max), @Pos_KCT nvarchar(max), @Pos_MXH nvarchar(max), @Neg_KCT nvarchar(max), @Neg_MXH nvarchar(max), @sql nvarchar(max);
	set @NDC_KCT = N'';
	set @NDC_MXH = N'';
	set @Pos_KCT = N'';
	set @Pos_MXH = N'';
	set @Neg_KCT = N'';
	set @Neg_MXH = N'';

-- Top 4 KC / ND Chung
select @NDC_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Sedan' and [Nguồn] like 'Báo%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @NDC_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Sedan' and [Nguồn] <> N'Báo điện tử'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

-- Top 4 KC / Tích cực
select @Pos_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Sedan' and [Nguồn] like 'Báo%' and [Sắc thái] like 'Tích%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @Pos_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Sedan' and [Nguồn] <> N'Báo điện tử' and [Sắc thái] like 'Tích%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

-- Top 4 KC / Tiêu cực
select @Neg_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Sedan' and [Nguồn] like 'Báo%' and [Sắc thái] like 'Tiêu%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @Neg_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Sedan' and [Nguồn] <> N'Báo điện tử' and [Sắc thái] like 'Tiêu%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

set @sql = N'
select * from
(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Sedan'' and [Nguồn] like ''Báo%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@NDC_KCT, 1, 2, '') + N')) as A) as NDC_KCT

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Sedan'' and [Nguồn] <> N''Báo điện tử'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@NDC_MXH, 1, 2, '') + N')) as A) as NDC_MXH
on NDC_KCT.[Sản phẩm] = NDC_MXH.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Sedan'' and [Nguồn] like ''Báo%'' and [Sắc thái] like ''Tích%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Pos_KCT, 1, 2, '') + N')) as A) as Pos_KCT
on NDC_MXH.[Sản phẩm] = Pos_KCT.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Sedan'' and [Nguồn] <> N''Báo điện tử'' and [Sắc thái] like ''Tích%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Pos_MXH, 1, 2, '') + N')) as A) as Pos_MXH
on NDC_MXH.[Sản phẩm] = Pos_MXH.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Sedan'' and [Nguồn] like ''Báo%'' and [Sắc thái] like ''Tiêu%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Neg_KCT, 1, 2, '') + N')) as A) as Neg_KCT
on NDC_MXH.[Sản phẩm] = Neg_KCT.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Sedan'' and [Nguồn] <> N''Báo điện tử'' and [Sắc thái] like ''Tiêu%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Neg_MXH, 1, 2, '') + N')) as A) as Neg_MXH
on NDC_MXH.[Sản phẩm] = Neg_MXH.[Sản phẩm]
order by NDC_MXH.[Sản phẩm]';

print @sql;
exec (@sql);

-- TOP 4 KC (M-HATCHBACK)
declare @NDC_KCT nvarchar(max), @NDC_MXH nvarchar(max), @Pos_KCT nvarchar(max), @Pos_MXH nvarchar(max), @Neg_KCT nvarchar(max), @Neg_MXH nvarchar(max), @sql nvarchar(max);
	set @NDC_KCT = N'';
	set @NDC_MXH = N'';
	set @Pos_KCT = N'';
	set @Pos_MXH = N'';
	set @Neg_KCT = N'';
	set @Neg_MXH = N'';

-- Top 4 KC / ND Chung
select @NDC_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Hatchback' and [Nguồn] like 'Báo%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @NDC_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Hatchback' and [Nguồn] <> N'Báo điện tử'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

-- Top 4 KC / Tích cực
select @Pos_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Hatchback' and [Nguồn] like 'Báo%' and [Sắc thái] like 'Tích%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @Pos_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Hatchback' and [Nguồn] <> N'Báo điện tử' and [Sắc thái] like 'Tích%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

-- Top 4 KC / Tiêu cực
select @Neg_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Hatchback' and [Nguồn] like 'Báo%' and [Sắc thái] like 'Tiêu%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @Neg_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%Hatchback' and [Nguồn] <> N'Báo điện tử' and [Sắc thái] like 'Tiêu%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

set @sql = N'
select * from
(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Hatchback'' and [Nguồn] like ''Báo%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@NDC_KCT, 1, 2, '') + N')) as A) as NDC_KCT

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Hatchback'' and [Nguồn] <> N''Báo điện tử'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@NDC_MXH, 1, 2, '') + N')) as A) as NDC_MXH
on NDC_KCT.[Sản phẩm] = NDC_MXH.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Hatchback'' and [Nguồn] like ''Báo%'' and [Sắc thái] like ''Tích%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Pos_KCT, 1, 2, '') + N')) as A) as Pos_KCT
on NDC_MXH.[Sản phẩm] = Pos_KCT.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Hatchback'' and [Nguồn] <> N''Báo điện tử'' and [Sắc thái] like ''Tích%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Pos_MXH, 1, 2, '') + N')) as A) as Pos_MXH
on NDC_MXH.[Sản phẩm] = Pos_MXH.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Hatchback'' and [Nguồn] like ''Báo%'' and [Sắc thái] like ''Tiêu%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Neg_KCT, 1, 2, '') + N')) as A) as Neg_KCT
on NDC_MXH.[Sản phẩm] = Neg_KCT.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%Hatchback'' and [Nguồn] <> N''Báo điện tử'' and [Sắc thái] like ''Tiêu%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Neg_MXH, 1, 2, '') + N')) as A) as Neg_MXH
on NDC_MXH.[Sản phẩm] = Neg_MXH.[Sản phẩm]
order by NDC_MXH.[Sản phẩm]';

print @sql;
exec (@sql);

-- TOP 4 KC (M-CUV/SUV)
declare @NDC_KCT nvarchar(max), @NDC_MXH nvarchar(max), @Pos_KCT nvarchar(max), @Pos_MXH nvarchar(max), @Neg_KCT nvarchar(max), @Neg_MXH nvarchar(max), @sql nvarchar(max);
	set @NDC_KCT = N'';
	set @NDC_MXH = N'';
	set @Pos_KCT = N'';
	set @Pos_MXH = N'';
	set @Neg_KCT = N'';
	set @Neg_MXH = N'';

-- Top 4 KC / ND Chung
select @NDC_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%UV' and [Nguồn] like 'Báo%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @NDC_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%UV' and [Nguồn] <> N'Báo điện tử'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

-- Top 4 KC / Tích cực
select @Pos_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%UV' and [Nguồn] like 'Báo%' and [Sắc thái] like 'Tích%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @Pos_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%UV' and [Nguồn] <> N'Báo điện tử' and [Sắc thái] like 'Tích%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

-- Top 4 KC / Tiêu cực
select @Neg_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%UV' and [Nguồn] like 'Báo%' and [Sắc thái] like 'Tiêu%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @Neg_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like '%UV' and [Nguồn] <> N'Báo điện tử' and [Sắc thái] like 'Tiêu%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

set @sql = N'
select * from
(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%UV'' and [Nguồn] like ''Báo%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@NDC_KCT, 1, 2, '') + N')) as A) as NDC_KCT

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%UV'' and [Nguồn] <> N''Báo điện tử'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@NDC_MXH, 1, 2, '') + N')) as A) as NDC_MXH
on NDC_KCT.[Sản phẩm] = NDC_MXH.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%UV'' and [Nguồn] like ''Báo%'' and [Sắc thái] like ''Tích%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Pos_KCT, 1, 2, '') + N')) as A) as Pos_KCT
on NDC_MXH.[Sản phẩm] = Pos_KCT.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%UV'' and [Nguồn] <> N''Báo điện tử'' and [Sắc thái] like ''Tích%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Pos_MXH, 1, 2, '') + N')) as A) as Pos_MXH
on NDC_MXH.[Sản phẩm] = Pos_MXH.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%UV'' and [Nguồn] like ''Báo%'' and [Sắc thái] like ''Tiêu%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Neg_KCT, 1, 2, '') + N')) as A) as Neg_KCT
on NDC_MXH.[Sản phẩm] = Neg_KCT.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''%UV'' and [Nguồn] <> N''Báo điện tử'' and [Sắc thái] like ''Tiêu%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Neg_MXH, 1, 2, '') + N')) as A) as Neg_MXH
on NDC_MXH.[Sản phẩm] = Neg_MXH.[Sản phẩm]
order by NDC_MXH.[Sản phẩm]';

print @sql;
exec (@sql);

-- TOP 4 KC (M-Pickup)
declare @NDC_KCT nvarchar(max), @NDC_MXH nvarchar(max), @Pos_KCT nvarchar(max), @Pos_MXH nvarchar(max), @Neg_KCT nvarchar(max), @Neg_MXH nvarchar(max), @sql nvarchar(max);
	set @NDC_KCT = N'';
	set @NDC_MXH = N'';
	set @Pos_KCT = N'';
	set @Pos_MXH = N'';
	set @Neg_KCT = N'';
	set @Neg_MXH = N'';

-- Top 4 KC / ND Chung
select @NDC_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like 'Pick%' and [Nguồn] like 'Báo%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @NDC_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like 'Pick%' and [Nguồn] <> N'Báo điện tử'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

-- Top 4 KC / Tích cực
select @Pos_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like 'Pick%' and [Nguồn] like 'Báo%' and [Sắc thái] like 'Tích%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @Pos_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like 'Pick%' and [Nguồn] <> N'Báo điện tử' and [Sắc thái] like 'Tích%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

-- Top 4 KC / Tiêu cực
select @Neg_KCT += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like 'Pick%' and [Nguồn] like 'Báo%' and [Sắc thái] like 'Tiêu%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

select @Neg_MXH += N', ' + quotename([Khía cạnh])
	from (select top 4 [Khía cạnh]
			from M_LABEL_T5
			where [PHẦN] like 'Pick%' and [Nguồn] <> N'Báo điện tử' and [Sắc thái] like 'Tiêu%'
			group by [Khía cạnh]
			order by count([Khía cạnh]) desc) as X;

set @sql = N'
select * from
(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''Pick%'' and [Nguồn] like ''Báo%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@NDC_KCT, 1, 2, '') + N')) as A) as NDC_KCT

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''Pick%'' and [Nguồn] <> N''Báo điện tử'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@NDC_MXH, 1, 2, '') + N')) as A) as NDC_MXH
on NDC_KCT.[Sản phẩm] = NDC_MXH.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''Pick%'' and [Nguồn] like ''Báo%'' and [Sắc thái] like ''Tích%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Pos_KCT, 1, 2, '') + N')) as A) as Pos_KCT
on NDC_MXH.[Sản phẩm] = Pos_KCT.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''Pick%'' and [Nguồn] <> N''Báo điện tử'' and [Sắc thái] like ''Tích%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Pos_MXH, 1, 2, '') + N')) as A) as Pos_MXH
on NDC_MXH.[Sản phẩm] = Pos_MXH.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''Pick%'' and [Nguồn] like ''Báo%'' and [Sắc thái] like ''Tiêu%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Neg_KCT, 1, 2, '') + N')) as A) as Neg_KCT
on NDC_MXH.[Sản phẩm] = Neg_KCT.[Sản phẩm]

full outer join

(select * from
	(select [Sản phẩm], [Khía cạnh], [Nguồn]
	 from M_LABEL_T5
	 where [Phần] like ''Pick%'' and [Nguồn] <> N''Báo điện tử'' and [Sắc thái] like ''Tiêu%'') as B
pivot
	(count([Nguồn]) for [Khía cạnh] in (' + stuff(@Neg_MXH, 1, 2, '') + N')) as A) as Neg_MXH
on NDC_MXH.[Sản phẩm] = Neg_MXH.[Sản phẩm]
order by NDC_MXH.[Sản phẩm]';

print @sql;
exec (@sql);