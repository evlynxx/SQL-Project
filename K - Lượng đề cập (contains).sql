-- LƯỢNG ĐỀ CẬP TỪ CỘT P > U -- 3s

select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Hyundai Accent
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "accent" or "#hyundaiaccent" or "????hyundai#accent" or "????accent" or "#hyundai#accent" or "#accent2021" or "??accent" or "#accent" or "hyundai_accent_2021" or "#hundai_accent_2021" or "#accent_cu" or "#hyundai#accent#" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Hyundai Elantra
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "elantra" or "elantra????" or "????hyundai#elantra" or "#hyundai#elantra" or "#elantra" or "hyundai_elantra" or "??elantra" or "#hyundaielantra" or " ✅Elantra" or "elantra/avante" or "#hyundai_elantra" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Hyundai i10 HB
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "grand i10" or "hyundai i10" or "i10" or "#i10" or "#i10giatot" or "#grandi10" or "????hyundai#i10" or "??grand i10" or "hyundai_i10" or "??i10" or "#hyundaii10" or "#hyundai_i10" or "#i10hatback" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Hyundai Kona
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "kona" or "???hyundai#kona" or "#hyundai#kona" or "#hyundaikona" or "#kona" or "hyundai_kona" or "??kona" or "#kona2_0" or "✅Kona" or "#hyundai_kona" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Hyundai Santa Fe
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "santafe" or "santa fe" or "#santafe" or "#santafe2021" or "#hyundaisantafe" or "#hyundaisantafe2021" or "#santafenew" or "#ramatsantafe" or "✅Santafe" or "#hyundai_santafe" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Kia Cerato
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "cerato" or "cer" or "#kiacerato" or "#cerato" or "#kia_cerato" or "#cậpnhậtgiáxe#cerato#" or "#kia_cerato_luxury" or "#ceratomt" or "#cerato_mt_sốsàn" or "#cerato2021" or "#giá_cerato" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Kia Morning
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "morning" or "#kiamorning" or "#morning" or "#newmorning" or "#kianewmorinng" or "#kia_morning" or "#kia_new_morning" or "#morning_allnew" or "#cậpnhậtgiáxe#kiamorning#" or "#kia_morning_all_new" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Kia Optima
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "optima" or "#optima" or "#kiaoptima" or "k5" or "optima/k5" or "#hộikiaoptima" or "#xekiaoptima" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Kia Rondo
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "rondo" or "#rondo" or "#kiarondo" or "carens" or "✅ ?? Kia Rondo" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Kia Sedona
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "sedona" or "#sedona" or "#kiasedona" or "carnival" or "#kia_sedona_dath" or "??kia sedona" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Kia Seltos
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "seltos" or "#seltos" or "#kiaseltos" or "#kia_seltos" or "#seltos2021" or "??selto" or "#seltoskia2021" or "??#kiaseltos" or "#seltospremium" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Kia Soluto
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "soluto" or "#soluto" or "#kiaseluto" or "#kia_soluto" or "??kia soluto" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Kia Sorento
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "sorento" or "#sorento" or "#kiasorento" or "#kia_sorento" or "soẻnto" or "??sorento" or "#kia#sorento#" or "#kiasorentoallnew" or "#sorentoallnew" or "#sorentohoàntoànmới" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Mitsubishi Attrage
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "attrage" or "#attrage2021" or "#attrage" or "??attrage" or "#newattrage" or "#NewAttrageCVTPremium" or "#attragemt" or "#attragecvt" or "#mitsubishi#attrage#" or "#mitsubishi_attrage" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Mitsubishi Pajero Sport
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "pajero sport" or "#pajerosport" or "#newpajerosport" or "#pajero" or "pạero" or "#pajero_sport" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Mitsubishi Xpander Cross (chưa tính số liệu của Xpander + Xpander Cross)
         from Nam
         where [Sắc thái] like '%K%' and 
				contains([Tóm tắt], '"xpander cross" or "#xpander_cross2021" or "#mitsubishixpandercross" or "#mitsubishixpandercross2021" or "#xpandercross" or "#xpander_cross" or "#xpandercross2021"') and not
				contains([Tóm tắt],'"xpander" or "#xpander" or "#mitsubishixpander" or "#mitsubishixpander2011" or "#mitsubishixpander_2011" or "#xpander2021" or "#xpander_2021" or "#xpander_AT" or "#xpander_MT" or "#NewXpander" or "expander"')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Mitsubishi Xpander (chưa tính số liệu của Xpander + Xpander Cross)
         from Nam
         where [Sắc thái] like '%K%' and
				contains([Tóm tắt],'"xpander" or "#xpander" or "#mitsubishixpander" or "#mitsubishixpander2011" or "#mitsubishixpander_2011" or "#xpander2021" or "#xpander_2021" or "#xpander_AT" or "#xpander_MT" or "#NewXpander" or "expander"') and not
				contains([Tóm tắt], '"xpander cross" or "#xpander_cross2021" or "#mitsubishixpandercross" or "#mitsubishixpandercross2021" or "#xpandercross" or "#xpander_cross" or "#xpandercross2021" or "#xpander_cross_2021"')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Suzuki Ciaz
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "ciaz" or "#ciaz" or "#ciaz2020" or "#suzuki_ciaz" or "ciaz????" or "#suzukiciaz" or "#suzukiciaz2020" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Suzuki Ertiga
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "ertiga" or "#ertiga" or "??ertiga" or "egtiga" or "#ertigasport" or "#suzuki_ertiga" or "etigar" or "#sosanhsl7-ertiga" or "#suzukiertiga" or "#suzukiertiga2021" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn -- Suzuki XL-7
         from Nam
         where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "suzuki xl7" or "xl7" or "#xl7" or "xl7??????" or "Ertiga/XL7" or "#suzuki_xl7" or "#suzuki xl7" or "#suzukixl7" or "?? suzuki xl7" or "all new xl7" or "??#suzuki_xl7" ')) as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B

