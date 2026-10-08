Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h274?download=true
inline.NumInlined: 11
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.AVFilmGrainH274Params = type { i32, i32, i32, [3 x i32], [3 x i16], [3 x i8], [3 x [256 x i8]], [3 x [256 x i8]], [3 x [256 x [6 x i16]]] }

@ff_h274_apply_film_grain.color_offset = internal unnamed_addr constant [3 x i8] c"\00U\AA", align 1
@Seed_LUT = internal unnamed_addr constant [256 x i32] [i32 747538460, i32 1088979410, i32 1744950180, i32 1767011913, i32 1403382928, i32 521866116, i32 1060417601, i32 2110622736, i32 1557184770, i32 105289385, i32 585624216, i32 1827676546, i32 1191843873, i32 1018104344, i32 1123590530, i32 663361569, i32 2023850500, i32 76561770, i32 1226763489, i32 80325252, i32 1992581442, i32 502705249, i32 740409860, i32 516219202, i32 557974537, i32 1883843076, i32 720112066, i32 1640137737, i32 1820967556, i32 40667586, i32 155354121, i32 1820967557, i32 1115949072, i32 1631803309, i32 98284748, i32 287433856, i32 2119719977, i32 988742797, i32 1827432592, i32 579378475, i32 1017745956, i32 1309377032, i32 1316535465, i32 2074315269, i32 1923385360, i32 209722667, i32 1546228260, i32 168102420, i32 135274561, i32 355958469, i32 248291472, i32 2127839491, i32 146920100, i32 585982612, i32 1611702337, i32 696506029, i32 1386498192, i32 1258072451, i32 1212240548, i32 1043171860, i32 1217404993, i32 1090770605, i32 1386498193, i32 169093201, i32 541098240, i32 1468005469, i32 456510673, i32 1578687785, i32 1838217424, i32 2010752065, i32 2089828354, i32 1362717428, i32 970073673, i32 854129835, i32 714793201, i32 1266069081, i32 1047060864, i32 1991471829, i32 1098097741, i32 913883585, i32 1669598224, i32 1337918685, i32 1219264706, i32 1799741108, i32 1834116681, i32 683417731, i32 1120274457, i32 1073098457, i32 1648396544, i32 176642749, i32 31171789, i32 718317889, i32 1266977808, i32 1400892508, i32 549749008, i32 1808010512, i32 67112961, i32 1005669825, i32 903663673, i32 1771104465, i32 1277749632, i32 1229754427, i32 950632997, i32 1979371465, i32 2074373264, i32 305357524, i32 1049387408, i32 1171033360, i32 1686114305, i32 2147468765, i32 1941195985, i32 117709841, i32 809550080, i32 991480851, i32 1816248997, i32 1561503561, i32 329575568, i32 780651196, i32 1659144592, i32 1910793616, i32 604016641, i32 1665084765, i32 1530186961, i32 1870928913, i32 809550081, i32 2079346113, i32 71307521, i32 876663040, i32 1073807360, i32 832356664, i32 1573927377, i32 204073344, i32 2026918147, i32 1702476788, i32 2043881033, i32 57949587, i32 2001393952, i32 1197426649, i32 1186508931, i32 332056865, i32 950043140, i32 890043474, i32 349099312, i32 148914948, i32 236204097, i32 2022643605, i32 1441981517, i32 498130129, i32 1443421481, i32 924216797, i32 1817491777, i32 1913146664, i32 1411989632, i32 929068432, i32 495735097, i32 1684636033, i32 1284520017, i32 432816184, i32 1344884865, i32 210843729, i32 676364544, i32 234449232, i32 12112337, i32 1350619139, i32 1753272996, i32 2037118872, i32 1408560528, i32 533334916, i32 1043640385, i32 357326099, i32 201376421, i32 110375493, i32 541106497, i32 416159637, i32 242512193, i32 777294080, i32 1614872576, i32 1535546636, i32 870600145, i32 910810409, i32 1821440209, i32 1605432464, i32 1145147393, i32 951695441, i32 1758494976, i32 1506656568, i32 1557150160, i32 608221521, i32 1073840384, i32 217672017, i32 684818688, i32 1750138880, i32 16777217, i32 677990609, i32 953274371, i32 1770050213, i32 1359128393, i32 1797602707, i32 1984616737, i32 1865815816, i32 2120835200, i32 2051677060, i32 1772234061, i32 1579794881, i32 1652821009, i32 1742099468, i32 1887260865, i32 46468113, i32 1011925248, i32 1134107920, i32 881643832, i32 1354774993, i32 472508800, i32 1892499769, i32 1752793472, i32 1962502272, i32 687898625, i32 883538000, i32 1354355153, i32 1761673473, i32 944820481, i32 2020102353, i32 22020353, i32 961597696, i32 1342242816, i32 964808962, i32 1355809701, i32 17016649, i32 1386540177, i32 647682692, i32 1849012289, i32 751668241, i32 1557184768, i32 127374604, i32 1927564752, i32 1045744913, i32 1614921984, i32 43588881, i32 1016185088, i32 1544617984, i32 1090519041, i32 136122424, i32 215038417, i32 1563027841, i32 2026918145, i32 1688778833, i32 701530369, i32 1372639488, i32 1342242817, i32 2036945104, i32 953274369, i32 1750192384, i32 16842753, i32 964808960, i32 1359020032, i32 1358954497], align 16
@film_grain_db = internal unnamed_addr global %struct.H274FilmGrainDatabase zeroinitializer, align 4
@init_slice.mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@init_slice_c.deblock_factors = internal unnamed_addr constant [13 x i8] c"@GMTZ`gmtz\80\80\80", align 1
@init_slice_c.tmp = internal unnamed_addr global [64 x [64 x i16]] zeroinitializer, align 16
@Gaussian_LUT = internal unnamed_addr constant [2052 x i8] c"\F5\0Cg\F5*\DD\0C;Mb\A9\03A\B2-8\CD\15\0D\F5\EC\ED!\81\11\FA\97\12\13G0\F6\DA*\FEK\BD4\A6!\D1\15\FD\C81\01\C7\D6\FFx\81\94\CF\09\0E\7Fzm4\7F\02\07r\13\1E\0CMpR\C3\81o\CC\E3\02\CF\E8:\E3\B7\0CpCO\FD\8E\A9\FA\FB(:\AF1\E5\E1\DE\972\10\E8\DD\F2\F1\81\C9\EA\C9\81\90\05\E6\B8\7F\7F\FE)W\BF\F07\13[\AF\BF\C0#\F9\CAc\F9X}\E6[\00?<\F2\E9q\DFt\0E\1A3\F0k\F85&\DE\11\F9\04\A5\06??\F1'\DC\137\11\CD(!\DB~\D9\8A\11\E2\00\13b<e\F4\B7\EF\CCb\03\03<!\FD\FE\0A\D6\96\DA\0E\7F\10\81\E1\AA\D9\C8.\D7K\17\ED\EA\BAJ\CA\FE \D3\11\A4;\C0\BD8\9A\E3\A9\DE\A4D\05\B6\C3]\D5\0E\E6\DA\82\EF\10\81@\22\1F]\11\CD\C5GMQ\7F\7F=!\96\A3\00\00K\BBG\7F\ED\91\1E\17\0F\02'\\\05*\02\FA&\0Fr\E2\DB2,j\1Bw\07\B0\19\BC\EB\\\F5\FF\12)\CEO\81\D5\7F\12\0B\EB \CC\1B\A8\A6\D9\ED\F6\18\8AH\E8\D4\02\0CV\95'\DF\81/3\E8\EA.\00\0F\DD\BB\FE\B6\18\FA\00\1D\FD- \E0u\D3O\E8\EF\93\F6\BAX\D0\18\A5x\DB2\81: \AE\F6\EF\F9.\81\F1Y\7F\11b\D9\DF%*\D8\E0\EBi\ED\13\13\C5\F7\1E\00\81\22\7F\ACK\18\D8\CF\81\95\F2-\B5\01\1E\EC)\BC\D8\0C\7F\FD\05\14\B7\C5\81\FD\FD\CB\FA\89]x\B0\CE\00\14\D2CN\F4\EA\81$\D78w\FB\8C\EAD\F2\A6\18\AE\D4\81k\E7\DB(\F9\F9\AE\05\A9,\DE\09\81'F1\C1J\CFm\E5\A7\D1\D9,1\FC<\D6P\09\81\F7\C8\CF}\BE/$u\0F\F5\A0m^\EF\C8F\08\F2\FB2%\D3x\E2\B4(\D2\06\03E\11\B2\01\B1\06\7F+\1A\7F\81\1C\C9\E67p0k\FF\B3\FF5\F7\EA\D5{l\7FfD.\05\01{\F3\C9\DE\CFYA\97\FB^\CB>-\1E.\12\DD\0F)/\9E\E8^\B5\7F\8E\7F\BC\01\EF3\A1/\0C\22\D3\B5Y\95\F7\C6\E3\93\E8\7F\C3\F3M\D3\11\13S\E8\09\7F\BE6\04\1A\0Do+\8F\EA\0A\E8SC\F2K\85;\7F\F4c\ED@\DA6\09\07=\C8\03\C7q\98\C5\03\F7\D1JU\C9\DE\0Cv\1C]\B8\0D\9D\B8\EC\1EH\A2\13\CA@\F4\C1\E7AH\F6\7F\00\81g\EC\B7\90\99\FA\1C\D6\EB\C5\E3\E6\13\FC\CD^\C6\A1\DB#\14\BB\7F\ED\81\EA\88\CB%J\81\FF\F4\89\CB\E4&E\11\10\8EY>\18%\E91\9B\E0\F7\A1\CB\05]\E9\CF\F83\03\B5\A6\F6\D9\7F\AA\EA\14\14qK4\E1\\\C1\07\F4.$e\D5\EF\CB\F9\DA\B4\E1\EB>\1F>\14\81\1F@$f\AB\F6MP:\B1\F8#\08P\E8\F7\03\EFH\7FS\A97\12\89\85$\0A\7F8\C9q\0D\1A \F3\D0\16\F3\05:\1B\18\1A\F5\DC%\A4NQ\093\0EC\F3\00 -\B4 \D9\EA\CF\81\E5\1F\F7$\0EG\0D9\0C\CB\AA5\D4\DD\02\7F\0C\BE\D4.\8D\03\0A8\DDw\ED\C34\C5\81\CF\E9\04\FB\11\AE\FA\7F\19OC@\E7\0E\C0\DB\81\E4\15\C1B\CB\D7m\C2\0F\EA\0D\1D\C1\14\1B_\D4\C5\8C\F6O\CF\16\D5\F0.\D1\88\DC\E3\CC\D4\1D\7F\F31\F7\81K\E4\E9X;\0B\A1Q\C5:<\E6(\A4\FD\EA\C6\D3\C5\EA\CBG\E3B\E0\E9\0E\EF\BE\E8\E4\C2/&\11\10\DB\E8\F5\08\E5\ED;-\CF\D1\FC\EA\AF\1E\BD\81Jf\05\EEb\22\BE*\CC\07\C5\18\C6\ED\E8\8A\B7[\0F\F0O\E0\B1\81\DC)M\AD\028\16\B5\7F\F0\EB\0C\1F8\8F\81Z7=\0C7\F2\8F\F2 1\BD\EF[\F6\01\15E\BAc\ED\90B\A6\F6\F7\B9\7F2\AF\CF\18=\C3\91\07\D7\7FX\BEl\81\FA$\F2)\CE\0E\0EI\9B\E4M\7F\F8\9CX&yX\83\C4\0D\A2\8D\14\BD\A9\A2\89,\E4\E2\12\05\CB\C3\14\D5\0B\B3\C4\0D\1D\03\06\B8&\C4\F5l\CB)B\F4\81\81\CF\18\1D.$[\22\DFt\CD\DE\CC[\07\ADI\E6\99\18\F6LT\05D\B0\F3\EF\E0\D0\142\1A\0A?\98\F2%\7Fra#\01\DF\C9\7F\84\DF=\F9w\E0\81\CB\D6?\03\FB\E6F\C6\DF\D4\D5\22\C8\81\7F\19\DD\F5\10\AF\1D\C6(\81\81\14\D1\F5\DC\C1\CC\E0\AEN\B4\B7\08\1B\B8\F7\B6\AB\AA\C7\19N\F6\9F#\BF\08\C5\0E\01\D6 \A8\D4\11\FD\F7;(\0C\94\D8\18\22\12\E4\023\92\FCd\01A\16\00\7F=-\19\E1\06\09\F9\D0c\10,\FE\D8 \D9\CC\0A\92\ED8\81E\1A3\\(=\CC-\DA\0DUz\1BB-\91\AD\FD\1F%\13\DC:G'\B2\D1:\B2\08\C2\DC\F2=*\81G\FC\18\CA4\81C\FC\D6\1E\C1;\FD\FF\EE\D2\A4\AF\A0\F2\CB\F6\F5\B3\0D\01\08\BD\81\7F\E4\1A\F2\12\F3\E6\02\0A\D2\E0\F1\1B\E1\C5;M\87\1C(\CA\C2\E1\EB\DB\E0\FA\81\E7\C4F\81p\81\7FX\F9tn5W\81\03\10\17J\96\CD\03J\AE\90\B6AQ\195\7F\D3\CE\99\D7\BF\E3O\BD@\DF\E2\F8\7F\00\F3\CDC\F2\05\A4\1D\DD\F8\A6\C7\FD$+,\E1\BB\F9$'\CD+\AF:\06\7F\0C9B.;\D5\D6)\F1\88\18\03\F5\13\F33\1C\037\D0\F4\FF\02a\ED\1D*\0D+N\D48\94\D5\ED\7F\0F\F5\EE\AFS\DBM\93\0FA\CE+\0C\0D\1B\1C=9\1E\1Aj\EE8\0Da\04\F8\C2\99^l\D44\1B\D1\F7i\CB.Yg\DF&\DE73F\A2\DD\A9\95\ED\E1\09\EDO\F2M\05\ED\95U\15\D3\D9\D6\09\E3J/\B5<\81x\90\C7\E0)\07OLB9)\E7\1F%\D1\DC+\B7\DB?\7F\BB\CCZ\DF\C3<\C9,\0F\04\BD\0D\A4@\1D\D9\FDS\FE\DA\AB\AA:#\BB\C3\1D\DB\A1\B2\04\1E\FC\E0\B0\EA\F7\B3.\07\A3\B9A\09\CE\7F\BA\1A\F4\D9\8E?\81\9C\04\E0o\16\C4A\9B\1A\D6\15\C5\E5\B6\02\A2\06~\05L\A8\F7\D5\9B\7F\01}\\\C148\04Q\81\7FP\7F\E3\1Et\B6\EF\C7i0-\19\B80\DA\94\1F\DE\04\F5)\814\98\D5\DB4\02/W\F7M\1B\D7\E7ZV\C8K\0A!N:\7F\7F\F9\B71\DF\96\DD&95\EF\FCS4\946\83\1C\178\D5\A8\EF\FA/\17\F7\00\F3oK\1B\CC\DA\DE'\1EB'&\C0&\03\15\E0\CD\E46\DA\A9\144s\12\AF\BA\00\F2\D2\D2\FD}\10\F2\17\AE\AC\BB\EC\BF\81\09Q\CF=\07\DC\D3\D69\E6/\14\AB.\F3)\DB\B5\C4V\B2\81\0C2\02\FD\0D/\05\13\B2\C9\E5A\B9\0C\94\14\F0\0B\E1?\C9%K\EF\7F\B7\DF\E4\88iDj\99\96G=\02\17\FD!\FB\F1\BD\F1\E9\CA\0F\C1L:\92\01S\E5\16K\D9\EF\F5@\EF\81\CA\BE\1F`t\03\8E\F9\94\C1a\092\08K\E4Hp\DC\90_\CE\17\F3\ED7\15\17\\[\16\CF\10\B5\17\09\CF\9F\DB1\DC$\81\AA+\7F\E8\E8TS\DD\DE\F4mf\DA3\BC\22\13\EA1\E0\7F(\18\A3\FC\FDi\03\C6\EE\08\7F\EE}DE\C2\1E\DC6\C7\E8\11+\DC\E5\C7\BD\EB\F6\CFD\0CA\0407\7F\B5,Y\BE\F3\B2\AE\A5\16\1E!\D8\A9\DE`\A5'\0A\C0\FD\F4\7F\CE\DB\C8\17\DD\DC\CAZ\A5\022M\FA\81\10.\FB\B7\00\C8\EE\B8\1C]<1\14\12o\91 \AD//\F6#\A8+9\9E\7F\EF\00\01\D9\81\FE\00?]\00$\BE\C3\ED'\81:2\EF\7FX\D5\94\CD\F0\07\DCD.\F2k(9\07\13\08\03X\A6\A4\EE\EB\E8\0D\07\FC\B2\A5\FC\08\DD\FB\13\02\91\04\BE\AFz\EC\DE\DB\AC\7FD.\11/\F5\0Cg\F5", align 16
@R64T = internal unnamed_addr constant [64 x [64 x i8]] [[64 x i8] c" -------,,,,+++**))((''&&%$$#\22\22! \1F\1E\1E\1D\1C\1B\1A\19\18\17\16\15\14\13\12\11\10\0F\0E\0D\0C\0B\0A\09\08\07\06\04\03\02\01", [64 x i8] c" --,+*)'&$\22\1F\1D\1A\17\14\11\0E\0B\08\04\01\FE\FA\F7\F4\F1\EE\EB\E8\E5\E2\E0\DE\DC\DA\D8\D7\D5\D4\D4\D3\D3\D3\D3\D3\D4\D5\D6\D8\D9\DB\DD\DF\E2\E4\E7\EA\ED\F0\F3\F6\F9\FD", [64 x i8] c" -,*(%\22\1E\19\14\0F\0A\04\FF\F9\F4\EF\EA\E5\E1\DD\DA\D7\D5\D4\D3\D3\D3\D5\D7\D9\DC\E0\E4\E9\EE\F3\F8\FE\03\09\0E\13\18\1D!$'*,---,+(&\22\1E\1A\15\10\0B\06", [64 x i8] c" -+'#\1E\17\10\09\01\F9\F2\EB\E4\DE\DA\D6\D4\D3\D3\D5\D8\DC\E1\E7\EE\F5\FD\04\0C\13\1A %),--,)&!\1B\14\0D\06\FE\F6\EF\E8\E2\DC\D8\D5\D3\D3\D4\D6\D9\DE\E3\EA\F1\F8", [64 x i8] c" ,)$\1D\14\0B\01\F7\EE\E5\DE\D8\D4\D3\D3\D6\DB\E2\EA\F3\FD\07\10\19!'+--+& \18\0F\06\FC\F2\E9\E1\DA\D6\D3\D3\D5\D9\DE\E6\EF\F8\02\0C\15\1E$),-,(#\1C\13\0A", [64 x i8] c" ,'\1F\15\0A\FE\F2\E7\DE\D7\D3\D3\D6\DC\E4\EF\FA\07\12\1D%+-,(\22\18\0D\01\F5\EA\E0\D9\D4\D3\D5\DA\E2\EC\F7\03\0F\1A#)--*$\1B\10\04\F8\ED\E2\DA\D5\D3\D4\D8\DF\E9\F4", [64 x i8] c" +$\1A\0D\FF\F1\E4\DA\D4\D3\D6\DD\E8\F5\03\11\1E',-)\22\16\09\FA\ED\E1\D8\D3\D3\D8\E0\EC\F9\08\15!)-,'\1E\12\04\F6\E9\DE\D6\D3\D4\DA\E3\F0\FE\0C\19$+-+%\1B\0E", [64 x i8] c" *\22\14\04\F4\E5\DA\D4\D3\D9\E4\F3\03\13!*-+\22\15\06\F5\E6\DA\D4\D3\D9\E3\F2\02\12 )-+#\16\07\F6\E7\DB\D4\D3\D8\E2\F1\01\11\1F)-+$\17\08\F7\E8\DC\D4\D3\D8\E2\F0", [64 x i8] c" )\1E\0E\FC\EA\DC\D4\D4\DB\E9\FA\0D\1E)-*\1F\0F\FD\EB\DC\D4\D3\DA\E8\F9\0C\1D(-* \10\FE\EC\DD\D4\D3\DA\E7\F8\0B\1C(-+!\11\FF\ED\DE\D5\D3\D9\E6\F7\0A\1B'-+\22\12", [64 x i8] c" (\1B\08\F3\E1\D5\D3\DA\EA\FE\12#,,\22\11\FD\E9\DA\D3\D6\E2\F4\09\1C)-(\1A\07\F2\E0\D5\D3\DB\EB\FF\13$,,\22\10\FC\E8\D9\D3\D6\E2\F5\0A\1D)-'\19\06\F1\DF\D5\D3\DC\EC", [64 x i8] c" '\17\01\EB\DA\D3\D8\E7\FD\13%-)\1B\06\EF\DC\D3\D6\E3\F8\0F\22,+\1E\0A\F3\DF\D4\D4\E0\F4\0B\1F+,\22\0E\F7\E2\D5\D3\DD\F0\07\1C*-$\12\FC\E6\D7\D3\DA\EC\02\18(-'\16", [64 x i8] c" &\13\FA\E3\D5\D4\E1\F7\10$-(\16\FE\E6\D6\D3\DE\F4\0D\22-)\19\01\E9\D8\D3\DC\F1\0A ,+\1C\04\EC\D9\D3\DA\EE\07\1E+,\1E\08\EF\DB\D3\D9\EB\03\1B*,!\0B\F2\DD\D3\D7\E8", [64 x i8] c" %\0F\F4\DD\D3\D9\EE\09!-(\15\FA\E2\D4\D6\E8\02\1C++\1B\01\E7\D6\D4\E2\FC\16)- \08\ED\D9\D3\DE\F5\10&-$\0E\F3\DC\D3\DA\EF\0A\22-(\14\F9\E1\D4\D7\E9\03\1D,+\1A", [64 x i8] c" $\0B\EE\D8\D3\E2\FD\19++\18\FC\E1\D3\D9\EF\0C$-#\0A\ED\D8\D4\E2\FE\1A+*\17\FA\E0\D3\D9\F0\0D%-\22\09\EC\D7\D4\E3\FF\1B,*\16\F9\DF\D3\DA\F1\0E&-\22\08\EB\D7\D4\E4", [64 x i8] c" \22\07\E8\D5\D7\ED\0C&-\1E\01\E3\D3\D9\F2\11(,\1A\FC\DF\D3\DC\F7\16+*\15\F6\DC\D3\E0\FD\1B,(\10\F1\D9\D4\E4\02\1F-%\0B\EC\D6\D5\E9\08#-\22\06\E7\D4\D7\EE\0D&-\1E", [64 x i8] c" !\02\E2\D3\DC\F9\1A,&\0B\EA\D5\D8\F1\12**\13\F2\D8\D4\E9\0A&-\1B\FA\DD\D3\E2\01 -\22\03\E3\D3\DC\F8\19,'\0C\EB\D5\D7\F0\11)+\14\F3\D9\D4\E8\09%-\1C\FC\DE\D3\E1", [64 x i8] c" \1F\FE\DE\D3\E4\07%,\18\F5\D9\D5\EC\0F)*\10\ED\D5\D8\F4\17,&\08\E5\D3\DD\FD\1E- \FF\DE\D3\E3\06$-\19\F6\D9\D4\EB\0E)*\11\EE\D5\D8\F3\16,&\09\E6\D3\DC\FC\1E-!", [64 x i8] c" \1E\F9\DA\D5\EE\13,&\06\E2\D3\E3\08'+\11\EC\D4\DB\FC\1F-\1C\F7\D9\D5\F0\15,$\03\E0\D3\E5\0A(*\0F\EA\D4\DC\FE!-\1A\F5\D8\D6\F2\17-#\01\DE\D3\E7\0C))\0D\E8\D3\DE", [64 x i8] c" \1C\F5\D7\D8\F8\1E-\19\F2\D5\DA\FC!-\16\EF\D4\DC\FF#,\13\EC\D4\DE\02%+\10\E9\D3\E0\06'*\0D\E6\D3\E2\09()\0A\E3\D3\E5\0C*'\07\E1\D3\E8\0F+&\03\DE\D3\EB\12,$", [64 x i8] c" \1A\F1\D4\DD\03')\09\E1\D3\EC\15-\1E\F6\D6\DA\FE$+\0E\E5\D3\E7\10,\22\FC\D9\D7\F8 -\13\EA\D3\E2\0B*&\01\DC\D5\F3\1C-\18\EF\D4\DE\06((\07\DF\D4\EE\17-\1D\F4\D5\DB", [64 x i8] c" \18\ED\D3\E3\0E,!\F7\D6\DC\03('\02\DB\D6\F8\22,\0D\E2\D3\EE\19-\17\EC\D3\E4\0F, \F6\D5\DC\04('\01\DA\D7\F9\22+\0C\E2\D3\EF\1A-\16\EB\D3\E5\10,\1F\F5\D5\DD\06)&", [64 x i8] c" \16\E9\D3\EB\18-\14\E7\D3\ED\1A-\12\E5\D3\EF\1C-\10\E3\D3\F1\1E,\0E\E2\D4\F3\1F,\0C\E0\D4\F5!+\0A\DE\D5\F7\22+\08\DD\D6\F9$*\06\DC\D7\FC%)\03\DA\D8\FE&(\01\D9\D9", [64 x i8] c" \14\E5\D3\F3!+\06\DA\D9\02)#\F6\D4\E2\11-\17\E8\D3\F0\1E,\09\DC\D7\FF(%\F9\D5\E0\0E-\1A\EB\D3\ED\1C,\0C\DE\D6\FC&'\FD\D6\DE\0B,\1D\EE\D3\EA\19-\0F\E1\D5\F8$(", [64 x i8] c" \12\E2\D5\FC'$\F6\D4\E6\17-\0D\DE\D7\01*!\F1\D3\EB\1C,\08\DA\DA\07,\1D\EC\D3\F0 *\02\D8\DD\0C-\18\E7\D3\F5$(\FD\D5\E1\11-\13\E2\D5\FA'%\F7\D4\E5\16-\0E\DE\D7", [64 x i8] c" \10\DE\D8\04,\1B\E8\D4\F8'$\F3\D3\ED\1F*\FF\D5\E2\15-\0B\DB\DA\0A-\16\E3\D5\FE) \EE\D3\F2#'\F9\D4\E7\1A,\06\D8\DE\0F-\11\DF\D7\03+\1C\E9\D3\F7&$\F4\D3\EC\1E*", [64 x i8] c" \0E\DC\DB\0D-\0F\DC\DA\0C-\10\DD\DA\0B-\11\DE\D9\0A-\12\DE\D9\09-\13\DF\D8\08-\14\E0\D8\07-\15\E1\D7\06,\16\E2\D7\04,\17\E2\D6\03,\18\E3\D6\02,\19\E4\D5\01+\1A\E5\D5", [64 x i8] c" \0C\D9\DF\15,\02\D5\E7\1E)\F8\D3\F0$$\EF\D3\F9)\1D\E6\D5\03,\14\DE\DA\0D-\0B\D9\E0\16,\01\D5\E8\1E(\F7\D3\F1%#\EE\D3\FA*\1C\E5\D6\04-\13\DE\DA\0E-\0A\D8\E1\17,", [64 x i8] c" \0A\D7\E4\1D(\F5\D3\F7)\1B\E2\D8\0C-\08\D6\E6\1E'\F3\D3\F9*\19\E1\D9\0E-\06\D5\E8 &\F1\D3\FC+\17\DF\DA\10-\03\D5\EA\22%\EF\D3\FE,\15\DE\DC\12,\01\D4\EC#$\ED\D4", [64 x i8] c" \08\D5\EA#\22\E9\D6\09-\07\D5\EB$\22\E8\D6\0A-\06\D5\EC$!\E7\D7\0B-\04\D4\ED% \E6\D7\0C-\03\D4\EE&\1F\E5\D8\0D-\02\D4\EF&\1E\E4\D8\0E-\01\D4\F0'\1E\E3\D9\0F-", [64 x i8] c" \06\D4\F0(\1A\DE\DE\19(\F1\D4\04-\07\D4\EF'\1B\DF\DD\18)\F2\D4\03-\08\D5\EE'\1C\E0\DC\17)\F3\D3\02-\09\D5\ED&\1D\E1\DC\16*\F4\D3\01-\0A\D5\EC&\1E\E2\DB\15*\F5\D3", [64 x i8] c" \03\D3\F6+\10\D7\EA&\1C\DE\DF\1D%\E9\D8\11+\F5\D3\04-\02\D3\F7,\0F\D7\EB&\1B\DE\E0\1E$\E8\D8\12+\F4\D4\06-\01\D3\F8,\0E\D6\EC'\1A\DD\E1\1E$\E7\D9\13*\F3\D4\07-", [64 x i8] c" \01\D3\FD-\06\D3\F8,\0A\D4\F4+\0E\D5\F0*\12\D7\EC(\16\D9\E8&\1A\DC\E4#\1E\DE\E1 !\E2\DE\1D$\E5\DB\19&\E9\D9\15(\ED\D7\11*\F1\D5\0D,\F5\D4\09-\F9\D3\04-\FE\D3", [64 x i8] c" \FF\D3\03-\FA\D3\08,\F6\D4\0C+\F2\D5\10*\EE\D7\14(\EA\D9\18&\E6\DC\1C#\E2\DE\1F \DF\E2\22\1D\DC\E5%\19\DA\E9'\15\D8\ED)\11\D6\F1+\0D\D4\F5,\09\D3\F9-\04\D3\FE-", [64 x i8] c" \FD\D3\0A+\F0\D7\16&\E4\DE!\1D\DB\E9(\11\D5\F5-\04\D3\02-\F7\D4\0F)\EB\DA\1B\22\E0\E2$\18\D8\EE+\0C\D4\FA-\FF\D3\08,\F2\D6\14'\E6\DD\1F\1E\DC\E7'\13\D6\F3,\07\D3", [64 x i8] c" \FA\D4\10(\E6\DE\22\19\D8\F1,\04\D3\07,\EF\D9\1B!\DD\E8)\0E\D4\FD-\F8\D5\12'\E4\E0$\17\D7\F3-\02\D3\09+\ED\DA\1D\1F\DC\EA*\0C\D3\FF-\F6\D5\14&\E2\E2%\15\D6\F5-", [64 x i8] c" \F8\D5\16#\DE\E9*\09\D3\07+\EB\DC\22\18\D6\F6-\FA\D5\14$\DF\E7)\0B\D3\04,\ED\DB \1A\D7\F4-\FD\D4\12&\E1\E5(\0D\D3\02,\EF\DA\1E\1C\D8\F2-\FF\D4\10'\E2\E3'\0F\D3", [64 x i8] c" \F6\D7\1C\1D\D8\F5-\F7\D7\1B\1E\D8\F4-\F8\D6\1A\1E\D9\F3-\F9\D6\19\1F\D9\F2-\FA\D5\18 \DA\F1-\FC\D5\17!\DA\F0-\FD\D5\16\22\DB\EF-\FE\D4\15\22\DC\EE,\FF\D4\14#\DC\ED,", [64 x i8] c" \F4\D9!\15\D4\02+\E7\E2)\08\D3\10$\DC\EF-\F9\D7\1D\1A\D5\FD,\EC\DE&\0D\D3\0B'\E0\EA,\FF\D5\18\1E\D8\F7-\F1\DB#\12\D3\06*\E4\E5*\04\D3\13\22\DA\F2-\F6\D8\1F\17\D4", [64 x i8] c" \F2\DC%\0D\D3\0F$\DA\F4-\F0\DD&\0B\D3\11\22\D9\F6-\EE\DE'\09\D3\13!\D8\F8-\EC\E0(\07\D3\15\1F\D7\FA,\EA\E2)\04\D4\17\1E\D6\FD,\E8\E3*\02\D4\19\1C\D5\FF+\E6\E5+", [64 x i8] c" \F0\DE(\04\D4\1B\18\D4\08'\DC\F3-\ED\E1*\01\D5\1E\15\D3\0B%\DA\F6-\EA\E3+\FE\D7 \12\D3\0E#\D9\F9,\E7\E6,\FA\D8\22\0F\D3\11!\D7\FD+\E4\E9-\F7\DA$\0C\D3\14\1E\D6", [64 x i8] c" \EE\E2+\FC\D9$\0A\D4\1A\17\D3\0D\22\D7\FF*\DF\F1-\EB\E4,\F8\DA&\07\D4\1D\14\D3\10 \D6\02(\DD\F4-\E8\E7-\F5\DC(\03\D5\1F\11\D3\13\1E\D5\06'\DB\F7,\E5\EA-\F2\DE)", [64 x i8] c" \EC\E5-\F3\DF+\FA\DA'\02\D7#\0A\D4\1E\11\D3\17\18\D3\10\1E\D4\09$\D7\01(\DB\F9+\E0\F2-\E6\EB-\ED\E4,\F4\DE*\FC\DA'\03\D6\22\0B\D4\1D\12\D3\16\19\D3\0F\1F\D5\08$\D8", [64 x i8] c" \EA\E9-\EB\E8-\EC\E7-\ED\E6-\EE\E5-\EF\E4-\F0\E3-\F1\E2,\F2\E2,\F3\E1,\F4\E0,\F5\DF+\F6\DE+\F7\DE+\F8\DD*\F9\DC*\FA\DC)\FC\DB)\FD\DA(\FE\DA(\FF\D9'", [64 x i8] c" \E8\ED-\E3\F2,\DF\F7*\DC\FD(\D9\02%\D6\08\22\D4\0D\1E\D3\12\19\D3\17\14\D3\1C\0F\D4 \0A\D5$\04\D8'\FF\DA)\F9\DE+\F4\E2-\EF\E6-\EA\EB-\E5\F0,\E1\F5+\DD\FA)\DA", [64 x i8] c" \E6\F1,\DD\FD'\D7\09\1F\D3\14\15\D3\1E\0A\D6&\FE\DC+\F2\E5-\E7\F0,\DE\FC'\D7\08 \D3\13\16\D3\1E\0B\D6&\FF\DC+\F3\E4-\E8\EF,\DE\FA(\D8\07!\D4\12\17\D3\1D\0C\D5%", [64 x i8] c" \E4\F5)\D8\08\1E\D3\19\0E\D5&\FC\DF-\EA\EF,\DC\01#\D4\13\14\D4\22\02\DB+\F0\E9-\E0\FA'\D6\0D\1A\D3\1E\09\D8)\F6\E3-\E5\F4*\D9\07\1F\D3\18\0F\D5&\FD\DE-\EB\EE,\DC", [64 x i8] c" \E2\F9&\D5\12\13\D4&\FA\E2-\E3\F8'\D5\11\14\D4%\FC\E1-\E4\F7'\D5\10\15\D4$\FD\E0-\E5\F6(\D6\0F\16\D4$\FE\DF-\E6\F5(\D6\0E\17\D3#\FF\DE-\E7\F4)\D7\0D\18\D3\22", [64 x i8] c" \E1\FE\22\D3\1C\07\DB,\E8\F5'\D5\14\0F\D7*\F0\ED+\D8\0C\17\D4&\F8\E5-\DD\03\1E\D3 \01\DE-\E3\FA$\D3\19\0A\D9,\EB\F2)\D6\11\12\D5(\F3\EA,\DA\09\1A\D3$\FC\E2-\DF", [64 x i8] c" \DF\02\1E\D3$\F9\E6,\DA\0B\16\D5(\F1\EE*\D6\13\0E\D8,\E9\F6&\D3\1B\06\DD-\E2\FF \D3\22\FD\E3-\DC\08\19\D4'\F4\EB+\D7\10\11\D7+\EC\F3'\D4\18\09\DB-\E4\FC\22\D3\1F", [64 x i8] c" \DE\07\18\D5)\ED\F4&\D3\1E\FF\E3-\D9\0E\11\D8,\E6\FC!\D3$\F7\EA+\D6\15\0A\DC-\E0\03\1B\D4(\F0\F1'\D4\1C\02\E1-\DB\0B\14\D6+\E9\F8#\D3\22\FA\E7,\D7\12\0D\DA-\E2", [64 x i8] c" \DC\0B\12\D8-\E2\03\19\D5+\E8\FC\1F\D3'\EF\F4$\D3#\F6\ED(\D4\1E\FE\E6+\D6\17\06\E0-\D9\10\0D\DB-\DE\09\14\D7,\E3\01\1B\D4*\EA\F9!\D3&\F1\F2&\D3\22\F8\EB)\D4\1C", [64 x i8] c" \DB\0F\0C\DD-\D9\12\09\DF-\D8\15\06\E2,\D6\18\02\E4+\D5\1B\FF\E7*\D4\1E\FC\EA)\D3 \F8\ED'\D3\22\F5\F0&\D3$\F2\F3$\D3&\EF\F6\22\D3(\EC\F9\1F\D4)\E9\FD\1D\D4+\E6", [64 x i8] c" \DA\13\06\E3+\D4\1F\F7\F0$\D3(\EA\FE\1A\D6-\DE\0C\0D\DE-\D7\19\FF\E9(\D3$\F1\F6 \D4+\E4\04\14\D9-\DA\12\07\E2+\D4\1E\F8\EF%\D3'\EB\FD\1B\D6,\DF\0B\0E\DD-\D7\18", [64 x i8] c" \D9\17\FF\EB&\D3(\E7\03\13\DB-\D7\1B\FA\EF$\D3*\E3\08\0F\DE,\D5\1E\F6\F3!\D4,\E0\0C\0B\E1+\D4\22\F2\F7\1E\D5-\DD\10\07\E4*\D3$\EE\FC\1A\D7-\DA\14\02\E8(\D3'\EA", [64 x i8] c" \D8\1B\F8\F3\1F\D5-\DA\16\FE\EE#\D4,\DE\11\03\E9&\D3*\E2\0C\09\E4)\D3(\E6\07\0E\E0+\D3%\EB\01\13\DC,\D4\22\F0\FC\18\D9-\D6\1E\F5\F6\1D\D7-\D9\19\FA\F1!\D5-\DC\14", [64 x i8] c" \D7\1E\F2\FC\16\DC,\D4%\E9\06\0D\E2)\D3*\E1\0F\03\EB$\D4-\DA\18\F9\F4\1D\D8-\D6 \F0\FE\14\DD,\D3&\E7\08\0B\E4(\D3+\DF\11\01\ED\22\D5-\D9\1A\F7\F6\1B\D9-\D5\22\EE", [64 x i8] c" \D6\22\EC\04\0C\E5&\D4-\D9\1C\F3\FD\13\DF*\D3+\DE\15\FA\F5\1A\DA,\D3'\E3\0E\02\EE \D7-\D5#\EA\07\0A\E7%\D4-\D8\1E\F1\FF\11\E1)\D3+\DC\17\F8\F7\18\DC,\D3(\E2\10", [64 x i8] c" \D5$\E6\0D\01\F1\1C\DA,\D3*\DD\18\F5\FD\11\E2'\D4-\D7\22\EA\09\06\ED\1F\D8-\D3(\E0\14\F9\F8\15\DF)\D3,\D9\1E\EE\04\0A\E9\22\D6-\D4&\E3\10\FE\F4\19\DC+\D3+\DB\1B\F2", [64 x i8] c" \D4'\E1\15\F6\FE\0E\E7\22\D7-\D3*\DC\1C\EF\06\07\EE\1D\DB+\D3,\D8\22\E8\0D\FF\F5\16\E0'\D4-\D5&\E2\14\F7\FD\0F\E6#\D7-\D3*\DC\1B\F0\04\08\ED\1E\DA+\D3,\D8!\E9\0C", [64 x i8] c" \D4)\DC\1D\EC\0B\FF\F7\12\E5\22\D8,\D3-\D6%\E2\16\F3\03\07\F0\19\DF'\D5-\D3+\DA \E8\0F\FA\FC\0E\E9\1F\DA*\D3-\D5'\DE\1A\EF\08\02\F4\15\E2$\D7,\D3,\D8#\E4\13\F6", [64 x i8] c" \D3+\D9#\E2\17\F0\09\FF\F9\0E\EB\1C\DE&\D6,\D3-\D5(\DC\1F\E7\12\F5\03\04\F4\13\E6 \DB)\D4-\D3,\D7&\DF\1B\EC\0D\FA\FE\0A\EF\18\E2$\D8+\D3-\D4*\D9\22\E3\16\F1\08", [64 x i8] c" \D3,\D6(\DB\22\E2\19\EC\0F\F6\04\01\F9\0C\EF\16\E5\1F\DD&\D7+\D4-\D3-\D5)\D9$\E0\1C\E9\12\F3\08\FE\FD\09\F2\13\E8\1D\DF$\D9*\D4-\D3-\D4+\D8&\DE\1E\E6\15\F0\0B\FA", [64 x i8] c" \D3-\D4+\D6)\D9&\DC\22\E1\1D\E6\17\EC\11\F2\0B\F8\04\FF\FE\06\F7\0C\F1\12\EB\18\E5\1E\E0\22\DC&\D8)\D5,\D4-\D3-\D3-\D4+\D6(\D9%\DD!\E2\1C\E7\16\ED\10\F3\0A\F9\03", [64 x i8] c" \D3-\D3-\D3-\D3,\D4,\D4+\D5+\D6*\D7)\D8(\D9'\DA&\DB$\DC#\DE\22\DF \E1\1E\E2\1D\E4\1B\E6\19\E8\17\EA\15\EC\13\EE\11\F0\0F\F2\0D\F4\0B\F6\09\F8\07\FA\04\FD\02\FF"], align 16

