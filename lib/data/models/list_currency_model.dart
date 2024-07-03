class ListCurrencyModel {
    ListCurrencyModel({
        required this.status,
        required this.stats,
        required this.global,
    });

    final String? status;
    final Map<String, Stat> stats;
    final Global? global;

    factory ListCurrencyModel.fromJson(Map<String, dynamic> json){ 
        return ListCurrencyModel(
            status: json["status"],
            stats: Map.from(json["stats"]).map((k, v) => MapEntry<String, Stat>(k, Stat.fromJson(v))),
            global: json["global"] == null ? null : Global.fromJson(json["global"]),
        );
    }

}

class Global {
    Global({
        required this.binance,
    });

    final Map<String, double> binance;

    factory Global.fromJson(Map<String, dynamic> json){ 
        return Global(
            binance: Map.from(json["binance"]).map((k, v) => MapEntry<String, double>(k, v)),
        );
    }

}

class Stat {
    Stat({
        required this.isClosed,
        required this.bestSell,
        required this.bestBuy,
        required this.volumeSrc,
        required this.volumeDst,
        required this.latest,
        required this.mark,
        required this.dayLow,
        required this.dayHigh,
        required this.dayOpen,
        required this.dayClose,
        required this.dayChange,
    });

    final bool? isClosed;
    final String? bestSell;
    final String? bestBuy;
    final String? volumeSrc;
    final String? volumeDst;
    final String? latest;
    final String? mark;
    final String? dayLow;
    final String? dayHigh;
    final String? dayOpen;
    final String? dayClose;
    final String? dayChange;

    factory Stat.fromJson(Map<String, dynamic> json){ 
        return Stat(
            isClosed: json["isClosed"],
            bestSell: json["bestSell"],
            bestBuy: json["bestBuy"],
            volumeSrc: json["volumeSrc"],
            volumeDst: json["volumeDst"],
            latest: json["latest"],
            mark: json["mark"],
            dayLow: json["dayLow"],
            dayHigh: json["dayHigh"],
            dayOpen: json["dayOpen"],
            dayClose: json["dayClose"],
            dayChange: json["dayChange"],
        );
    }

}
