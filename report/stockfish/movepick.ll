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
  %2 = alloca %"struct.Stockfish::MoveList.2", align 8 ; 5 uses
  %3 = alloca %"struct.Stockfish::MoveList.6", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %.ptr88.ptr = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 14 uses
  %.01724.i = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !49
  %4 = ptrtoint ptr %1 to i64
  %invariant.op = sub i64 -2, %4
  br label %bb.b

bb.b:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit, %bb.a
  %i.g = phi i32 [ %i.lz, %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit ], [ %.pre, %bb.a ] ; 3 uses
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
  %5 = load ptr, ptr %i.d, align 8, !tbaa !27     ; 17 uses
  %6 = ptrtoint ptr %i.k to i64
  %.reass = add i64 %6, %invariant.op             ; 2 uses
  %i.m = lshr i64 %.reass, 1
  %i.n = add nuw i64 %i.m, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %.reass, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.n, -16                      ; 4 uses
  %i.o = shl i64 %n.vec, 3                        ; 2 uses
  %i.p = or disjoint i64 %i.o, 116                ; 2 uses
  %i.q = shl i64 %n.vec, 1
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 116, i64 124, i64 132, i64 140, i64 148, i64 156, i64 164, i64 172, i64 180, i64 188, i64 196, i64 204, i64 212, i64 220, i64 228, i64 236>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.s
  %wide.gep = getelementptr inbounds nuw i8, ptr %0, <16 x i64> %vec.ind ; 17 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 8, !tbaa !30 ; 18 uses
  %i.t = extractelement <16 x i16> %wide.load, i64 0
  %i.u = extractelement <16 x ptr> %wide.gep, i64 0
  store i16 %i.t, ptr %i.u, align 4, !tbaa !59
  %i.v = extractelement <16 x i16> %wide.load, i64 1
  %i.w = extractelement <16 x ptr> %wide.gep, i64 1
  store i16 %i.v, ptr %i.w, align 4, !tbaa !59
  %i.x = extractelement <16 x i16> %wide.load, i64 2
  %i.y = extractelement <16 x ptr> %wide.gep, i64 2
  store i16 %i.x, ptr %i.y, align 4, !tbaa !59
  %i.z = extractelement <16 x i16> %wide.load, i64 3
  %i.aa = extractelement <16 x ptr> %wide.gep, i64 3
  store i16 %i.z, ptr %i.aa, align 4, !tbaa !59
  %i.ab = extractelement <16 x i16> %wide.load, i64 4
  %i.ac = extractelement <16 x ptr> %wide.gep, i64 4
  store i16 %i.ab, ptr %i.ac, align 4, !tbaa !59
  %i.ad = extractelement <16 x i16> %wide.load, i64 5
  %i.ae = extractelement <16 x ptr> %wide.gep, i64 5
  store i16 %i.ad, ptr %i.ae, align 4, !tbaa !59
  %i.af = extractelement <16 x i16> %wide.load, i64 6
  %i.ag = extractelement <16 x ptr> %wide.gep, i64 6
  store i16 %i.af, ptr %i.ag, align 4, !tbaa !59
  %i.ah = extractelement <16 x i16> %wide.load, i64 7
  %i.ai = extractelement <16 x ptr> %wide.gep, i64 7
  store i16 %i.ah, ptr %i.ai, align 4, !tbaa !59
  %i.aj = extractelement <16 x i16> %wide.load, i64 8
  %i.ak = extractelement <16 x ptr> %wide.gep, i64 8
  store i16 %i.aj, ptr %i.ak, align 4, !tbaa !59
  %i.al = extractelement <16 x i16> %wide.load, i64 9
  %i.am = extractelement <16 x ptr> %wide.gep, i64 9
  store i16 %i.al, ptr %i.am, align 4, !tbaa !59
  %i.an = extractelement <16 x i16> %wide.load, i64 10
  %i.ao = extractelement <16 x ptr> %wide.gep, i64 10
  store i16 %i.an, ptr %i.ao, align 4, !tbaa !59
  %i.ap = extractelement <16 x i16> %wide.load, i64 11
  %i.aq = extractelement <16 x ptr> %wide.gep, i64 11
  store i16 %i.ap, ptr %i.aq, align 4, !tbaa !59
  %i.ar = extractelement <16 x i16> %wide.load, i64 12
  %i.as = extractelement <16 x ptr> %wide.gep, i64 12
  store i16 %i.ar, ptr %i.as, align 4, !tbaa !59
  %i.at = extractelement <16 x i16> %wide.load, i64 13
  %i.au = extractelement <16 x ptr> %wide.gep, i64 13
  store i16 %i.at, ptr %i.au, align 4, !tbaa !59
  %i.av = extractelement <16 x i16> %wide.load, i64 14
  %i.aw = extractelement <16 x ptr> %wide.gep, i64 14
  store i16 %i.av, ptr %i.aw, align 4, !tbaa !59
  %i.ax = extractelement <16 x i16> %wide.load, i64 15
  %i.ay = extractelement <16 x ptr> %wide.gep, i64 15
  store i16 %i.ax, ptr %i.ay, align 4, !tbaa !59
  %i.az = lshr <16 x i16> %wide.load, splat (i16 6)
  %i.ba = and <16 x i16> %wide.load, splat (i16 63)
  %i.bb = zext nneg <16 x i16> %i.ba to <16 x i64> ; 16 uses
  %i.bc = and <16 x i16> %i.az, splat (i16 63)
  %i.bd = zext nneg <16 x i16> %i.bc to <16 x i64> ; 16 uses
  %i.be = extractelement <16 x i64> %i.bd, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.be
  %i.bg = extractelement <16 x i64> %i.bd, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bg
  %i.bi = extractelement <16 x i64> %i.bd, i64 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bi
  %i.bk = extractelement <16 x i64> %i.bd, i64 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bk
  %i.bm = extractelement <16 x i64> %i.bd, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bm
  %i.bo = extractelement <16 x i64> %i.bd, i64 5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.bq = extractelement <16 x i64> %i.bd, i64 6
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bq
  %i.bs = extractelement <16 x i64> %i.bd, i64 7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  %i.bu = extractelement <16 x i64> %i.bd, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bu
  %i.bw = extractelement <16 x i64> %i.bd, i64 9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bw
  %i.by = extractelement <16 x i64> %i.bd, i64 10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.by
  %i.ca = extractelement <16 x i64> %i.bd, i64 11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ca
  %i.cc = extractelement <16 x i64> %i.bd, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc
  %i.ce = extractelement <16 x i64> %i.bd, i64 13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ce
  %i.cg = extractelement <16 x i64> %i.bd, i64 14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cg
  %i.ci = extractelement <16 x i64> %i.bd, i64 15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ci
  %i.ck = load i8, ptr %i.bf, align 1, !tbaa !51
  %i.cl = load i8, ptr %i.bh, align 1, !tbaa !51
  %i.cm = load i8, ptr %i.bj, align 1, !tbaa !51
  %i.cn = load i8, ptr %i.bl, align 1, !tbaa !51
  %i.co = load i8, ptr %i.bn, align 1, !tbaa !51
  %i.cp = load i8, ptr %i.bp, align 1, !tbaa !51
  %i.cq = load i8, ptr %i.br, align 1, !tbaa !51
  %i.cr = load i8, ptr %i.bt, align 1, !tbaa !51
  %i.cs = load i8, ptr %i.bv, align 1, !tbaa !51
  %i.ct = load i8, ptr %i.bx, align 1, !tbaa !51
  %i.cu = load i8, ptr %i.bz, align 1, !tbaa !51
  %i.cv = load i8, ptr %i.cb, align 1, !tbaa !51
  %i.cw = load i8, ptr %i.cd, align 1, !tbaa !51
  %i.cx = load i8, ptr %i.cf, align 1, !tbaa !51
  %i.cy = load i8, ptr %i.ch, align 1, !tbaa !51
  %i.cz = load i8, ptr %i.cj, align 1, !tbaa !51
  %i.da = insertelement <16 x i8> poison, i8 %i.ck, i64 0
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 1
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 2
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 3
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 4
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 5
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 6
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 7
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 8
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 9
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 10
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 11
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 12
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 13
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 14
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 15
  %i.dq = extractelement <16 x i64> %i.bb, i64 0  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dq
  %i.ds = extractelement <16 x i64> %i.bb, i64 1  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ds
  %i.du = extractelement <16 x i64> %i.bb, i64 2  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.du
  %i.dw = extractelement <16 x i64> %i.bb, i64 3  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dw
  %i.dy = extractelement <16 x i64> %i.bb, i64 4  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dy
  %i.ea = extractelement <16 x i64> %i.bb, i64 5  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ea
  %i.ec = extractelement <16 x i64> %i.bb, i64 6  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ec
  %i.ee = extractelement <16 x i64> %i.bb, i64 7  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ee
  %i.eg = extractelement <16 x i64> %i.bb, i64 8  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eg
  %i.ei = extractelement <16 x i64> %i.bb, i64 9  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ei
  %i.ek = extractelement <16 x i64> %i.bb, i64 10 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ek
  %i.em = extractelement <16 x i64> %i.bb, i64 11 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.em
  %i.eo = extractelement <16 x i64> %i.bb, i64 12 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eo
  %i.eq = extractelement <16 x i64> %i.bb, i64 13 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eq
  %i.es = extractelement <16 x i64> %i.bb, i64 14 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.es
  %i.eu = extractelement <16 x i64> %i.bb, i64 15 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eu
  %i.ew = load i8, ptr %i.dr, align 1, !tbaa !51
  %i.ex = load i8, ptr %i.dt, align 1, !tbaa !51
  %i.ey = load i8, ptr %i.dv, align 1, !tbaa !51
  %i.ez = load i8, ptr %i.dx, align 1, !tbaa !51
  %i.fa = load i8, ptr %i.dz, align 1, !tbaa !51
  %i.fb = load i8, ptr %i.eb, align 1, !tbaa !51
  %i.fc = load i8, ptr %i.ed, align 1, !tbaa !51
  %i.fd = load i8, ptr %i.ef, align 1, !tbaa !51
  %i.fe = load i8, ptr %i.eh, align 1, !tbaa !51
  %i.ff = load i8, ptr %i.ej, align 1, !tbaa !51
  %i.fg = load i8, ptr %i.el, align 1, !tbaa !51
  %i.fh = load i8, ptr %i.en, align 1, !tbaa !51
  %i.fi = load i8, ptr %i.ep, align 1, !tbaa !51
  %i.fj = load i8, ptr %i.er, align 1, !tbaa !51
  %i.fk = load i8, ptr %i.et, align 1, !tbaa !51
  %i.fl = load i8, ptr %i.ev, align 1, !tbaa !51
  %i.fm = insertelement <16 x i8> poison, i8 %i.ew, i64 0
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 1
  %i.fo = insertelement <16 x i8> %i.fn, i8 %i.ey, i64 2
  %i.fp = insertelement <16 x i8> %i.fo, i8 %i.ez, i64 3
  %i.fq = insertelement <16 x i8> %i.fp, i8 %i.fa, i64 4
  %i.fr = insertelement <16 x i8> %i.fq, i8 %i.fb, i64 5
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 6
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 7
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 8
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 9
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 10
  %i.fx = insertelement <16 x i8> %i.fw, i8 %i.fh, i64 11
  %i.fy = insertelement <16 x i8> %i.fx, i8 %i.fi, i64 12
  %i.fz = insertelement <16 x i8> %i.fy, i8 %i.fj, i64 13
  %i.ga = insertelement <16 x i8> %i.fz, i8 %i.fk, i64 14
  %i.gb = insertelement <16 x i8> %i.ga, i8 %i.fl, i64 15 ; 2 uses
  %i.gc = zext <16 x i8> %i.dp to <16 x i64>      ; 16 uses
  %i.gd = extractelement <16 x i64> %i.gc, i64 0
  %i.ge = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gd
  %i.gf = extractelement <16 x i64> %i.gc, i64 1
  %i.gg = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gf
  %i.gh = extractelement <16 x i64> %i.gc, i64 2
  %i.gi = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gh
  %i.gj = extractelement <16 x i64> %i.gc, i64 3
  %i.gk = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gj
  %i.gl = extractelement <16 x i64> %i.gc, i64 4
  %i.gm = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gl
  %i.gn = extractelement <16 x i64> %i.gc, i64 5
  %i.go = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gn
  %i.gp = extractelement <16 x i64> %i.gc, i64 6
  %i.gq = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gp
  %i.gr = extractelement <16 x i64> %i.gc, i64 7
  %i.gs = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gr
  %i.gt = extractelement <16 x i64> %i.gc, i64 8
  %i.gu = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gt
  %i.gv = extractelement <16 x i64> %i.gc, i64 9
  %i.gw = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gv
  %i.gx = extractelement <16 x i64> %i.gc, i64 10
  %i.gy = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gx
  %i.gz = extractelement <16 x i64> %i.gc, i64 11
  %i.ha = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.gz
  %i.hb = extractelement <16 x i64> %i.gc, i64 12
  %i.hc = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.hb
  %i.hd = extractelement <16 x i64> %i.gc, i64 13
  %i.he = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.hd
  %i.hf = extractelement <16 x i64> %i.gc, i64 14
  %i.hg = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.hf
  %i.hh = extractelement <16 x i64> %i.gc, i64 15
  %i.hi = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.hh
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.dq
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.ds
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.du
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.dw
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.gm, i64 %i.dy
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.ea
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.ec
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.ee
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.eg
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %i.ei
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %i.ek
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.em
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hc, i64 %i.eo
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %i.eq
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.es
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.eu
  %i.hz = and <16 x i8> %i.gb, splat (i8 7)
  %i.ia = zext nneg <16 x i8> %i.hz to <16 x i64> ; 16 uses
  %i.ib = extractelement <16 x i64> %i.ia, i64 0
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %i.ib
  %i.id = extractelement <16 x i64> %i.ia, i64 1
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.id
  %i.if = extractelement <16 x i64> %i.ia, i64 2
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.if
  %i.ih = extractelement <16 x i64> %i.ia, i64 3
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %i.ih
  %i.ij = extractelement <16 x i64> %i.ia, i64 4
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.ij
  %i.il = extractelement <16 x i64> %i.ia, i64 5
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.il
  %i.in = extractelement <16 x i64> %i.ia, i64 6
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %i.in
  %i.ip = extractelement <16 x i64> %i.ia, i64 7
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.ip
  %i.ir = extractelement <16 x i64> %i.ia, i64 8
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %i.ir
  %i.it = extractelement <16 x i64> %i.ia, i64 9
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.hs, i64 %i.it
  %i.iv = extractelement <16 x i64> %i.ia, i64 10
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.iv
  %i.ix = extractelement <16 x i64> %i.ia, i64 11
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %i.ix
  %i.iz = extractelement <16 x i64> %i.ia, i64 12
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.iz
  %i.jb = extractelement <16 x i64> %i.ia, i64 13
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.hw, i64 %i.jb
  %i.jd = extractelement <16 x i64> %i.ia, i64 14
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %i.jd
  %i.jf = extractelement <16 x i64> %i.ia, i64 15
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.jf
  %i.jh = load i16, ptr %i.ic, align 2, !tbaa !60
  %i.ji = load i16, ptr %i.ie, align 2, !tbaa !60
  %i.jj = load i16, ptr %i.ig, align 2, !tbaa !60
  %i.jk = load i16, ptr %i.ii, align 2, !tbaa !60
  %i.jl = load i16, ptr %i.ik, align 2, !tbaa !60
  %i.jm = load i16, ptr %i.im, align 2, !tbaa !60
  %i.jn = load i16, ptr %i.io, align 2, !tbaa !60
  %i.jo = load i16, ptr %i.iq, align 2, !tbaa !60
  %i.jp = load i16, ptr %i.is, align 2, !tbaa !60
  %i.jq = load i16, ptr %i.iu, align 2, !tbaa !60
  %i.jr = load i16, ptr %i.iw, align 2, !tbaa !60
  %i.js = load i16, ptr %i.iy, align 2, !tbaa !60
  %i.jt = load i16, ptr %i.ja, align 2, !tbaa !60
  %i.ju = load i16, ptr %i.jc, align 2, !tbaa !60
  %i.jv = load i16, ptr %i.je, align 2, !tbaa !60
  %i.jw = load i16, ptr %i.jg, align 2, !tbaa !60
  %i.jx = insertelement <16 x i16> poison, i16 %i.jh, i64 0
  %i.jy = insertelement <16 x i16> %i.jx, i16 %i.ji, i64 1
  %i.jz = insertelement <16 x i16> %i.jy, i16 %i.jj, i64 2
  %i.ka = insertelement <16 x i16> %i.jz, i16 %i.jk, i64 3
  %i.kb = insertelement <16 x i16> %i.ka, i16 %i.jl, i64 4
  %i.kc = insertelement <16 x i16> %i.kb, i16 %i.jm, i64 5
  %i.kd = insertelement <16 x i16> %i.kc, i16 %i.jn, i64 6
  %i.ke = insertelement <16 x i16> %i.kd, i16 %i.jo, i64 7
  %i.kf = insertelement <16 x i16> %i.ke, i16 %i.jp, i64 8
  %i.kg = insertelement <16 x i16> %i.kf, i16 %i.jq, i64 9
  %i.kh = insertelement <16 x i16> %i.kg, i16 %i.jr, i64 10
  %i.ki = insertelement <16 x i16> %i.kh, i16 %i.js, i64 11
  %i.kj = insertelement <16 x i16> %i.ki, i16 %i.jt, i64 12
  %i.kk = insertelement <16 x i16> %i.kj, i16 %i.ju, i64 13
  %i.kl = insertelement <16 x i16> %i.kk, i16 %i.jv, i64 14
  %i.km = insertelement <16 x i16> %i.kl, i16 %i.jw, i64 15
  %i.kn = sext <16 x i16> %i.km to <16 x i32>
  %i.ko = zext <16 x i8> %i.gb to <16 x i64>
  %wide.gep246 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, <16 x i64> %i.ko
  %wide.masked.gather = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep246, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !62
  %i.kp = mul nsw <16 x i32> %wide.masked.gather, splat (i32 7)
  %i.kq = add nsw <16 x i32> %i.kp, %i.kn
  %wide.gep247 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 4
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.kq, <16 x ptr> align 4 %wide.gep247, <16 x i1> splat (i1 true)), !tbaa !63
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 128)
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %ind.escape = or disjoint i64 %i.o, 108
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.025.i.idx.ph = phi i64 [ 116, %.lr.ph.i ], [ %i.p, %middle.block ]
  %.02224.i.ph = phi ptr [ %1, %.lr.ph.i ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.025.i.idx = phi i64 [ %.025.i.add, %scalar.ph ], [ %.025.i.idx.ph, %scalar.ph.preheader ] ; 3 uses
  %.02224.i = phi ptr [ %i.lp, %scalar.ph ], [ %.02224.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.025.i.idx ; 2 uses
  %.sroa.011.0.copyload.i = load i16, ptr %.02224.i, align 2, !tbaa !30 ; 3 uses
  %.025.i.add = add nuw nsw i64 %.025.i.idx, 8    ; 2 uses
  store i16 %.sroa.011.0.copyload.i, ptr %.025.i.ptr, align 4, !tbaa !59
  %i.ks = lshr i16 %.sroa.011.0.copyload.i, 6
  %i.kt = and i16 %.sroa.011.0.copyload.i, 63
  %i.ku = zext nneg i16 %i.kt to i64              ; 2 uses
  %i.kv = and i16 %i.ks, 63
  %i.kw = zext nneg i16 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !51
  %i.kz = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ku
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !51  ; 2 uses
  %i.lb = zext i8 %i.ky to i64
  %i.lc = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.lb
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.ku
  %i.le = and i8 %i.la, 7
  %i.lf = zext nneg i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !60
  %i.li = sext i16 %i.lh to i32
  %i.lj = zext i8 %i.la to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !62
  %i.lm = mul nsw i32 %i.ll, 7
  %i.ln = add nsw i32 %i.lm, %i.li
  %i.lo = getelementptr inbounds nuw i8, ptr %.025.i.ptr, i64 4
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !63
  %i.lp = getelementptr inbounds nuw i8, ptr %.02224.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.lp, %i.k
  br i1 %.not.i, label %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit, label %scalar.ph, !llvm.loop !68

_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit: ; preds = %scalar.ph, %middle.block
  %.025.i.idx.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.025.i.idx, %scalar.ph ]
  %.025.i.add.lcssa = phi i64 [ %i.p, %middle.block ], [ %.025.i.add, %scalar.ph ]
  %.ptr87.le = getelementptr inbounds nuw i8, ptr %0, i64 %.025.i.add.lcssa ; 3 uses
  store ptr %.ptr87.le, ptr %i.e, align 8, !tbaa !57
  store ptr %.ptr87.le, ptr %i.f, align 8, !tbaa !58
  %i.lq = icmp samesign ugt i64 %.025.i.idx.lcssa, 116
  br i1 %i.lq, label %.lr.ph28.i, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit

.lr.ph28.i:                                       ; preds = %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit, %.critedge.i
  %.01727.i = phi ptr [ %.017.i, %.critedge.i ], [ %.01724.i, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit ] ; 3 uses
  %.01825.i.idx = phi i64 [ %.01825.i.add, %.critedge.i ], [ 116, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit ]
  %i.lr = load i64, ptr %.01727.i, align 4        ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.lr, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %.01825.i.add = add nuw nsw i64 %.01825.i.idx, 8 ; 3 uses
  %.ptr90 = getelementptr inbounds nuw i8, ptr %0, i64 %.01825.i.add
  %i.ls = load i64, ptr %.ptr90, align 4
  store i64 %i.ls, ptr %.01727.i, align 4
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph28.i, %bb.e
  %.021.i.idx = phi i64 [ %.021.i.add, %bb.e ], [ %.01825.i.add, %.lr.ph28.i ] ; 2 uses
  %.021.i.ptr = getelementptr inbounds i8, ptr %0, i64 %.021.i.idx ; 3 uses
  %i.lt = getelementptr inbounds i8, ptr %.021.i.ptr, i64 -4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !63
  %i.lv = icmp slt i32 %i.lu, %.sroa.4.0.extract.trunc.i
  br i1 %i.lv, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i9
  %.021.i.add = add nsw i64 %.021.i.idx, -8       ; 3 uses
  %.ptr89 = getelementptr inbounds i8, ptr %0, i64 %.021.i.add
  %i.lw = load i64, ptr %.ptr89, align 4
  store i64 %i.lw, ptr %.021.i.ptr, align 4
  %.not19.i = icmp eq i64 %.021.i.add, 116
  br i1 %.not19.i, label %.critedge.i, label %.lr.ph.i9, !llvm.loop !69

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i9
  %.0.lcssa.i10 = phi ptr [ %.021.i.ptr, %.lr.ph.i9 ], [ %.ptr88.ptr, %bb.e ]
  store i64 %i.lr, ptr %.0.lcssa.i10, align 4
  %.017.i = getelementptr inbounds nuw i8, ptr %.01727.i, i64 8 ; 2 uses
  %i.lx = icmp ult ptr %.017.i, %.ptr87.le
  br i1 %i.lx, label %.lr.ph28.i, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit, !llvm.loop !71

_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit: ; preds = %.critedge.i, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit.thread, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit
  %i.ly = load i32, ptr %i.a, align 8, !tbaa !49
  %i.lz = add nsw i32 %i.ly, 1                    ; 2 uses
  store i32 %i.lz, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.b

bb.f:                                             ; preds = %bb.b
  %i.ma = load ptr, ptr %i.c, align 8, !tbaa !56  ; 2 uses
  %i.mb = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %i.mc = icmp ult ptr %i.ma, %i.mb
  br i1 %i.mc, label %.lr.ph.i11, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread"

.lr.ph.i11:                                       ; preds = %bb.f
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i11
  %i.me = phi ptr [ %i.mb, %.lr.ph.i11 ], [ %i.ms, %bb.i ]
  %i.mf = phi ptr [ %i.ma, %.lr.ph.i11 ], [ %i.mu, %bb.i ] ; 3 uses
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !59 ; 2 uses
  %i.mh = load i16, ptr %i.md, align 8, !tbaa !59
  %.not.i12 = icmp eq i16 %i.mg, %i.mh
  br i1 %.not.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.mi = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !63
  %i.ml = sdiv i32 %i.mk, -18
  %i.mm = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.mi, i16 %i.mg, i32 noundef %i.ml) #8
  br i1 %i.mm, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit", label %"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i"

