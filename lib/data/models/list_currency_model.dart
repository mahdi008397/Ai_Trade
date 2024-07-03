class ListCurrencyModel {
  ListCurrencyModel({
    required this.raw,
    required this.display,
  });

  final Map<String, Raw> raw;
  final Map<String, Display> display;

  factory ListCurrencyModel.fromJson(Map<String, dynamic> json) {
    return ListCurrencyModel(
      raw: Map.from(json["RAW"])
          .map((k, v) => MapEntry<String, Raw>(k, Raw.fromJson(v))),
      display: Map.from(json["DISPLAY"])
          .map((k, v) => MapEntry<String, Display>(k, Display.fromJson(v))),
    );
  }
}

class Display {
  Display({
    required this.usd,
  });

  final DisplayUsd? usd;

  factory Display.fromJson(Map<String, dynamic> json) {
    return Display(
      usd: json["USD"] == null ? null : DisplayUsd.fromJson(json["USD"]),
    );
  }
}

class DisplayUsd {
  DisplayUsd({
    required this.fromsymbol,
    required this.tosymbol,
    required this.market,
    required this.lastmarket,
    required this.toptiervolume24Hour,
    required this.toptiervolume24Hourto,
    required this.lasttradeid,
    required this.price,
    required this.lastupdate,
    required this.lastvolume,
    required this.lastvolumeto,
    required this.volumehour,
    required this.volumehourto,
    required this.openhour,
    required this.highhour,
    required this.lowhour,
    required this.volumeday,
    required this.volumedayto,
    required this.openday,
    required this.highday,
    required this.lowday,
    required this.volume24Hour,
    required this.volume24Hourto,
    required this.open24Hour,
    required this.high24Hour,
    required this.low24Hour,
    required this.change24Hour,
    required this.changepct24Hour,
    required this.changeday,
    required this.changepctday,
    required this.changehour,
    required this.changepcthour,
    required this.conversiontype,
    required this.conversionsymbol,
    required this.conversionlastupdate,
    required this.supply,
    required this.mktcap,
    required this.mktcappenalty,
    required this.circulatingsupply,
    required this.circulatingsupplymktcap,
    required this.totalvolume24H,
    required this.totalvolume24Hto,
    required this.totaltoptiervolume24H,
    required this.totaltoptiervolume24Hto,
    required this.imageurl,
  });

  final String? fromsymbol;
  final String? tosymbol;
  final String? market;
  final String? lastmarket;
  final String? toptiervolume24Hour;
  final String? toptiervolume24Hourto;
  final String? lasttradeid;
  final String? price;
  final String? lastupdate;
  final String? lastvolume;
  final String? lastvolumeto;
  final String? volumehour;
  final String? volumehourto;
  final String? openhour;
  final String? highhour;
  final String? lowhour;
  final String? volumeday;
  final String? volumedayto;
  final String? openday;
  final String? highday;
  final String? lowday;
  final String? volume24Hour;
  final String? volume24Hourto;
  final String? open24Hour;
  final String? high24Hour;
  final String? low24Hour;
  final String? change24Hour;
  final String? changepct24Hour;
  final String? changeday;
  final String? changepctday;
  final String? changehour;
  final String? changepcthour;
  final String? conversiontype;
  final String? conversionsymbol;
  final String? conversionlastupdate;
  final String? supply;
  final String? mktcap;
  final String? mktcappenalty;
  final String? circulatingsupply;
  final String? circulatingsupplymktcap;
  final String? totalvolume24H;
  final String? totalvolume24Hto;
  final String? totaltoptiervolume24H;
  final String? totaltoptiervolume24Hto;
  final String? imageurl;