; Function Attrs: nounwind uwtable
define range(i32 -1163346256, 1) i32 @ff_h274_apply_film_grain(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.AVFilmGrainH274Params, align 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10788) %3, ptr noundef nonnull align 8 dereferenceable(10788) %i.a, i64 10788, i1 false), !tbaa.struct !64
  %i.b = load i32, ptr %3, align 4, !tbaa !66
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit127

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %.not106 = icmp eq i32 %i.d, 0
  br i1 %.not106, label %.preheader126, label %.loopexit127

.preheader126:                                    ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1570 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 801
  br label %bb.c

bb.c:                                             ; preds = %.preheader126, %.loopexit123
  %indvars.iv180 = phi i64 [ 0, %.preheader126 ], [ %indvars.iv.next181, %.loopexit123 ] ; 19 uses
  %i.p = load i64, ptr %i.e, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr @ff_h274_apply_film_grain.color_offset, i64 %indvars.iv180
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10
  %.tr = trunc i64 %i.p to i8
  %.narrow = add i8 %i.r, %.tr
  %i.s = zext i8 %.narrow to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @Seed_LUT, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %.not107 = icmp eq i64 %indvars.iv180, 0
  %i.v = load i32, ptr %i.i, align 8, !tbaa !69   ; 3 uses
  br i1 %.not107, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.j, align 4, !tbaa !70   ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv180
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv180
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9   ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv180
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv180
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9  ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv180
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  %.not108 = icmp eq i32 %i.ag, 0
  br i1 %.not108, label %bb.e, label %.loopexit125

