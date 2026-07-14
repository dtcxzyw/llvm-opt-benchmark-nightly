inline.NumInlined: 194
inline.NumDeleted: 109
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.44" = type { [64 x i64] }
%"struct.Stockfish::Magic" = type { i64, ptr }
%"struct.Stockfish::MoveList" = type { [256 x %"class.Stockfish::Move"], ptr }
%"class.Stockfish::Move" = type { i16 }
%"struct.Stockfish::MoveList.2" = type { [256 x %"class.Stockfish::Move"], ptr }
%"struct.Stockfish::MoveList.6" = type { [256 x %"class.Stockfish::Move"], ptr }

$_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE1EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE = comdat any

$_ZN9Stockfish13PseudoAttacksE = comdat any

@_ZN9StockfishL10PieceValueE = internal unnamed_addr constant [16 x i32] [i32 0, i32 208, i32 781, i32 825, i32 1276, i32 2538, i32 0, i32 0, i32 0, i32 208, i32 781, i32 825, i32 1276, i32 2538, i32 0, i32 0], align 16
@_ZN9Stockfish13PseudoAttacksE = linkonce_odr dso_local local_unnamed_addr constant { <{ { <{ [56 x i64], [8 x i64] }> }, %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44" }> } { <{ { <{ [56 x i64], [8 x i64] }> }, %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44", %"struct.std::array.44" }> <{ { <{ [56 x i64], [8 x i64] }> } { <{ [56 x i64], [8 x i64] }> <{ [56 x i64] [i64 512, i64 1280, i64 2560, i64 5120, i64 10240, i64 20480, i64 40960, i64 16384, i64 131072, i64 327680, i64 655360, i64 1310720, i64 2621440, i64 5242880, i64 10485760, i64 4194304, i64 33554432, i64 83886080, i64 167772160, i64 335544320, i64 671088640, i64 1342177280, i64 2684354560, i64 1073741824, i64 8589934592, i64 21474836480, i64 42949672960, i64 85899345920, i64 171798691840, i64 343597383680, i64 687194767360, i64 274877906944, i64 2199023255552, i64 5497558138880, i64 10995116277760, i64 21990232555520, i64 43980465111040, i64 87960930222080, i64 175921860444160, i64 70368744177664, i64 562949953421312, i64 1407374883553280, i64 2814749767106560, i64 5629499534213120, i64 11258999068426240, i64 22517998136852480, i64 45035996273704960, i64 18014398509481984, i64 144115188075855872, i64 360287970189639680, i64 720575940379279360, i64 1441151880758558720, i64 2882303761517117440, i64 5764607523034234880, i64 -6917529027641081856, i64 4611686018427387904], [8 x i64] zeroinitializer }> }, %"struct.std::array.44" { [64 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 2, i64 5, i64 10, i64 20, i64 40, i64 80, i64 160, i64 64, i64 512, i64 1280, i64 2560, i64 5120, i64 10240, i64 20480, i64 40960, i64 16384, i64 131072, i64 327680, i64 655360, i64 1310720, i64 2621440, i64 5242880, i64 10485760, i64 4194304, i64 33554432, i64 83886080, i64 167772160, i64 335544320, i64 671088640, i64 1342177280, i64 2684354560, i64 1073741824, i64 8589934592, i64 21474836480, i64 42949672960, i64 85899345920, i64 171798691840, i64 343597383680, i64 687194767360, i64 274877906944, i64 2199023255552, i64 5497558138880, i64 10995116277760, i64 21990232555520, i64 43980465111040, i64 87960930222080, i64 175921860444160, i64 70368744177664, i64 562949953421312, i64 1407374883553280, i64 2814749767106560, i64 5629499534213120, i64 11258999068426240, i64 22517998136852480, i64 45035996273704960, i64 18014398509481984] }, %"struct.std::array.44" { [64 x i64] [i64 132096, i64 329728, i64 659712, i64 1319424, i64 2638848, i64 5277696, i64 10489856, i64 4202496, i64 33816580, i64 84410376, i64 168886289, i64 337772578, i64 675545156, i64 1351090312, i64 2685403152, i64 1075839008, i64 8657044482, i64 21609056261, i64 43234889994, i64 86469779988, i64 172939559976, i64 345879119952, i64 687463207072, i64 275414786112, i64 2216203387392, i64 5531918402816, i64 11068131838464, i64 22136263676928, i64 44272527353856, i64 88545054707712, i64 175990581010432, i64 70506185244672, i64 567348067172352, i64 1416171111120896, i64 2833441750646784, i64 5666883501293568, i64 11333767002587136, i64 22667534005174272, i64 45053588738670592, i64 18049583422636032, i64 145241105196122112, i64 362539804446949376, i64 725361088165576704, i64 1450722176331153408, i64 2901444352662306816, i64 5802888705324613632, i64 -6913025356609880064, i64 4620693356194824192, i64 288234782788157440, i64 576469569871282176, i64 1224997833292120064, i64 2449995666584240128, i64 4899991333168480256, i64 -8646761407372591104, i64 1152939783987658752, i64 2305878468463689728, i64 1128098930098176, i64 2257297371824128, i64 4796069720358912, i64 9592139440717824, i64 19184278881435648, i64 38368557762871296, i64 4679521487814656, i64 9077567998918656] }, %"struct.std::array.44" { [64 x i64] [i64 -9205322385119247872, i64 36099303471056128, i64 141012904249856, i64 550848566272, i64 6480472064, i64 1108177604608, i64 283691315142656, i64 72624976668147712, i64 4620710844295151618, i64 -9205322385119182843, i64 36099303487963146, i64 141017232965652, i64 1659000848424, i64 283693466779728, i64 72624976676520096, i64 145249953336262720, i64 2310355422147510788, i64 4620710844311799048, i64 -9205322380790986223, i64 36100411639206946, i64 424704217196612, i64 72625527495610504, i64 145249955479592976, i64 290499906664153120, i64 1155177711057110024, i64 2310355426409252880, i64 4620711952330133792, i64 -9205038694072573375, i64 108724279602332802, i64 145390965166737412, i64 290500455356698632, i64 580999811184992272, i64 577588851267340304, i64 1155178802063085600, i64 2310639079102947392, i64 4693335752243822976, i64 -9060072569221905919, i64 326598935265674242, i64 581140276476643332, i64 1161999073681608712, i64 288793334762704928, i64 577868148797087808, i64 1227793891648880768, i64 2455587783297826816, i64 4911175566595588352, i64 -8624392940535152127, i64 1197958188344280066, i64 2323857683139004420, i64 144117404414255168, i64 360293502378066048, i64 720587009051099136, i64 1441174018118909952, i64 2882348036221108224, i64 5764696068147249408, i64 -6917353036926680575, i64 4611756524879479810, i64 567382630219904, i64 1416240237150208, i64 2833579985862656, i64 5667164249915392, i64 11334324221640704, i64 22667548931719168, i64 45053622886727936, i64 18049651735527937] }, %"struct.std::array.44" { [64 x i64] [i64 72340172838076926, i64 144680345676153597, i64 289360691352306939, i64 578721382704613623, i64 1157442765409226991, i64 2314885530818453727, i64 4629771061636907199, i64 -9187201950435737473, i64 72340172838141441, i64 144680345676217602, i64 289360691352369924, i64 578721382704674568, i64 1157442765409283856, i64 2314885530818502432, i64 4629771061636939584, i64 -9187201950435737728, i64 72340172854657281, i64 144680345692602882, i64 289360691368494084, i64 578721382720276488, i64 1157442765423841296, i64 2314885530830970912, i64 4629771061645230144, i64 -9187201950435803008, i64 72340177082712321, i64 144680349887234562, i64 289360695496279044, i64 578721386714368008, i64 1157442769150545936, i64 2314885534022901792, i64 4629771063767613504, i64 -9187201950452514688, i64 72341259464802561, i64 144681423712944642, i64 289361752209228804, i64 578722409201797128, i64 1157443723186933776, i64 2314886351157207072, i64 4629771607097753664, i64 -9187201954730704768, i64 72618349279904001, i64 144956323094725122, i64 289632270724367364, i64 578984165983651848, i64 1157687956502220816, i64 2315095537539358752, i64 4629910699613634624, i64 -9187203049947365248, i64 143553341945872641, i64 215330564830528002, i64 358885010599838724, i64 645993902138460168, i64 1220211685215703056, i64 2368647251370188832, i64 4665518383679160384, i64 -9187483425412448128, i64 -143832609275707135, i64 -215607624513486334, i64 -359157654989044732, i64 -646257715940161528, i64 -1220457837842395120, i64 -2368858081646862304, i64 -4665658569255796672, i64 9187484529235886208] }, %"struct.std::array.44" { [64 x i64] [i64 -9132982212281170946, i64 180779649147209725, i64 289501704256556795, i64 578721933553179895, i64 1157442771889699055, i64 2314886638996058335, i64 4630054752952049855, i64 -9114576973767589761, i64 4693051017133293059, i64 -9060642039442965241, i64 325459994840333070, i64 578862399937640220, i64 1157444424410132280, i64 2315169224285282160, i64 4702396038313459680, i64 -9041951997099475008, i64 2382695595002168069, i64 4765391190004401930, i64 -8915961689422492139, i64 614821794359483434, i64 1157867469641037908, i64 2387511058326581416, i64 4775021017124823120, i64 -8896702043771649888, i64 1227517888139822345, i64 2455035776296487442, i64 4910072647826412836, i64 -8626317307358205367, i64 1266167048752878738, i64 2460276499189639204, i64 4920271519124312136, i64 -8606202139267522416, i64 649930110732142865, i64 1299860225776030242, i64 2600000831312176196, i64 5272058161445620104, i64 -7902628846034972143, i64 2641485286422881314, i64 5210911883574396996, i64 -8025202881049096056, i64 361411684042608929, i64 722824471891812930, i64 1517426162373248132, i64 3034571949281478664, i64 6068863523097809168, i64 -6309297402995793375, i64 5827868887957914690, i64 -6863345366808360828, i64 287670746360127809, i64 575624067208594050, i64 1079472019650937860, i64 2087167920257370120, i64 4102559721436811280, i64 8133343319517438240, i64 -2251834653247520191, i64 -4575726900532968318, i64 -143265226645487231, i64 -214191384276336126, i64 -356324075003182076, i64 -640590551690246136, i64 -1209123513620754416, i64 -2346190532715143136, i64 -4620604946369068736, i64 9205534180971414145] }, %"struct.std::array.44" { [64 x i64] [i64 770, i64 1797, i64 3594, i64 7188, i64 14376, i64 28752, i64 57504, i64 49216, i64 197123, i64 460039, i64 920078, i64 1840156, i64 3680312, i64 7360624, i64 14721248, i64 12599488, i64 50463488, i64 117769984, i64 235539968, i64 471079936, i64 942159872, i64 1884319744, i64 3768639488, i64 3225468928, i64 12918652928, i64 30149115904, i64 60298231808, i64 120596463616, i64 241192927232, i64 482385854464, i64 964771708928, i64 825720045568, i64 3307175149568, i64 7718173671424, i64 15436347342848, i64 30872694685696, i64 61745389371392, i64 123490778742784, i64 246981557485568, i64 211384331665408, i64 846636838289408, i64 1975852459884544, i64 3951704919769088, i64 7903409839538176, i64 15806819679076352, i64 31613639358152704, i64 63227278716305408, i64 54114388906344448, i64 216739030602088448, i64 505818229730443264, i64 1011636459460886528, i64 2023272918921773056, i64 4046545837843546112, i64 8093091675687092224, i64 -2260560722335367168, i64 -4593460513685372928, i64 144959613005987840, i64 362258295026614272, i64 724516590053228544, i64 1449033180106457088, i64 2898066360212914176, i64 5796132720425828352, i64 -6854478632857894912, i64 4665729213955833856] }, %"struct.std::array.44" zeroinitializer }> }, comdat, align 8
@_ZN9Stockfish6MagicsE = external local_unnamed_addr global [64 x [2 x %"struct.Stockfish::Magic"]], align 16