"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i": ; preds = %bb.h
  %i.mn = load ptr, ptr %i.b, align 8, !tbaa !55  ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store ptr %i.mo, ptr %i.b, align 8, !tbaa !55
  %i.mp = load ptr, ptr %i.c, align 8, !tbaa !56  ; 2 uses
  %i.mq = load i64, ptr %i.mn, align 4
  %i.mr = load i64, ptr %i.mp, align 4
  store i64 %i.mr, ptr %i.mn, align 4
  store i64 %i.mq, ptr %i.mp, align 4
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !56
  %.pre2.i = load ptr, ptr %i.f, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i", %bb.g
  %i.ms = phi ptr [ %.pre2.i, %"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i" ], [ %i.me, %bb.g ] ; 2 uses
  %i.mt = phi ptr [ %.pre.i, %"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i" ], [ %i.mf, %bb.g ]
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 3 uses
  store ptr %i.mu, ptr %i.c, align 8, !tbaa !56
  %i.mv = icmp ult ptr %i.mu, %i.ms
  br i1 %i.mv, label %bb.g, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread", !llvm.loop !72

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit": ; preds = %bb.h
  %i.mw = load ptr, ptr %i.c, align 8, !tbaa !56  ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.mx, ptr %i.c, align 8, !tbaa !56
  %.sroa.0.0.copyload.i = load i16, ptr %i.mw, align 4, !tbaa !30 ; 2 uses
  %.not = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread", label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread": ; preds = %bb.i, %bb.f, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit"
  %i.my = load i32, ptr %i.a, align 8, !tbaa !49
  %i.mz = add nsw i32 %i.my, 1                    ; 2 uses
  store i32 %i.mz, ptr %i.a, align 8, !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread"
  %i.na = phi i32 [ %i.mz, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread" ], [ %i.g, %bb.b ]
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.nc = load i8, ptr %i.nb, align 8, !tbaa !33, !range !73, !noundef !53
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.ne = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.ng = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %i.ne, ptr noundef nonnull align 8 dereferenceable(520) %2) #8
  store ptr %i.ng, ptr %i.nf, align 8, !tbaa !74
  %i.nh = call noundef ptr @_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE1EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE(ptr noundef nonnull align 8 dereferenceable(2164) %0, ptr noundef nonnull align 8 dereferenceable(520) %2) ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !77
  store ptr %i.nh, ptr %i.f, align 8, !tbaa !58
  %i.nj = load ptr, ptr %i.c, align 8, !tbaa !56  ; 7 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !31
  %i.nm = mul nsw i32 %i.nl, -3560
  %.01724.i13 = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nn = icmp ult ptr %.01724.i13, %i.nh
  br i1 %i.nn, label %.lr.ph28.i14, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28