.thread:                                          ; preds = %bb.c
  %i.ah = add nsw i32 %i.v, 1
  %i.ai = ashr i32 %i.ah, 1                       ; 4 uses
  %i.aj = load i32, ptr %i.j, align 4, !tbaa !70
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = ashr i32 %i.ak, 1                       ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv180
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24 ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv180
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9  ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv180
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv180
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9  ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv180
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9
  %.not108189 = icmp eq i32 %i.av, 0
  br i1 %.not108189, label %bb.e, label %.preheader124

bb.e:                                             ; preds = %.thread, %bb.d
  %i.aw = phi i32 [ %i.at, %.thread ], [ %i.ae, %bb.d ]
  %i.ax = phi ptr [ %i.ar, %.thread ], [ %i.ac, %bb.d ]
  %i.ay = phi i32 [ %i.ap, %.thread ], [ %i.aa, %bb.d ]
  %i.az = phi ptr [ %i.an, %.thread ], [ %i.y, %bb.d ]
  %i.ba = phi i32 [ %i.al, %.thread ], [ %i.w, %bb.d ]
  %i.bb = phi i32 [ %i.ai, %.thread ], [ %i.v, %bb.d ]
  tail call void @av_image_copy_plane(ptr noundef %i.az, i32 noundef %i.ay, ptr noundef %i.ax, i32 noundef %i.aw, i32 noundef %i.bb, i32 noundef %i.ba) #7
  br label %.loopexit123