  factory DisplayUsd.fromJson(Map<String, dynamic> json) {
    return DisplayUsd(
      fromsymbol: json["FROMSYMBOL"],
      tosymbol: json["TOSYMBOL"],
      market: json["MARKET"],
      lastmarket: json["LASTMARKET"],
      toptiervolume24Hour: json["TOPTIERVOLUME24HOUR"],
      toptiervolume24Hourto: json["TOPTIERVOLUME24HOURTO"],
      lasttradeid: json["LASTTRADEID"],
      price: json["PRICE"],
      lastupdate: json["LASTUPDATE"],
      lastvolume: json["LASTVOLUME"],
      lastvolumeto: json["LASTVOLUMETO"],
      volumehour: json["VOLUMEHOUR"],
      volumehourto: json["VOLUMEHOURTO"],
      openhour: json["OPENHOUR"],
      highhour: json["HIGHHOUR"],
      lowhour: json["LOWHOUR"],
      volumeday: json["VOLUMEDAY"],
      volumedayto: json["VOLUMEDAYTO"],
      openday: json["OPENDAY"],
      highday: json["HIGHDAY"],
      lowday: json["LOWDAY"],
      volume24Hour: json["VOLUME24HOUR"],
      volume24Hourto: json["VOLUME24HOURTO"],
      open24Hour: json["OPEN24HOUR"],
      high24Hour: json["HIGH24HOUR"],
      low24Hour: json["LOW24HOUR"],
      change24Hour: json["CHANGE24HOUR"],
      changepct24Hour: json["CHANGEPCT24HOUR"],
      changeday: json["CHANGEDAY"],
      changepctday: json["CHANGEPCTDAY"],
      changehour: json["CHANGEHOUR"],
      changepcthour: json["CHANGEPCTHOUR"],
      conversiontype: json["CONVERSIONTYPE"],
      conversionsymbol: json["CONVERSIONSYMBOL"],
      conversionlastupdate: json["CONVERSIONLASTUPDATE"],
      supply: json["SUPPLY"],
      mktcap: json["MKTCAP"],
      mktcappenalty: json["MKTCAPPENALTY"],
      circulatingsupply: json["CIRCULATINGSUPPLY"],
      circulatingsupplymktcap: json["CIRCULATINGSUPPLYMKTCAP"],
      totalvolume24H: json["TOTALVOLUME24H"],
      totalvolume24Hto: json["TOTALVOLUME24HTO"],
      totaltoptiervolume24H: json["TOTALTOPTIERVOLUME24H"],
      totaltoptiervolume24Hto: json["TOTALTOPTIERVOLUME24HTO"],
      imageurl: json["IMAGEURL"],
    );
  }
}

class Raw {
  Raw({
    required this.usd,
  });

  final RawUsd? usd;

  factory Raw.fromJson(Map<String, dynamic> json) {
    return Raw(
      usd: json["USD"] == null ? null : RawUsd.fromJson(json["USD"]),
    );
  }
}

class RawUsd {
  RawUsd({
    required this.type,
    required this.market,
    required this.fromsymbol,
    required this.tosymbol,
    required this.flags,
    required this.lastmarket,
    required this.median,
    required this.toptiervolume24Hour,
    required this.toptiervolume24Hourto,
    required this.lasttradeid,
    required this.price,
    required this.lastupdate,
    required this.lastvolume,
    required this.lastvolumeto,
    required this.volumehour,
    required this.volumehourto,
    required this.openhour,
    required this.highhour,
    required this.lowhour,
    required this.volumeday,
    required this.volumedayto,
    required this.openday,
    required this.highday,
    required this.lowday,
    required this.volume24Hour,
    required this.volume24Hourto,
    required this.open24Hour,
    required this.high24Hour,
    required this.low24Hour,
    required this.change24Hour,
    required this.changepct24Hour,
    required this.changeday,
    required this.changepctday,
    required this.changehour,
    required this.changepcthour,
    required this.conversiontype,
    required this.conversionsymbol,
    required this.conversionlastupdate,
    required this.supply,
    required this.mktcap,
    required this.mktcappenalty,
    required this.circulatingsupply,
    required this.circulatingsupplymktcap,
    required this.totalvolume24H,
    required this.totalvolume24Hto,
    required this.totaltoptiervolume24H,
    required this.totaltoptiervolume24Hto,
    required this.imageurl,
  });