union all -- từ đây là THC

select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn
         from Nam
         where [Sắc thái] like '%M%' and [Thương hiệu] like '%HYUN%' and REPLACE([Sản phẩm],',','') ='') as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn
         from Nam
         where [Sắc thái] like '%M%' and [Thương hiệu] like '%KIA%' and REPLACE([Sản phẩm],',','') ='') as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn
         from Nam
         where [Sắc thái] like '%M%' and [Thương hiệu] like '%MITSU%' and REPLACE([Sản phẩm],',','') ='') as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn
         from Nam
         where [Sắc thái] like '%M%' and [Thương hiệu] like '%SUZ%' and REPLACE([Sản phẩm],',','') ='') as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B
union all
select ([Báo điện tử] + [Bài đăng Facebook cá nhân] + [Bài đăng fanpage] + Youtube + [Diễn đàn]) as 'Thảo luận' ,[Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube
from
        (select [Tóm tắt], Nguồn
         from Nam
         where [Sắc thái] like '%M%' and [Thương hiệu] like '%VIN%' and REPLACE([Sản phẩm],',','') ='') as M_Data
pivot
        (count([Tóm tắt]) for Nguồn in ([Báo điện tử], [Bài đăng Facebook cá nhân], [Bài đăng fanpage], [Diễn đàn], Youtube)) as B;

-- LƯỢNG TƯƠNG TÁC TỪ CỘT W > Y -- 1:32s (a + b)

select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Hyundai Accent
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "accent" or "#hyundaiaccent" or "????hyundai#accent" or "????accent" or "#hyundai#accent" or "#accent2021" or "??accent" or "#accent" or "hyundai_accent_2021" or "#hundai_accent_2021" or "#accent_cu" or "#hyundai#accent#" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Hyundai Elantra
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "elantra" or "elantra????" or "????hyundai#elantra" or "#hyundai#elantra" or "#elantra" or "hyundai_elantra" or "??elantra" or "#hyundaielantra" or " ✅Elantra" or "elantra/avante" or "#hyundai_elantra" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Hyundai i10 HB
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "grand i10" or "hyundai i10" or "i10" or "#i10" or "#i10giatot" or "#grandi10" or "????hyundai#i10" or "??grand i10" or "hyundai_i10" or "??i10" or "#hyundaii10" or "#hyundai_i10" or "#i10hatback" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Hyundai Kona
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "kona" or "???hyundai#kona" or "#hyundai#kona" or "#hyundaikona" or "#kona" or "hyundai_kona" or "??kona" or "#kona2_0" or "✅Kona" or "#hyundai_kona" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Hyundai Santa Fe
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "santafe" or "santa fe" or "#santafe" or "#santafe2021" or "#hyundaisantafe" or "#hyundaisantafe2021" or "#santafenew" or "#ramatsantafe" or "✅Santafe" or "#hyundai_santafe" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Kia Cerato
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "cerato" or "cer" or "#kiacerato" or "#cerato" or "#kia_cerato" or "#cậpnhậtgiáxe#cerato#" or "#kia_cerato_luxury" or "#ceratomt" or "#cerato_mt_sốsàn" or "#cerato2021" or "#giá_cerato" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Kia Morning
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "morning" or "#kiamorning" or "#morning" or "#newmorning" or "#kianewmorinng" or "#kia_morning" or "#kia_new_morning" or "#morning_allnew" or "#cậpnhậtgiáxe#kiamorning#" or "#kia_morning_all_new" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Kia Optima
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "optima" or "#optima" or "#kiaoptima" or "k5" or "optima/k5" or "#hộikiaoptima" or "#xekiaoptima" or "#GroupKiaOptima" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Kia Rondo
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "rondo" or "#rondo" or "#kiarondo" or "carens" or "✅ ?? Kia Rondo" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Kia Sedona
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "sedona" or "#sedona" or "#kiasedona" or "carnival" or "#kia_sedona_dath" or "??kia sedona" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Kia Seltos
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "seltos" or "#seltos" or "#kiaseltos" or "#kia_seltos" or "#seltos2021" or "??selto" or "#seltoskia2021" or "??#kiaseltos" or "#seltospremium" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Kia Soluto
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "soluto" or "#soluto" or "#kiaseluto" or "#kia_soluto" or "??kia soluto" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Kia Sorento
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "sorento" or "#sorento" or "#kiasorento" or "#kia_sorento" or "soẻnto" or "??sorento" or "#kia#sorento#" or "#ALLNEWSORENTO" or "#kiasorentoallnew" or "#sorentoallnew" or "#sorentohoàntoànmới" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Mitsubishi Attrage
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "attrage" or "#attrage2021" or "#attrage" or "??attrage" or "#newattrage" or "#NewAttrageCVTPremium" or "#attragemt" or "#attragecvt" or "#mitsubishi#attrage#" or "#mitsubishi_attrage" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Mitsubishi Pajero Sport
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "pajero sport" or "#pajerosport" or "#newpajerosport" or "#pajero" or "pạero" or "#pajero_sport" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Mitsubishi Xpander Cross
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "xpander cross" or "#xpander_cross2021" or "#mitsubishixpandercross" or "#mitsubishixpandercross2021" or "#xpandercross" or "#xpander_cross" or "#xpandercross2021" or "#xpander_cross_2021" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Mitsubishi Xpander
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "xpander" or "#xpander" or "#mitsubishixpander" or "#mitsubishixpander2011" or "#mitsubishixpander_2011" or "#xpander2021" or "#xpander_2021" or "#xpander_AT" or "#xpander_MT" or "#NewXpander" or "expander" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Suzuki Ciaz
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "ciaz" or "#ciaz" or "#ciaz2020" or "#suzuki_ciaz" or "ciaz????" or "#suzukiciaz" or "#suzukiciaz2020" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Suzuki Ertiga
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "ertiga" or "#ertiga" or "??ertiga" or "egtiga" or "#ertigasport" or "#suzuki_ertiga" or "etigar" or "#sosanhsl7-ertiga" or "#suzukiertiga" or "#suzukiertiga2021" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Suzuki XL-7
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "suzuki xl7" or "xl7" or "#xl7" or "xl7??????" or "Ertiga/XL7" or "#suzuki_xl7" or "#suzuki xl7" or "#suzukixl7" or "?? suzuki xl7" or "all new xl7" or "??#suzuki_xl7" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Vinfast Fadil
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "FADIL" or "#Fadil" or "#fadil_2021" or "#vinfastfadil" or "#giaxefadi" or "#fadil2021" or "#giáxevinfastfadil" or "#giáxefadil" or "#láithửfadil" or "#vinfast_fadil" or "#giavinfastfadil" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Vinfast Lux A
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "#LuxA20" or "#VinFastLuxA" or "#giáxevinfastluxa" or "#xevinfastluxa20" or "#vinfast_luxa20" or "A2.0" or "LuxA" or "#VinFastLuxAdanang" or "#LuxAdanang" or "LuxA2.0" ') and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share -- Vinfast Lux SA
from Nam
where [Sắc thái] like '%K%' and contains([Tóm tắt], ' "SA2.0" or "#Luxsa" or "#LuxSA20" or "#VinFastLuxSA" or "#giáxevinfastluxsa" or "#vinfast_luxsa20" or "#LuxSA2021" or "LuxSA2.0" or "LuxSa" or "#vinfast_lux_sa" or "#LuxSAdanang" ') and Nguồn like '%fanpage'

union all -- từ đây là THC

select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share
from Nam
where [Sắc thái] like '%M%' and [Thương hiệu] like '%HYUN%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share
from Nam
where [Sắc thái] like '%M%' and [Thương hiệu] like '%KIA%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share
from Nam
where [Sắc thái] like '%M%' and [Thương hiệu] like '%MITSU%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share
from Nam
where [Sắc thái] like '%M%' and [Thương hiệu] like '%SUZ%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like '%fanpage'
union all
select SUM([Like]) 'Like', SUM(Comment) Comment, SUM(Share) Share
from Nam
where [Sắc thái] like '%M%' and [Thương hiệu] like '%VIN%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like '%fanpage';

-- LƯỢNG ĐỀ CẬP TRONG TITLE CỘT Z -- 1:32s (a + b)

select COUNT([Title]) Title -- Hyundai Accent
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "accent" or "#hyundaiaccent" or "????hyundai#accent" or "????accent" or "#hyundai#accent" or "#accent2021" or "??accent" or "#accent" or "hyundai_accent_2021" or "#hundai_accent_2021" or "#accent_cu" or "#hyundai#accent#" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Hyundai Elantra
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "elantra" or "elantra????" or "????hyundai#elantra" or "#hyundai#elantra" or "#elantra" or "hyundai_elantra" or "??elantra" or "#hyundaielantra" or " ✅Elantra" or "elantra/avante" or "#hyundai_elantra" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Hyundai i10 HB
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "grand i10" or "hyundai i10" or "i10" or "#i10" or "#i10giatot" or "#grandi10" or "????hyundai#i10" or "??grand i10" or "hyundai_i10" or "??i10" or "#hyundaii10" or "#hyundai_i10" or "#i10hatback" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Hyundai Kona
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "kona" or "???hyundai#kona" or "#hyundai#kona" or "#hyundaikona" or "#kona" or "hyundai_kona" or "??kona" or "#kona2_0" or "✅Kona" or "#hyundai_kona" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Hyundai Santa Fe
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "santafe" or "santa fe" or "#santafe" or "#santafe2021" or "#hyundaisantafe" or "#hyundaisantafe2021" or "#santafenew" or "#ramatsantafe" or "✅Santafe" or "#hyundai_santafe" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Kia Cerato
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "cerato" or "cer" or "#kiacerato" or "#cerato" or "#kia_cerato" or "#cậpnhậtgiáxe#cerato#" or "#kia_cerato_luxury" or "#ceratomt" or "#cerato_mt_sốsàn" or "#cerato2021" or "#giá_cerato" or "crt" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Kia Morning
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "morning" or "#kiamorning" or "#morning" or "#newmorning" or "#kianewmorinng" or "#kia_morning" or "#kia_new_morning" or "#morning_allnew" or "#cậpnhậtgiáxe#kiamorning#" or "#kia_morning_all_new" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Kia Optima
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "optima" or "#optima" or "#kiaoptima" or "k5" or "optima/k5" or "#hộikiaoptima" or "#xekiaoptima" or "#GroupKiaOptima" or "Kia K5" or "Optima 2020" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Kia Rondo
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "rondo" or "#rondo" or "#kiarondo" or "carens" or "✅ ?? Kia Rondo" or "KIA Rondo" or "Rondo…" or "Rondo GAT" or "Rondo- Carens" or "Rondo 2.0L GMT" or "Rondo 2.0L GAT" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Kia Sedona
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "sedona" or "#sedona" or "#kiasedona" or "carnival" or "#kia_sedona_dath" or "#kiacarnival" or "Sedona/Carnival" or "#KiaCarnival2022" or "#kiasedona2022" or "#sedona2022" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Kia Seltos
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "seltos" or "#seltos" or "#kiaseltos" or "#kia_seltos" or "#seltos2021" or "??selto" or "#seltoskia2021" or "??#kiaseltos" or "#seltospremium" or "??#SIÊU_PHẨM_KIA_SELTOS" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Kia Soluto
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "soluto" or "#soluto" or "#kiaseluto" or "#kia_soluto" or "Soluto 1.4AT" or "Kia Soluto" or "Kia Soluto MT" or "Kia Soluto AT" or "Soluto Deluxe" or "Soluto Luxury" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Kia Sorento
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "sorento" or "#sorento" or "#kiasorento" or "#kia_sorento" or "soẻnto" or "??sorento" or "#kia#sorento#" or "#ALLNEWSORENTO" or "#kiasorentoallnew" or "#sorentoallnew" or "#sorentohoàntoànmới" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Mitsubishi Attrage
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "attrage" or "#attrage2021" or "#attrage" or "??attrage" or "#newattrage" or "#NewAttrageCVTPremium" or "#attragemt" or "#attragecvt" or "#mitsubishi#attrage#" or "#mitsubishi_attrage" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Mitsubishi Pajero Sport
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "Pajero" or "#Pajerosport" or "#Pajero_Sport" or "#MitsubishiPajeroSport" or "#NewPajeroSport" or "#PajeroSportHanoi" or "#PajeroSport_2021" or "PẠERO" or "#Pajero2020" or "#PajeroSport2020" or "#PajeroSport2021" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Mitsubishi Xpander Cross
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "xpander cross" or "#xpander_cross2021" or "#mitsubishixpandercross" or "#mitsubishixpandercross2021" or "#xpandercross" or "#xpander_cross" or "#xpandercross2021" or "#xpander_cross_2021" or "CROSS2021" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Mitsubishi Xpander
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "xpander" or "#xpander" or "#mitsubishixpander" or "#mitsubishixpander2011" or "#mitsubishixpander_2011" or "#xpander2021" or "#xpander_2021" or "#xpander_AT" or "#xpander_MT" or "#NewXpander" or "expander" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Suzuki Ciaz
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "ciaz" or "#ciaz" or "#ciaz2020" or "#suzuki_ciaz" or "ciaz????" or "#suzukiciaz" or "#suzukiciaz2020" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Suzuki Ertiga
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "ertiga" or "#ertiga" or "??ertiga" or "egtiga" or "#ertigasport" or "#suzuki_ertiga" or "etigar" or "#sosanhsl7-ertiga" or "#suzukiertiga" or "#suzukiertiga2021" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Suzuki XL-7
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "suzuki xl7" or "xl7" or "#xl7" or "xl7??????" or "Ertiga/XL7" or "#suzuki_xl7" or "#suzuki xl7" or "#suzukixl7" or "?? suzuki xl7" or "all new xl7" or "??#suzuki_xl7" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Vinfast Fadil
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "FADIL" or "#Fadil" or "#fadil_2021" or "#vinfastfadil" or "#giaxefadi" or "#fadil2021" or "#giáxevinfastfadil" or "#giáxefadil" or "#láithửfadil" or "#vinfast_fadil" or "#giavinfastfadil" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Vinfast Lux A
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "#LuxA20" or "#VinFastLuxA" or "#giáxevinfastluxa" or "#xevinfastluxa20" or "#vinfast_luxa20" or "A2.0" or "LuxA" or "#VinFastLuxAdanang" or "#LuxAdanang" or "LuxA2.0" ') and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title -- Vinfast Lux SA
from Nam
where [Sắc thái] like '%K%' and contains([Title], ' "SA2.0" or "#Luxsa" or "#LuxSA20" or "#VinFastLuxSA" or "#giáxevinfastluxsa" or "#vinfast_luxsa20" or "#LuxSA2021" or "LuxSA2.0" or "LuxSa" or "#vinfast_lux_sa" or "#LuxSAdanang" ') and Nguồn like 'Báo%'


union all -- từ đây là THC

select COUNT([Title]) Title
from Nam
where [Sắc thái] like '%M%' and [Title] like '%HYUN%' and [Thương hiệu] like '%HYUN%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title
from Nam
where [Sắc thái] like '%M%' and [Title] like '%KIA%' and [Thương hiệu] like '%KIA%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title
from Nam
where [Sắc thái] like '%M%' and [Title] like '%MITSU%' and [Thương hiệu] like '%MITSU%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title
from Nam
where [Sắc thái] like '%M%' and [Title] like '%SUZ%' and [Thương hiệu] like '%SUZ%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like 'Báo%'
union all
select COUNT([Title]) Title
from Nam
where [Sắc thái] like '%M%' and [Title] like '%VIN%' and [Thương hiệu] like '%VIN%' and REPLACE([Sản phẩm],',','') ='' and Nguồn like 'Báo%';