.preheader124:                                    ; preds = %.thread
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv180
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !72 ; 4 uses
  %.not148 = icmp eq i16 %i.bd, 0
  br i1 %.not148, label %.loopexit125, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader124
  %i.be = getelementptr inbounds nuw [3072 x i8], ptr %i.l, i64 %indvars.iv180 ; 3 uses
  %i.bf = zext i16 %i.bd to i64                   ; 2 uses
  %xtraiter = and i64 %i.bf, 1
  %i.bg = icmp eq i16 %i.bd, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bf, 65534
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !72
  %i.bj = ashr i16 %i.bi, 1
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  %i.bl = load <2 x i16>, ptr %i.bk, align 4, !tbaa !72
  %i.bm = shl <2 x i16> %i.bl, splat (i16 1)
  store <2 x i16> %i.bm, ptr %i.bk, align 4, !tbaa !72
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !72
  %i.bq = ashr i16 %i.bp, 1
  store i16 %i.bq, ptr %i.bo, align 2, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 14 ; 2 uses
  %i.bs = load <2 x i16>, ptr %i.br, align 4, !tbaa !72
  %i.bt = shl <2 x i16> %i.bs, splat (i16 1)
  store <2 x i16> %i.bt, ptr %i.br, align 4, !tbaa !72
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit125.loopexit.unr-lcssa, label %bb.f, !llvm.loop !34

