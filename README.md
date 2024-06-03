# apartment_database_management

Projenin Amacı ve Kapsamı:

Bu proje, bir apartman veya site yönetim sistemi için tasarlanmış bir veritabanı modelini tanıtmaktadır. Veritabanı, 
daire sahipleri, daireler, binalar, sakinler, personel ve görevler gibi önemli bileşenleri içermektedir
Amacı:

Bu proje, bir apartman veya site yönetiminin günlük işleyişini etkinleştirmeyi ve yönetmeyi amaçlamaktadır. 
Veritabanı, çeşitli bileşenlerin (daire sahipleri, sakinler, personel) bilgilerini tutarak, güvenli ve düzenli bir yaşam alanı 
sağlamak için gerekli olan bilgilerin düzenli bir şekilde saklanmasını ve erişilebilir olmasını sağlar. Ayrıca, veritabanı, 
personel ve görevlerin yönetimini kolaylaştırarak, bina personelinin görevlerini etkin bir şekilde yerine getirmesine 
yardımcı olur.
Kapsamı:

Bu proje, bir apartman veya site yönetimine ait temel bileşenlerin yönetimini kapsamaktadır. Bu bileşenler şunlardır: 
daire sahipleri, daireler, binalar, sakinler, personel ve görevler. Daire sahipleri, ad, telefon ve sahip oldukları 
dairelerin bilgileriyle temsil edilir. Daireler, daire numarası, kat numarası, blok numarası, metrekare bilgisi ve yaşayan 
kişi sayısı gibi detaylarla tanımlanır. Binalar, blok numarası, kat sayısı ve daire sayısı gibi özellikleri içerir. Sakinler, ad, 
telefon, plaka ve hangi dairede yaşadığı gibi bilgilerle temsil edilir. Personel ve görevler, personel adı, telefonu ve 
görev tanımları gibi bilgileri içerir.
Veritabanı Yapısı:

Veritabanı, tablolardan oluşan bir ilişkisel veritabanı yapısına sahiptir. Tablolar arasındaki ilişkiler, birincil anahtarlar
ve yabancı anahtarlar kullanılarak tanımlanmıştır. Örneğin, daire sahipleri ve daireler tabloları arasında "sahip_id" 
alanı yabancı anahtar olarak kullanılmıştır. Bu yapı, verilerin tutarlılığını sağlar ve veritabanı işlemlerini kolaylaştırır.
Fonksiyonlar ve Özellikler:

Bu veritabanı modeli, bir apartman veya site yönetiminin temel fonksiyonlarını destekler. Örneğin, daire sahiplerinin 
bilgilerini ekleyebilir, güncelleyebilir ve silebilirsiniz. Dairelerle ilgili bilgileri takip edebilir, yeni daireler ekleyebilir ve 
daire sahiplerini ilişkilendirebilirsiniz. Sakinlerin bilgilerini kaydedebilir, düzenleyebilir ve silebilirsiniz. Ayrıca, 
personel ve görevlerin yönetimini gerçekleştirebilir, personelin görevlerini atayabilir ve takip edebilirsiniz.
Avantajlar ve Faydalar:

Bu proje, apartman veya site yönetiminin etkin ve verimli bir şekilde yönetilmesine yardımcı olur. Veritabanı 
sayesinde, daire sahipleri, sakinler, personel ve görevlerle ilgili tüm bilgiler tek bir yerde toplanır ve kolayca erişilebilir 
hale gelir. Bu da, iletişimi geliştirir, veri doğruluğunu artırır ve yönetim süreçlerini optimize eder. Ayrıca, personel 
görevlerinin ataması ve takibi gibi görevler otomatikleştirilebilir, hataları azaltabilir ve yönetim sürecini daha verimli 
hale getirebilir.

Bu proje, bir apartman veya site yönetiminin ihtiyaçlarına yönelik tasarlanmış bir veritabanı modelini açıklamaktadır. 
Veritabanı, tüm bileşenlerin yönetimini kolaylaştırmayı amaçlamaktadır ve apartman veya site yönetiminin daha 
verimli, güvenli ve düzenli bir şekilde işlemesini sağlamak için tasarlanmıştır.

• Her dairenin bir id’si, daire numarası, bulunduğu kat, ne kadar büyüklükte olduğu(metrekare cinsinden), 
dairenin sahibi(id) ve dairede yaşayan kişi sayısı bilgileri mevcuttur.

• Sitedeki her binanın blok numarası, kat sayısı ,daire sayısı vardır.

• Daire sahiplerinin id’si , sahip oldukları dairelerin bilgileri, isimleri, soyisimleri ve telefon numaraları 
bulunmaktadır.

• Daire sakinlerinin id’si , hangi dairede kaldıkları, isimleri, soyisimleri ve telefon numaraları bulunmaktadır.

• Sitedeki çalışanların id’si, isimleri, soyisimleri ve telefon numaraları ve görev unvanları bulunmaktadır.

• Araçların bir plakası ve park edeceği konum vardır.

• Her daire bir blokta yer almaktadır.

• Daire sahiplerinin birden fazla daireleri olabilir.

• Her dairenin en az bir sakini bulunmaktadır.

• Her araç için bir otopark yeri ayrılmıştır.

• Her araç bir sakine aittir ve bir sakinin birden çok aracı olabilir.

• Bir binada birden çok personel çalışabilir.