.lr.ph28.i14:                                     ; preds = %bb.j, %bb.m
  %.01727.i15 = phi ptr [ %.017.i26, %bb.m ], [ %.01724.i13, %bb.j ] ; 4 uses
  %.pn26.i16 = phi ptr [ %.01727.i15, %bb.m ], [ %i.nj, %bb.j ]
  %.01825.i17 = phi ptr [ %.1.i, %bb.m ], [ %i.nj, %bb.j ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.pn26.i16, i64 12
  %i.np = load i32, ptr %i.no, align 4, !tbaa !63
  %.not.i18 = icmp slt i32 %i.np, %i.nm
  br i1 %.not.i18, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph28.i14
  %i.nq = load i64, ptr %.01727.i15, align 4      ; 2 uses
  %.sroa.4.0.extract.shift.i19 = lshr i64 %i.nq, 32
  %.sroa.4.0.extract.trunc.i20 = trunc nuw i64 %.sroa.4.0.extract.shift.i19 to i32
  %i.nr = getelementptr inbounds nuw i8, ptr %.01825.i17, i64 8 ; 4 uses
  %i.ns = load i64, ptr %i.nr, align 4
  store i64 %i.ns, ptr %.01727.i15, align 4
  %.not1920.i21 = icmp eq ptr %i.nr, %i.nj
  br i1 %.not1920.i21, label %.critedge.i24, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.k, %bb.l
  %.021.i23 = phi ptr [ %i.nw, %bb.l ], [ %i.nr, %bb.k ] ; 4 uses
  %i.nt = getelementptr inbounds i8, ptr %.021.i23, i64 -4
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !63
  %i.nv = icmp slt i32 %i.nu, %.sroa.4.0.extract.trunc.i20
  br i1 %i.nv, label %bb.l, label %.critedge.i24

bb.l:                                             ; preds = %.lr.ph.i22
  %i.nw = getelementptr inbounds i8, ptr %.021.i23, i64 -8 ; 3 uses
  %i.nx = load i64, ptr %i.nw, align 4
  store i64 %i.nx, ptr %.021.i23, align 4
  %.not19.i27 = icmp eq ptr %i.nw, %i.nj
  br i1 %.not19.i27, label %.critedge.i24, label %.lr.ph.i22, !llvm.loop !69

.critedge.i24:                                    ; preds = %bb.l, %.lr.ph.i22, %bb.k
  %.0.lcssa.i25 = phi ptr [ %i.nj, %bb.k ], [ %.021.i23, %.lr.ph.i22 ], [ %i.nj, %bb.l ]
  store i64 %i.nq, ptr %.0.lcssa.i25, align 4
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i24, %.lr.ph28.i14
  %.1.i = phi ptr [ %i.nr, %.critedge.i24 ], [ %.01825.i17, %.lr.ph28.i14 ]
  %.017.i26 = getelementptr inbounds nuw i8, ptr %.01727.i15, i64 8 ; 2 uses
  %i.ny = icmp ult ptr %.017.i26, %i.nh
  br i1 %i.ny, label %.lr.ph28.i14, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28, !llvm.loop !71

_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28: ; preds = %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %.pre161 = load i32, ptr %i.a, align 8, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28, %.loopexit
  %i.nz = phi i32 [ %.pre161, %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28 ], [ %i.na, %.loopexit ] ; 2 uses
  %i.oa = add nsw i32 %i.nz, 1
  store i32 %i.oa, ptr %i.a, align 8, !tbaa !49
  %i.ob = add nsw i32 %i.nz, 2
  br label %.loopexit94

.loopexit94:                                      ; preds = %bb.b, %bb.n
  %i.oc = phi i32 [ %i.ob, %bb.n ], [ 5, %bb.b ]  ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.oe = load i8, ptr %i.od, align 8, !tbaa !33, !range !73, !noundef !53
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.loopexit94
  %i.og = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %.promoted.i = load ptr, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %i.oh = icmp ult ptr %.promoted.i, %i.og
  br i1 %i.oh, label %.lr.ph.i30, label %.critedge

.lr.ph.i30:                                       ; preds = %bb.o
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oj = load i16, ptr %i.oi, align 8, !tbaa !59
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i30
  %.val.val.i = phi ptr [ %.promoted.i, %.lr.ph.i30 ], [ %i.on, %bb.r ] ; 4 uses
  %i.ok = load i16, ptr %.val.val.i, align 2, !tbaa !59 ; 3 uses
  %.not.i31 = icmp eq i16 %i.ok, %i.oj
  br i1 %.not.i31, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ol = getelementptr i8, ptr %.val.val.i, i64 4
  %.val.val.val.i = load i32, ptr %i.ol, align 4, !tbaa !63
  %i.om = icmp sgt i32 %.val.val.val.i, -14000
  br i1 %i.om, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_1EENS_4MoveET_.exit", label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.on = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8 ; 3 uses
  store ptr %i.on, ptr %i.c, align 8, !tbaa !56
  %i.oo = icmp ult ptr %i.on, %i.og
  br i1 %i.oo, label %bb.p, label %.critedge, !llvm.loop !78

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_1EENS_4MoveET_.exit": ; preds = %bb.q
  %i.op = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8
  store ptr %i.op, ptr %i.c, align 8, !tbaa !56
  %.not85 = icmp eq i16 %i.ok, 0
  br i1 %.not85, label %.critedge, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

.critedge:                                        ; preds = %bb.r, %bb.o, %.loopexit94, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_1EENS_4MoveET_.exit"
  store ptr %.ptr88.ptr, ptr %i.c, align 8, !tbaa !56
  %i.oq = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  store ptr %i.oq, ptr %i.f, align 8, !tbaa !58
  store i32 %i.oc, ptr %i.a, align 8, !tbaa !49
  %i.or = add nsw i32 %i.oc, 1
  br label %.loopexit95

.loopexit95.loopexit:                             ; preds = %bb.b
  %.pre162 = load ptr, ptr %i.f, align 8, !tbaa !58
  %.promoted.i32.pre = load ptr, ptr %i.c, align 8, !tbaa !56
  br label %.loopexit95

.loopexit95:                                      ; preds = %.loopexit95.loopexit, %.critedge
  %i.os = phi i32 [ 6, %.loopexit95.loopexit ], [ %i.or, %.critedge ]
  %.promoted.i32 = phi ptr [ %.promoted.i32.pre, %.loopexit95.loopexit ], [ %.ptr88.ptr, %.critedge ] ; 2 uses
  %i.ot = phi ptr [ %.pre162, %.loopexit95.loopexit ], [ %i.oq, %.critedge ] ; 2 uses
  %i.ou = icmp ult ptr %.promoted.i32, %i.ot
  br i1 %i.ou, label %.lr.ph.i34, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread"

.lr.ph.i34:                                       ; preds = %.loopexit95
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ow = load i16, ptr %i.ov, align 8, !tbaa !59
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i34
  %i.ox = phi ptr [ %.promoted.i32, %.lr.ph.i34 ], [ %i.oz, %bb.t ] ; 2 uses
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !59 ; 3 uses
  %.not.i35 = icmp eq i16 %i.oy, %i.ow
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 4 uses
  br i1 %.not.i35, label %bb.t, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit"

bb.t:                                             ; preds = %bb.s
  %i.pa = icmp ult ptr %i.oz, %i.ot
  br i1 %i.pa, label %bb.s, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread.loopexit", !llvm.loop !79

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit": ; preds = %bb.s
  store ptr %i.oz, ptr %i.c, align 8, !tbaa !56
  %.not86 = icmp eq i16 %i.oy, 0
  br i1 %.not86, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread", label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread.loopexit": ; preds = %bb.t
  store ptr %i.oz, ptr %i.c, align 8, !tbaa !56
  br label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread"

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread": ; preds = %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread.loopexit", %.loopexit95, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit"
  %i.pb = load <2 x ptr>, ptr %i.e, align 8, !tbaa !80
  store <2 x ptr> %i.pb, ptr %i.c, align 8, !tbaa !80
  store i32 %i.os, ptr %i.a, align 8, !tbaa !49
  br label %.loopexit96

.loopexit96:                                      ; preds = %bb.b, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread"
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.pd = load i8, ptr %i.pc, align 8, !tbaa !33, !range !73, !noundef !53
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit", label %bb.u

bb.u:                                             ; preds = %.loopexit96
  %i.pf = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %.promoted.i36 = load ptr, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %i.pg = icmp ult ptr %.promoted.i36, %i.pf
  br i1 %i.pg, label %.lr.ph.i38, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

.lr.ph.i38:                                       ; preds = %bb.u
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pi = load i16, ptr %i.ph, align 8, !tbaa !59
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i38
  %.val.val.i40 = phi ptr [ %.promoted.i36, %.lr.ph.i38 ], [ %i.pn, %bb.y ] ; 4 uses
  %i.pj = load i16, ptr %.val.val.i40, align 2, !tbaa !59 ; 2 uses
  %.not.i39 = icmp eq i16 %i.pj, %i.pi
  br i1 %.not.i39, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.pk = getelementptr i8, ptr %.val.val.i40, i64 4
  %.val.val.val.i41 = load i32, ptr %i.pk, align 4, !tbaa !63
  %i.pl = icmp slt i32 %.val.val.val.i41, -13999
  br i1 %i.pl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.pm = getelementptr inbounds nuw i8, ptr %.val.val.i40, i64 8
  store ptr %i.pm, ptr %i.c, align 8, !tbaa !56
  br label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.pn = getelementptr inbounds nuw i8, ptr %.val.val.i40, i64 8 ; 3 uses
  store ptr %i.pn, ptr %i.c, align 8, !tbaa !56
  %i.po = icmp ult ptr %i.pn, %i.pf
  br i1 %i.po, label %bb.v, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit", !llvm.loop !81

bb.z:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.pp = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.pq = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %i.pp, ptr noundef nonnull align 8 dereferenceable(520) %3) #8 ; 2 uses
  store ptr %.ptr88.ptr, ptr %i.c, align 8, !tbaa !56
  %i.pr = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !53, !align !54 ; 3 uses
  %.not27.i = icmp eq ptr %3, %i.pq
  br i1 %.not27.i, label %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit.thread, label %.lr.ph.i42

