Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/rgb2spec_opt?download=true
inline.NumInlined: 342
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0
@xyz_whitepoint = dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@_ZL7cie_d65 = internal unnamed_addr constant [95 x double] [double f0x3F7214089C79EB22, double f0x3F73227B57BAE518, double f0x3F7430EE12FBDF0D, double f0x3F73C80FA489F7AC, double f0x3F735F313618104B, double f0x3F7447076FAF268E, double f0x3F752EE0339AB185, double f0x3F7AA16B60430ED9, double f0x3F8009FC8B9FF072, double f0x3F80E2960FA4FFA5, double f0x3F81BB30D8D44933, double f0x3F81EB7662A7FD5B, double f0x3F821BBBEC7BB183, double f0x3F81744A09A6E998, double f0x3F80CCD96BFC5C07, double f0x3F828FECE559C626, double f0x3F845301A3E16A9F, double f0x3F85803A002C1FF8, double f0x3F86AD7F101D1CDD, double f0x3F86C1712B397676, double f0x3F86D5634655D00F, double f0x3F868C277BA14DC7, double f0x3F8642F86493130B, double f0x3F865D5106797A1B, double f0x3F8677A9A85FE12C, double f0x3F85C73A36A60EAB, double f0x3F8516CAC4EC3C2B, double f0x3F85243CF1F1F933, double f0x3F8531BBD29DFDC9, double f0x3F850B3B42951DE3, double f0x3F84E4BAB28C3DFD, double f0x3F849A01DA5B5952, double f0x3F844F49022A74A7, double f0x3F84972DDA556B2F, double f0x3F84DF1F6626A942, double f0x3F848DA71D9FC24D, double f0x3F843C2ED518DB57, double f0x3F843340842E8D03, double f0x3F842A5EE6EA863C, double f0x3F83C5FF3FEB2426, double f0x3F83619F98EBC210, double f0x3F8306AE8C7FB41F, double f0x3F82ABBD8013A62E, double f0x3F829E30A6971FB2, double f0x3F8290A3CD1A9936, double f0x3F81E071534BB7BC, double f0x3F81303ED97CD640, double f0x3F815101D1ABF9D9, double f0x3F8171C4C9DB1D72, double f0x3F8167AAB603036D, double f0x3F815D91E75523C3, double f0x3F812E6CB1F32E1A, double f0x3F80FF477C913873, double f0x3F8091DED830BE97, double f0x3F80247778FA7F15, double f0x3F802EA724A07921, double f0x3F8038D6D046732E, double f0x3F7FBB77B2D1BF11, double f0x3F7F0541C51697C7, double f0x3F7F0E9328DEADC5, double f0x3F7F17E48CA6C3C2, double f0x3F7F7E42CFF5C867, double f0x3F7FE4A11344CD0C, double f0x3F7F1E7B57B57AB4, double f0x3F7E58559C26285A, double f0x3F7CAF78793AFDBA, double f0x3F7B069DE0A447CD, double f0x3F7B6448409F7A6F, double f0x3F7BC1F2A09AAD10, double f0x3F7C49E2E5FBFD1C, double f0x3F7CD1D5B5B1C1DD, double f0x3F7A5979D471D0C6, double f0x3F77E11DF331DFAE, double f0x3F797C04CFEF9864, double f0x3F7B16EBACAD511A, double f0x3F7C18FE9689CAA0, double f0x3F7D1B1180664425, double f0x3F7AE0C2700D0A01, double f0x3F78A675EA084494, double f0x3F755252560726F8, double f0x3F71FE314C5A7E12, double f0x3F75F1BA89A2A865, double f0x3F79E543C6EAD2B9, double f0x3F793B72BF3D1549, double f0x3F7891A1B78F57DC, double f0x3F78BF56931B32AC, double f0x3F78ED0B6EA70D7D, double f0x3F77FC4BF8CE9252, double f0x3F770B8F0D4A8BDE, double f0x3F7597C8CB5E6BBC, double f0x3F74240513C6C050, double f0x3F7533FF05D5EF7F, double f0x3F7643F8F7E51EAE, double f0x3F76D275DF0352D4, double f0x3F7760F55075FBB0], align 16
@_ZL11xyz_to_srgb = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x4009EC804102FF8F, double -1.537150e+00, double -4.985350e-01], [3 x double] [double -9.692560e-01, double f0x3FFE040F23897204, double 4.155600e-02], [3 x double] [double 5.564800e-02, double -2.040430e-01, double f0x3FF0EABEF06B3786]], align 16
@_ZL11srgb_to_xyz = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 4.124530e-01, double 3.575800e-01, double 1.804230e-01], [3 x double] [double 2.126710e-01, double 7.151600e-01, double f0x3FB279AAE6C8F755], [3 x double] [double 1.933400e-02, double 1.191930e-01, double 9.502270e-01]], align 16
@_ZL5cie_e = internal unnamed_addr constant [95 x double] [double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133, double f0x3F832D104CB44133], align 16
@_ZL11xyz_to_ergb = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x40058518F3ECCC47, double -1.276020e+00, double -4.138440e-01], [3 x double] [double f0xBFF05A8049667B5F, double f0x3FFFA6F5019F3C71, double 4.382100e-02], [3 x double] [double 6.120300e-02, double -2.244110e-01, double f0x3FF29B1209EDBF8C]], align 16
@_ZL11ergb_to_xyz = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 4.968590e-01, double 3.390940e-01, double 1.640470e-01], [3 x double] [double 2.561930e-01, double 6.781880e-01, double f0x3FB0CC6822FF0889], [3 x double] [double 2.329000e-02, double 1.130310e-01, double 8.639780e-01]], align 16
@_ZL10xyz_to_xyz = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00]], align 16
@_ZL19xyz_to_prophoto_rgb = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x3FF588FBD77C5338, double f0xBFD05BDF8F473040, double -5.111180e-02], [3 x double] [double f0xBFE16D5AAC1E009C, double f0x3FF8217408E6588F, double 2.053510e-02], [3 x double] [double 0.000000e+00, double 0.000000e+00, double f0x3FF36395D18DFCAD]], align 16
@_ZL19prophoto_rgb_to_xyz = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x3FE9868D830AE1DB, double f0x3FC14DF62D1866FF, double 3.135340e-02], [3 x double] [double f0x3FD26F4029BBBB2D, double f0x3FE6C7AC314BD266, double f0x3F16773ACA0069B2], [3 x double] [double 0.000000e+00, double 0.000000e+00, double f0x3FEA681ECD4AA10E]], align 16
@_ZL7cie_d60 = internal unnamed_addr constant [95 x double] [double f0x3F6E13832976C7F9, double f0x3F6FE38B4F45E747, double f0x3F709B43A67999BB, double f0x3F706E2527102821, double f0x3F701D9BF488138D, double f0x3F703C563853B9C1, double f0x3F721E2D2E995151, double f0x3F770648BBE1A2EE, double f0x3F7C19306D02EC34, double f0x3F7E699FD252C289, double f0x3F7F457982DAA041, double f0x3F8015228BBE495E, double f0x3F801DDD7ECC6961, double f0x3F7EB704A09200D3, double f0x3F7E325DF6101D16, double f0x3F808DC1491A8CEE, double f0x3F82991DA1355F07, double f0x3F84129EE741A82C, double f0x3F84FBD974834738, double f0x3F855691BF596ECB, double f0x3F854BAED59C5921, double f0x3F8512EAD42BE563, double f0x3F84F21006E7413F, double f0x3F85336AFED752C7, double f0x3F85514452735421, double f0x3F84BF2357935E8E, double f0x3F84288546CC58AF, double f0x3F843628884883F8, double f0x3F84745F0EE46621, double f0x3F84748DC88A7E66, double f0x3F844C56720FC3B9, double f0x3F8407ED982BD3E9, double f0x3F83ED8ECF8B4061, double f0x3F844989E2F000AC, double f0x3F849D32B95EB8A2, double f0x3F846646399EC5F0, double f0x3F8414FA95EED024, double f0x3F841A02DDADB66B, double f0x3F842018F666FC98, double f0x3F83D87A5B5F63C7, double f0x3F83700428DE12FD, double f0x3F830C22487A7FEE, double f0x3F82CE5DCE5639BD, double f0x3F82DFD4D0294B4C, double f0x3F82CC721F17EC30, double f0x3F821C604964079E, double f0x3F817A81E55C3E59, double f0x3F818FED4727C0FC, double f0x3F81E1ECB5C10CE9, double f0x3F81F50B15A39F38, double f0x3F81E6D8C63401FD, double f0x3F81D424F544E495, double f0x3F819E8F518AA4F3, double f0x3F812B317EB28E67, double f0x3F80D19264FC364C, double f0x3F80EAD67EF10CB6, double f0x3F8105F45BCC8A0D, double f0x3F80B1A17FB47574, double f0x3F8052AA974FDC36, double f0x3F8047127F3434EE, double f0x3F8077E2396C4BB2, double f0x3F80CDCE87370B5D, double f0x3F8101B0B96051CC, double f0x3F80D28F37AE0952, double f0x3F803A21919B1EA9, double f0x3F7E6D55BD356B3F, double f0x3F7CD5AA9AFDA686, double f0x3F7CDFE3F477814B, double f0x3F7DC9491E0ADF3C, double f0x3F7EE049B7B8EC0B, double f0x3F7EBB44050D80FF, double f0x3F7BE5E9B45B297A, double f0x3F7973BB6C1A4D55, double f0x3F7A6DCC58F07EAC, double f0x3F7CCF0FA1EBB08C, double f0x3F7E89FAC41C7D77, double f0x3F7EEA909877AA1A, double f0x3F7D623CBF4F8A4F, double f0x3F7A2A6E44A0E41B, double f0x3F757CFF1B688BB8, double f0x3F7327B7F08D153F, double f0x3F76F08ED4C6E4CF, double f0x3F7B8F3C62A646E1, double f0x3F7B94FA7F146E92, double f0x3F7A1C2EC5F8FCE2, double f0x3F7A383232C9F347, double f0x3F7A806FDEF31815, double f0x3F79D6C7FDAC6885, double f0x3F787CC429B8327F, double f0x3F7692ECC86A9627, double f0x3F7560B621159849, double f0x3F76204B04ED0B4D, double f0x3F77A562322D0531, double f0x3F787C9240CCDA99, double 0.000000e+00], align 16
@_ZL17xyz_to_aces2065_1 = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x3FF0CC06A33249A9, double 0.000000e+00, double -9.748450e-05], [3 x double] [double f0xBFDFBCE0088CEE1A, double f0x3FF5F91719AE1931, double f0x3FB926424E351581], [3 x double] [double 0.000000e+00, double 0.000000e+00, double f0x3FEFB85627086A78]], align 16
@_ZL17aces2065_1_to_xyz = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x3FEE7B4F2983BE02, double 0.000000e+00, double f0x3F188EAA17E525BE], [3 x double] [double f0x3FD6038BDB33FB82, double f0x3FE74D22FC5E7EC9, double f0xBFB277474FC3E450], [3 x double] [double 0.000000e+00, double 0.000000e+00, double f0x3FF02425E0661114]], align 16
@_ZL14xyz_to_rec2020 = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x3FFB77673C7197BF, double f0xBFD6C34F64241371, double f0xBFD0372735216AA1], [3 x double] [double f0xBFE5557A6BF78CF9, double f0x3FF9DD1B6DDCB6D7, double f0x3F9025A13210DFA6], [3 x double] [double f0x3F92102ECA8E712C, double f0xBFA5E607A2B4EBF3, double f0x3FEE25B571E06ECA]], align 16
@_ZL14rec2020_to_xyz = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x3FE461F5D84BEB6D, double f0x3FC282CE83B49498, double f0x3FC59DE44CB34670], [3 x double] [double f0x3FD0D0148CCC4E19, double f0x3FE5B22902FAFE86, double f0x3FAE5CCB69EDA6D9], [3 x double] [double 0.000000e+00, double f0x3F9CBF168961F195, double f0x3FF0F9CB77C5DBD8]], align 16
@_ZL12xyz_to_dcip3 = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x4003F205A129B0D3, double f0xBFEDCCE860A709C5, double f0xBFD9C5297FD6240E], [3 x double] [double f0xBFEA8B4C7F349386, double f0x3FFC34013EC460EE, double f0x3F9831301B1D343B], [3 x double] [double f0x3FA25B6B9CC25434, double f0xBFB381225468B7FA, double f0x3FEEA0861CE51315]], align 16
@_ZL12dcip3_to_xyz = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double f0x3FDF2502028EA5A0, double f0x3FD1009E607DC426, double f0x3FC95DC1265076BB], [3 x double] [double f0x3FCD5001E07FDD05, double f0x3FE6229DFF84DAF1, double f0x3FB44B00C080746B], [3 x double] [double 0.000000e+00, double f0x3FA718FE53AD7C25, double f0x3FF0B30DF9BDC6A0]], align 16
@.str = private unnamed_addr constant [41 x i8] c"init_gamut(): invalid/unsupported gamut.\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZL5cie_x = internal unnamed_addr constant [95 x double] [double 1.299000e-04, double 2.321000e-04, double 4.149000e-04, double 7.416000e-04, double 1.368000e-03, double 2.236000e-03, double 4.243000e-03, double f0x3F7F559B3D07C84B, double 1.431000e-02, double 2.319000e-02, double 4.351000e-02, double 7.763000e-02, double 1.343800e-01, double 2.147700e-01, double 2.839000e-01, double 3.285000e-01, double 3.482800e-01, double 3.480600e-01, double 3.362000e-01, double 3.187000e-01, double 2.908000e-01, double 2.511000e-01, double 1.953600e-01, double 1.421000e-01, double 9.564000e-02, double f0x3FADAB9FAB817891, double 3.201000e-02, double 1.470000e-02, double 4.900000e-03, double 2.400000e-03, double 9.300000e-03, double 2.910000e-02, double 6.327000e-02, double 1.096000e-01, double 1.655000e-01, double f0x3FCCE55F6AC9A276, double 2.904000e-01, double 3.597000e-01, double f0x3FDBBDA4A63D160B, double f0x3FE062B6E42D3BA2, double 5.945000e-01, double 6.784000e-01, double f0x3FE8631F8A0902DE, double 8.425000e-01, double 9.163000e-01, double 9.786000e-01, double 1.026300e+00, double 1.056700e+00, double 1.062200e+00, double 1.045600e+00, double 1.002600e+00, double 9.384000e-01, double f0x3FEB57A75112414B, double 7.514000e-01, double 6.424000e-01, double 5.419000e-01, double 4.479000e-01, double 3.608000e-01, double 2.835000e-01, double 2.187000e-01, double 1.649000e-01, double 1.212000e-01, double 8.740000e-02, double 6.360000e-02, double 4.677000e-02, double 3.290000e-02, double 2.270000e-02, double 1.584000e-02, double f0x3F874378A5AE24EC, double f0x3F809C74B7AF50B2, double f0x3F77B79E2B3D8A3E, double f0x3F70D513F6B58714, double f0x3F67C05454A73270, double 2.049190e-03, double f0x3F5797AD168A4148, double f0x3F50621762A2558E, double f0x3F469CCC8263C2D4, double f0x3F3F324FEA6B46B5, double f0x3F35C7165B5F6CE5, double f0x3F2EC774D6E91BBD, double f0x3F25C715ED6BED7E, double 1.174130e-04, double f0x3F15C7164561ED04, double f0x3F0EC774AAEE1BFA, double f0x3F05C35EAD9615F9, double f0x3EFEC774AAEE1BFA, double f0x3EF5AD96C79C522C, double f0x3EEE88B78D353344, double f0x3EE5811047B62109, double f0x3EDE49FAB5DAB092, double f0x3ED554E8C0369F43, double f0x3ECE0B8A02A490FB, double f0x3EC52914C8D04318, double f0x3EBDCE0C4D66B9AF, double f0x3EB4FD9C13D6350B], align 16
@_ZL5cie_y = internal unnamed_addr constant [95 x double] [double 3.917000e-06, double 6.965000e-06, double 1.239000e-05, double 2.202000e-05, double 3.900000e-05, double 6.400000e-05, double 1.200000e-04, double 2.170000e-04, double 3.960000e-04, double 6.400000e-04, double 1.210000e-03, double 2.180000e-03, double 4.000000e-03, double 7.300000e-03, double 1.160000e-02, double 1.684000e-02, double 2.300000e-02, double 2.980000e-02, double 3.800000e-02, double 4.800000e-02, double 6.000000e-02, double 7.390000e-02, double 9.098000e-02, double 1.126000e-01, double 1.390200e-01, double 1.693000e-01, double 2.080200e-01, double 2.586000e-01, double 3.230000e-01, double 4.073000e-01, double 5.030000e-01, double 6.082000e-01, double 7.100000e-01, double 7.932000e-01, double 8.620000e-01, double f0x3FED4673B787C12A, double f0x3FEE872B020C49BA, double f0x3FEF5E9E1B089A02, double f0x3FEFD6A19794DC9B, double 1.000000e+00, double f0x3FEFD70A3D70A3D7, double 9.786000e-01, double f0x3FEE76C8B4395810, double f0x3FED4AF4F0D844D0, double 8.700000e-01, double 8.163000e-01, double 7.570000e-01, double 6.949000e-01, double 6.310000e-01, double 5.668000e-01, double 5.030000e-01, double 4.412000e-01, double 3.810000e-01, double 3.210000e-01, double 2.650000e-01, double 2.170000e-01, double 1.750000e-01, double 1.382000e-01, double 1.070000e-01, double 8.160000e-02, double 6.100000e-02, double 4.458000e-02, double 3.200000e-02, double 2.320000e-02, double 1.700000e-02, double 1.192000e-02, double 8.210000e-03, double 5.723000e-03, double 4.102000e-03, double 2.929000e-03, double 2.091000e-03, double 1.484000e-03, double 1.047000e-03, double 7.400000e-04, double 5.200000e-04, double 3.611000e-04, double 2.492000e-04, double 1.719000e-04, double 1.200000e-04, double 8.480000e-05, double 6.000000e-05, double 4.240000e-05, double 3.000000e-05, double 2.120000e-05, double 1.499000e-05, double 1.060000e-05, double 7.465700e-06, double 5.257800e-06, double 3.702900e-06, double 2.607800e-06, double 1.836600e-06, double 1.293400e-06, double 9.109300e-07, double 6.415300e-07, double 4.518100e-07], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"RGB \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"LU decomposition failed!\00", align 1
@_ZL10threadPool = internal global { { { ptr } } } zeroinitializer, align 8
@__dso_handle = external hidden global i8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Could not parse gamut `%s'!\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Optimizing %s spectra...\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Could not create file!\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"namespace pbrt {\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"extern const int %sToSpectrumTable_Res = %d;\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"extern const float %sToSpectrumTable_Scale[%d] = {\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%.9g, \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"extern const float %sToSpectrumTable_Data[3][%d][%d][%d][3] = {\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"}, \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"},\0A    \00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"} // namespace pbrt\0A\00", align 1
@_ZTV17ParallelForLoop1D = dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI17ParallelForLoop1D, ptr @_ZN17ParallelForLoop1DD2Ev, ptr @_ZN17ParallelForLoop1DD0Ev, ptr @_ZN17ParallelForLoop1D7RunStepEPSt11unique_lockISt5mutexE, ptr @_ZNK17ParallelForLoop1D8HaveWorkEv] }, align 8
@_ZTI17ParallelForLoop1D = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17ParallelForLoop1D, ptr @_ZTI11ParallelJob }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17ParallelForLoop1D = dso_local constant [20 x i8] c"17ParallelForLoop1D\00", align 1
@_ZTI11ParallelJob = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11ParallelJob }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS11ParallelJob = linkonce_odr dso_local constant [14 x i8] c"11ParallelJob\00", comdat, align 1
@_ZL7cie_d50 = internal unnamed_addr constant <{ [85 x double], [10 x double] }> <{ [85 x double] [double f0x3F62AC72F97230C7, double f0x3F63D9BF7CAB1E57, double f0x3F65073F1D53B68E, double f0x3F641041E0C01B01, double f0x3F631977C19C2A1B, double f0x3F6532C62E6B0939, double f0x3F674C47B8A992FF, double f0x3F6EE0A725A1C6EA, double f0x3F733A9CD804D2BF, double f0x3F74A236EE9C6767, double f0x3F7609EA93EBD164, double f0x3F76B99FC3C6714E, double f0x3F77696E8258E68C, double f0x3F76FAD0CEB197FC, double f0x3F768C331B0A496B, double f0x3F79DD167708EACD, double f0x3F7D2E1361BF6183, double f0x3F7F9A24F7DC10E6, double f0x3F81031B46FC6024, double f0x3F81571DE8441B01, double f0x3F81AB13C22FEB32, double f0x3F81BDF21FE86A0A, double f0x3F81D0D07DA0E8E3, double f0x3F822E28BF0D0DD7, double f0x3F828B8DC7D51D75, double f0x3F823D08D00C3799, double f0x3F81EE83D84351BC, double f0x3F824C5BE346A154, double f0x3F82AA40B5A5DB95, double f0x3F82C077406CC4E3, double f0x3F82D6A103D7C388, double f0x3F82E381EE7A42BE, double f0x3F82F062D91CC1F5, double f0x3F836C6E0859A508, double f0x3F83E8793796881B, double f0x3F83C6EDE64E8A29, double f0x3F83A56295068C36, double f0x3F83CC5EC871747E, double f0x3F83F35AFBDC5CC5, double f0x3F83B98D3214E050, double f0x3F837FB2A0F1792F, double f0x3F834731167FD1F9, double f0x3F830EA2C4B2401A, double f0x3F832C2FC940E8F6, double f0x3F8349B00673A728, double f0x3F82C2699F6D84C4, double f0x3F823B2FFFC34D0B, double f0x3F82A3B6B19CC6A6, double f0x3F830C4A2AD22AEA, double f0x3F8333B96078532A, double f0x3F835B355D7A6616, double f0x3F835584968BE66F, double f0x3F834FE096F95172, double f0x3F82FD03DEF3ABD9, double f0x3F82AA2726EE0640, double f0x3F82F86C39EB56CC, double f0x3F8346A4858CBCAD, double f0x3F82F7066BDDAC37, double f0x3F82A768522E9BC1, double f0x3F82E667194D6D3B, double f0x3F8325591910540C, double f0x3F839D7F8A4BB75C, double f0x3F841599342B3003, double f0x3F83B502546875EC, double f0x3F83546B74A5BBD5, double f0x3F822F1B8ADF7873, double f0x3F8109CBA1193511, double f0x3F81732B900D43F4, double f0x3F81DC98465D3D80, double f0x3F81FCA43ADFBB89, double f0x3F821CBCF6BE243D, double f0x3F808C8DC13E5210, double f0x3F7DF8A388C52A73, double f0x3F7FDABCAA78379D, double f0x3F80DE5E1EB9B7B9, double f0x3F8175DD9D70C3C9, double f0x3F820D5054CBE52F, double f0x3F80A728D39DE5C5, double f0x3F7E8202A4DFCCB6, double f0x3F7A80D0C0B78B73, double f0x3F767F9EDC8F4A30, double f0x3F7B6B06A1607D1E, double f0x3F802B43FA74C2AF, double f0x3F7F6E84580CE8E7, double f0x3F7E86672C78771B], [10 x double] zeroinitializer }>, align 16
@_ZL5cie_z = internal unnamed_addr constant <{ [58 x double], [37 x double] }> <{ [58 x double] [double 6.061000e-04, double 1.086000e-03, double 1.946000e-03, double 3.486000e-03, double f0x3F7A6B50F5AAAB54, double f0x3F859B3BB02F5D3B, double f0x3F9487FD64F019AE, double 3.621000e-02, double f0x3FB15E9E45FBB7C7, double 1.102000e-01, double 2.074000e-01, double 3.713000e-01, double f0x3FE4A8C154C985F0, double f0x3FF09FF2FF667D0D, double 1.385600e+00, double 1.622960e+00, double 1.747060e+00, double 1.782600e+00, double 1.772110e+00, double 1.744100e+00, double 1.669200e+00, double 1.528100e+00, double 1.287640e+00, double 1.041900e+00, double f0x3FEA03AFED98F52F, double 6.162000e-01, double 4.651800e-01, double 3.533000e-01, double 2.720000e-01, double 2.123000e-01, double 1.582000e-01, double 1.117000e-01, double f0x3FB40830FBF65B11, double f0x3FAD4FDF914A95A5, double 4.216000e-02, double 2.984000e-02, double 2.030000e-02, double 1.340000e-02, double f0x3F81EB84FC5C3A1B, double f0x3F778D4F9A8334BA, double 3.900000e-03, double f0x3F66872A789BEA79, double 2.100000e-03, double 1.800000e-03, double f0x3F5B089B1555E3C8, double 1.400000e-03, double 1.100000e-03, double 1.000000e-03, double 8.000000e-04, double 6.000000e-04, double 3.400000e-04, double 2.400000e-04, double 1.900000e-04, double 1.000000e-04, double f0x3F0A36E2932643A7, double 3.000000e-05, double 2.000000e-05, double 1.000000e-05], [37 x double] zeroinitializer }>, align 16
@.str.23 = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"eRGB\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"ProPhotoRGB\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"ACES2065_1\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"REC2020\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"DCI_P3\00", align 1
@_ZTIZ11ParallelForllSt8functionIFvlEEPKcEUlllE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZ11ParallelForllSt8functionIFvlEEPKcEUlllE_ }, comdat, align 8
@_ZTSZ11ParallelForllSt8functionIFvlEEPKcEUlllE_ = linkonce_odr dso_local constant [44 x i8] c"Z11ParallelForllSt8functionIFvlEEPKcEUlllE_\00", comdat, align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM10ThreadPoolFviEPS3_iEEEEEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJM10ThreadPoolFviEPS3_iEEEEEE, ptr @_ZNSt6thread6_StateD2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM10ThreadPoolFviEPS3_iEEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM10ThreadPoolFviEPS3_iEEEEE6_M_runEv] }, comdat, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJM10ThreadPoolFviEPS3_iEEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJM10ThreadPoolFviEPS3_iEEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJM10ThreadPoolFviEPS3_iEEEEEE = linkonce_odr dso_local constant [76 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJM10ThreadPoolFviEPS3_iEEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.30 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@"_ZTIZ4mainE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZ4mainE3$_0" }, align 8
@"_ZTSZ4mainE3$_0" = internal constant [12 x i8] c"Z4mainE3$_0\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_rgb2spec_opt.cpp, ptr null }]
@str = private unnamed_addr constant [20 x i8] c"Invalid resolution!\00", align 1
@str.1 = private unnamed_addr constant [129 x i8] c"Syntax: rgb2spec_opt <resolution> <output> [<gamut>]\0Awhere <gamut> is one of sRGB,eRGB,XYZ,ProPhotoRGB,ACES2065_1,REC2020,DCI_P3\00", align 1

@_ZN10ThreadPoolC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN10ThreadPoolC2Ei
@_ZN10ThreadPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10ThreadPoolD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_Z10cie_interpPKdd(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fadd double %1, -3.600000e+02
  %i.b = fmul double %i.a, 2.000000e-01           ; 2 uses
  %i.c = fptosi double %i.b to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 93) ; 2 uses
  %i.d = uitofp nneg i32 %spec.store.select1 to double
  %i.e = fsub double %i.b, %i.d                   ; 2 uses
  %i.f = fsub double 1.000000e+00, %i.e
  %i.g = zext nneg i32 %spec.store.select1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !13
  %i.j = fmul double %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !13
  %i.m = fmul double %i.e, %i.l
  %i.n = fadd double %i.j, %i.m
  ret double %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z12LUPDecomposePPdidPi(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not80 = icmp slt i32 %1, 0
  br i1 %.not80, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %i.a to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %1, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check117 = icmp ult i32 %1, 31
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.b = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store <8 x i32> %vec.ind, ptr %i.c, align 4, !tbaa !14
  store <8 x i32> %step.add, ptr %i.d, align 4, !tbaa !14
  store <8 x i32> %step.add.2, ptr %i.e, align 4, !tbaa !14
  store <8 x i32> %step.add.3, ptr %i.f, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader79, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.b, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec118 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %i.h = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind120 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next122, %vec.epilog.vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index119
  store <8 x i32> %vec.ind120, ptr %i.i, align 4, !tbaa !14
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %vec.ind.next122 = add <8 x i32> %vec.ind120, splat (i32 8)
  %i.j = icmp eq i64 %index.next121, %n.vec118
  br i1 %i.j, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %n.vec118, %wide.trip.count
  br i1 %cmp.n123, label %.preheader79, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec118, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader79:                                     ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader79
  %i.k = zext nneg i32 %1 to i64                  ; 11 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k ; 2 uses
  %i.m = zext nneg i32 %1 to i64
  %i.n = shl nuw nsw i64 %i.k, 3                  ; 2 uses
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.p, ptr %i.o, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader79, label %.lr.ph, !llvm.loop !87

.loopexit:                                        ; preds = %._crit_edge.us, %bb.d
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond115.not = icmp eq i64 %indvars.iv.next95, %i.k
  br i1 %exitcond115.not, label %._crit_edge, label %.preheader, !llvm.loop !88

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvars.iv101 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next102, %.loopexit ] ; 8 uses
  %indvars.iv94.a = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next95, %.loopexit ] ; 19 uses
  %i.q = sub nsw i64 %i.k, %indvars.iv94.a
  %i.r = shl nuw nsw i64 %indvars.iv94.a, 3
  %i.s = add nuw i64 %i.r, 8                      ; 2 uses
  %i.t = xor i64 %indvars.iv94.a, -1
  %i.u = add nsw i64 %i.t, %i.k                   ; 7 uses
  %i.v = trunc nuw nsw i64 %indvars.iv94.a to i32 ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader, %.prol.preheader
  %indvars.iv96.prol = phi i64 [ %indvars.iv.next97.prol, %.prol.preheader ], [ %indvars.iv94.a, %.preheader ] ; 3 uses
  %.084.prol = phi double [ %spec.select78.prol, %.prol.preheader ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %.06783.prol = phi i32 [ %spec.select.prol, %.prol.preheader ], [ %i.v, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv96.prol
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv94.a
  %i.z = load double, ptr %i.y, align 8, !tbaa !13
  %i.aa = tail call double @llvm.fabs.f64(double %i.z) ; 2 uses
  %i.ab = fcmp ogt double %i.aa, %.084.prol       ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv96.prol to i32
  %spec.select.prol = select i1 %i.ab, i32 %i.ac, i32 %.06783.prol ; 3 uses
  %spec.select78.prol = select i1 %i.ab, double %i.aa, double %.084.prol ; 3 uses
  %indvars.iv.next97.prol = add nuw nsw i64 %indvars.iv96.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !89

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.preheader ], [ %spec.select.prol, %.prol.preheader ]
  %spec.select78.lcssa.unr = phi double [ poison, %.preheader ], [ %spec.select78.prol, %.prol.preheader ]
  %indvars.iv96.unr = phi i64 [ %indvars.iv94.a, %.preheader ], [ %indvars.iv.next97.prol, %.prol.preheader ]
  %.084.unr = phi double [ 0.000000e+00, %.preheader ], [ %spec.select78.prol, %.prol.preheader ]
  %.06783.unr = phi i32 [ %i.v, %.preheader ], [ %spec.select.prol, %.prol.preheader ]
  %i.ad = sub nsw i64 %indvars.iv94.a, %i.k
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.unr-lcssa, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.3, %.preheader.new ], [ %indvars.iv96.unr, %.prol.loopexit ] ; 6 uses
  %.084 = phi double [ %spec.select78.3, %.preheader.new ], [ %.084.unr, %.prol.loopexit ] ; 2 uses
  %.06783 = phi i32 [ %spec.select.3, %.preheader.new ], [ %.06783.unr, %.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv94.a
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.ak = fcmp ogt double %i.aj, %.084            ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv96 to i32
  %spec.select = select i1 %i.ak, i32 %i.al, i32 %.06783
  %spec.select78 = select i1 %i.ak, double %i.aj, double %.084 ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next97
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv94.a
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap) ; 2 uses
  %i.ar = fcmp ogt double %i.aq, %spec.select78   ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next97 to i32
  %spec.select.1 = select i1 %i.ar, i32 %i.as, i32 %spec.select
  %spec.select78.1 = select i1 %i.ar, double %i.aq, double %spec.select78 ; 2 uses
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next97.1
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv94.a
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13
  %i.ax = tail call double @llvm.fabs.f64(double %i.aw) ; 2 uses
  %i.ay = fcmp ogt double %i.ax, %spec.select78.1 ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.next97.1 to i32
  %spec.select.2 = select i1 %i.ay, i32 %i.az, i32 %spec.select.1
  %spec.select78.2 = select i1 %i.ay, double %i.ax, double %spec.select78.1 ; 2 uses
  %indvars.iv.next97.2 = add nuw nsw i64 %indvars.iv96, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next97.2
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv94.a
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13
  %i.be = tail call double @llvm.fabs.f64(double %i.bd) ; 2 uses
  %i.bf = fcmp ogt double %i.be, %spec.select78.2 ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv.next97.2 to i32
  %spec.select.3 = select i1 %i.bf, i32 %i.bg, i32 %spec.select.2 ; 2 uses
  %spec.select78.3 = select i1 %i.bf, double %i.be, double %spec.select78.2 ; 2 uses
  %indvars.iv.next97.3 = add nuw nsw i64 %indvars.iv96, 4 ; 2 uses
  %exitcond100.not.3 = icmp eq i64 %indvars.iv.next97.3, %i.k
  br i1 %exitcond100.not.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !90

.unr-lcssa:                                       ; preds = %.preheader.new, %.prol.loopexit
  %spec.select.lcssa = phi i32 [ %spec.select.lcssa.unr, %.prol.loopexit ], [ %spec.select.3, %.preheader.new ] ; 2 uses
  %spec.select78.lcssa = phi double [ %spec.select78.lcssa.unr, %.prol.loopexit ], [ %spec.select78.3, %.preheader.new ]
  %i.bh = fcmp olt double %spec.select78.lcssa, %2
  br i1 %i.bh, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.unr-lcssa
  %i.bi = zext i32 %spec.select.lcssa to i64
  %.not77 = icmp eq i64 %indvars.iv94.a, %i.bi
  br i1 %.not77, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv94.a ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = sext i32 %spec.select.lcssa to i64      ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !14
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !14
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv94.a ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20
  %i.bq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !20
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !20
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !20
  %i.bs = load i32, ptr %i.l, align 4, !tbaa !14
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.l, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94.a, 1 ; 3 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next95, %i.m
  br i1 %i.bu, label %.lr.ph89, label %.loopexit

.lr.ph89:                                         ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv94.a
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20 ; 10 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv94.a
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.n
  %scevgep127 = getelementptr i8, ptr %i.bw, i64 %i.s
  %min.iters.check128.a = icmp ult i64 %i.u, 4
  %min.iters.check130 = icmp ult i64 %i.u, 16
  %i.by = and i64 %i.u, 12
  %n.vec132 = and i64 %i.u, -16                   ; 4 uses
  %i.bz = add i64 %indvars.iv101, %n.vec132
  %cmp.n146 = icmp eq i64 %i.u, %n.vec132
  %min.epilog.iters.check150 = icmp eq i64 %i.by, 0
  %n.vec153 = and i64 %i.u, -4                    ; 3 uses
  %i.ca = add i64 %indvars.iv101, %n.vec153
  %cmp.n162 = icmp eq i64 %i.u, %n.vec153
  br label %iter.check147

iter.check147:                                    ; preds = %._crit_edge.us, %.lr.ph89
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge.us ], [ %indvars.iv101, %.lr.ph89 ] ; 2 uses
  %i.cb = load double, ptr %i.bx, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv108
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20 ; 10 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv94.a ; 9 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13
  %i.cg = fdiv double %i.cf, %i.cb
  store double %i.cg, ptr %i.ce, align 8, !tbaa !13
  br i1 %min.iters.check128.a, label %vec.epilog.scalar.ph149.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check147
  %i.ch = getelementptr nuw i8, ptr %i.cd, i64 %i.s
  %i.ci = getelementptr i8, ptr %i.cd, i64 %i.n
  %bound0 = icmp ult ptr %i.ch, %scevgep
  %bound1 = icmp ult ptr %scevgep127, %i.ci
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph149.preheader, label %vector.main.loop.iter.check129

vector.main.loop.iter.check129:                   ; preds = %vector.memcheck
  br i1 %min.iters.check130, label %vec.epilog.ph151, label %vector.body133

vector.body133:                                   ; preds = %vector.main.loop.iter.check129, %vector.body133
  %index134 = phi i64 [ %index.next144, %vector.body133 ], [ 0, %vector.main.loop.iter.check129 ] ; 2 uses
  %i.cj = add nuw i64 %indvars.iv101, %index134   ; 2 uses
  %i.ck = load double, ptr %i.ce, align 8, !tbaa !13, !alias.scope !101
  %broadcast.splatinsert138 = insertelement <4 x double> poison, double %i.ck, i64 0
  %broadcast.splat139 = shufflevector <4 x double> %broadcast.splatinsert138, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cj ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %wide.load = load <4 x double>, ptr %i.cl, align 8, !tbaa !13, !alias.scope !102
  %wide.load135.a = load <4 x double>, ptr %i.cm, align 8, !tbaa !13, !alias.scope !102
  %wide.load136 = load <4 x double>, ptr %i.cn, align 8, !tbaa !13, !alias.scope !102
  %wide.load137 = load <4 x double>, ptr %i.co, align 8, !tbaa !13, !alias.scope !102
  %i.cp = fmul <4 x double> %broadcast.splat139, %wide.load
  %i.cq = fmul <4 x double> %broadcast.splat139, %wide.load135.a
  %i.cr = fmul <4 x double> %broadcast.splat139, %wide.load136
  %i.cs = fmul <4 x double> %broadcast.splat139, %wide.load137
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cj ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 96 ; 2 uses
  %wide.load140.a = load <4 x double>, ptr %i.ct, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  %wide.load141.a = load <4 x double>, ptr %i.cu, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  %wide.load142 = load <4 x double>, ptr %i.cv, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  %wide.load143 = load <4 x double>, ptr %i.cw, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  %i.cx = fsub <4 x double> %wide.load140.a, %i.cp
  %i.cy = fsub <4 x double> %wide.load141.a, %i.cq
  %i.cz = fsub <4 x double> %wide.load142, %i.cr
  %i.da = fsub <4 x double> %wide.load143, %i.cs
  store <4 x double> %i.cx, ptr %i.ct, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  store <4 x double> %i.cy, ptr %i.cu, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  store <4 x double> %i.cz, ptr %i.cv, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  store <4 x double> %i.da, ptr %i.cw, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  %index.next144 = add nuw i64 %index134, 16      ; 2 uses
  %i.db = icmp eq i64 %index.next144, %n.vec132
  br i1 %i.db, label %middle.block145, label %vector.body133, !llvm.loop !95

middle.block145:                                  ; preds = %vector.body133
  br i1 %cmp.n146, label %._crit_edge.us, label %vec.epilog.iter.check148

vec.epilog.iter.check148:                         ; preds = %middle.block145
  br i1 %min.epilog.iters.check150, label %vec.epilog.scalar.ph149.preheader, label %vec.epilog.ph151, !prof !22

vec.epilog.ph151:                                 ; preds = %vector.main.loop.iter.check129, %vec.epilog.iter.check148
  %vec.epilog.resume.val152 = phi i64 [ %n.vec132, %vec.epilog.iter.check148 ], [ 0, %vector.main.loop.iter.check129 ]
  br label %vec.epilog.vector.body154

vec.epilog.vector.body154:                        ; preds = %vec.epilog.vector.body154, %vec.epilog.ph151
  %index155 = phi i64 [ %vec.epilog.resume.val152, %vec.epilog.ph151 ], [ %index.next160, %vec.epilog.vector.body154 ] ; 2 uses
  %i.dc = add nuw i64 %indvars.iv101, %index155   ; 2 uses
  %i.dd = load double, ptr %i.ce, align 8, !tbaa !13, !alias.scope !101
  %broadcast.splatinsert157 = insertelement <4 x double> poison, double %i.dd, i64 0
  %broadcast.splat158 = shufflevector <4 x double> %broadcast.splatinsert157, <4 x double> poison, <4 x i32> zeroinitializer
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.dc
  %wide.load156 = load <4 x double>, ptr %i.de, align 8, !tbaa !13, !alias.scope !102
  %i.df = fmul <4 x double> %broadcast.splat158, %wide.load156
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dc ; 2 uses
  %wide.load159 = load <4 x double>, ptr %i.dg, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  %i.dh = fsub <4 x double> %wide.load159, %i.df
  store <4 x double> %i.dh, ptr %i.dg, align 8, !tbaa !13, !alias.scope !103, !noalias !102
  %index.next160 = add nuw i64 %index155, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.di, label %vec.epilog.middle.block161, label %vec.epilog.vector.body154, !llvm.loop !96

vec.epilog.middle.block161:                       ; preds = %vec.epilog.vector.body154
  br i1 %cmp.n162, label %._crit_edge.us, label %vec.epilog.scalar.ph149.preheader

vec.epilog.scalar.ph149.preheader:                ; preds = %iter.check147, %vector.memcheck, %vec.epilog.iter.check148, %vec.epilog.middle.block161
  %indvars.iv103.ph = phi i64 [ %indvars.iv101, %iter.check147 ], [ %indvars.iv101, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check148 ], [ %i.ca, %vec.epilog.middle.block161 ] ; 4 uses
  %i.dj = sub i64 %i.k, %indvars.iv103.ph
  %xtraiter164 = and i64 %i.dj, 3                 ; 2 uses
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %vec.epilog.scalar.ph149.prol.loopexit, label %vec.epilog.scalar.ph149.prol

vec.epilog.scalar.ph149.prol:                     ; preds = %vec.epilog.scalar.ph149.preheader, %vec.epilog.scalar.ph149.prol
  %indvars.iv103.prol = phi i64 [ %indvars.iv.next104.prol, %vec.epilog.scalar.ph149.prol ], [ %indvars.iv103.ph, %vec.epilog.scalar.ph149.preheader ] ; 3 uses
  %prol.iter166 = phi i64 [ %prol.iter166.next, %vec.epilog.scalar.ph149.prol ], [ 0, %vec.epilog.scalar.ph149.preheader ]
  %i.dk = load double, ptr %i.ce, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv103.prol
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !13
  %i.dn = fmul double %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv103.prol ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !13
  %i.dq = fsub double %i.dp, %i.dn
  store double %i.dq, ptr %i.do, align 8, !tbaa !13
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv103.prol, 1 ; 2 uses
  %prol.iter166.next = add i64 %prol.iter166, 1   ; 2 uses
  %prol.iter166.cmp.not = icmp eq i64 %prol.iter166.next, %xtraiter164
  br i1 %prol.iter166.cmp.not, label %vec.epilog.scalar.ph149.prol.loopexit, label %vec.epilog.scalar.ph149.prol, !llvm.loop !97

vec.epilog.scalar.ph149.prol.loopexit:            ; preds = %vec.epilog.scalar.ph149.prol, %vec.epilog.scalar.ph149.preheader
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %vec.epilog.scalar.ph149.preheader ], [ %indvars.iv.next104.prol, %vec.epilog.scalar.ph149.prol ]
  %i.dr = sub i64 %indvars.iv103.ph, %i.k
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge.us, label %vec.epilog.scalar.ph149

vec.epilog.scalar.ph149:                          ; preds = %vec.epilog.scalar.ph149.prol.loopexit, %vec.epilog.scalar.ph149
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %vec.epilog.scalar.ph149 ], [ %indvars.iv103.unr, %vec.epilog.scalar.ph149.prol.loopexit ] ; 6 uses
  %i.dt = load double, ptr %i.ce, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv103
  %i.dv = load double, ptr %i.du, align 8, !tbaa !13
  %i.dw = fmul double %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv103 ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !13
  %i.dz = fsub double %i.dy, %i.dw
  store double %i.dz, ptr %i.dx, align 8, !tbaa !13
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.ea = load double, ptr %i.ce, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next104
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !13
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next104 ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !13
  %i.eg = fsub double %i.ef, %i.ed
  store double %i.eg, ptr %i.ee, align 8, !tbaa !13
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %i.eh = load double, ptr %i.ce, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next104.1
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !13
  %i.ek = fmul double %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next104.1 ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !13
  %i.en = fsub double %i.em, %i.ek
  store double %i.en, ptr %i.el, align 8, !tbaa !13
  %indvars.iv.next104.2 = add nuw nsw i64 %indvars.iv103, 3 ; 2 uses
  %i.eo = load double, ptr %i.ce, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next104.2
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !13
  %i.er = fmul double %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next104.2 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !13
  %i.eu = fsub double %i.et, %i.er
  store double %i.eu, ptr %i.es, align 8, !tbaa !13
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %exitcond107.not.3 = icmp eq i64 %indvars.iv.next104.3, %i.k
  br i1 %exitcond107.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph149, !llvm.loop !98

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph149.prol.loopexit, %vec.epilog.scalar.ph149, %vec.epilog.middle.block161, %middle.block145
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %i.k
  br i1 %exitcond112.not, label %.loopexit, label %iter.check147, !llvm.loop !99

._crit_edge:                                      ; preds = %.unr-lcssa, %.loopexit, %bb.a, %.preheader79
  %.074 = phi i32 [ 1, %.preheader79 ], [ 1, %bb.a ], [ 0, %.unr-lcssa ], [ 1, %.loopexit ]
  ret i32 %.074
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z8LUPSolvePPdPKiPKdiS_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph46.preheader, label %._crit_edge54

.lr.ph46.preheader:                               ; preds = %bb.a
  %wide.trip.count59 = zext nneg i32 %3 to i64
  br label %.lr.ph46

.preheader.preheader:                             ; preds = %._crit_edge
  %i.b = zext nneg i32 %3 to i64                  ; 3 uses
  %i.c = zext nneg i32 %3 to i64                  ; 2 uses
  %xtraiter70 = and i64 %i.b, 1
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %indvars.iv.next62.prol = add nsw i64 %i.b, -1  ; 5 uses
  %.phi.trans.insert.prol = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next62.prol
  %.pre.prol = load double, ptr %.phi.trans.insert.prol, align 8, !tbaa !13
  %.phi.trans.insert67.prol = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next62.prol
  %.pre68.prol = load ptr, ptr %.phi.trans.insert67.prol, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next62.prol
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.pre68.prol, i64 %indvars.iv.next62.prol
  %i.f = load double, ptr %i.e, align 8, !tbaa !13
  %i.g = fdiv double %.pre.prol, %i.f
  store double %i.g, ptr %i.d, align 8, !tbaa !13
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv61.unr = phi i64 [ %i.b, %.preheader.preheader ], [ %indvars.iv.next62.prol, %.preheader.prol ]
  %i.h = icmp eq i32 %3, 1
  br i1 %i.h, label %._crit_edge54, label %.preheader

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %._crit_edge
  %indvars.iv56 = phi i64 [ 0, %.lr.ph46.preheader ], [ %indvars.iv.next57, %._crit_edge ] ; 8 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv56
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv56 ; 6 uses
  store double %i.m, ptr %i.n, align 8, !tbaa !13
  %.not = icmp eq i64 %indvars.iv56, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph46
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 5 uses
  %xtraiter = and i64 %indvars.iv56, 3            ; 3 uses
  %i.q = icmp samesign ult i64 %indvars.iv56, 4
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv56, 9223372036854775804
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %i.m, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %i.r = phi double [ %.epil.init, %.epil.preheader ], [ %i.x, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.epil
  %i.t = load double, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil
  %i.v = load double, ptr %i.u, align 8, !tbaa !13
  %i.w = fmul double %i.t, %i.v
  %i.x = fsub double %i.r, %i.w                   ; 2 uses
  store double %i.x, ptr %i.n, align 8, !tbaa !13
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !104

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.lr.ph46
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %.preheader.preheader, label %.lr.ph46, !llvm.loop !105

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %i.y = phi double [ %i.m, %.lr.ph.new ], [ %i.aw, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13
  %i.ad = fmul double %i.aa, %i.ac
  %i.ae = fsub double %i.y, %i.ad                 ; 2 uses
  store double %i.ae, ptr %i.n, align 8, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ag = load double, ptr %i.af, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13
  %i.aj = fmul double %i.ag, %i.ai
  %i.ak = fsub double %i.ae, %i.aj                ; 2 uses
  store double %i.ak, ptr %i.n, align 8, !tbaa !13
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.am = load double, ptr %i.al, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13
  %i.ap = fmul double %i.am, %i.ao
  %i.aq = fsub double %i.ak, %i.ap                ; 2 uses
  store double %i.aq, ptr %i.n, align 8, !tbaa !13
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
end_hunk_0