@_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi = dso_local unnamed_addr alias void (ptr, ptr, i16, i32, ptr, ptr, ptr, ptr, ptr, i32), ptr @_ZN9Stockfish10MovePickerC2ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi
@_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE = dso_local unnamed_addr alias void (ptr, ptr, i16, i32, ptr), ptr @_ZN9Stockfish10MovePickerC2ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10MovePickerC2ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2164) initializes((0, 50), (96, 100), (104, 113)) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %6, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %7, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %8, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %2, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %3, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %9, ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not13 = icmp eq i16 %2, 0
  br i1 %.not13, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZNK9Stockfish8Position12pseudo_legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2) #8
  %i.o = select i1 %i.n, i32 7, i32 8
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %3, 0
  %i.q = select i1 %i.p, i32 0, i32 13
  %.not14 = icmp eq i16 %2, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef zeroext i1 @_ZNK9Stockfish8Position12pseudo_legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2) #8
  %i.s = xor i1 %i.r, true
  %i.t = zext i1 %i.s to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi i32 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.v = add nuw nsw i32 %i.u, %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f
  %.sink = phi i32 [ %i.v, %bb.f ], [ 8, %bb.b ], [ %i.o, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sink, ptr %i.w, align 8, !tbaa !49
  ret void
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position12pseudo_legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10MovePickerC2ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2164) initializes((0, 8), (24, 32), (48, 50), (96, 104), (112, 113)) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %2, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %3, ptr %i.c, align 4, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.d, align 8, !tbaa !33
  %.not = icmp eq i16 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %2, 63
  %i.f = zext nneg i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !51
  %i.i = icmp ne i8 %i.h, 0
  %.not.i.i = icmp ult i16 %2, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.i
  %i.j = icmp slt i16 %2, -16384
  %spec.select.i.i = or i1 %i.j, %or.cond.not.i.i
  %i.k = and i16 %2, 12288
  %i.l = icmp eq i16 %i.k, 12288
  %i.m = or i1 %i.l, %spec.select.i.i
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZNK9Stockfish8Position12pseudo_legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2) #8
  %i.o = select i1 %i.n, i32 10, i32 11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = phi i32 [ 11, %bb.b ], [ 11, %bb.a ], [ %i.o, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.p, ptr %i.q, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.Stockfish::MoveList", align 8 ; 8 uses
  %2 = ptrtoaddr ptr %1 to i64
  %3 = alloca %"struct.Stockfish::MoveList.2", align 8 ; 5 uses
  %4 = alloca %"struct.Stockfish::MoveList.6", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %.ptr88.ptr = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 14 uses
  %.01724.i = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !49
  %invariant.op = sub i64 -2, %2
  br label %bb.b

bb.b:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit, %bb.a
  %i.g = phi i32 [ %i.ma, %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit ], [ %.pre, %bb.a ] ; 3 uses
  switch i32 %i.g, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit" [
    i32 0, label %bb.c
    i32 7, label %bb.c
    i32 13, label %bb.c
    i32 10, label %bb.c
    i32 1, label %bb.d
    i32 11, label %bb.d
    i32 14, label %bb.d
    i32 2, label %bb.f
    i32 3, label %.loopexit
    i32 4, label %.loopexit94
    i32 5, label %.loopexit95.loopexit
    i32 6, label %.loopexit96
    i32 8, label %bb.z
    i32 9, label %.loopexit97
    i32 15, label %.loopexit97
    i32 12, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.h = add nuw nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.a, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.04.0.copyload = load i16, ptr %i.i, align 8, !tbaa !30
  br label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.j = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.k = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %i.j, ptr noundef nonnull align 8 dereferenceable(520) %1) #8 ; 3 uses
  store ptr %.ptr88.ptr, ptr %i.b, align 8, !tbaa !55
  store ptr %.ptr88.ptr, ptr %i.c, align 8, !tbaa !56
  %i.l = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !53, !align !54 ; 34 uses
  %.not23.i = icmp eq ptr %1, %i.k
  br i1 %.not23.i, label %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit.thread, label %.lr.ph.i