_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit.thread: ; preds = %bb.z
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.ptr88.ptr, ptr %i.ps, align 8, !tbaa !77
  store ptr %.ptr88.ptr, ptr %i.f, align 8, !tbaa !58
  br label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit61

.lr.ph.i42:                                       ; preds = %bb.z
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 620
  %i.pu = load i8, ptr %i.pt, align 4, !tbaa !82
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8
  %i.px = zext i8 %i.pu to i64
  %i.py = getelementptr inbounds nuw [131072 x i8], ptr %i.pw, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qa = load ptr, ptr %i.pz, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %.lr.ph.i42
  %.029.i.idx = phi i64 [ 116, %.lr.ph.i42 ], [ %.029.i.add, %bb.ad ] ; 3 uses
  %.02628.i = phi ptr [ %3, %.lr.ph.i42 ], [ %i.rf, %bb.ad ] ; 2 uses
  %.029.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.029.i.idx ; 2 uses
  %.sroa.014.0.copyload.i = load i16, ptr %.02628.i, align 2, !tbaa !30 ; 7 uses
  %.029.i.add = add nuw nsw i64 %.029.i.idx, 8    ; 2 uses
  store i16 %.sroa.014.0.copyload.i, ptr %.029.i.ptr, align 4, !tbaa !59
  %i.qb = and i16 %.sroa.014.0.copyload.i, 63
  %i.qc = zext nneg i16 %i.qb to i64              ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !51  ; 2 uses
  %i.qf = icmp ne i8 %i.qe, 0
  %.not.i.i.i = icmp ult i16 %.sroa.014.0.copyload.i, -16384
  %or.cond.not.i.i.i = and i1 %.not.i.i.i, %i.qf
  %i.qg = icmp slt i16 %.sroa.014.0.copyload.i, -16384
  %spec.select.i.i.i = or i1 %i.qg, %or.cond.not.i.i.i
  %i.qh = and i16 %.sroa.014.0.copyload.i, 12288
  %i.qi = icmp eq i16 %i.qh, 12288
  %i.qj = or i1 %i.qi, %spec.select.i.i.i
  br i1 %i.qj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.qk = zext i8 %i.qe to i64
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !62
  %i.qn = add nsw i32 %i.qm, 268435456
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.qo = lshr i16 %.sroa.014.0.copyload.i, 6
  %i.qp = and i16 %i.qo, 63
  %i.qq = zext nneg i16 %i.qp to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !51
  %i.qt = zext i16 %.sroa.014.0.copyload.i to i64
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %i.qt
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !83
  %i.qw = sext i16 %i.qv to i32
  %i.qx = load ptr, ptr %i.qa, align 8, !tbaa !85
  %i.qy = zext i8 %i.qs to i64
  %i.qz = getelementptr inbounds nuw [128 x i8], ptr %i.qx, i64 %i.qy
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qz, i64 %i.qc
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !87
  %i.rc = sext i16 %i.rb to i32
  %i.rd = add nsw i32 %i.rc, %i.qw
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink.i = phi i32 [ %i.qn, %bb.ab ], [ %i.rd, %bb.ac ]
  %i.re = getelementptr inbounds nuw i8, ptr %.029.i.ptr, i64 4
  store i32 %.sink.i, ptr %i.re, align 4, !tbaa !63
  %i.rf = getelementptr inbounds nuw i8, ptr %.02628.i, i64 2 ; 2 uses
  %.not.i43 = icmp eq ptr %i.rf, %i.pq
  br i1 %.not.i43, label %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit, label %bb.aa

