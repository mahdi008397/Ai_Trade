import 'package:ai_trade/data/models/list_currency_model.dart';
import 'package:ai_trade/locator.dart';
import 'package:dio/dio.dart';

abstract class IMainDatasource {
  Future<ListCurrencyModel> getAllCurrency();
}

class MainDatasource extends IMainDatasource {
  final Dio _dio = locator.get();

  @override
  Future<ListCurrencyModel> getAllCurrency() async {
    try {
      var res = await _dio.get(
        "data/pricemultifull?fsyms=btc,usdt,eth,etc,doge,ada,bch,ltc,bnb,eos,xlm,xrp,trx,uni,link,dai,dot,shib,aave,ftm,matic,axs,mana,sand,avax,usdc,gmt,mkr,sol,atom,grt,bat,near,ape,qnt,chz,xmr,egala,busd,algo,hbar,1inch,yfi,flow,snx,enj,crv,fil,wbtc,flr,ldo,dydx,apt,mask,comp,bal,lrc,lpt,ens,sushi,api3,one,glm,pmn,dao,cvc,nmr,storj,snt,ant,zrx,slp,egld,imx,blur,100k_floki,1b_babydoge,1m_nft,1m_btt,t,celr,arb,magic,gmx,band,cvx,ton,ssv,mdt,omg,wld,rdnt,jst,bico,rndr,woo,skl,gal,agix,fet,not,trb,1m_pepe,rsr,ethfi,agld&tsyms=USD",
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      return ListCurrencyModel.fromJson(res.data);
    } catch (e) {
      rethrow;
    }
  }
}