_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit.thread: ; preds = %bb.d
  store ptr %.ptr88.ptr, ptr %i.e, align 8, !tbaa !57
  store ptr %.ptr88.ptr, ptr %i.f, align 8, !tbaa !58
  br label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit

.lr.ph.i:                                         ; preds = %bb.d
  %5 = ptrtoaddr ptr %i.k to i64
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !27   ; 17 uses
  %.reass = add i64 %5, %invariant.op             ; 2 uses
  %i.n = lshr i64 %.reass, 1
  %i.o = add nuw i64 %i.n, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %.reass, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.o, -16                      ; 4 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = or disjoint i64 %i.p, 116                ; 2 uses
  %i.r = shl i64 %n.vec, 1
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 116, i64 124, i64 132, i64 140, i64 148, i64 156, i64 164, i64 172, i64 180, i64 188, i64 196, i64 204, i64 212, i64 220, i64 228, i64 236>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.t
  %wide.gep = getelementptr inbounds nuw i8, ptr %0, <16 x i64> %vec.ind ; 17 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 8, !tbaa !30 ; 18 uses
  %i.u = extractelement <16 x i16> %wide.load, i64 0
  %i.v = extractelement <16 x ptr> %wide.gep, i64 0
  store i16 %i.u, ptr %i.v, align 4, !tbaa !59
  %i.w = extractelement <16 x i16> %wide.load, i64 1
  %i.x = extractelement <16 x ptr> %wide.gep, i64 1
  store i16 %i.w, ptr %i.x, align 4, !tbaa !59
  %i.y = extractelement <16 x i16> %wide.load, i64 2
  %i.z = extractelement <16 x ptr> %wide.gep, i64 2
  store i16 %i.y, ptr %i.z, align 4, !tbaa !59
  %i.aa = extractelement <16 x i16> %wide.load, i64 3
  %i.ab = extractelement <16 x ptr> %wide.gep, i64 3
  store i16 %i.aa, ptr %i.ab, align 4, !tbaa !59
  %i.ac = extractelement <16 x i16> %wide.load, i64 4
  %i.ad = extractelement <16 x ptr> %wide.gep, i64 4
  store i16 %i.ac, ptr %i.ad, align 4, !tbaa !59
  %i.ae = extractelement <16 x i16> %wide.load, i64 5
  %i.af = extractelement <16 x ptr> %wide.gep, i64 5
  store i16 %i.ae, ptr %i.af, align 4, !tbaa !59
  %i.ag = extractelement <16 x i16> %wide.load, i64 6
  %i.ah = extractelement <16 x ptr> %wide.gep, i64 6
  store i16 %i.ag, ptr %i.ah, align 4, !tbaa !59
  %i.ai = extractelement <16 x i16> %wide.load, i64 7
  %i.aj = extractelement <16 x ptr> %wide.gep, i64 7
  store i16 %i.ai, ptr %i.aj, align 4, !tbaa !59
  %i.ak = extractelement <16 x i16> %wide.load, i64 8
  %i.al = extractelement <16 x ptr> %wide.gep, i64 8
  store i16 %i.ak, ptr %i.al, align 4, !tbaa !59
  %i.am = extractelement <16 x i16> %wide.load, i64 9
  %i.an = extractelement <16 x ptr> %wide.gep, i64 9
  store i16 %i.am, ptr %i.an, align 4, !tbaa !59
  %i.ao = extractelement <16 x i16> %wide.load, i64 10
  %i.ap = extractelement <16 x ptr> %wide.gep, i64 10
  store i16 %i.ao, ptr %i.ap, align 4, !tbaa !59
  %i.aq = extractelement <16 x i16> %wide.load, i64 11
  %i.ar = extractelement <16 x ptr> %wide.gep, i64 11
  store i16 %i.aq, ptr %i.ar, align 4, !tbaa !59
  %i.as = extractelement <16 x i16> %wide.load, i64 12
  %i.at = extractelement <16 x ptr> %wide.gep, i64 12
  store i16 %i.as, ptr %i.at, align 4, !tbaa !59
  %i.au = extractelement <16 x i16> %wide.load, i64 13
  %i.av = extractelement <16 x ptr> %wide.gep, i64 13
  store i16 %i.au, ptr %i.av, align 4, !tbaa !59
  %i.aw = extractelement <16 x i16> %wide.load, i64 14
  %i.ax = extractelement <16 x ptr> %wide.gep, i64 14
  store i16 %i.aw, ptr %i.ax, align 4, !tbaa !59
  %i.ay = extractelement <16 x i16> %wide.load, i64 15
  %i.az = extractelement <16 x ptr> %wide.gep, i64 15
  store i16 %i.ay, ptr %i.az, align 4, !tbaa !59
  %i.ba = lshr <16 x i16> %wide.load, splat (i16 6)
  %i.bb = and <16 x i16> %wide.load, splat (i16 63)
  %i.bc = zext nneg <16 x i16> %i.bb to <16 x i64> ; 16 uses
  %i.bd = and <16 x i16> %i.ba, splat (i16 63)
  %i.be = zext nneg <16 x i16> %i.bd to <16 x i64> ; 16 uses
  %i.bf = extractelement <16 x i64> %i.be, i64 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bh = extractelement <16 x i64> %i.be, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bh
  %i.bj = extractelement <16 x i64> %i.be, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  %i.bl = extractelement <16 x i64> %i.be, i64 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bl
  %i.bn = extractelement <16 x i64> %i.be, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bn
  %i.bp = extractelement <16 x i64> %i.be, i64 5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = extractelement <16 x i64> %i.be, i64 6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.br
  %i.bt = extractelement <16 x i64> %i.be, i64 7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bt
  %i.bv = extractelement <16 x i64> %i.be, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bv
  %i.bx = extractelement <16 x i64> %i.be, i64 9
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bx
  %i.bz = extractelement <16 x i64> %i.be, i64 10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bz
  %i.cb = extractelement <16 x i64> %i.be, i64 11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cb
  %i.cd = extractelement <16 x i64> %i.be, i64 12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cd
  %i.cf = extractelement <16 x i64> %i.be, i64 13
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cf
  %i.ch = extractelement <16 x i64> %i.be, i64 14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ch
  %i.cj = extractelement <16 x i64> %i.be, i64 15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cj
  %i.cl = load i8, ptr %i.bg, align 1, !tbaa !51
  %i.cm = load i8, ptr %i.bi, align 1, !tbaa !51
  %i.cn = load i8, ptr %i.bk, align 1, !tbaa !51
  %i.co = load i8, ptr %i.bm, align 1, !tbaa !51
  %i.cp = load i8, ptr %i.bo, align 1, !tbaa !51
  %i.cq = load i8, ptr %i.bq, align 1, !tbaa !51
  %i.cr = load i8, ptr %i.bs, align 1, !tbaa !51
  %i.cs = load i8, ptr %i.bu, align 1, !tbaa !51
  %i.ct = load i8, ptr %i.bw, align 1, !tbaa !51
  %i.cu = load i8, ptr %i.by, align 1, !tbaa !51
  %i.cv = load i8, ptr %i.ca, align 1, !tbaa !51
  %i.cw = load i8, ptr %i.cc, align 1, !tbaa !51
  %i.cx = load i8, ptr %i.ce, align 1, !tbaa !51
  %i.cy = load i8, ptr %i.cg, align 1, !tbaa !51
  %i.cz = load i8, ptr %i.ci, align 1, !tbaa !51
  %i.da = load i8, ptr %i.ck, align 1, !tbaa !51
  %i.db = insertelement <16 x i8> poison, i8 %i.cl, i64 0
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 1
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 2
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 3
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 4
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 5
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 6
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 7
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 8
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 9
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 10
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 11
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 12
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 13
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 14
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 15
  %i.dr = extractelement <16 x i64> %i.bc, i64 0  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dr
  %i.dt = extractelement <16 x i64> %i.bc, i64 1  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dt
  %i.dv = extractelement <16 x i64> %i.bc, i64 2  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dv
  %i.dx = extractelement <16 x i64> %i.bc, i64 3  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dx
  %i.dz = extractelement <16 x i64> %i.bc, i64 4  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dz
  %i.eb = extractelement <16 x i64> %i.bc, i64 5  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eb
  %i.ed = extractelement <16 x i64> %i.bc, i64 6  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ed
  %i.ef = extractelement <16 x i64> %i.bc, i64 7  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ef
  %i.eh = extractelement <16 x i64> %i.bc, i64 8  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eh
  %i.ej = extractelement <16 x i64> %i.bc, i64 9  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ej
  %i.el = extractelement <16 x i64> %i.bc, i64 10 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.el
  %i.en = extractelement <16 x i64> %i.bc, i64 11 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.en
  %i.ep = extractelement <16 x i64> %i.bc, i64 12 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ep
  %i.er = extractelement <16 x i64> %i.bc, i64 13 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.er
  %i.et = extractelement <16 x i64> %i.bc, i64 14 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.et
  %i.ev = extractelement <16 x i64> %i.bc, i64 15 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ev
  %i.ex = load i8, ptr %i.ds, align 1, !tbaa !51
  %i.ey = load i8, ptr %i.du, align 1, !tbaa !51
  %i.ez = load i8, ptr %i.dw, align 1, !tbaa !51
  %i.fa = load i8, ptr %i.dy, align 1, !tbaa !51
  %i.fb = load i8, ptr %i.ea, align 1, !tbaa !51
  %i.fc = load i8, ptr %i.ec, align 1, !tbaa !51
  %i.fd = load i8, ptr %i.ee, align 1, !tbaa !51
  %i.fe = load i8, ptr %i.eg, align 1, !tbaa !51
  %i.ff = load i8, ptr %i.ei, align 1, !tbaa !51
  %i.fg = load i8, ptr %i.ek, align 1, !tbaa !51
  %i.fh = load i8, ptr %i.em, align 1, !tbaa !51
  %i.fi = load i8, ptr %i.eo, align 1, !tbaa !51
  %i.fj = load i8, ptr %i.eq, align 1, !tbaa !51
  %i.fk = load i8, ptr %i.es, align 1, !tbaa !51
  %i.fl = load i8, ptr %i.eu, align 1, !tbaa !51
  %i.fm = load i8, ptr %i.ew, align 1, !tbaa !51
  %i.fn = insertelement <16 x i8> poison, i8 %i.ex, i64 0
  %i.fo = insertelement <16 x i8> %i.fn, i8 %i.ey, i64 1
  %i.fp = insertelement <16 x i8> %i.fo, i8 %i.ez, i64 2
  %i.fq = insertelement <16 x i8> %i.fp, i8 %i.fa, i64 3
  %i.fr = insertelement <16 x i8> %i.fq, i8 %i.fb, i64 4
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 5
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 6
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 7
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 8
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 9
  %i.fx = insertelement <16 x i8> %i.fw, i8 %i.fh, i64 10
  %i.fy = insertelement <16 x i8> %i.fx, i8 %i.fi, i64 11
  %i.fz = insertelement <16 x i8> %i.fy, i8 %i.fj, i64 12
end_hunk_0