_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit: ; preds = %bb.ad
  %.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.029.i.add ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.ptr.le, ptr %i.rg, align 8, !tbaa !77
  store ptr %.ptr.le, ptr %i.f, align 8, !tbaa !58
  %i.rh = icmp samesign ugt i64 %.029.i.idx, 116
  br i1 %i.rh, label %.lr.ph28.i46, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit61

.lr.ph28.i46:                                     ; preds = %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit, %.critedge.i56
  %.01727.i47 = phi ptr [ %.017.i59, %.critedge.i56 ], [ %.01724.i, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit ] ; 3 uses
  %.01825.i49.idx = phi i64 [ %.01825.i49.add, %.critedge.i56 ], [ 116, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit ]
  %i.ri = load i64, ptr %.01727.i47, align 4      ; 2 uses
  %.sroa.4.0.extract.shift.i51 = lshr i64 %i.ri, 32
  %.sroa.4.0.extract.trunc.i52 = trunc nuw i64 %.sroa.4.0.extract.shift.i51 to i32
  %.01825.i49.add = add nuw nsw i64 %.01825.i49.idx, 8 ; 3 uses
  %.ptr84 = getelementptr inbounds nuw i8, ptr %0, i64 %.01825.i49.add
  %i.rj = load i64, ptr %.ptr84, align 4
  store i64 %i.rj, ptr %.01727.i47, align 4
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.lr.ph28.i46, %bb.ae
  %.021.i55.idx = phi i64 [ %.021.i55.add, %bb.ae ], [ %.01825.i49.add, %.lr.ph28.i46 ] ; 2 uses
  %.021.i55.ptr = getelementptr inbounds i8, ptr %0, i64 %.021.i55.idx ; 3 uses
  %i.rk = getelementptr inbounds i8, ptr %.021.i55.ptr, i64 -4
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !63
  %i.rm = icmp slt i32 %i.rl, %.sroa.4.0.extract.trunc.i52
  br i1 %i.rm, label %bb.ae, label %.critedge.i56