.loopexit125.loopexit.unr-lcssa:                  ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit125, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit125.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit125.loopexit.unr-lcssa ]
  %lcmp.mod319 = trunc i16 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod319)
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv.epil.init ; 3 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !72
  %i.bw = ashr i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 2 uses
  %i.by = load <2 x i16>, ptr %i.bx, align 4, !tbaa !72
  %i.bz = shl <2 x i16> %i.by, splat (i16 1)
  store <2 x i16> %i.bz, ptr %i.bx, align 4, !tbaa !72
  br label %.loopexit125

.loopexit125:                                     ; preds = %.epil.preheader, %.loopexit125.loopexit.unr-lcssa, %bb.d, %.preheader124
  %i.ca = phi i32 [ %i.v, %bb.d ], [ %i.ai, %.preheader124 ], [ %i.ai, %.loopexit125.loopexit.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 6 uses
  %i.cb = phi i32 [ %i.w, %bb.d ], [ %i.al, %.preheader124 ], [ %i.al, %.loopexit125.loopexit.unr-lcssa ], [ %i.al, %.epil.preheader ] ; 3 uses
  %i.cc = phi ptr [ %i.y, %bb.d ], [ %i.an, %.preheader124 ], [ %i.an, %.loopexit125.loopexit.unr-lcssa ], [ %i.an, %.epil.preheader ] ; 4 uses
  %i.cd = phi i32 [ %i.aa, %bb.d ], [ %i.ap, %.preheader124 ], [ %i.ap, %.loopexit125.loopexit.unr-lcssa ], [ %i.ap, %.epil.preheader ] ; 3 uses
  %i.ce = phi ptr [ %i.ac, %bb.d ], [ %i.ar, %.preheader124 ], [ %i.ar, %.loopexit125.loopexit.unr-lcssa ], [ %i.ar, %.epil.preheader ] ; 4 uses
  %i.cf = phi i32 [ %i.ae, %bb.d ], [ %i.at, %.preheader124 ], [ %i.at, %.loopexit125.loopexit.unr-lcssa ], [ %i.at, %.epil.preheader ] ; 3 uses
  %i.cg = icmp sgt i32 %i.cb, 0
  br i1 %i.cg, label %.preheader121.lr.ph, label %.loopexit123

.preheader121.lr.ph:                              ; preds = %.loopexit125
  %i.ch = icmp sgt i32 %i.ca, 0
  %i.ci = sext i32 %i.cf to i64                   ; 8 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv180
  %i.ck = getelementptr inbounds nuw [256 x i8], ptr %i.n, i64 %indvars.iv180
  %i.cl = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %indvars.iv180
  %i.cm = getelementptr inbounds nuw [3072 x i8], ptr %i.l, i64 %indvars.iv180
  %i.cn = sext i32 %i.cd to i64                   ; 15 uses
  br i1 %i.ch, label %.preheader121.us.preheader, label %.loopexit123

.preheader121.us.preheader:                       ; preds = %.preheader121.lr.ph
  %i.co = zext nneg i32 %i.ca to i64              ; 10 uses
  %i.cp = zext nneg i32 %i.cb to i64              ; 3 uses
  %i.cq = shl nsw i64 %i.cn, 1
  %i.cr = mul nsw i64 %i.cn, 3
  %i.cs = shl nsw i64 %i.cn, 2
  %i.ct = mul nsw i64 %i.cn, 5
  %i.cu = mul nsw i64 %i.cn, 6
  %i.cv = mul nsw i64 %i.cn, 7
  br label %.preheader121.us

.preheader121.us:                                 ; preds = %.preheader121.us.preheader, %._crit_edge.us
  %indvars.iv172 = phi i64 [ 0, %.preheader121.us.preheader ], [ %indvars.iv.next173, %._crit_edge.us ] ; 2 uses
  %.0114142.us = phi i32 [ %i.u, %.preheader121.us.preheader ], [ %i.dc, %._crit_edge.us ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader121.us, %.critedge.us
  %indvars.iv169 = phi i64 [ 0, %.preheader121.us ], [ %indvars.iv.next170, %.critedge.us ] ; 2 uses
  %.1139.us = phi i32 [ %.0114142.us, %.preheader121.us ], [ %i.dc, %.critedge.us ] ; 5 uses
  %4 = and i32 %.1139.us, 1
  %5 = bitcast i32 %.1139.us to <2 x i16>
  %6 = shufflevector <2 x i16> %5, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  %7 = urem <2 x i16> %6, <i16 52, i16 56>
  %8 = and <2 x i16> %7, <i16 60, i16 56>         ; 2 uses
  %i.cw = lshr i32 %.1139.us, 2
  %i.cx = lshr i32 %.1139.us, 30
  %i.cy = shl i32 %.1139.us, 1
  %i.cz = xor i32 %i.cw, %i.cx
  %i.da = and i32 %i.cz, 1
  %i.db = or disjoint i32 %i.da, %i.cy
  %i.dc = xor i32 %i.db, 1                        ; 2 uses
  %.not50.i.us = icmp eq i32 %4, 0
  %9 = extractelement <2 x i16> %8, i64 0
  %i.dd = zext nneg i16 %9 to i64
  %10 = extractelement <2 x i16> %8, i64 1
  %i.de = zext nneg i16 %10 to i64
  br label %bb.h

bb.h:                                             ; preds = %.critedge2.us, %bb.g
  %i.df = phi i1 [ false, %.critedge2.us ], [ true, %bb.g ]
  %indvars.iv166 = phi i64 [ 8, %.critedge2.us ], [ 0, %bb.g ] ; 2 uses
  %i.dg = or disjoint i64 %indvars.iv166, %indvars.iv172 ; 3 uses
  %i.dh = icmp samesign ult i64 %i.dg, %i.cp
  br i1 %i.dh, label %.preheader120.us, label %.critedge.us

bb.i:                                             ; preds = %.preheader120.us, %generate.exit.us
  %i.di = phi i1 [ true, %.preheader120.us ], [ false, %generate.exit.us ]
  %indvars.iv163 = phi i64 [ 0, %.preheader120.us ], [ 8, %generate.exit.us ] ; 2 uses
  %i.dj = or disjoint i64 %indvars.iv163, %indvars.iv169 ; 4 uses
  %i.dk = icmp samesign ult i64 %i.dj, %i.co
  br i1 %i.dk, label %bb.j, label %.critedge2.us

bb.j:                                             ; preds = %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bbd, i64 %i.dj ; 21 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bbf, i64 %i.dj ; 9 uses
  %.not119.us = icmp eq i64 %i.dj, 0
  %i.dn = load i32, ptr %i.m, align 4, !tbaa !73
  %i.do = add i32 %i.dn, 6
  %i.dp = load i8, ptr %i.dm, align 1, !tbaa !10
  %i.dq = zext i8 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !10
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !10
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !10
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !10
  %i.ec = zext i8 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 5
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !10
  %i.ef = zext i8 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 6
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !10
  %i.ei = zext i8 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dm, i64 7
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.el = zext i8 %i.ek to i32
  %i.em = getelementptr inbounds i8, ptr %i.dm, i64 %i.ci ; 9 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !10
  %i.eo = zext i8 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !10
  %i.er = zext i8 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !10
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !10
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !10
  %i.fa = zext i8 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 5
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !10
  %i.fd = zext i8 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !10
  %i.fg = zext i8 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 7
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !10
  %i.fj = zext i8 %i.fi to i32
  %i.fk = getelementptr inbounds i8, ptr %i.em, i64 %i.ci ; 9 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !10
  %i.fm = zext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !10
  %i.fp = zext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !10
  %i.fs = zext i8 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 3
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !10
  %i.fv = zext i8 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !10
  %i.fy = zext i8 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 5
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !10
  %i.gb = zext i8 %i.ga to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 6
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !10
  %i.ge = zext i8 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 7
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !10
  %i.gh = zext i8 %i.gg to i32
  %i.gi = getelementptr inbounds i8, ptr %i.fk, i64 %i.ci ; 9 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !10
  %i.gk = zext i8 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !10
  %i.gn = zext i8 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !10
  %i.gq = zext i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !10
  %i.gt = zext i8 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !10
  %i.gw = zext i8 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gi, i64 5
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !10
  %i.gz = zext i8 %i.gy to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gi, i64 6
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !10
  %i.hc = zext i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gi, i64 7
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !10
  %i.hf = zext i8 %i.he to i32
  %i.hg = getelementptr inbounds i8, ptr %i.gi, i64 %i.ci ; 9 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !10
  %i.hi = zext i8 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !10
  %i.hl = zext i8 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !10
  %i.ho = zext i8 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 3
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !10
  %i.hr = zext i8 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !10
  %i.hu = zext i8 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 5
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !10
  %i.hx = zext i8 %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hg, i64 6
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !10
  %i.ia = zext i8 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hg, i64 7
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !10
  %i.id = zext i8 %i.ic to i32
  %i.ie = getelementptr inbounds i8, ptr %i.hg, i64 %i.ci ; 9 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !10
  %i.ig = zext i8 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !10
  %i.ij = zext i8 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !10
  %i.im = zext i8 %i.il to i32
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 3
  %i.io = load i8, ptr %i.in, align 1, !tbaa !10
  %i.ip = zext i8 %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !10
  %i.is = zext i8 %i.ir to i32
  %i.it = getelementptr inbounds nuw i8, ptr %i.ie, i64 5
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !10
  %i.iv = zext i8 %i.iu to i32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ie, i64 6
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !10
  %i.iy = zext i8 %i.ix to i32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ie, i64 7
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !10
  %i.jb = zext i8 %i.ja to i32
  %i.jc = getelementptr inbounds i8, ptr %i.ie, i64 %i.ci ; 9 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !10
  %i.je = zext i8 %i.jd to i32
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !10
  %i.jh = zext i8 %i.jg to i32
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !10
  %i.jk = zext i8 %i.jj to i32
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jc, i64 3
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !10
  %i.jn = zext i8 %i.jm to i32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !10
  %i.jq = zext i8 %i.jp to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jc, i64 5
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !10
  %i.jt = zext i8 %i.js to i32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jc, i64 6
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !10
  %i.jw = zext i8 %i.jv to i32
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jc, i64 7
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !10
  %i.jz = zext i8 %i.jy to i32
  %i.ka = getelementptr inbounds i8, ptr %i.jc, i64 %i.ci ; 8 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !10
  %i.kc = zext i8 %i.kb to i32
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !10
  %i.kf = zext i8 %i.ke to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !10
  %i.ki = zext i8 %i.kh to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 3
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !10
end_hunk_0
