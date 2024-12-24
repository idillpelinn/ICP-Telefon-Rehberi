# ICP-Telefon-Rehberi

# Patika.dev Web3 Stajı Telefon Rehberi ve Mesajlaşma Sistemi  

Bu proje, **Pelin İdil Güzel** tarafından Patika.dev Web3 Stajı kapsamında geliştirilmiş bir telefon rehberi ve mesajlaşma sistemi uygulamasıdır. Uygulama, kullanıcılardan alınan bilgileri bir **HashMap** yapısında saklayarak etkili bir veri yönetimi sağlar. Kod, **Motoko** dilinde yazılmıştır ve aşağıdaki özellikleri içermektedir.  

---

### Özellikler  

1. **Telefon Rehberi**  
   - Kullanıcılar, bir isim ve ilgili telefon bilgileri ile bir açıklama ekleyebilir.  
   - Bu bilgiler, `insert` fonksiyonu ile `HashMap` içerisinde güvenli bir şekilde saklanır.  

2. **Mesaj Gönderme**  
   - Kullanıcılar, bir telefon numarası aracılığıyla mesaj gönderebilir.  
   - Gönderilen mesajlar, `sendMessage` fonksiyonu ile mesaj geçmişine eklenir.  

3. **Telefon Bilgisi Sorgulama**  
   - Kullanıcılar, bir isme göre telefon bilgilerini sorgulayabilir.  
   - `getPhone` fonksiyonu, isme ait telefon bilgilerini döndürür.  

4. **Mesaj Geçmişi Sorgulama**  
   - Kullanıcılar, bir telefon numarasına ait mesaj geçmişini sorgulayabilir.  
   - `gettMessage` query fonksiyonu, gönderilen mesajların detaylarını sağlar.  

---

### Kullanılan Veri Yapıları ve Fonksiyonlar  

- **Veri Yapıları:**  
  - `HashMap`: Telefon rehberi ve mesaj geçmişini saklamak için kullanılmıştır.  
  - `Entry`: İsim, telefon ve açıklama gibi bilgileri temsil eder.  
  - `Message`: Alıcı ve mesaj metnini içerir.  

- **Fonksiyonlar:**  
  - `insert(name: Name, entry: Entry)`: Yeni bir telefon rehberi kaydı ekler.  
  - `sendMessage(senderPhone: Phone, message: Message)`: Belirli bir telefondan mesaj gönderir.  
  - `getPhone(name: Name): async ?Entry`: Bir isme göre telefon bilgisi sorgular.  
  - `gettMessage(senderPhone: Phone): async ?Message`: Mesaj geçmişini sorgular.  

---

### Kullanım Örnekleri  

1. **Telefon Rehberi Kayıt Ekleme**  
```motoko
await insert("Ali", {desc = "Arkadaş"; phone = "123-456"});
```  

2. **Mesaj Gönderme**  
```motoko
await sendMessage("123-456", {receiver = "Mehmet"; mess = "Merhaba!"});
```  

3. **Telefon Bilgisi Sorgulama**  
```motoko
let entry = await getPhone("Ali");
```  

4. **Mesaj Geçmişi Sorgulama**  
```motoko
let message = await gettMessage("123-456");
```  