bb.ae:                                            ; preds = %.lr.ph.i54
  %.021.i55.add = add nsw i64 %.021.i55.idx, -8   ; 3 uses
  %.ptr83 = getelementptr inbounds i8, ptr %0, i64 %.021.i55.add
  %i.rn = load i64, ptr %.ptr83, align 4
  store i64 %i.rn, ptr %.021.i55.ptr, align 4
  %.not19.i60 = icmp eq i64 %.021.i55.add, 116
  br i1 %.not19.i60, label %.critedge.i56, label %.lr.ph.i54, !llvm.loop !69

.critedge.i56:                                    ; preds = %bb.ae, %.lr.ph.i54
  %.0.lcssa.i57 = phi ptr [ %.021.i55.ptr, %.lr.ph.i54 ], [ %.ptr88.ptr, %bb.ae ]
  store i64 %i.ri, ptr %.0.lcssa.i57, align 4
  %.017.i59 = getelementptr inbounds nuw i8, ptr %.01727.i47, i64 8 ; 2 uses
  %i.ro = icmp ult ptr %.017.i59, %.ptr.le
  br i1 %i.ro, label %.lr.ph28.i46, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit61, !llvm.loop !71

_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit61: ; preds = %.critedge.i56, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit.thread, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit
  %i.rp = load i32, ptr %i.a, align 8, !tbaa !49
  %i.rq = add nsw i32 %i.rp, 1
  store i32 %i.rq, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.loopexit97