  final String? type;
  final String? market;
  final String? fromsymbol;
  final String? tosymbol;
  final String? flags;
  final String? lastmarket;
  final double? median;
  final double? toptiervolume24Hour;
  final double? toptiervolume24Hourto;
  final String? lasttradeid;
  final double? price;
  final int? lastupdate;
  final double? lastvolume;
  final double? lastvolumeto;
  final double? volumehour;
  final double? volumehourto;
  final double? openhour;
  final double? highhour;
  final double? lowhour;
  final double? volumeday;
  final double? volumedayto;
  final double? openday;
  final double? highday;
  final double? lowday;
  final double? volume24Hour;
  final double? volume24Hourto;
  final double? open24Hour;
  final double? high24Hour;
  final double? low24Hour;
  final double? change24Hour;
  final double? changepct24Hour;
  final double? changeday;
  final double? changepctday;
  final double? changehour;
  final double? changepcthour;
  final String? conversiontype;
  final String? conversionsymbol;
  final int? conversionlastupdate;
  final double? supply;
  final double? mktcap;
  final int? mktcappenalty;
  final double? circulatingsupply;
  final double? circulatingsupplymktcap;
  final double? totalvolume24H;
  final double? totalvolume24Hto;
  final double? totaltoptiervolume24H;
  final double? totaltoptiervolume24Hto;
  final String? imageurl;

  factory RawUsd.fromJson(Map<String, dynamic> json) {
    return RawUsd(
      type: json["TYPE"],
      market: json["MARKET"],
      fromsymbol: json["FROMSYMBOL"],
      tosymbol: json["TOSYMBOL"],
      flags: json["FLAGS"],
      lastmarket: json["LASTMARKET"],
      median: json["MEDIAN"],
      toptiervolume24Hour: json["TOPTIERVOLUME24HOUR"],
      toptiervolume24Hourto: json["TOPTIERVOLUME24HOURTO"],
      lasttradeid: json["LASTTRADEID"],
      price: json["PRICE"],
      lastupdate: json["LASTUPDATE"],
      lastvolume: json["LASTVOLUME"],
      lastvolumeto: json["LASTVOLUMETO"],
      volumehour: json["VOLUMEHOUR"],
      volumehourto: json["VOLUMEHOURTO"],
      openhour: json["OPENHOUR"],
      highhour: json["HIGHHOUR"],
      lowhour: json["LOWHOUR"],
      volumeday: json["VOLUMEDAY"],
      volumedayto: json["VOLUMEDAYTO"],
      openday: json["OPENDAY"],
      highday: json["HIGHDAY"],
      lowday: json["LOWDAY"],
      volume24Hour: json["VOLUME24HOUR"],
      volume24Hourto: json["VOLUME24HOURTO"],
      open24Hour: json["OPEN24HOUR"],
      high24Hour: json["HIGH24HOUR"],
      low24Hour: json["LOW24HOUR"],
      change24Hour: json["CHANGE24HOUR"],
      changepct24Hour: json["CHANGEPCT24HOUR"],
      changeday: json["CHANGEDAY"],
      changepctday: json["CHANGEPCTDAY"],
      changehour: json["CHANGEHOUR"],
      changepcthour: json["CHANGEPCTHOUR"],
      conversiontype: json["CONVERSIONTYPE"],
      conversionsymbol: json["CONVERSIONSYMBOL"],
      conversionlastupdate: json["CONVERSIONLASTUPDATE"],
      supply: json["SUPPLY"],
      mktcap: json["MKTCAP"],
      mktcappenalty: json["MKTCAPPENALTY"],
      circulatingsupply: json["CIRCULATINGSUPPLY"],
      circulatingsupplymktcap: json["CIRCULATINGSUPPLYMKTCAP"],
      totalvolume24H: json["TOTALVOLUME24H"],
      totalvolume24Hto: json["TOTALVOLUME24HTO"],
      totaltoptiervolume24H: json["TOTALTOPTIERVOLUME24H"],
      totaltoptiervolume24Hto: json["TOTALTOPTIERVOLUME24HTO"],
      imageurl: json["IMAGEURL"],
    );
  }
}
