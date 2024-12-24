import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor{
  type Name = Text;
  type Phone = Text;

  type Entry={
    desc: Text;
    phone:Phone;
  };

  type Message = {
    receiver : Text ;
    mess : Text;
  };

//Entry tuttuğumuz veri, HashMap bunu şifreliyor.
  let phoneBook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);
  
  let MessageHistory = Map.HashMap<Phone, Message>(0, Text.equal, Text.hash);

  public func insert(name: Name, entry : Entry): async(){
    phoneBook.put(name, entry);
  };

   public func sendMessage(senderPhone: Phone , message:Message): async(){
    MessageHistory.put(senderPhone, message);
  };

//geri değer döndürüyorsak async() içerisinde yazarız.Boş değer de gelebilir. Bu yüzden ? kullandık
  public func getPhone(name: Name): async ?Entry{
    return phoneBook.get(name);
  };
//sorgu yazarken query kullanılabilir.
  public query func gettMessage(senderPhone: Phone): async?Message {
    MessageHistory.get(senderPhone);

  }


}