.loopexit97:                                      ; preds = %bb.b, %bb.b, %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit61
  %i.rr = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %.promoted.i62 = load ptr, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %i.rs = icmp ult ptr %.promoted.i62, %i.rr
  br i1 %i.rs, label %.lr.ph.i64, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

.lr.ph.i64:                                       ; preds = %.loopexit97
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ru = load i16, ptr %i.rt, align 8, !tbaa !59
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i64
  %i.rv = phi ptr [ %.promoted.i62, %.lr.ph.i64 ], [ %i.rx, %bb.ag ] ; 2 uses
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !59 ; 2 uses
  %.not.i65 = icmp eq i16 %i.rw, %i.ru
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 3 uses
  br i1 %.not.i65, label %bb.ag, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit.loopexit256"

bb.ag:                                            ; preds = %bb.af
  %i.ry = icmp ult ptr %i.rx, %i.rr
  br i1 %i.ry, label %bb.af, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit.loopexit256", !llvm.loop !89

bb.ah:                                            ; preds = %bb.b
  %i.rz = load ptr, ptr %i.c, align 8, !tbaa !56  ; 2 uses
  %i.sa = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %i.sb = icmp ult ptr %i.rz, %i.sa
  br i1 %i.sb, label %.lr.ph.i67, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

.lr.ph.i67:                                       ; preds = %bb.ah
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 100
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %.lr.ph.i67
  %i.se = phi ptr [ %i.sa, %.lr.ph.i67 ], [ %i.sm, %bb.al ]
  %i.sf = phi ptr [ %i.rz, %.lr.ph.i67 ], [ %i.so, %bb.al ] ; 2 uses
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !59 ; 2 uses
  %i.sh = load i16, ptr %i.sc, align 8, !tbaa !59
  %.not.i68 = icmp eq i16 %i.sg, %i.sh
  br i1 %.not.i68, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.si = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.sj = load i32, ptr %i.sd, align 4, !tbaa !50
  %i.sk = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.si, i16 %i.sg, i32 noundef %i.sj) #8
  %.pre.i70 = load ptr, ptr %i.c, align 8, !tbaa !56 ; 3 uses
  br i1 %i.sk, label %bb.ak, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aj
  %.pre2.i71 = load ptr, ptr %i.f, align 8, !tbaa !58
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sl = getelementptr inbounds nuw i8, ptr %.pre.i70, i64 8
  store ptr %i.sl, ptr %i.c, align 8, !tbaa !56
  %.sroa.0.0.copyload.i72 = load i16, ptr %.pre.i70, align 4, !tbaa !30
  br label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

