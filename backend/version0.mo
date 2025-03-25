import List "mo:base/List";

persistent actor {

    let log = List.empty<Text>();

    public func add(msg : Text) {
        List.add(log, msg);
    };

    public func read() : async Text {
        List.toText<Text>(log, func t = t)
    };  

};