bb.al:                                            ; preds = %._crit_edge.i, %bb.ai
  %i.sm = phi ptr [ %i.se, %bb.ai ], [ %.pre2.i71, %._crit_edge.i ] ; 2 uses
  %i.sn = phi ptr [ %i.sf, %bb.ai ], [ %.pre.i70, %._crit_edge.i ]
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 3 uses
  store ptr %i.so, ptr %i.c, align 8, !tbaa !56
  %i.sp = icmp ult ptr %i.so, %i.sm
  br i1 %i.sp, label %bb.ai, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit", !llvm.loop !90

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit.loopexit256": ; preds = %bb.af, %bb.ag
  %.sroa.04.0.ph = phi i16 [ %i.rw, %bb.af ], [ 0, %bb.ag ]
  store ptr %i.rx, ptr %i.c, align 8, !tbaa !56
  br label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit": ; preds = %bb.b, %bb.al, %bb.y, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit.loopexit256", %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit", %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_1EENS_4MoveET_.exit", %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit", %bb.ak, %bb.ah, %.loopexit97, %.loopexit96, %bb.x, %bb.u, %bb.c
  %.sroa.04.0 = phi i16 [ 0, %bb.y ], [ %.sroa.04.0.copyload, %bb.c ], [ 0, %bb.ah ], [ %i.ok, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_1EENS_4MoveET_.exit" ], [ %i.oy, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit" ], [ 0, %bb.al ], [ %.sroa.0.0.copyload.i, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit" ], [ 0, %.loopexit96 ], [ %i.pj, %bb.x ], [ 0, %bb.u ], [ %.sroa.04.0.ph, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit.loopexit256" ], [ 0, %.loopexit97 ], [ %.sroa.0.0.copyload.i72, %bb.ak ], [ 0, %bb.b ]
  ret i16 %.sroa.04.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE1EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE(ptr noundef nonnull align 8 dereferenceable(2164) %0, ptr noundef nonnull align 8 dereferenceable(520) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [7 x i64], align 16               ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !53, !align !54 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 620
  %i.d = load i8, ptr %i.c, align 4, !tbaa !82    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !91
  %i.f = xor i8 %i.d, 1
  %i.g = icmp eq i8 %i.d, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !91
  %i.l = and i64 %i.k, %i.i                       ; 2 uses
  %i.m = shl i64 %i.l, 7
  %i.n = and i64 %i.m, 9187201950435737344
  %i.o = shl i64 %i.l, 9
  %i.p = and i64 %i.o, -72340172838076928
  %i.q = or i64 %i.n, %i.p
  br label %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE1EEEmNS_5ColorE.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.s = load i64, ptr %i.r, align 8, !tbaa !91
  %i.t = and i64 %i.s, %i.i                       ; 2 uses
  %i.u = lshr i64 %i.t, 9
  %i.v = and i64 %i.u, 35887507618889599
  %i.w = lshr i64 %i.t, 7
  %i.x = and i64 %i.w, 71775015237779198
  %i.y = or i64 %i.v, %i.x
  br label %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE1EEEmNS_5ColorE.exit

_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE1EEEmNS_5ColorE.exit: ; preds = %bb.b, %bb.c
  %i.z = phi i64 [ %i.q, %bb.b ], [ %i.y, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.z, ptr %i.ab, align 16, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ad = zext i8 %i.f to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !91 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !91
  %i.ai = and i64 %i.ah, %i.af                    ; 2 uses
  %.not5.i = icmp eq i64 %i.ai, 0
  br i1 %.not5.i, label %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE2EEEmNS_5ColorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE1EEEmNS_5ColorE.exit, %.lr.ph.i
  %.07.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 0, %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE1EEEmNS_5ColorE.exit ]
  %.046.i = phi i64 [ %i.al, %.lr.ph.i ], [ %i.ai, %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE1EEEmNS_5ColorE.exit ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.046.i, i1 true)
  %i.ak = add i64 %.046.i, -1
  %i.al = and i64 %i.ak, %.046.i                  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.aj
  %i.an = load i64, ptr %i.am, align 8, !tbaa !91
  %i.ao = or i64 %i.an, %.07.i                    ; 2 uses
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE2EEEmNS_5ColorE.exit, label %.lr.ph.i, !llvm.loop !92

_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE2EEEmNS_5ColorE.exit: ; preds = %.lr.ph.i, %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE1EEEmNS_5ColorE.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE1EEEmNS_5ColorE.exit ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !91
  %i.ar = and i64 %i.aq, %i.af                    ; 2 uses
  %.not5.i62 = icmp eq i64 %i.ar, 0
  br i1 %.not5.i62, label %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE3EEEmNS_5ColorE.exit, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE2EEEmNS_5ColorE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.at = load i64, ptr %i.as, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i63
  %.07.i64 = phi i64 [ 0, %.lr.ph.i63 ], [ %i.bf, %bb.d ]
  %.046.i65 = phi i64 [ %i.ar, %.lr.ph.i63 ], [ %i.aw, %bb.d ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.046.i65, i1 true)
  %i.av = add i64 %.046.i65, -1
  %i.aw = and i64 %i.av, %.046.i65                ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.au ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !93
  %i.ba = load i64, ptr %i.ax, align 16, !tbaa !96
  %i.bb = tail call noundef i64 @llvm.pext.i64(i64 %i.at, i64 %i.ba)
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !91
  %i.bf = or i64 %i.be, %.07.i64                  ; 2 uses
  %.not.i66 = icmp eq i64 %i.aw, 0
  br i1 %.not.i66, label %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE3EEEmNS_5ColorE.exit.loopexit, label %bb.d, !llvm.loop !97

_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE3EEEmNS_5ColorE.exit.loopexit: ; preds = %bb.d
  %i.bg = or i64 %.0.lcssa.i, %i.bf
  br label %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE3EEEmNS_5ColorE.exit

_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE3EEEmNS_5ColorE.exit: ; preds = %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE3EEEmNS_5ColorE.exit.loopexit, %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE2EEEmNS_5ColorE.exit
  %.0.lcssa.i67 = phi i64 [ %.0.lcssa.i, %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE2EEEmNS_5ColorE.exit ], [ %i.bg, %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE3EEEmNS_5ColorE.exit.loopexit ]
  %i.bh = or i64 %.0.lcssa.i67, %i.z              ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.bh, ptr %i.bi, align 16, !tbaa !91
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !91
  %i.bl = and i64 %i.bk, %i.af                    ; 2 uses
  %.not5.i68 = icmp eq i64 %i.bl, 0
  br i1 %.not5.i68, label %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE4EEEmNS_5ColorE.exit, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %_ZNK9Stockfish8Position10attacks_byILNS_9PieceTypeE3EEEmNS_5ColorE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !91
  br label %bb.e
end_hunk_0
