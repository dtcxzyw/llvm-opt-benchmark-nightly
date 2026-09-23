Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/movegen?download=true
inline.NumInlined: 579
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.4" = type { [64 x i64] }
%"struct.Stockfish::Magic" = type { i64, ptr }

$_ZN9Stockfish8generateILNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES3_ = comdat any

$_ZN9Stockfish8generateILNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES3_ = comdat any

$_ZN9Stockfish8generateILNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES3_ = comdat any

$_ZN9Stockfish8generateILNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES3_ = comdat any

$_ZN9Stockfish13PseudoAttacksE = comdat any

@_ZN9Stockfish13PseudoAttacksE = linkonce_odr dso_local local_unnamed_addr constant { <{ { <{ [56 x i64], [8 x i64] }> }, %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4" }> } { <{ { <{ [56 x i64], [8 x i64] }> }, %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4", %"struct.std::array.4" }> <{ { <{ [56 x i64], [8 x i64] }> } { <{ [56 x i64], [8 x i64] }> <{ [56 x i64] [i64 512, i64 1280, i64 2560, i64 5120, i64 10240, i64 20480, i64 40960, i64 16384, i64 131072, i64 327680, i64 655360, i64 1310720, i64 2621440, i64 5242880, i64 10485760, i64 4194304, i64 33554432, i64 83886080, i64 167772160, i64 335544320, i64 671088640, i64 1342177280, i64 2684354560, i64 1073741824, i64 8589934592, i64 21474836480, i64 42949672960, i64 85899345920, i64 171798691840, i64 343597383680, i64 687194767360, i64 274877906944, i64 2199023255552, i64 5497558138880, i64 10995116277760, i64 21990232555520, i64 43980465111040, i64 87960930222080, i64 175921860444160, i64 70368744177664, i64 562949953421312, i64 1407374883553280, i64 2814749767106560, i64 5629499534213120, i64 11258999068426240, i64 22517998136852480, i64 45035996273704960, i64 18014398509481984, i64 144115188075855872, i64 360287970189639680, i64 720575940379279360, i64 1441151880758558720, i64 2882303761517117440, i64 5764607523034234880, i64 -6917529027641081856, i64 4611686018427387904], [8 x i64] zeroinitializer }> }, %"struct.std::array.4" { [64 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 2, i64 5, i64 10, i64 20, i64 40, i64 80, i64 160, i64 64, i64 512, i64 1280, i64 2560, i64 5120, i64 10240, i64 20480, i64 40960, i64 16384, i64 131072, i64 327680, i64 655360, i64 1310720, i64 2621440, i64 5242880, i64 10485760, i64 4194304, i64 33554432, i64 83886080, i64 167772160, i64 335544320, i64 671088640, i64 1342177280, i64 2684354560, i64 1073741824, i64 8589934592, i64 21474836480, i64 42949672960, i64 85899345920, i64 171798691840, i64 343597383680, i64 687194767360, i64 274877906944, i64 2199023255552, i64 5497558138880, i64 10995116277760, i64 21990232555520, i64 43980465111040, i64 87960930222080, i64 175921860444160, i64 70368744177664, i64 562949953421312, i64 1407374883553280, i64 2814749767106560, i64 5629499534213120, i64 11258999068426240, i64 22517998136852480, i64 45035996273704960, i64 18014398509481984] }, %"struct.std::array.4" { [64 x i64] [i64 132096, i64 329728, i64 659712, i64 1319424, i64 2638848, i64 5277696, i64 10489856, i64 4202496, i64 33816580, i64 84410376, i64 168886289, i64 337772578, i64 675545156, i64 1351090312, i64 2685403152, i64 1075839008, i64 8657044482, i64 21609056261, i64 43234889994, i64 86469779988, i64 172939559976, i64 345879119952, i64 687463207072, i64 275414786112, i64 2216203387392, i64 5531918402816, i64 11068131838464, i64 22136263676928, i64 44272527353856, i64 88545054707712, i64 175990581010432, i64 70506185244672, i64 567348067172352, i64 1416171111120896, i64 2833441750646784, i64 5666883501293568, i64 11333767002587136, i64 22667534005174272, i64 45053588738670592, i64 18049583422636032, i64 145241105196122112, i64 362539804446949376, i64 725361088165576704, i64 1450722176331153408, i64 2901444352662306816, i64 5802888705324613632, i64 -6913025356609880064, i64 4620693356194824192, i64 288234782788157440, i64 576469569871282176, i64 1224997833292120064, i64 2449995666584240128, i64 4899991333168480256, i64 -8646761407372591104, i64 1152939783987658752, i64 2305878468463689728, i64 1128098930098176, i64 2257297371824128, i64 4796069720358912, i64 9592139440717824, i64 19184278881435648, i64 38368557762871296, i64 4679521487814656, i64 9077567998918656] }, %"struct.std::array.4" { [64 x i64] [i64 -9205322385119247872, i64 36099303471056128, i64 141012904249856, i64 550848566272, i64 6480472064, i64 1108177604608, i64 283691315142656, i64 72624976668147712, i64 4620710844295151618, i64 -9205322385119182843, i64 36099303487963146, i64 141017232965652, i64 1659000848424, i64 283693466779728, i64 72624976676520096, i64 145249953336262720, i64 2310355422147510788, i64 4620710844311799048, i64 -9205322380790986223, i64 36100411639206946, i64 424704217196612, i64 72625527495610504, i64 145249955479592976, i64 290499906664153120, i64 1155177711057110024, i64 2310355426409252880, i64 4620711952330133792, i64 -9205038694072573375, i64 108724279602332802, i64 145390965166737412, i64 290500455356698632, i64 580999811184992272, i64 577588851267340304, i64 1155178802063085600, i64 2310639079102947392, i64 4693335752243822976, i64 -9060072569221905919, i64 326598935265674242, i64 581140276476643332, i64 1161999073681608712, i64 288793334762704928, i64 577868148797087808, i64 1227793891648880768, i64 2455587783297826816, i64 4911175566595588352, i64 -8624392940535152127, i64 1197958188344280066, i64 2323857683139004420, i64 144117404414255168, i64 360293502378066048, i64 720587009051099136, i64 1441174018118909952, i64 2882348036221108224, i64 5764696068147249408, i64 -6917353036926680575, i64 4611756524879479810, i64 567382630219904, i64 1416240237150208, i64 2833579985862656, i64 5667164249915392, i64 11334324221640704, i64 22667548931719168, i64 45053622886727936, i64 18049651735527937] }, %"struct.std::array.4" { [64 x i64] [i64 72340172838076926, i64 144680345676153597, i64 289360691352306939, i64 578721382704613623, i64 1157442765409226991, i64 2314885530818453727, i64 4629771061636907199, i64 -9187201950435737473, i64 72340172838141441, i64 144680345676217602, i64 289360691352369924, i64 578721382704674568, i64 1157442765409283856, i64 2314885530818502432, i64 4629771061636939584, i64 -9187201950435737728, i64 72340172854657281, i64 144680345692602882, i64 289360691368494084, i64 578721382720276488, i64 1157442765423841296, i64 2314885530830970912, i64 4629771061645230144, i64 -9187201950435803008, i64 72340177082712321, i64 144680349887234562, i64 289360695496279044, i64 578721386714368008, i64 1157442769150545936, i64 2314885534022901792, i64 4629771063767613504, i64 -9187201950452514688, i64 72341259464802561, i64 144681423712944642, i64 289361752209228804, i64 578722409201797128, i64 1157443723186933776, i64 2314886351157207072, i64 4629771607097753664, i64 -9187201954730704768, i64 72618349279904001, i64 144956323094725122, i64 289632270724367364, i64 578984165983651848, i64 1157687956502220816, i64 2315095537539358752, i64 4629910699613634624, i64 -9187203049947365248, i64 143553341945872641, i64 215330564830528002, i64 358885010599838724, i64 645993902138460168, i64 1220211685215703056, i64 2368647251370188832, i64 4665518383679160384, i64 -9187483425412448128, i64 -143832609275707135, i64 -215607624513486334, i64 -359157654989044732, i64 -646257715940161528, i64 -1220457837842395120, i64 -2368858081646862304, i64 -4665658569255796672, i64 9187484529235886208] }, %"struct.std::array.4" { [64 x i64] [i64 -9132982212281170946, i64 180779649147209725, i64 289501704256556795, i64 578721933553179895, i64 1157442771889699055, i64 2314886638996058335, i64 4630054752952049855, i64 -9114576973767589761, i64 4693051017133293059, i64 -9060642039442965241, i64 325459994840333070, i64 578862399937640220, i64 1157444424410132280, i64 2315169224285282160, i64 4702396038313459680, i64 -9041951997099475008, i64 2382695595002168069, i64 4765391190004401930, i64 -8915961689422492139, i64 614821794359483434, i64 1157867469641037908, i64 2387511058326581416, i64 4775021017124823120, i64 -8896702043771649888, i64 1227517888139822345, i64 2455035776296487442, i64 4910072647826412836, i64 -8626317307358205367, i64 1266167048752878738, i64 2460276499189639204, i64 4920271519124312136, i64 -8606202139267522416, i64 649930110732142865, i64 1299860225776030242, i64 2600000831312176196, i64 5272058161445620104, i64 -7902628846034972143, i64 2641485286422881314, i64 5210911883574396996, i64 -8025202881049096056, i64 361411684042608929, i64 722824471891812930, i64 1517426162373248132, i64 3034571949281478664, i64 6068863523097809168, i64 -6309297402995793375, i64 5827868887957914690, i64 -6863345366808360828, i64 287670746360127809, i64 575624067208594050, i64 1079472019650937860, i64 2087167920257370120, i64 4102559721436811280, i64 8133343319517438240, i64 -2251834653247520191, i64 -4575726900532968318, i64 -143265226645487231, i64 -214191384276336126, i64 -356324075003182076, i64 -640590551690246136, i64 -1209123513620754416, i64 -2346190532715143136, i64 -4620604946369068736, i64 9205534180971414145] }, %"struct.std::array.4" { [64 x i64] [i64 770, i64 1797, i64 3594, i64 7188, i64 14376, i64 28752, i64 57504, i64 49216, i64 197123, i64 460039, i64 920078, i64 1840156, i64 3680312, i64 7360624, i64 14721248, i64 12599488, i64 50463488, i64 117769984, i64 235539968, i64 471079936, i64 942159872, i64 1884319744, i64 3768639488, i64 3225468928, i64 12918652928, i64 30149115904, i64 60298231808, i64 120596463616, i64 241192927232, i64 482385854464, i64 964771708928, i64 825720045568, i64 3307175149568, i64 7718173671424, i64 15436347342848, i64 30872694685696, i64 61745389371392, i64 123490778742784, i64 246981557485568, i64 211384331665408, i64 846636838289408, i64 1975852459884544, i64 3951704919769088, i64 7903409839538176, i64 15806819679076352, i64 31613639358152704, i64 63227278716305408, i64 54114388906344448, i64 216739030602088448, i64 505818229730443264, i64 1011636459460886528, i64 2023272918921773056, i64 4046545837843546112, i64 8093091675687092224, i64 -2260560722335367168, i64 -4593460513685372928, i64 144959613005987840, i64 362258295026614272, i64 724516590053228544, i64 1449033180106457088, i64 2898066360212914176, i64 5796132720425828352, i64 -6854478632857894912, i64 4665729213955833856] }, %"struct.std::array.4" zeroinitializer }> }, comdat, align 8
@_ZN9Stockfish6MagicsE = external local_unnamed_addr global [64 x [2 x %"struct.Stockfish::Magic"]], align 16
@_ZN9Stockfish9BetweenBBE = external local_unnamed_addr global [64 x [64 x i64]], align 16

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34   ; 9 uses
  %i.l = and i64 %i.f, %i.g                       ; 4 uses
  %i.m = and i64 %i.l, 71776119061217280          ; 4 uses
  %i.n = and i64 %i.l, -71776119061217281
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %.loopexit44.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = xor i64 %i.p, -1
  %i.r = shl i64 %i.m, 9
  %i.s = and i64 %i.r, %i.k                       ; 2 uses
  %i.t = shl nuw nsw i64 %i.m, 7
  %i.u = and i64 %i.k, 9151314442816847872
  %i.v = and i64 %i.u, %i.t                       ; 2 uses
  %i.w = shl nuw i64 %i.m, 8
  %i.x = and i64 %i.w, %i.q                       ; 2 uses
  %.not2746.i.i = icmp eq i64 %i.s, 0
  br i1 %.not2746.i.i, label %.preheader45.i.i, label %.lr.ph.i.i

.preheader45.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi ptr [ %1, %bb.c ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %.not2849.i.i = icmp eq i64 %i.v, 0
  br i1 %.not2849.i.i, label %.preheader.i.i, label %.lr.ph52.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.048.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %1, %bb.c ] ; 2 uses
  %.04347.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %i.s, %bb.c ] ; 3 uses
  %i.y = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04347.i.i, i1 true)
  %i.z = trunc nuw nsw i64 %i.y to i16            ; 2 uses
  %i.aa = add i64 %.04347.i.i, -144115188075855872
  %i.ab = and i64 %i.aa, %.04347.i.i              ; 2 uses
  %i.ac = shl nuw nsw i16 %i.z, 6
  %i.ad = add nuw nsw i16 %i.ac, 15808
  %i.ae = and i16 %i.ad, 16320
  %i.af = or disjoint i16 %i.z, 8192
  %i.ag = add nuw nsw i16 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8 ; 2 uses
  %i.ai = insertelement <4 x i16> poison, i16 %i.ag, i64 0
  %i.aj = shufflevector <4 x i16> %i.ai, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ak = add nuw <4 x i16> %i.aj, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.ak, ptr %.048.i.i, align 2, !tbaa !36
  %.not27.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not27.i.i, label %.preheader45.i.i, label %.lr.ph.i.i, !llvm.loop !49

.preheader.i.i:                                   ; preds = %.lr.ph52.i.i, %.preheader45.i.i
  %.1.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader45.i.i ], [ %i.au, %.lr.ph52.i.i ] ; 2 uses
  %.not2954.i.i = icmp eq i64 %i.x, 0
  br i1 %.not2954.i.i, label %.loopexit44.i.i, label %.lr.ph57.i.i

.lr.ph52.i.i:                                     ; preds = %.preheader45.i.i, %.lr.ph52.i.i
  %.151.i.i = phi ptr [ %i.au, %.lr.ph52.i.i ], [ %.0.lcssa.i.i, %.preheader45.i.i ] ; 2 uses
  %.04250.i.i = phi i64 [ %i.ao, %.lr.ph52.i.i ], [ %i.v, %.preheader45.i.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04250.i.i, i1 true)
  %i.am = trunc nuw nsw i64 %i.al to i16          ; 2 uses
  %i.an = add nuw i64 %.04250.i.i, 9151314442816847872
  %i.ao = and i64 %i.an, %.04250.i.i              ; 2 uses
  %i.ap = shl nuw nsw i16 %i.am, 6
  %i.aq = add nuw nsw i16 %i.ap, 15936
  %i.ar = and i16 %i.aq, 16320
  %i.as = or disjoint i16 %i.am, 8192
  %i.at = add nuw nsw i16 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.151.i.i, i64 8 ; 2 uses
  %i.av = insertelement <4 x i16> poison, i16 %i.at, i64 0
  %i.aw = shufflevector <4 x i16> %i.av, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ax = add nuw <4 x i16> %i.aw, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.ax, ptr %.151.i.i, align 2, !tbaa !36
  %.not28.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not28.i.i, label %.preheader.i.i, label %.lr.ph52.i.i, !llvm.loop !50

.lr.ph57.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph57.i.i
  %.256.i.i = phi ptr [ %i.bh, %.lr.ph57.i.i ], [ %.1.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.04155.i.i = phi i64 [ %i.bb, %.lr.ph57.i.i ], [ %i.x, %.preheader.i.i ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04155.i.i, i1 true)
  %i.az = trunc nuw nsw i64 %i.ay to i16          ; 2 uses
  %i.ba = add i64 %.04155.i.i, -72057594037927936
  %i.bb = and i64 %i.ba, %.04155.i.i              ; 2 uses
  %i.bc = shl nuw nsw i16 %i.az, 6
  %i.bd = add nuw nsw i16 %i.bc, 15872
  %i.be = and i16 %i.bd, 16320
  %i.bf = or disjoint i16 %i.az, 28672
  %i.bg = add nuw i16 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %.256.i.i, i64 2 ; 2 uses
  store i16 %i.bg, ptr %.256.i.i, align 2, !tbaa !36
  %.not29.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not29.i.i, label %.loopexit44.i.i, label %.lr.ph57.i.i, !llvm.loop !51

.loopexit44.i.i:                                  ; preds = %.lr.ph57.i.i, %.preheader.i.i, %bb.b
  %.3.i.i = phi ptr [ %1, %bb.b ], [ %.1.lcssa.i.i, %.preheader.i.i ], [ %i.bh, %.lr.ph57.i.i ] ; 2 uses
  %i.bi = shl i64 %i.l, 9
  %i.bj = and i64 %i.k, 71775015237778944
  %i.bk = and i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = shl i64 %i.l, 7
  %i.bm = and i64 %i.k, 35887507618889472
  %i.bn = and i64 %i.bm, %i.bl                    ; 2 uses
  %i.bo = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bp = bitcast i32 %i.bo to <32 x i1>
  %i.bq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 74, i16 139, i16 204, i16 269, i16 334, i16 399, i16 464, i16 529, i16 594, i16 659, i16 724, i16 789, i16 854, i16 919, i16 984, i16 1049, i16 1114, i16 1179, i16 1244, i16 1309, i16 1374, i16 1439>, <32 x i16> zeroinitializer, <32 x i1> %i.bp)
  store <32 x i16> %i.bq, ptr %.3.i.i, align 1, !tbaa !38
  %i.br = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.bo)
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i, i64 %i.bs ; 2 uses
  %i.bu = lshr i64 %i.bk, 32
  %i.bv = trunc nuw nsw i64 %i.bu to i32          ; 2 uses
  %i.bw = bitcast i32 %i.bv to <32 x i1>
  %i.bx = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1504, i16 1569, i16 1634, i16 1699, i16 1764, i16 1829, i16 1894, i16 1959, i16 2024, i16 2089, i16 2154, i16 2219, i16 2284, i16 2349, i16 2414, i16 2479, i16 2544, i16 2609, i16 2674, i16 2739, i16 2804, i16 2869, i16 2934, i16 2999, i16 3064, i16 3129, i16 3194, i16 3259, i16 3324, i16 3389, i16 3454, i16 3519>, <32 x i16> zeroinitializer, <32 x i1> %i.bw)
  store <32 x i16> %i.bx, ptr %i.bt, align 1, !tbaa !38
  %i.by = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.bv)
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.bz ; 2 uses
  %i.cb = trunc i64 %i.bn to i32                  ; 2 uses
  %i.cc = bitcast i32 %i.cb to <32 x i1>
  %i.cd = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 72, i16 137, i16 202, i16 267, i16 332, i16 397, i16 462, i16 527, i16 592, i16 657, i16 722, i16 787, i16 852, i16 917, i16 982, i16 1047, i16 1112, i16 1177, i16 1242, i16 1307, i16 1372, i16 1437, i16 1502, i16 1567>, <32 x i16> zeroinitializer, <32 x i1> %i.cc)
  store <32 x i16> %i.cd, ptr %i.ca, align 1, !tbaa !38
  %i.ce = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.cb)
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cf ; 2 uses
  %i.ch = lshr i64 %i.bn, 32
  %i.ci = trunc nuw nsw i64 %i.ch to i32          ; 2 uses
  %i.cj = bitcast i32 %i.ci to <32 x i1>
  %i.ck = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1632, i16 1697, i16 1762, i16 1827, i16 1892, i16 1957, i16 2022, i16 2087, i16 2152, i16 2217, i16 2282, i16 2347, i16 2412, i16 2477, i16 2542, i16 2607, i16 2672, i16 2737, i16 2802, i16 2867, i16 2932, i16 2997, i16 3062, i16 3127, i16 3192, i16 3257, i16 3322, i16 3387, i16 3452, i16 3517, i16 3582, i16 3647>, <32 x i16> zeroinitializer, <32 x i1> %i.cj)
  store <32 x i16> %i.ck, ptr %i.cg, align 1, !tbaa !38
  %i.cl = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.ci)
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !39
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 60
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !41  ; 3 uses
  %.not30.i.i = icmp eq i8 %i.cr, 64
  br i1 %.not30.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %.loopexit44.i.i
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 512), i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.cv = and i64 %i.n, %i.cu                     ; 2 uses
  %.not3159.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not3159.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %bb.d
  %i.cw = zext i8 %i.cr to i16
  %i.cx = or disjoint i16 %i.cw, -32768
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph62.i.i
  %.461.i.i = phi ptr [ %i.cn, %.lr.ph62.i.i ], [ %i.de, %bb.e ] ; 2 uses
  %.04060.i.i = phi i64 [ %i.cv, %.lr.ph62.i.i ], [ %i.db, %bb.e ] ; 3 uses
  %i.cy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04060.i.i, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i16
  %i.da = add i64 %.04060.i.i, -1
  %i.db = and i64 %i.da, %.04060.i.i              ; 2 uses
  %i.dc = shl nuw nsw i16 %i.cz, 6
  %i.dd = add nuw nsw i16 %i.cx, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.461.i.i, i64 2 ; 2 uses
  store i16 %i.dd, ptr %.461.i.i, align 2, !tbaa !36
  %.not31.i.i = icmp eq i64 %i.db, 0
  br i1 %.not31.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.e, !llvm.loop !52

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %bb.e, %bb.d, %.loopexit44.i.i
  %.5.i.i = phi ptr [ %i.cn, %.loopexit44.i.i ], [ %i.cn, %bb.d ], [ %i.de, %bb.e ] ; 2 uses
  %i.df = load i64, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !34
  %i.di = and i64 %i.dh, %i.df                    ; 2 uses
  %.not9.i.i = icmp eq i64 %i.di, 0
  br i1 %.not9.i.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i22.i
  %.011.i.i = phi ptr [ %i.eh, %.lr.ph.i22.i ], [ %.5.i.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i.i = phi i64 [ %i.dm, %.lr.ph.i22.i ], [ %i.di, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.dj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i.i, i1 true) ; 2 uses
  %i.dk = trunc nuw nsw i64 %i.dj to i16
  %i.dl = add i64 %.0810.i.i, -1
  %i.dm = and i64 %i.dl, %.0810.i.i               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.dj
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !34
  %i.dp = and i64 %i.do, %i.k                     ; 2 uses
  %i.dq = shl nuw nsw i16 %i.dk, 6
  %i.dr = insertelement <32 x i16> poison, i16 %i.dq, i64 0
  %i.ds = shufflevector <32 x i16> %i.dr, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.dt = trunc i64 %i.dp to i32                  ; 2 uses
  %i.du = or disjoint <32 x i16> %i.ds, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.dv = bitcast i32 %i.dt to <32 x i1>
  %i.dw = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.du, <32 x i16> zeroinitializer, <32 x i1> %i.dv)
  store <32 x i16> %i.dw, ptr %.011.i.i, align 1, !tbaa !38
  %i.dx = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dt)
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.011.i.i, i64 %i.dy ; 2 uses
  %i.ea = lshr i64 %i.dp, 32
  %i.eb = trunc nuw i64 %i.ea to i32              ; 2 uses
  %i.ec = or disjoint <32 x i16> %i.ds, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.ed = bitcast i32 %i.eb to <32 x i1>
  %i.ee = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ec, <32 x i16> zeroinitializer, <32 x i1> %i.ed)
  store <32 x i16> %i.ee, ptr %i.dz, align 1, !tbaa !38
  %i.ef = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.eb)
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.eg ; 2 uses
  %.not.i23.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i23.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i22.i, !llvm.loop !0

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i22.i
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.ei = phi i64 [ %i.df, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i24.i = phi ptr [ %.5.i.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.eh, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !34
  %i.em = and i64 %i.el, %i.ei                    ; 2 uses
  %.not9.i25.i = icmp eq i64 %i.em, 0
  br i1 %.not9.i25.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i26.i
  %.011.i27.i = phi ptr [ %i.fs, %.lr.ph.i26.i ], [ %.0.lcssa.i24.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i28.i = phi i64 [ %i.eq, %.lr.ph.i26.i ], [ %i.em, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i28.i, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i16
  %i.ep = add i64 %.0810.i28.i, -1
  %i.eq = and i64 %i.ep, %.0810.i28.i             ; 2 uses
  %i.er = load i64, ptr %i.ej, align 8, !tbaa !34
  %i.es = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.en ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !44
  %i.ev = load i64, ptr %i.es, align 16, !tbaa !45
  %i.ew = tail call noundef i64 @llvm.pext.i64(i64 %i.er, i64 %i.ev)
  %i.ex = and i64 %i.ew, 4294967295
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !34
  %i.fa = and i64 %i.ez, %i.k                     ; 2 uses
  %i.fb = shl nuw nsw i16 %i.eo, 6
  %i.fc = insertelement <32 x i16> poison, i16 %i.fb, i64 0
  %i.fd = shufflevector <32 x i16> %i.fc, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.fe = trunc i64 %i.fa to i32                  ; 2 uses
  %i.ff = or disjoint <32 x i16> %i.fd, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.fg = bitcast i32 %i.fe to <32 x i1>
  %i.fh = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ff, <32 x i16> zeroinitializer, <32 x i1> %i.fg)
  store <32 x i16> %i.fh, ptr %.011.i27.i, align 1, !tbaa !38
  %i.fi = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fe)
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.011.i27.i, i64 %i.fj ; 2 uses
  %i.fl = lshr i64 %i.fa, 32
  %i.fm = trunc nuw i64 %i.fl to i32              ; 2 uses
  %i.fn = or disjoint <32 x i16> %i.fd, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.fo = bitcast i32 %i.fm to <32 x i1>
  %i.fp = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.fn, <32 x i16> zeroinitializer, <32 x i1> %i.fo)
  store <32 x i16> %i.fp, ptr %i.fk, align 1, !tbaa !38
  %i.fq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fm)
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fr ; 2 uses
  %.not.i29.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i29.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i26.i, !llvm.loop !1

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i26.i
  %.pre57.i = load i64, ptr %i.d, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.ft = phi i64 [ %i.ei, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre57.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i30.i = phi ptr [ %.0.lcssa.i24.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.fs, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !34
  %i.fw = and i64 %i.fv, %i.ft                    ; 2 uses
  %.not9.i31.i = icmp eq i64 %i.fw, 0
  br i1 %.not9.i31.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i32.i
  %.011.i33.i = phi ptr [ %i.hd, %.lr.ph.i32.i ], [ %.0.lcssa.i30.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i34.i = phi i64 [ %i.ga, %.lr.ph.i32.i ], [ %i.fw, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.fx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i34.i, i1 true) ; 2 uses
  %i.fy = trunc nuw nsw i64 %i.fx to i16
  %i.fz = add i64 %.0810.i34.i, -1
  %i.ga = and i64 %i.fz, %.0810.i34.i             ; 2 uses
  %i.gb = load i64, ptr %i.ej, align 8, !tbaa !34
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.fx ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !44
  %i.gg = load i64, ptr %i.gd, align 16, !tbaa !45
  %i.gh = tail call noundef i64 @llvm.pext.i64(i64 %i.gb, i64 %i.gg)
  %i.gi = and i64 %i.gh, 4294967295
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !34
  %i.gl = and i64 %i.gk, %i.k                     ; 2 uses
  %i.gm = shl nuw nsw i16 %i.fy, 6
  %i.gn = insertelement <32 x i16> poison, i16 %i.gm, i64 0
  %i.go = shufflevector <32 x i16> %i.gn, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.gp = trunc i64 %i.gl to i32                  ; 2 uses
  %i.gq = or disjoint <32 x i16> %i.go, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.gr = bitcast i32 %i.gp to <32 x i1>
  %i.gs = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gq, <32 x i16> zeroinitializer, <32 x i1> %i.gr)
  store <32 x i16> %i.gs, ptr %.011.i33.i, align 1, !tbaa !38
  %i.gt = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gp)
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %.011.i33.i, i64 %i.gu ; 2 uses
  %i.gw = lshr i64 %i.gl, 32
  %i.gx = trunc nuw i64 %i.gw to i32              ; 2 uses
  %i.gy = or disjoint <32 x i16> %i.go, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.gz = bitcast i32 %i.gx to <32 x i1>
  %i.ha = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gy, <32 x i16> zeroinitializer, <32 x i1> %i.gz)
  store <32 x i16> %i.ha, ptr %i.gv, align 1, !tbaa !38
  %i.hb = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gx)
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.hc ; 2 uses
  %.not.i35.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i35.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i32.i, !llvm.loop !2

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i32.i
  %.pre58.i = load i64, ptr %i.d, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.he = phi i64 [ %i.ft, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre58.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.lcssa.i36.i = phi ptr [ %.0.lcssa.i30.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.hd, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !34
  %i.hh = and i64 %i.hg, %i.he                    ; 2 uses
  %.not9.i37.i = icmp eq i64 %i.hh, 0
  br i1 %.not9.i37.i, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i38.i
  %.011.i39.i = phi ptr [ %i.iw, %.lr.ph.i38.i ], [ %.0.lcssa.i36.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i40.i = phi i64 [ %i.hl, %.lr.ph.i38.i ], [ %i.hh, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.hi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i40.i, i1 true) ; 2 uses
  %i.hj = trunc nuw nsw i64 %i.hi to i16
  %i.hk = add i64 %.0810.i40.i, -1
  %i.hl = and i64 %i.hk, %.0810.i40.i             ; 2 uses
  %i.hm = load i64, ptr %i.ej, align 8, !tbaa !34 ; 2 uses
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.hi ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !44
  %i.hq = load i64, ptr %i.hn, align 16, !tbaa !45
  %i.hr = tail call noundef i64 @llvm.pext.i64(i64 %i.hm, i64 %i.hq)
  %i.hs = and i64 %i.hr, 4294967295
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !34
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !44
  %i.hy = load i64, ptr %i.hv, align 16, !tbaa !45
  %i.hz = tail call noundef i64 @llvm.pext.i64(i64 %i.hm, i64 %i.hy)
  %i.ia = and i64 %i.hz, 4294967295
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !34
  %i.id = or i64 %i.ic, %i.hu
  %i.ie = and i64 %i.id, %i.k                     ; 2 uses
  %i.if = shl nuw nsw i16 %i.hj, 6
  %i.ig = insertelement <32 x i16> poison, i16 %i.if, i64 0
  %i.ih = shufflevector <32 x i16> %i.ig, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.ii = trunc i64 %i.ie to i32                  ; 2 uses
  %i.ij = or disjoint <32 x i16> %i.ih, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.ik = bitcast i32 %i.ii to <32 x i1>
  %i.il = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ij, <32 x i16> zeroinitializer, <32 x i1> %i.ik)
  store <32 x i16> %i.il, ptr %.011.i39.i, align 1, !tbaa !38
  %i.im = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ii)
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %.011.i39.i, i64 %i.in ; 2 uses
  %i.ip = lshr i64 %i.ie, 32
  %i.iq = trunc nuw i64 %i.ip to i32              ; 2 uses
  %i.ir = or disjoint <32 x i16> %i.ih, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.is = bitcast i32 %i.iq to <32 x i1>
  %i.it = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ir, <32 x i16> zeroinitializer, <32 x i1> %i.is)
  store <32 x i16> %i.it, ptr %i.io, align 1, !tbaa !38
  %i.iu = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.iq)
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.iv ; 2 uses
  %.not.i41.i = icmp eq i64 %i.hl, 0
  br i1 %.not.i41.i, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit, label %.lr.ph.i38.i, !llvm.loop !3

_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit: ; preds = %.lr.ph.i38.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %.0.lcssa.i42.i = phi ptr [ %.0.lcssa.i36.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.iw, %.lr.ph.i38.i ]
  %i.ix = and i64 %i.i, %i.g
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !34 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !34
  %i.jc = load i64, ptr %i.d, align 8, !tbaa !34  ; 9 uses
  %i.jd = and i64 %i.f, %i.iz                     ; 5 uses
  %i.je = and i64 %i.jd, 65280                    ; 3 uses
  %i.jf = and i64 %i.jd, -65281
  %.not.i.i5 = icmp eq i64 %i.je, 0
  br i1 %.not.i.i5, label %..loopexit44_crit_edge.i.i, label %bb.g

..loopexit44_crit_edge.i.i:                       ; preds = %bb.f
  %.pre.i.i = lshr i64 %i.jd, 7
  br label %.loopexit44.i.i25

bb.g:                                             ; preds = %bb.f
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !34
  %i.ji = xor i64 %i.jh, -1
  %i.jj = lshr i64 %i.je, 9
  %i.jk = and i64 %i.jj, %i.jc                    ; 2 uses
  %i.jl = lshr i64 %i.jd, 7                       ; 3 uses
  %i.jm = and i64 %i.jc, 254
  %i.jn = and i64 %i.jm, %i.jl                    ; 2 uses
  %i.jo = lshr exact i64 %i.je, 8
  %i.jp = and i64 %i.jo, %i.ji                    ; 2 uses
  %.not2746.i.i6 = icmp eq i64 %i.jk, 0
  br i1 %.not2746.i.i6, label %.preheader45.i.i11, label %.lr.ph.i.i7

.preheader45.i.i11:                               ; preds = %.lr.ph.i.i7, %bb.g
  %.0.lcssa.i.i12 = phi ptr [ %1, %bb.g ], [ %i.jx, %.lr.ph.i.i7 ] ; 2 uses
  %.not2849.i.i13 = icmp eq i64 %i.jn, 0
  br i1 %.not2849.i.i13, label %.preheader.i.i18, label %.lr.ph52.i.i14

.lr.ph.i.i7:                                      ; preds = %bb.g, %.lr.ph.i.i7
  %.048.i.i8 = phi ptr [ %i.jx, %.lr.ph.i.i7 ], [ %1, %bb.g ] ; 2 uses
  %.04347.i.i9 = phi i64 [ %i.jt, %.lr.ph.i.i7 ], [ %i.jk, %bb.g ] ; 3 uses
  %i.jq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04347.i.i9, i1 true)
  %i.jr = trunc nuw nsw i64 %i.jq to i16          ; 2 uses
  %i.js = add nuw nsw i64 %.04347.i.i9, 127
  %i.jt = and i64 %i.js, %.04347.i.i9             ; 2 uses
  %i.ju = shl nuw nsw i16 %i.jr, 6
  %i.jv = add nuw nsw i16 %i.ju, 576
  %i.jw = or disjoint i16 %i.jv, %i.jr
  %i.jx = getelementptr inbounds nuw i8, ptr %.048.i.i8, i64 8 ; 2 uses
  %i.jy = insertelement <4 x i16> poison, i16 %i.jw, i64 0
  %i.jz = shufflevector <4 x i16> %i.jy, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ka = add nuw nsw <4 x i16> %i.jz, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.ka, ptr %.048.i.i8, align 2, !tbaa !36
  %.not27.i.i10 = icmp eq i64 %i.jt, 0
  br i1 %.not27.i.i10, label %.preheader45.i.i11, label %.lr.ph.i.i7, !llvm.loop !53

.preheader.i.i18:                                 ; preds = %.lr.ph52.i.i14, %.preheader45.i.i11
  %.1.lcssa.i.i19 = phi ptr [ %.0.lcssa.i.i12, %.preheader45.i.i11 ], [ %i.ki, %.lr.ph52.i.i14 ] ; 2 uses
  %.not2954.i.i20 = icmp eq i64 %i.jp, 0
  br i1 %.not2954.i.i20, label %.loopexit44.i.i25, label %.lr.ph57.i.i21

.lr.ph52.i.i14:                                   ; preds = %.preheader45.i.i11, %.lr.ph52.i.i14
  %.151.i.i15 = phi ptr [ %i.ki, %.lr.ph52.i.i14 ], [ %.0.lcssa.i.i12, %.preheader45.i.i11 ] ; 2 uses
  %.04250.i.i16 = phi i64 [ %i.ke, %.lr.ph52.i.i14 ], [ %i.jn, %.preheader45.i.i11 ] ; 3 uses
  %i.kb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04250.i.i16, i1 true)
  %i.kc = trunc nuw nsw i64 %i.kb to i16          ; 2 uses
  %i.kd = add nuw nsw i64 %.04250.i.i16, 254
  %i.ke = and i64 %i.kd, %.04250.i.i16            ; 2 uses
  %i.kf = shl nuw nsw i16 %i.kc, 6
  %i.kg = add nuw nsw i16 %i.kf, 448
  %i.kh = or disjoint i16 %i.kg, %i.kc
  %i.ki = getelementptr inbounds nuw i8, ptr %.151.i.i15, i64 8 ; 2 uses
  %i.kj = insertelement <4 x i16> poison, i16 %i.kh, i64 0
  %i.kk = shufflevector <4 x i16> %i.kj, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.kl = add nuw nsw <4 x i16> %i.kk, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.kl, ptr %.151.i.i15, align 2, !tbaa !36
  %.not28.i.i17 = icmp eq i64 %i.ke, 0
  br i1 %.not28.i.i17, label %.preheader.i.i18, label %.lr.ph52.i.i14, !llvm.loop !54

.lr.ph57.i.i21:                                   ; preds = %.preheader.i.i18, %.lr.ph57.i.i21
  %.256.i.i22 = phi ptr [ %i.kt, %.lr.ph57.i.i21 ], [ %.1.lcssa.i.i19, %.preheader.i.i18 ] ; 2 uses
  %.04155.i.i23 = phi i64 [ %i.kp, %.lr.ph57.i.i21 ], [ %i.jp, %.preheader.i.i18 ] ; 3 uses
  %i.km = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04155.i.i23, i1 true)
  %i.kn = trunc nuw nsw i64 %i.km to i16          ; 2 uses
  %i.ko = add nuw nsw i64 %.04155.i.i23, 255
  %i.kp = and i64 %i.ko, %.04155.i.i23            ; 2 uses
  %i.kq = shl nuw nsw i16 %i.kn, 6
  %i.kr = or disjoint i16 %i.kn, 29184
  %i.ks = add nuw nsw i16 %i.kr, %i.kq
  %i.kt = getelementptr inbounds nuw i8, ptr %.256.i.i22, i64 2 ; 2 uses
  store i16 %i.ks, ptr %.256.i.i22, align 2, !tbaa !36
  %.not29.i.i24 = icmp eq i64 %i.kp, 0
  br i1 %.not29.i.i24, label %.loopexit44.i.i25, label %.lr.ph57.i.i21, !llvm.loop !55

.loopexit44.i.i25:                                ; preds = %.lr.ph57.i.i21, %.preheader.i.i18, %..loopexit44_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %..loopexit44_crit_edge.i.i ], [ %i.jl, %.preheader.i.i18 ], [ %i.jl, %.lr.ph57.i.i21 ]
  %.3.i.i26 = phi ptr [ %1, %..loopexit44_crit_edge.i.i ], [ %.1.lcssa.i.i19, %.preheader.i.i18 ], [ %i.kt, %.lr.ph57.i.i21 ] ; 2 uses
  %i.ku = lshr i64 %i.jd, 9
  %i.kv = and i64 %i.jc, 35887507618889472
  %i.kw = and i64 %i.kv, %i.ku                    ; 2 uses
  %i.kx = and i64 %i.jc, 71775015237778944
  %i.ky = and i64 %i.kx, %.pre-phi.i.i            ; 2 uses
  %i.kz = trunc i64 %i.kw to i32                  ; 2 uses
  %i.la = bitcast i32 %i.kz to <32 x i1>
  %i.lb = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 576, i16 641, i16 706, i16 771, i16 836, i16 901, i16 966, i16 1031, i16 1096, i16 1161, i16 1226, i16 1291, i16 1356, i16 1421, i16 1486, i16 1551, i16 1616, i16 1681, i16 1746, i16 1811, i16 1876, i16 1941, i16 2006, i16 2071, i16 2136, i16 2201, i16 2266, i16 2331, i16 2396, i16 2461, i16 2526, i16 2591>, <32 x i16> zeroinitializer, <32 x i1> %i.la)
  store <32 x i16> %i.lb, ptr %.3.i.i26, align 1, !tbaa !38
  %i.lc = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.kz)
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i26, i64 %i.ld ; 2 uses
  %i.lf = lshr i64 %i.kw, 32
  %i.lg = trunc nuw nsw i64 %i.lf to i32          ; 2 uses
  %i.lh = bitcast i32 %i.lg to <32 x i1>
  %i.li = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2656, i16 2721, i16 2786, i16 2851, i16 2916, i16 2981, i16 3046, i16 3111, i16 3176, i16 3241, i16 3306, i16 3371, i16 3436, i16 3501, i16 3566, i16 3631, i16 3696, i16 3761, i16 3826, i16 3891, i16 3956, i16 4021, i16 4086, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.lh)
  store <32 x i16> %i.li, ptr %i.le, align 1, !tbaa !38
  %i.lj = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.lg)
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.le, i64 %i.lk ; 2 uses
  %i.lm = trunc i64 %i.ky to i32                  ; 2 uses
  %i.ln = bitcast i32 %i.lm to <32 x i1>
  %i.lo = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 448, i16 513, i16 578, i16 643, i16 708, i16 773, i16 838, i16 903, i16 968, i16 1033, i16 1098, i16 1163, i16 1228, i16 1293, i16 1358, i16 1423, i16 1488, i16 1553, i16 1618, i16 1683, i16 1748, i16 1813, i16 1878, i16 1943, i16 2008, i16 2073, i16 2138, i16 2203, i16 2268, i16 2333, i16 2398, i16 2463>, <32 x i16> zeroinitializer, <32 x i1> %i.ln)
  store <32 x i16> %i.lo, ptr %i.ll, align 1, !tbaa !38
  %i.lp = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.lm)
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %i.lq ; 2 uses
  %i.ls = lshr i64 %i.ky, 32
  %i.lt = trunc nuw nsw i64 %i.ls to i32          ; 2 uses
  %i.lu = bitcast i32 %i.lt to <32 x i1>
  %i.lv = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2528, i16 2593, i16 2658, i16 2723, i16 2788, i16 2853, i16 2918, i16 2983, i16 3048, i16 3113, i16 3178, i16 3243, i16 3308, i16 3373, i16 3438, i16 3503, i16 3568, i16 3633, i16 3698, i16 3763, i16 3828, i16 3893, i16 3958, i16 4023, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.lu)
  store <32 x i16> %i.lv, ptr %i.lr, align 1, !tbaa !38
  %i.lw = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.lt)
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.lx ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !39
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 60
  %i.mc = load i8, ptr %i.mb, align 4, !tbaa !41  ; 3 uses
  %.not30.i.i27 = icmp eq i8 %i.mc, 64
  br i1 %.not30.i.i27, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit44.i.i25
  %i.md = zext i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.md
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !34
  %i.mg = and i64 %i.jf, %i.mf                    ; 2 uses
  %.not3159.i.i28 = icmp eq i64 %i.mg, 0
  br i1 %.not3159.i.i28, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph62.i.i29

.lr.ph62.i.i29:                                   ; preds = %bb.h
  %i.mh = zext i8 %i.mc to i16
  %i.mi = or disjoint i16 %i.mh, -32768
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph62.i.i29
  %.461.i.i30 = phi ptr [ %i.ly, %.lr.ph62.i.i29 ], [ %i.mp, %bb.i ] ; 2 uses
  %.04060.i.i31 = phi i64 [ %i.mg, %.lr.ph62.i.i29 ], [ %i.mm, %bb.i ] ; 3 uses
  %i.mj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04060.i.i31, i1 true)
  %i.mk = trunc nuw nsw i64 %i.mj to i16
  %i.ml = add i64 %.04060.i.i31, -1
  %i.mm = and i64 %i.ml, %.04060.i.i31            ; 2 uses
  %i.mn = shl nuw nsw i16 %i.mk, 6
  %i.mo = add nuw nsw i16 %i.mi, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %.461.i.i30, i64 2 ; 2 uses
  store i16 %i.mo, ptr %.461.i.i30, align 2, !tbaa !36
  %.not31.i.i32 = icmp eq i64 %i.mm, 0
  br i1 %.not31.i.i32, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.i, !llvm.loop !56

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %bb.i, %bb.h, %.loopexit44.i.i25
  %.5.i.i33 = phi ptr [ %i.ly, %.loopexit44.i.i25 ], [ %i.ly, %bb.h ], [ %i.mp, %bb.i ] ; 2 uses
  %i.mq = load i64, ptr %i.iy, align 8, !tbaa !34 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !34
  %i.mt = and i64 %i.ms, %i.mq                    ; 2 uses
  %.not9.i.i34 = icmp eq i64 %i.mt, 0
  br i1 %.not9.i.i34, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i22.i35

.lr.ph.i22.i35:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i22.i35
  %.011.i.i36 = phi ptr [ %i.ns, %.lr.ph.i22.i35 ], [ %.5.i.i33, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i.i37 = phi i64 [ %i.mx, %.lr.ph.i22.i35 ], [ %i.mt, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.mu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i.i37, i1 true) ; 2 uses
  %i.mv = trunc nuw nsw i64 %i.mu to i16
  %i.mw = add i64 %.0810.i.i37, -1
  %i.mx = and i64 %i.mw, %.0810.i.i37             ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.mu
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !34
  %i.na = and i64 %i.mz, %i.jc                    ; 2 uses
  %i.nb = shl nuw nsw i16 %i.mv, 6
  %i.nc = insertelement <32 x i16> poison, i16 %i.nb, i64 0
  %i.nd = shufflevector <32 x i16> %i.nc, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.ne = trunc i64 %i.na to i32                  ; 2 uses
  %i.nf = or disjoint <32 x i16> %i.nd, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.ng = bitcast i32 %i.ne to <32 x i1>
  %i.nh = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.nf, <32 x i16> zeroinitializer, <32 x i1> %i.ng)
  store <32 x i16> %i.nh, ptr %.011.i.i36, align 1, !tbaa !38
  %i.ni = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ne)
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.011.i.i36, i64 %i.nj ; 2 uses
  %i.nl = lshr i64 %i.na, 32
  %i.nm = trunc nuw i64 %i.nl to i32              ; 2 uses
  %i.nn = or disjoint <32 x i16> %i.nd, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.no = bitcast i32 %i.nm to <32 x i1>
  %i.np = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.nn, <32 x i16> zeroinitializer, <32 x i1> %i.no)
  store <32 x i16> %i.np, ptr %i.nk, align 1, !tbaa !38
  %i.nq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.nm)
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.nk, i64 %i.nr ; 2 uses
  %.not.i23.i38 = icmp eq i64 %i.mx, 0
  br i1 %.not.i23.i38, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i22.i35, !llvm.loop !4

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i22.i35
  %.pre.i39 = load i64, ptr %i.iy, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.nt = phi i64 [ %i.mq, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i39, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i24.i40 = phi ptr [ %.5.i.i33, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ns, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !34
  %i.nx = and i64 %i.nw, %i.nt                    ; 2 uses
  %.not9.i25.i41 = icmp eq i64 %i.nx, 0
  br i1 %.not9.i25.i41, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i26.i42

.lr.ph.i26.i42:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i26.i42
  %.011.i27.i43 = phi ptr [ %i.pd, %.lr.ph.i26.i42 ], [ %.0.lcssa.i24.i40, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i28.i44 = phi i64 [ %i.ob, %.lr.ph.i26.i42 ], [ %i.nx, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.ny = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i28.i44, i1 true) ; 2 uses
  %i.nz = trunc nuw nsw i64 %i.ny to i16
  %i.oa = add i64 %.0810.i28.i44, -1
  %i.ob = and i64 %i.oa, %.0810.i28.i44           ; 2 uses
  %i.oc = load i64, ptr %i.nu, align 8, !tbaa !34
  %i.od = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.ny ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !44
  %i.og = load i64, ptr %i.od, align 16, !tbaa !45
  %i.oh = tail call noundef i64 @llvm.pext.i64(i64 %i.oc, i64 %i.og)
  %i.oi = and i64 %i.oh, 4294967295
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.oi
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !34
  %i.ol = and i64 %i.ok, %i.jc                    ; 2 uses
  %i.om = shl nuw nsw i16 %i.nz, 6
  %i.on = insertelement <32 x i16> poison, i16 %i.om, i64 0
  %i.oo = shufflevector <32 x i16> %i.on, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.op = trunc i64 %i.ol to i32                  ; 2 uses
  %i.oq = or disjoint <32 x i16> %i.oo, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.or = bitcast i32 %i.op to <32 x i1>
  %i.os = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.oq, <32 x i16> zeroinitializer, <32 x i1> %i.or)
  store <32 x i16> %i.os, ptr %.011.i27.i43, align 1, !tbaa !38
  %i.ot = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.op)
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %.011.i27.i43, i64 %i.ou ; 2 uses
  %i.ow = lshr i64 %i.ol, 32
  %i.ox = trunc nuw i64 %i.ow to i32              ; 2 uses
  %i.oy = or disjoint <32 x i16> %i.oo, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.oz = bitcast i32 %i.ox to <32 x i1>
  %i.pa = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.oy, <32 x i16> zeroinitializer, <32 x i1> %i.oz)
  store <32 x i16> %i.pa, ptr %i.ov, align 1, !tbaa !38
  %i.pb = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ox)
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %i.pc ; 2 uses
  %.not.i29.i45 = icmp eq i64 %i.ob, 0
  br i1 %.not.i29.i45, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i26.i42, !llvm.loop !5

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i26.i42
  %.pre57.i46 = load i64, ptr %i.iy, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.pe = phi i64 [ %i.nt, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre57.i46, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i30.i47 = phi ptr [ %.0.lcssa.i24.i40, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.pd, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !34
  %i.ph = and i64 %i.pg, %i.pe                    ; 2 uses
  %.not9.i31.i48 = icmp eq i64 %i.ph, 0
  br i1 %.not9.i31.i48, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i32.i49

.lr.ph.i32.i49:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i32.i49
  %.011.i33.i50 = phi ptr [ %i.qo, %.lr.ph.i32.i49 ], [ %.0.lcssa.i30.i47, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i34.i51 = phi i64 [ %i.pl, %.lr.ph.i32.i49 ], [ %i.ph, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.pi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i34.i51, i1 true) ; 2 uses
  %i.pj = trunc nuw nsw i64 %i.pi to i16
  %i.pk = add i64 %.0810.i34.i51, -1
  %i.pl = and i64 %i.pk, %.0810.i34.i51           ; 2 uses
  %i.pm = load i64, ptr %i.nu, align 8, !tbaa !34
  %i.pn = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.pi ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !44
  %i.pr = load i64, ptr %i.po, align 16, !tbaa !45
  %i.ps = tail call noundef i64 @llvm.pext.i64(i64 %i.pm, i64 %i.pr)
  %i.pt = and i64 %i.ps, 4294967295
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pt
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !34
  %i.pw = and i64 %i.pv, %i.jc                    ; 2 uses
  %i.px = shl nuw nsw i16 %i.pj, 6
  %i.py = insertelement <32 x i16> poison, i16 %i.px, i64 0
  %i.pz = shufflevector <32 x i16> %i.py, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.qa = trunc i64 %i.pw to i32                  ; 2 uses
  %i.qb = or disjoint <32 x i16> %i.pz, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.qc = bitcast i32 %i.qa to <32 x i1>
  %i.qd = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.qb, <32 x i16> zeroinitializer, <32 x i1> %i.qc)
  store <32 x i16> %i.qd, ptr %.011.i33.i50, align 1, !tbaa !38
  %i.qe = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qa)
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.011.i33.i50, i64 %i.qf ; 2 uses
  %i.qh = lshr i64 %i.pw, 32
  %i.qi = trunc nuw i64 %i.qh to i32              ; 2 uses
  %i.qj = or disjoint <32 x i16> %i.pz, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.qk = bitcast i32 %i.qi to <32 x i1>
  %i.ql = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.qj, <32 x i16> zeroinitializer, <32 x i1> %i.qk)
  store <32 x i16> %i.ql, ptr %i.qg, align 1, !tbaa !38
  %i.qm = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qi)
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.qg, i64 %i.qn ; 2 uses
  %.not.i35.i52 = icmp eq i64 %i.pl, 0
  br i1 %.not.i35.i52, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i32.i49, !llvm.loop !6

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i32.i49
  %.pre58.i53 = load i64, ptr %i.iy, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.qp = phi i64 [ %i.pe, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre58.i53, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.lcssa.i36.i54 = phi ptr [ %.0.lcssa.i30.i47, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.qo, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !34
  %i.qs = and i64 %i.qr, %i.qp                    ; 2 uses
  %.not9.i37.i55 = icmp eq i64 %i.qs, 0
  br i1 %.not9.i37.i55, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit, label %.lr.ph.i38.i56

.lr.ph.i38.i56:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i38.i56
  %.011.i39.i57 = phi ptr [ %i.sh, %.lr.ph.i38.i56 ], [ %.0.lcssa.i36.i54, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i40.i58 = phi i64 [ %i.qw, %.lr.ph.i38.i56 ], [ %i.qs, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.qt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i40.i58, i1 true) ; 2 uses
  %i.qu = trunc nuw nsw i64 %i.qt to i16
  %i.qv = add i64 %.0810.i40.i58, -1
  %i.qw = and i64 %i.qv, %.0810.i40.i58           ; 2 uses
  %i.qx = load i64, ptr %i.nu, align 8, !tbaa !34 ; 2 uses
  %i.qy = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.qt ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !44
  %i.rb = load i64, ptr %i.qy, align 16, !tbaa !45
  %i.rc = tail call noundef i64 @llvm.pext.i64(i64 %i.qx, i64 %i.rb)
  %i.rd = and i64 %i.rc, 4294967295
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %i.rd
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !34
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !44
  %i.rj = load i64, ptr %i.rg, align 16, !tbaa !45
  %i.rk = tail call noundef i64 @llvm.pext.i64(i64 %i.qx, i64 %i.rj)
  %i.rl = and i64 %i.rk, 4294967295
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.rl
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !34
  %i.ro = or i64 %i.rn, %i.rf
  %i.rp = and i64 %i.ro, %i.jc                    ; 2 uses
  %i.rq = shl nuw nsw i16 %i.qu, 6
  %i.rr = insertelement <32 x i16> poison, i16 %i.rq, i64 0
  %i.rs = shufflevector <32 x i16> %i.rr, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.rt = trunc i64 %i.rp to i32                  ; 2 uses
  %i.ru = or disjoint <32 x i16> %i.rs, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.rv = bitcast i32 %i.rt to <32 x i1>
  %i.rw = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ru, <32 x i16> zeroinitializer, <32 x i1> %i.rv)
  store <32 x i16> %i.rw, ptr %.011.i39.i57, align 1, !tbaa !38
  %i.rx = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.rt)
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %.011.i39.i57, i64 %i.ry ; 2 uses
  %i.sa = lshr i64 %i.rp, 32
  %i.sb = trunc nuw i64 %i.sa to i32              ; 2 uses
  %i.sc = or disjoint <32 x i16> %i.rs, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.sd = bitcast i32 %i.sb to <32 x i1>
  %i.se = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.sc, <32 x i16> zeroinitializer, <32 x i1> %i.sd)
  store <32 x i16> %i.se, ptr %i.rz, align 1, !tbaa !38
  %i.sf = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.sb)
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.rz, i64 %i.sg ; 2 uses
  %.not.i41.i59 = icmp eq i64 %i.qw, 0
  br i1 %.not.i41.i59, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit, label %.lr.ph.i38.i56, !llvm.loop !7

_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit: ; preds = %.lr.ph.i38.i56, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %.0.lcssa.i42.i60 = phi ptr [ %.0.lcssa.i36.i54, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.sh, %.lr.ph.i38.i56 ]
  %i.si = and i64 %i.jb, %i.iz
  br label %bb.j

bb.j:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit
  %.sink = phi i64 [ %i.si, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit ], [ %i.ix, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit ]
  %.sink145 = phi i64 [ %i.jc, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit ], [ %i.k, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit ]
  %.0.lcssa.i42.i60.sink138 = phi ptr [ %.0.lcssa.i42.i60, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE1ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit ], [ %.0.lcssa.i42.i, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE0EEEPNS_4MoveERKNS_8PositionES5_.exit ] ; 2 uses
  %i.sj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink, i1 true) ; 2 uses
  %i.sk = trunc nuw nsw i64 %i.sj to i16
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.sj
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !34
  %i.sn = and i64 %i.sm, %.sink145                ; 2 uses
  %i.so = shl nuw nsw i16 %i.sk, 6
  %i.sp = insertelement <32 x i16> poison, i16 %i.so, i64 0
  %i.sq = shufflevector <32 x i16> %i.sp, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.sr = trunc i64 %i.sn to i32                  ; 2 uses
  %i.ss = or disjoint <32 x i16> %i.sq, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.st = bitcast i32 %i.sr to <32 x i1>
  %i.su = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ss, <32 x i16> zeroinitializer, <32 x i1> %i.st)
  store <32 x i16> %i.su, ptr %.0.lcssa.i42.i60.sink138, align 1, !tbaa !38
  %i.sv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.sr)
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i42.i60.sink138, i64 %i.sw ; 2 uses
  %i.sy = lshr i64 %i.sn, 32
  %i.sz = trunc nuw i64 %i.sy to i32              ; 2 uses
  %i.ta = or disjoint <32 x i16> %i.sq, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.tb = bitcast i32 %i.sz to <32 x i1>
  %i.tc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ta, <32 x i16> zeroinitializer, <32 x i1> %i.tb)
  store <32 x i16> %i.tc, ptr %i.sx, align 1, !tbaa !38
  %i.td = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.sz)
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.sx, i64 %i.te
  ret ptr %i.tf
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = xor i64 %i.g, -1                         ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = and i64 %i.h, 72057594037927680          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = and i64 %i.e, %i.m
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.n, i1 true) ; 2 uses
  %i.p = trunc nuw nsw i64 %i.o to i16
  %i.q = and i64 %i.j, %i.m                       ; 2 uses
  %i.r = and i64 %i.q, 71776119061217280          ; 2 uses
  %i.s = shl i64 %i.q, 8
  %i.t = and i64 %i.k, %i.s                       ; 3 uses
  %i.u = shl nuw i64 %i.t, 8
  %i.v = and i64 %i.h, 4278190080
  %i.w = and i64 %i.v, %i.u
  %i.x = trunc i64 %i.t to i32                    ; 2 uses
  %i.y = bitcast i32 %i.x to <32 x i1>
  %i.z = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 73, i16 138, i16 203, i16 268, i16 333, i16 398, i16 463, i16 528, i16 593, i16 658, i16 723, i16 788, i16 853, i16 918, i16 983, i16 1048, i16 1113, i16 1178, i16 1243, i16 1308, i16 1373, i16 1438, i16 1503>, <32 x i16> zeroinitializer, <32 x i1> %i.y)
  store <32 x i16> %i.z, ptr %1, align 1, !tbaa !38
  %i.aa = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.x)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.t, 32
  %i.ae = trunc nuw nsw i64 %i.ad to i32          ; 2 uses
  %i.af = bitcast i32 %i.ae to <32 x i1>
  %i.ag = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1568, i16 1633, i16 1698, i16 1763, i16 1828, i16 1893, i16 1958, i16 2023, i16 2088, i16 2153, i16 2218, i16 2283, i16 2348, i16 2413, i16 2478, i16 2543, i16 2608, i16 2673, i16 2738, i16 2803, i16 2868, i16 2933, i16 2998, i16 3063, i16 3128, i16 3193, i16 3258, i16 3323, i16 3388, i16 3453, i16 3518, i16 3583>, <32 x i16> zeroinitializer, <32 x i1> %i.af)
  store <32 x i16> %i.ag, ptr %i.ac, align 1, !tbaa !38
  %i.ah = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.ae)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.ak = trunc nuw i64 %i.w to i32               ; 2 uses
  %i.al = bitcast i32 %i.ak to <32 x i1>
  %i.am = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 81, i16 146, i16 211, i16 276, i16 341, i16 406, i16 471, i16 536, i16 601, i16 666, i16 731, i16 796, i16 861, i16 926, i16 991>, <32 x i16> zeroinitializer, <32 x i1> %i.al)
  store <32 x i16> %i.am, ptr %i.aj, align 1, !tbaa !38
  %i.an = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ak)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ao ; 4 uses
  %i.aq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1056, i16 1121, i16 1186, i16 1251, i16 1316, i16 1381, i16 1446, i16 1511, i16 1576, i16 1641, i16 1706, i16 1771, i16 1836, i16 1901, i16 1966, i16 2031, i16 2096, i16 2161, i16 2226, i16 2291, i16 2356, i16 2421, i16 2486, i16 2551, i16 2616, i16 2681, i16 2746, i16 2811, i16 2876, i16 2941, i16 3006, i16 3071>, <32 x i16> zeroinitializer, <32 x i1> zeroinitializer)
  store <32 x i16> %i.aq, ptr %i.ap, align 1, !tbaa !38
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.preheader34.i.i

.preheader34.i.i:                                 ; preds = %bb.b
  %i.ar = shl nuw i64 %i.r, 8
  %i.as = and i64 %i.ar, %i.h                     ; 2 uses
  %.not2540.i.i = icmp eq i64 %i.as, 0
  br i1 %.not2540.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %.preheader34.i.i, %.lr.ph43.i.i
  %.242.i.i = phi ptr [ %i.bh, %.lr.ph43.i.i ], [ %i.ap, %.preheader34.i.i ] ; 4 uses
  %.03141.i.i = phi i64 [ %i.aw, %.lr.ph43.i.i ], [ %i.as, %.preheader34.i.i ] ; 3 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.03141.i.i, i1 true)
  %i.au = trunc nuw nsw i64 %i.at to i16          ; 2 uses
  %i.av = add i64 %.03141.i.i, -72057594037927936
  %i.aw = and i64 %i.av, %.03141.i.i              ; 2 uses
  %i.ax = shl nuw nsw i16 %i.au, 6
  %i.ay = add nuw nsw i16 %i.ax, 15872
  %i.az = and i16 %i.ay, 16320
  %i.ba = or disjoint i16 %i.au, 8192
  %i.bb = add nuw nsw i16 %i.az, %i.ba            ; 3 uses
  %i.bc = add nuw i16 %i.bb, 16384
  %i.bd = getelementptr inbounds nuw i8, ptr %.242.i.i, i64 2
  store i16 %i.bc, ptr %.242.i.i, align 2, !tbaa !36
  %i.be = add nuw i16 %i.bb, 12288
  %i.bf = getelementptr inbounds nuw i8, ptr %.242.i.i, i64 4
  store i16 %i.be, ptr %i.bd, align 2, !tbaa !36
  %i.bg = add nuw nsw i16 %i.bb, 8192
  %i.bh = getelementptr inbounds nuw i8, ptr %.242.i.i, i64 6 ; 2 uses
  store i16 %i.bg, ptr %i.bf, align 2, !tbaa !36
  %.not25.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not25.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph43.i.i, !llvm.loop !57

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph43.i.i, %.preheader34.i.i, %bb.b
  %.3.i.i = phi ptr [ %i.ap, %bb.b ], [ %i.ap, %.preheader34.i.i ], [ %i.bh, %.lr.ph43.i.i ] ; 2 uses
  %i.bi = load i64, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !34
  %i.bl = and i64 %i.bk, %i.bi                    ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not9.i.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i.i
  %.011.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %.3.i.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i.i = phi i64 [ %i.bp, %.lr.ph.i.i ], [ %i.bl, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i.i, i1 true) ; 2 uses
  %i.bn = trunc nuw nsw i64 %i.bm to i16
  %i.bo = add i64 %.0810.i.i, -1
  %i.bp = and i64 %i.bo, %.0810.i.i               ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !34
  %i.bs = and i64 %i.br, %i.h                     ; 2 uses
  %i.bt = shl nuw nsw i16 %i.bn, 6
  %i.bu = insertelement <32 x i16> poison, i16 %i.bt, i64 0
  %i.bv = shufflevector <32 x i16> %i.bu, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.bw = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bx = or disjoint <32 x i16> %i.bv, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.by = bitcast i32 %i.bw to <32 x i1>
  %i.bz = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.bx, <32 x i16> zeroinitializer, <32 x i1> %i.by)
  store <32 x i16> %i.bz, ptr %.011.i.i, align 1, !tbaa !38
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bw)
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.011.i.i, i64 %i.cb ; 2 uses
  %i.cd = lshr i64 %i.bs, 32
  %i.ce = trunc nuw i64 %i.cd to i32              ; 2 uses
  %i.cf = or disjoint <32 x i16> %i.bv, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.cg = bitcast i32 %i.ce to <32 x i1>
  %i.ch = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.cf, <32 x i16> zeroinitializer, <32 x i1> %i.cg)
  store <32 x i16> %i.ch, ptr %i.cc, align 1, !tbaa !38
  %i.ci = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ce)
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cj ; 2 uses
  %.not.i38.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i38.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.cl = phi i64 [ %i.bi, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %.3.i.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ck, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = and i64 %i.cn, %i.cl                    ; 2 uses
  %.not9.i39.i = icmp eq i64 %i.co, 0
  br i1 %.not9.i39.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i40.i
  %.011.i41.i = phi ptr [ %i.du, %.lr.ph.i40.i ], [ %.0.lcssa.i.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i42.i = phi i64 [ %i.cs, %.lr.ph.i40.i ], [ %i.co, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.cp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i42.i, i1 true) ; 2 uses
  %i.cq = trunc nuw nsw i64 %i.cp to i16
  %i.cr = add i64 %.0810.i42.i, -1
  %i.cs = and i64 %i.cr, %.0810.i42.i             ; 2 uses
  %i.ct = load i64, ptr %i.f, align 8, !tbaa !34
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.cp ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !44
  %i.cx = load i64, ptr %i.cu, align 16, !tbaa !45
  %i.cy = tail call noundef i64 @llvm.pext.i64(i64 %i.ct, i64 %i.cx)
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !34
  %i.dc = and i64 %i.db, %i.h                     ; 2 uses
  %i.dd = shl nuw nsw i16 %i.cq, 6
  %i.de = insertelement <32 x i16> poison, i16 %i.dd, i64 0
  %i.df = shufflevector <32 x i16> %i.de, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.dg = trunc i64 %i.dc to i32                  ; 2 uses
  %i.dh = or disjoint <32 x i16> %i.df, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.di = bitcast i32 %i.dg to <32 x i1>
  %i.dj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.dh, <32 x i16> zeroinitializer, <32 x i1> %i.di)
  store <32 x i16> %i.dj, ptr %.011.i41.i, align 1, !tbaa !38
  %i.dk = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dg)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %.011.i41.i, i64 %i.dl ; 2 uses
  %i.dn = lshr i64 %i.dc, 32
  %i.do = trunc nuw i64 %i.dn to i32              ; 2 uses
  %i.dp = or disjoint <32 x i16> %i.df, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.dq = bitcast i32 %i.do to <32 x i1>
  %i.dr = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.dp, <32 x i16> zeroinitializer, <32 x i1> %i.dq)
  store <32 x i16> %i.dr, ptr %i.dm, align 1, !tbaa !38
  %i.ds = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.do)
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.dt ; 2 uses
  %.not.i43.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i43.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i40.i, !llvm.loop !1

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i40.i
  %.pre71.i = load i64, ptr %i.l, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.dv = phi i64 [ %i.cl, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre71.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i44.i = phi ptr [ %.0.lcssa.i.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.du, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !34
  %i.dy = and i64 %i.dx, %i.dv                    ; 2 uses
  %.not9.i45.i = icmp eq i64 %i.dy, 0
  br i1 %.not9.i45.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i46.i
  %.011.i47.i = phi ptr [ %i.ff, %.lr.ph.i46.i ], [ %.0.lcssa.i44.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i48.i = phi i64 [ %i.ec, %.lr.ph.i46.i ], [ %i.dy, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i48.i, i1 true) ; 2 uses
  %i.ea = trunc nuw nsw i64 %i.dz to i16
  %i.eb = add i64 %.0810.i48.i, -1
  %i.ec = and i64 %i.eb, %.0810.i48.i             ; 2 uses
  %i.ed = load i64, ptr %i.f, align 8, !tbaa !34
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.dz ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !44
  %i.ei = load i64, ptr %i.ef, align 16, !tbaa !45
  %i.ej = tail call noundef i64 @llvm.pext.i64(i64 %i.ed, i64 %i.ei)
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !34
  %i.en = and i64 %i.em, %i.h                     ; 2 uses
  %i.eo = shl nuw nsw i16 %i.ea, 6
  %i.ep = insertelement <32 x i16> poison, i16 %i.eo, i64 0
  %i.eq = shufflevector <32 x i16> %i.ep, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.er = trunc i64 %i.en to i32                  ; 2 uses
  %i.es = or disjoint <32 x i16> %i.eq, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.et = bitcast i32 %i.er to <32 x i1>
  %i.eu = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.es, <32 x i16> zeroinitializer, <32 x i1> %i.et)
  store <32 x i16> %i.eu, ptr %.011.i47.i, align 1, !tbaa !38
  %i.ev = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.er)
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.011.i47.i, i64 %i.ew ; 2 uses
  %i.ey = lshr i64 %i.en, 32
  %i.ez = trunc nuw i64 %i.ey to i32              ; 2 uses
  %i.fa = or disjoint <32 x i16> %i.eq, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.fb = bitcast i32 %i.ez to <32 x i1>
  %i.fc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.fa, <32 x i16> zeroinitializer, <32 x i1> %i.fb)
  store <32 x i16> %i.fc, ptr %i.ex, align 1, !tbaa !38
  %i.fd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ez)
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.fe ; 2 uses
  %.not.i49.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i49.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i46.i, !llvm.loop !2

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i46.i
  %.pre72.i = load i64, ptr %i.l, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.fg = phi i64 [ %i.dv, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre72.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.lcssa.i50.i = phi ptr [ %.0.lcssa.i44.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ff, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !34
  %i.fj = and i64 %i.fi, %i.fg                    ; 2 uses
  %.not9.i51.i = icmp eq i64 %i.fj, 0
  br i1 %.not9.i51.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i52.i

.lr.ph.i52.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i52.i
  %.011.i53.i = phi ptr [ %i.gy, %.lr.ph.i52.i ], [ %.0.lcssa.i50.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i54.i = phi i64 [ %i.fn, %.lr.ph.i52.i ], [ %i.fj, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i54.i, i1 true) ; 2 uses
  %i.fl = trunc nuw nsw i64 %i.fk to i16
  %i.fm = add i64 %.0810.i54.i, -1
  %i.fn = and i64 %i.fm, %.0810.i54.i             ; 2 uses
  %i.fo = load i64, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.fk ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !44
  %i.fs = load i64, ptr %i.fp, align 16, !tbaa !45
  %i.ft = tail call noundef i64 @llvm.pext.i64(i64 %i.fo, i64 %i.fs)
  %i.fu = and i64 %i.ft, 4294967295
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !34
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !44
  %i.ga = load i64, ptr %i.fx, align 16, !tbaa !45
  %i.gb = tail call noundef i64 @llvm.pext.i64(i64 %i.fo, i64 %i.ga)
  %i.gc = and i64 %i.gb, 4294967295
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !34
  %i.gf = or i64 %i.ge, %i.fw
  %i.gg = and i64 %i.gf, %i.h                     ; 2 uses
  %i.gh = shl nuw nsw i16 %i.fl, 6
  %i.gi = insertelement <32 x i16> poison, i16 %i.gh, i64 0
  %i.gj = shufflevector <32 x i16> %i.gi, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.gk = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gl = or disjoint <32 x i16> %i.gj, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.gm = bitcast i32 %i.gk to <32 x i1>
  %i.gn = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gl, <32 x i16> zeroinitializer, <32 x i1> %i.gm)
  store <32 x i16> %i.gn, ptr %.011.i53.i, align 1, !tbaa !38
  %i.go = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gk)
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %.011.i53.i, i64 %i.gp ; 2 uses
  %i.gr = lshr i64 %i.gg, 32
  %i.gs = trunc nuw i64 %i.gr to i32              ; 2 uses
  %i.gt = or disjoint <32 x i16> %i.gj, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.gu = bitcast i32 %i.gs to <32 x i1>
  %i.gv = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gt, <32 x i16> zeroinitializer, <32 x i1> %i.gu)
  store <32 x i16> %i.gv, ptr %i.gq, align 1, !tbaa !38
  %i.gw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gs)
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gq, i64 %i.gx ; 2 uses
  %.not.i55.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i55.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i52.i, !llvm.loop !3

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph.i52.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %.0.lcssa.i56.i = phi ptr [ %.0.lcssa.i50.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.gy, %.lr.ph.i52.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.o
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !34
  %i.hb = and i64 %i.ha, %i.h                     ; 2 uses
  %i.hc = shl nuw nsw i16 %i.p, 6                 ; 2 uses
  %i.hd = insertelement <32 x i16> poison, i16 %i.hc, i64 0
  %i.he = shufflevector <32 x i16> %i.hd, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.hf = trunc i64 %i.hb to i32                  ; 2 uses
  %i.hg = or disjoint <32 x i16> %i.he, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.hh = bitcast i32 %i.hf to <32 x i1>
  %i.hi = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.hg, <32 x i16> zeroinitializer, <32 x i1> %i.hh)
  store <32 x i16> %i.hi, ptr %.0.lcssa.i56.i, align 1, !tbaa !38
  %i.hj = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hf)
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i56.i, i64 %i.hk ; 2 uses
  %i.hm = lshr i64 %i.hb, 32
  %i.hn = trunc nuw i64 %i.hm to i32              ; 2 uses
  %i.ho = or disjoint <32 x i16> %i.he, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.hp = bitcast i32 %i.hn to <32 x i1>
  %i.hq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ho, <32 x i16> zeroinitializer, <32 x i1> %i.hp)
  store <32 x i16> %i.hq, ptr %i.hl, align 1, !tbaa !38
  %i.hr = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hn)
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.hs ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !39
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !46 ; 3 uses
  %i.hy = and i32 %i.hx, 3
  %.not60.i = icmp eq i32 %i.hy, 0
  br i1 %.not60.i, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.hz = load i64, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.ia = or disjoint i16 %i.hc, -16384           ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !34
  %i.id = and i64 %i.ic, %i.hz
  %i.ie = icmp eq i64 %i.id, 0
  %i.if = trunc i32 %i.hx to i1
  %or.cond.i = and i1 %i.ie, %i.if
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 465
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !47
  %i.ii = zext i8 %i.ih to i16
  %i.ij = add nuw nsw i16 %i.ia, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  store i16 %i.ij, ptr %i.ht, align 2, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi ptr [ %i.ht, %bb.c ], [ %i.ik, %bb.d ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.im = load i64, ptr %i.il, align 8, !tbaa !34
  %i.in = and i64 %i.im, %i.hz
  %i.io = icmp eq i64 %i.in, 0
  %i.ip = and i32 %i.hx, 2
  %i.iq = icmp ne i32 %i.ip, 0
  %or.cond.1.i = and i1 %i.iq, %i.io
  br i1 %or.cond.1.i, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit

bb.f:                                             ; preds = %bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !34 ; 2 uses
  %i.it = and i64 %i.e, %i.is
  %i.iu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.it, i1 true) ; 2 uses
  %i.iv = trunc nuw nsw i64 %i.iu to i16
  %i.iw = and i64 %i.j, %i.is                     ; 2 uses
  %i.ix = and i64 %i.iw, 65280                    ; 2 uses
  %i.iy = lshr i64 %i.iw, 8
  %i.iz = and i64 %i.k, %i.iy                     ; 3 uses
  %i.ja = trunc i64 %i.iz to i32                  ; 2 uses
  %i.jb = bitcast i32 %i.ja to <32 x i1>
  %i.jc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 512, i16 577, i16 642, i16 707, i16 772, i16 837, i16 902, i16 967, i16 1032, i16 1097, i16 1162, i16 1227, i16 1292, i16 1357, i16 1422, i16 1487, i16 1552, i16 1617, i16 1682, i16 1747, i16 1812, i16 1877, i16 1942, i16 2007, i16 2072, i16 2137, i16 2202, i16 2267, i16 2332, i16 2397, i16 2462, i16 2527>, <32 x i16> zeroinitializer, <32 x i1> %i.jb)
  store <32 x i16> %i.jc, ptr %1, align 1, !tbaa !38
  %i.jd = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.ja)
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.je ; 2 uses
  %i.jg = lshr i64 %i.iz, 32
  %i.jh = trunc nuw nsw i64 %i.jg to i32          ; 2 uses
  %i.ji = bitcast i32 %i.jh to <32 x i1>
  %i.jj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2592, i16 2657, i16 2722, i16 2787, i16 2852, i16 2917, i16 2982, i16 3047, i16 3112, i16 3177, i16 3242, i16 3307, i16 3372, i16 3437, i16 3502, i16 3567, i16 3632, i16 3697, i16 3762, i16 3827, i16 3892, i16 3957, i16 4022, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.ji)
  store <32 x i16> %i.jj, ptr %i.jf, align 1, !tbaa !38
  %i.jk = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.jh)
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.jl ; 2 uses
  %i.jn = lshr i64 %i.iz, 40
  %i.jo = lshr i64 %i.h, 32
  %i.jp = and i64 %i.jo, 255
  %i.jq = and i64 %i.jp, %i.jn
  %i.jr = trunc nuw nsw i64 %i.jq to i32          ; 2 uses
  %i.js = bitcast i32 %i.jr to <32 x i1>
  %i.jt = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 3104, i16 3169, i16 3234, i16 3299, i16 3364, i16 3429, i16 3494, i16 3559, i16 3624, i16 3689, i16 3754, i16 3819, i16 3884, i16 3949, i16 4014, i16 4079, i16 4080, i16 4081, i16 4082, i16 4083, i16 4084, i16 4085, i16 4086, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.js)
  store <32 x i16> %i.jt, ptr %i.jm, align 1, !tbaa !38
  %i.ju = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.jr)
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %i.jv ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.ix, 0
  br i1 %.not.i.i5, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.preheader34.i.i6

.preheader34.i.i6:                                ; preds = %bb.f
  %i.jx = lshr exact i64 %i.ix, 8
  %i.jy = and i64 %i.jx, %i.h                     ; 2 uses
  %.not2540.i.i7 = icmp eq i64 %i.jy, 0
  br i1 %.not2540.i.i7, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph43.i.i8

.lr.ph43.i.i8:                                    ; preds = %.preheader34.i.i6, %.lr.ph43.i.i8
  %.242.i.i9 = phi ptr [ %i.kl, %.lr.ph43.i.i8 ], [ %i.jw, %.preheader34.i.i6 ] ; 4 uses
  %.03141.i.i10 = phi i64 [ %i.kc, %.lr.ph43.i.i8 ], [ %i.jy, %.preheader34.i.i6 ] ; 3 uses
  %i.jz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.03141.i.i10, i1 true)
  %i.ka = trunc nuw nsw i64 %i.jz to i16          ; 2 uses
  %i.kb = add nuw nsw i64 %.03141.i.i10, 255
  %i.kc = and i64 %i.kb, %.03141.i.i10            ; 2 uses
  %i.kd = shl nuw nsw i16 %i.ka, 6
  %i.ke = add nuw nsw i16 %i.kd, 512
  %i.kf = or disjoint i16 %i.ke, %i.ka            ; 3 uses
  %i.kg = or disjoint i16 %i.kf, 24576
  %i.kh = getelementptr inbounds nuw i8, ptr %.242.i.i9, i64 2
  store i16 %i.kg, ptr %.242.i.i9, align 2, !tbaa !36
  %i.ki = add nuw nsw i16 %i.kf, 20480
  %i.kj = getelementptr inbounds nuw i8, ptr %.242.i.i9, i64 4
  store i16 %i.ki, ptr %i.kh, align 2, !tbaa !36
  %i.kk = or disjoint i16 %i.kf, 16384
  %i.kl = getelementptr inbounds nuw i8, ptr %.242.i.i9, i64 6 ; 2 uses
  store i16 %i.kk, ptr %i.kj, align 2, !tbaa !36
  %.not25.i.i11 = icmp eq i64 %i.kc, 0
  br i1 %.not25.i.i11, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph43.i.i8, !llvm.loop !58

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph43.i.i8, %.preheader34.i.i6, %bb.f
  %.3.i.i12 = phi ptr [ %i.jw, %bb.f ], [ %i.jw, %.preheader34.i.i6 ], [ %i.kl, %.lr.ph43.i.i8 ] ; 2 uses
  %i.km = load i64, ptr %i.ir, align 8, !tbaa !34 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !34
  %i.kp = and i64 %i.ko, %i.km                    ; 2 uses
  %.not9.i.i13 = icmp eq i64 %i.kp, 0
  br i1 %.not9.i.i13, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i.i14
  %.011.i.i15 = phi ptr [ %i.lo, %.lr.ph.i.i14 ], [ %.3.i.i12, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i.i16 = phi i64 [ %i.kt, %.lr.ph.i.i14 ], [ %i.kp, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.kq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i.i16, i1 true) ; 2 uses
  %i.kr = trunc nuw nsw i64 %i.kq to i16
  %i.ks = add i64 %.0810.i.i16, -1
  %i.kt = and i64 %i.ks, %.0810.i.i16             ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.kq
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !34
  %i.kw = and i64 %i.kv, %i.h                     ; 2 uses
  %i.kx = shl nuw nsw i16 %i.kr, 6
  %i.ky = insertelement <32 x i16> poison, i16 %i.kx, i64 0
  %i.kz = shufflevector <32 x i16> %i.ky, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.la = trunc i64 %i.kw to i32                  ; 2 uses
  %i.lb = or disjoint <32 x i16> %i.kz, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.lc = bitcast i32 %i.la to <32 x i1>
  %i.ld = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.lb, <32 x i16> zeroinitializer, <32 x i1> %i.lc)
  store <32 x i16> %i.ld, ptr %.011.i.i15, align 1, !tbaa !38
  %i.le = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.la)
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %.011.i.i15, i64 %i.lf ; 2 uses
  %i.lh = lshr i64 %i.kw, 32
  %i.li = trunc nuw i64 %i.lh to i32              ; 2 uses
  %i.lj = or disjoint <32 x i16> %i.kz, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.lk = bitcast i32 %i.li to <32 x i1>
  %i.ll = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.lj, <32 x i16> zeroinitializer, <32 x i1> %i.lk)
  store <32 x i16> %i.ll, ptr %i.lg, align 1, !tbaa !38
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.li)
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.ln ; 2 uses
  %.not.i38.i17 = icmp eq i64 %i.kt, 0
  br i1 %.not.i38.i17, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i.i14, !llvm.loop !4

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i.i14
  %.pre.i18 = load i64, ptr %i.ir, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.lp = phi i64 [ %i.km, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i18, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i19 = phi ptr [ %.3.i.i12, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.lo, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !34
  %i.ls = and i64 %i.lr, %i.lp                    ; 2 uses
  %.not9.i39.i20 = icmp eq i64 %i.ls, 0
  br i1 %.not9.i39.i20, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i40.i21

.lr.ph.i40.i21:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i40.i21
  %.011.i41.i22 = phi ptr [ %i.my, %.lr.ph.i40.i21 ], [ %.0.lcssa.i.i19, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i42.i23 = phi i64 [ %i.lw, %.lr.ph.i40.i21 ], [ %i.ls, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.lt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i42.i23, i1 true) ; 2 uses
  %i.lu = trunc nuw nsw i64 %i.lt to i16
  %i.lv = add i64 %.0810.i42.i23, -1
  %i.lw = and i64 %i.lv, %.0810.i42.i23           ; 2 uses
  %i.lx = load i64, ptr %i.f, align 8, !tbaa !34
  %i.ly = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.lt ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !44
  %i.mb = load i64, ptr %i.ly, align 16, !tbaa !45
  %i.mc = tail call noundef i64 @llvm.pext.i64(i64 %i.lx, i64 %i.mb)
  %i.md = and i64 %i.mc, 4294967295
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.md
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !34
  %i.mg = and i64 %i.mf, %i.h                     ; 2 uses
  %i.mh = shl nuw nsw i16 %i.lu, 6
  %i.mi = insertelement <32 x i16> poison, i16 %i.mh, i64 0
  %i.mj = shufflevector <32 x i16> %i.mi, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.mk = trunc i64 %i.mg to i32                  ; 2 uses
  %i.ml = or disjoint <32 x i16> %i.mj, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.mm = bitcast i32 %i.mk to <32 x i1>
  %i.mn = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ml, <32 x i16> zeroinitializer, <32 x i1> %i.mm)
  store <32 x i16> %i.mn, ptr %.011.i41.i22, align 1, !tbaa !38
  %i.mo = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.mk)
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.011.i41.i22, i64 %i.mp ; 2 uses
  %i.mr = lshr i64 %i.mg, 32
  %i.ms = trunc nuw i64 %i.mr to i32              ; 2 uses
  %i.mt = or disjoint <32 x i16> %i.mj, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.mu = bitcast i32 %i.ms to <32 x i1>
  %i.mv = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.mt, <32 x i16> zeroinitializer, <32 x i1> %i.mu)
  store <32 x i16> %i.mv, ptr %i.mq, align 1, !tbaa !38
  %i.mw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ms)
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.mq, i64 %i.mx ; 2 uses
  %.not.i43.i24 = icmp eq i64 %i.lw, 0
  br i1 %.not.i43.i24, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i40.i21, !llvm.loop !5

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i40.i21
  %.pre71.i25 = load i64, ptr %i.ir, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.mz = phi i64 [ %i.lp, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre71.i25, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i44.i26 = phi ptr [ %.0.lcssa.i.i19, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.my, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !34
  %i.nc = and i64 %i.nb, %i.mz                    ; 2 uses
  %.not9.i45.i27 = icmp eq i64 %i.nc, 0
  br i1 %.not9.i45.i27, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i46.i28

.lr.ph.i46.i28:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i46.i28
  %.011.i47.i29 = phi ptr [ %i.oj, %.lr.ph.i46.i28 ], [ %.0.lcssa.i44.i26, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i48.i30 = phi i64 [ %i.ng, %.lr.ph.i46.i28 ], [ %i.nc, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.nd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i48.i30, i1 true) ; 2 uses
  %i.ne = trunc nuw nsw i64 %i.nd to i16
  %i.nf = add i64 %.0810.i48.i30, -1
  %i.ng = and i64 %i.nf, %.0810.i48.i30           ; 2 uses
  %i.nh = load i64, ptr %i.f, align 8, !tbaa !34
  %i.ni = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.nd ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !44
  %i.nm = load i64, ptr %i.nj, align 16, !tbaa !45
  %i.nn = tail call noundef i64 @llvm.pext.i64(i64 %i.nh, i64 %i.nm)
  %i.no = and i64 %i.nn, 4294967295
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !34
  %i.nr = and i64 %i.nq, %i.h                     ; 2 uses
  %i.ns = shl nuw nsw i16 %i.ne, 6
  %i.nt = insertelement <32 x i16> poison, i16 %i.ns, i64 0
  %i.nu = shufflevector <32 x i16> %i.nt, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.nv = trunc i64 %i.nr to i32                  ; 2 uses
  %i.nw = or disjoint <32 x i16> %i.nu, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.nx = bitcast i32 %i.nv to <32 x i1>
  %i.ny = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.nw, <32 x i16> zeroinitializer, <32 x i1> %i.nx)
  store <32 x i16> %i.ny, ptr %.011.i47.i29, align 1, !tbaa !38
  %i.nz = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.nv)
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %.011.i47.i29, i64 %i.oa ; 2 uses
  %i.oc = lshr i64 %i.nr, 32
  %i.od = trunc nuw i64 %i.oc to i32              ; 2 uses
  %i.oe = or disjoint <32 x i16> %i.nu, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.of = bitcast i32 %i.od to <32 x i1>
  %i.og = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.oe, <32 x i16> zeroinitializer, <32 x i1> %i.of)
  store <32 x i16> %i.og, ptr %i.ob, align 1, !tbaa !38
  %i.oh = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.od)
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.ob, i64 %i.oi ; 2 uses
  %.not.i49.i31 = icmp eq i64 %i.ng, 0
  br i1 %.not.i49.i31, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i46.i28, !llvm.loop !6

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i46.i28
  %.pre72.i32 = load i64, ptr %i.ir, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.ok = phi i64 [ %i.mz, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre72.i32, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.lcssa.i50.i33 = phi ptr [ %.0.lcssa.i44.i26, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.oj, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !34
  %i.on = and i64 %i.om, %i.ok                    ; 2 uses
  %.not9.i51.i34 = icmp eq i64 %i.on, 0
  br i1 %.not9.i51.i34, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i52.i35

.lr.ph.i52.i35:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i52.i35
  %.011.i53.i36 = phi ptr [ %i.qc, %.lr.ph.i52.i35 ], [ %.0.lcssa.i50.i33, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i54.i37 = phi i64 [ %i.or, %.lr.ph.i52.i35 ], [ %i.on, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.oo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i54.i37, i1 true) ; 2 uses
  %i.op = trunc nuw nsw i64 %i.oo to i16
  %i.oq = add i64 %.0810.i54.i37, -1
  %i.or = and i64 %i.oq, %.0810.i54.i37           ; 2 uses
  %i.os = load i64, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.ot = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.oo ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !44
  %i.ow = load i64, ptr %i.ot, align 16, !tbaa !45
  %i.ox = tail call noundef i64 @llvm.pext.i64(i64 %i.os, i64 %i.ow)
  %i.oy = and i64 %i.ox, 4294967295
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %i.oy
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !34
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !44
  %i.pe = load i64, ptr %i.pb, align 16, !tbaa !45
  %i.pf = tail call noundef i64 @llvm.pext.i64(i64 %i.os, i64 %i.pe)
  %i.pg = and i64 %i.pf, 4294967295
end_hunk_0
begin_hunk_1_@_ZN9Stockfish8generateILNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES3_:bb.a
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !34
  %i.pj = or i64 %i.pi, %i.pa
  %i.pk = and i64 %i.pj, %i.h                     ; 2 uses
  %i.pl = shl nuw nsw i16 %i.op, 6
  %i.pm = insertelement <32 x i16> poison, i16 %i.pl, i64 0
  %i.pn = shufflevector <32 x i16> %i.pm, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.po = trunc i64 %i.pk to i32                  ; 2 uses
  %i.pp = or disjoint <32 x i16> %i.pn, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.pq = bitcast i32 %i.po to <32 x i1>
  %i.pr = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.pp, <32 x i16> zeroinitializer, <32 x i1> %i.pq)
  store <32 x i16> %i.pr, ptr %.011.i53.i36, align 1, !tbaa !38
  %i.ps = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.po)
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %.011.i53.i36, i64 %i.pt ; 2 uses
  %i.pv = lshr i64 %i.pk, 32
  %i.pw = trunc nuw i64 %i.pv to i32              ; 2 uses
  %i.px = or disjoint <32 x i16> %i.pn, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.py = bitcast i32 %i.pw to <32 x i1>
  %i.pz = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.px, <32 x i16> zeroinitializer, <32 x i1> %i.py)
  store <32 x i16> %i.pz, ptr %i.pu, align 1, !tbaa !38
  %i.qa = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.pw)
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %i.pu, i64 %i.qb ; 2 uses
  %.not.i55.i38 = icmp eq i64 %i.or, 0
  br i1 %.not.i55.i38, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i52.i35, !llvm.loop !7

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph.i52.i35, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %.0.lcssa.i56.i39 = phi ptr [ %.0.lcssa.i50.i33, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.qc, %.lr.ph.i52.i35 ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.iu
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !34
  %i.qf = and i64 %i.qe, %i.h                     ; 2 uses
  %i.qg = shl nuw nsw i16 %i.iv, 6                ; 2 uses
  %i.qh = insertelement <32 x i16> poison, i16 %i.qg, i64 0
  %i.qi = shufflevector <32 x i16> %i.qh, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.qj = trunc i64 %i.qf to i32                  ; 2 uses
  %i.qk = or disjoint <32 x i16> %i.qi, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.ql = bitcast i32 %i.qj to <32 x i1>
  %i.qm = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.qk, <32 x i16> zeroinitializer, <32 x i1> %i.ql)
  store <32 x i16> %i.qm, ptr %.0.lcssa.i56.i39, align 1, !tbaa !38
  %i.qn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qj)
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i56.i39, i64 %i.qo ; 2 uses
  %i.qq = lshr i64 %i.qf, 32
  %i.qr = trunc nuw i64 %i.qq to i32              ; 2 uses
  %i.qs = or disjoint <32 x i16> %i.qi, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.qt = bitcast i32 %i.qr to <32 x i1>
  %i.qu = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.qs, <32 x i16> zeroinitializer, <32 x i1> %i.qt)
  store <32 x i16> %i.qu, ptr %i.qp, align 1, !tbaa !38
  %i.qv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qr)
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.qw ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !39
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 48
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !46 ; 3 uses
  %i.rc = and i32 %i.rb, 12
  %.not60.i40 = icmp eq i32 %i.rc, 0
  br i1 %.not60.i40, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.rd = load i64, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.re = or disjoint i16 %i.qg, -16384           ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !34
  %i.rh = and i64 %i.rg, %i.rd
  %i.ri = icmp eq i64 %i.rh, 0
  %i.rj = and i32 %i.rb, 4
  %i.rk = icmp ne i32 %i.rj, 0
  %or.cond.i41 = and i1 %i.rk, %i.ri
  br i1 %or.cond.i41, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.rm = load i8, ptr %i.rl, align 4, !tbaa !47
  %i.rn = zext i8 %i.rm to i16
  %i.ro = add nuw nsw i16 %i.re, %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  store i16 %i.ro, ptr %i.qx, align 2, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i42 = phi ptr [ %i.qx, %bb.g ], [ %i.rp, %bb.h ] ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !34
  %i.rs = and i64 %i.rr, %i.rd
  %i.rt = icmp eq i64 %i.rs, 0
  %i.ru = and i32 %i.rb, 8
  %i.rv = icmp ne i32 %i.ru, 0
  %or.cond.1.i43 = and i1 %i.rv, %i.rt
  br i1 %or.cond.1.i43, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit

_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split: ; preds = %bb.i, %bb.e
  %.sink = phi i64 [ 466, %bb.e ], [ 472, %bb.i ]
  %.sink84 = phi i16 [ %i.ia, %bb.e ], [ %i.re, %bb.i ]
  %.1.i42.sink83 = phi ptr [ %.1.i, %bb.e ], [ %.1.i42, %bb.i ] ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.rx = load i8, ptr %i.rw, align 2, !tbaa !47
  %i.ry = zext i8 %i.rx to i16
  %i.rz = add nuw nsw i16 %.sink84, %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %.1.i42.sink83, i64 2
  store i16 %i.rz, ptr %.1.i42.sink83, align 2, !tbaa !36
  br label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit

_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit: ; preds = %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split, %bb.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %bb.e, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.sb = phi ptr [ %.1.i42, %bb.i ], [ %i.ht, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.1.i, %bb.e ], [ %i.qx, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.sa, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split ]
  ret ptr %i.sb
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48   ; 11 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.i)
  %i.k = icmp samesign ugt i64 %i.j, 1            ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !34   ; 3 uses
  %i.n = and i64 %i.e, %i.m
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.n, i1 true) ; 4 uses
  br i1 %i.k, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.i, i1 true)
  %i.q = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.o
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34
  %i.v = xor i64 %i.u, -1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !34
  %i.y = and i64 %i.x, %i.m                       ; 4 uses
  %i.z = and i64 %i.y, 71776119061217280          ; 4 uses
  %i.aa = and i64 %i.y, -71776119061217281        ; 2 uses
  %i.ab = shl i64 %i.aa, 8
  %i.ac = and i64 %i.ab, %i.v                     ; 2 uses
  %i.ad = shl nuw i64 %i.ac, 8
  %i.ae = and i64 %i.ac, %i.s                     ; 2 uses
  %i.af = and i64 %i.s, %i.v
  %i.ag = and i64 %i.af, 4278190080
  %i.ah = and i64 %i.ag, %i.ad
  %i.ai = trunc i64 %i.ae to i32                  ; 2 uses
  %i.aj = bitcast i32 %i.ai to <32 x i1>
  %i.ak = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 73, i16 138, i16 203, i16 268, i16 333, i16 398, i16 463, i16 528, i16 593, i16 658, i16 723, i16 788, i16 853, i16 918, i16 983, i16 1048, i16 1113, i16 1178, i16 1243, i16 1308, i16 1373, i16 1438, i16 1503>, <32 x i16> zeroinitializer, <32 x i1> %i.aj)
  store <32 x i16> %i.ak, ptr %1, align 1, !tbaa !38
  %i.al = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.ai)
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.ae, 32
  %i.ap = trunc nuw nsw i64 %i.ao to i32          ; 2 uses
  %i.aq = bitcast i32 %i.ap to <32 x i1>
  %i.ar = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1568, i16 1633, i16 1698, i16 1763, i16 1828, i16 1893, i16 1958, i16 2023, i16 2088, i16 2153, i16 2218, i16 2283, i16 2348, i16 2413, i16 2478, i16 2543, i16 2608, i16 2673, i16 2738, i16 2803, i16 2868, i16 2933, i16 2998, i16 3063, i16 3128, i16 3193, i16 3258, i16 3323, i16 3388, i16 3453, i16 3518, i16 3583>, <32 x i16> zeroinitializer, <32 x i1> %i.aq)
  store <32 x i16> %i.ar, ptr %i.an, align 1, !tbaa !38
  %i.as = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.ap)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.at ; 2 uses
  %i.av = trunc nuw i64 %i.ah to i32              ; 2 uses
  %i.aw = bitcast i32 %i.av to <32 x i1>
  %i.ax = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 81, i16 146, i16 211, i16 276, i16 341, i16 406, i16 471, i16 536, i16 601, i16 666, i16 731, i16 796, i16 861, i16 926, i16 991>, <32 x i16> zeroinitializer, <32 x i1> %i.aw)
  store <32 x i16> %i.ax, ptr %i.au, align 1, !tbaa !38
  %i.ay = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.av)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.az ; 4 uses
  %i.bb = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1056, i16 1121, i16 1186, i16 1251, i16 1316, i16 1381, i16 1446, i16 1511, i16 1576, i16 1641, i16 1706, i16 1771, i16 1836, i16 1901, i16 1966, i16 2031, i16 2096, i16 2161, i16 2226, i16 2291, i16 2356, i16 2421, i16 2486, i16 2551, i16 2616, i16 2681, i16 2746, i16 2811, i16 2876, i16 2941, i16 3006, i16 3071>, <32 x i16> zeroinitializer, <32 x i1> zeroinitializer)
  store <32 x i16> %i.bb, ptr %i.ba, align 1, !tbaa !38
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %.loopexit67.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = shl i64 %i.z, 9
  %i.bd = and i64 %i.bc, %i.i                     ; 2 uses
  %i.be = shl nuw nsw i64 %i.z, 7
  %i.bf = and i64 %i.i, 9151314442816847872
  %i.bg = and i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = shl nuw i64 %i.z, 8
  %i.bi = and i64 %i.bh, %i.v
  %i.bj = and i64 %i.bi, %i.s                     ; 2 uses
  %.not4769.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not4769.i.i, label %.preheader68.i.i, label %.lr.ph.i.i

.preheader68.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.045.lcssa.i.i = phi ptr [ %i.ba, %bb.d ], [ %i.bt, %.lr.ph.i.i ] ; 2 uses
  %.not4872.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not4872.i.i, label %.preheader.i.i, label %.lr.ph75.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.04571.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %i.ba, %bb.d ] ; 2 uses
  %.06370.i.i = phi i64 [ %i.bn, %.lr.ph.i.i ], [ %i.bd, %bb.d ] ; 3 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06370.i.i, i1 true)
  %i.bl = trunc nuw nsw i64 %i.bk to i16          ; 2 uses
  %i.bm = add i64 %.06370.i.i, -144115188075855872
  %i.bn = and i64 %i.bm, %.06370.i.i              ; 2 uses
  %i.bo = shl nuw nsw i16 %i.bl, 6
  %i.bp = add nuw nsw i16 %i.bo, 15808
  %i.bq = and i16 %i.bp, 16320
  %i.br = or disjoint i16 %i.bl, 8192
  %i.bs = add nuw nsw i16 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.04571.i.i, i64 8 ; 2 uses
  %i.bu = insertelement <4 x i16> poison, i16 %i.bs, i64 0
  %i.bv = shufflevector <4 x i16> %i.bu, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bw = add nuw <4 x i16> %i.bv, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.bw, ptr %.04571.i.i, align 2, !tbaa !36
  %.not47.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not47.i.i, label %.preheader68.i.i, label %.lr.ph.i.i, !llvm.loop !59

.preheader.i.i:                                   ; preds = %.lr.ph75.i.i, %.preheader68.i.i
  %.146.lcssa.i.i = phi ptr [ %.045.lcssa.i.i, %.preheader68.i.i ], [ %i.cg, %.lr.ph75.i.i ] ; 2 uses
  %.not4977.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not4977.i.i, label %.loopexit67.i.i, label %.lr.ph80.i.i

.lr.ph75.i.i:                                     ; preds = %.preheader68.i.i, %.lr.ph75.i.i
  %.14674.i.i = phi ptr [ %i.cg, %.lr.ph75.i.i ], [ %.045.lcssa.i.i, %.preheader68.i.i ] ; 2 uses
  %.06273.i.i = phi i64 [ %i.ca, %.lr.ph75.i.i ], [ %i.bg, %.preheader68.i.i ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06273.i.i, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i16          ; 2 uses
  %i.bz = add nuw i64 %.06273.i.i, 9151314442816847872
  %i.ca = and i64 %i.bz, %.06273.i.i              ; 2 uses
  %i.cb = shl nuw nsw i16 %i.by, 6
  %i.cc = add nuw nsw i16 %i.cb, 15936
  %i.cd = and i16 %i.cc, 16320
  %i.ce = or disjoint i16 %i.by, 8192
  %i.cf = add nuw nsw i16 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.14674.i.i, i64 8 ; 2 uses
  %i.ch = insertelement <4 x i16> poison, i16 %i.cf, i64 0
  %i.ci = shufflevector <4 x i16> %i.ch, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cj = add nuw <4 x i16> %i.ci, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.cj, ptr %.14674.i.i, align 2, !tbaa !36
  %.not48.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not48.i.i, label %.preheader.i.i, label %.lr.ph75.i.i, !llvm.loop !60

.lr.ph80.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph80.i.i
  %.279.i.i = phi ptr [ %i.ct, %.lr.ph80.i.i ], [ %.146.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.06178.i.i = phi i64 [ %i.cn, %.lr.ph80.i.i ], [ %i.bj, %.preheader.i.i ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06178.i.i, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i16          ; 2 uses
  %i.cm = add i64 %.06178.i.i, -256
  %i.cn = and i64 %i.cm, %.06178.i.i              ; 2 uses
  %i.co = shl nuw nsw i16 %i.cl, 6
  %i.cp = add nuw nsw i16 %i.co, 15872
  %i.cq = and i16 %i.cp, 16320
  %i.cr = or disjoint i16 %i.cl, 8192
  %i.cs = add nuw nsw i16 %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.279.i.i, i64 8 ; 2 uses
  %i.cu = insertelement <4 x i16> poison, i16 %i.cs, i64 0
  %i.cv = shufflevector <4 x i16> %i.cu, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cw = add nuw <4 x i16> %i.cv, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.cw, ptr %.279.i.i, align 2, !tbaa !36
  %.not49.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not49.i.i, label %.loopexit67.i.i, label %.lr.ph80.i.i, !llvm.loop !61

.loopexit67.i.i:                                  ; preds = %.lr.ph80.i.i, %.preheader.i.i, %bb.c
  %.3.i.i = phi ptr [ %i.ba, %bb.c ], [ %.146.lcssa.i.i, %.preheader.i.i ], [ %i.ct, %.lr.ph80.i.i ] ; 2 uses
  %i.cx = shl i64 %i.y, 9
  %i.cy = and i64 %i.i, 71775015237778944
  %i.cz = and i64 %i.cy, %i.cx                    ; 2 uses
  %i.da = shl i64 %i.y, 7
  %i.db = and i64 %i.i, 35887507618889472
  %i.dc = and i64 %i.db, %i.da                    ; 2 uses
  %i.dd = trunc i64 %i.cz to i32                  ; 2 uses
  %i.de = bitcast i32 %i.dd to <32 x i1>
  %i.df = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 74, i16 139, i16 204, i16 269, i16 334, i16 399, i16 464, i16 529, i16 594, i16 659, i16 724, i16 789, i16 854, i16 919, i16 984, i16 1049, i16 1114, i16 1179, i16 1244, i16 1309, i16 1374, i16 1439>, <32 x i16> zeroinitializer, <32 x i1> %i.de)
  store <32 x i16> %i.df, ptr %.3.i.i, align 1, !tbaa !38
  %i.dg = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.dd)
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i, i64 %i.dh ; 2 uses
  %i.dj = lshr i64 %i.cz, 32
  %i.dk = trunc nuw nsw i64 %i.dj to i32          ; 2 uses
  %i.dl = bitcast i32 %i.dk to <32 x i1>
  %i.dm = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1504, i16 1569, i16 1634, i16 1699, i16 1764, i16 1829, i16 1894, i16 1959, i16 2024, i16 2089, i16 2154, i16 2219, i16 2284, i16 2349, i16 2414, i16 2479, i16 2544, i16 2609, i16 2674, i16 2739, i16 2804, i16 2869, i16 2934, i16 2999, i16 3064, i16 3129, i16 3194, i16 3259, i16 3324, i16 3389, i16 3454, i16 3519>, <32 x i16> zeroinitializer, <32 x i1> %i.dl)
  store <32 x i16> %i.dm, ptr %i.di, align 1, !tbaa !38
  %i.dn = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.dk)
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.do ; 2 uses
  %i.dq = trunc i64 %i.dc to i32                  ; 2 uses
  %i.dr = bitcast i32 %i.dq to <32 x i1>
  %i.ds = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 72, i16 137, i16 202, i16 267, i16 332, i16 397, i16 462, i16 527, i16 592, i16 657, i16 722, i16 787, i16 852, i16 917, i16 982, i16 1047, i16 1112, i16 1177, i16 1242, i16 1307, i16 1372, i16 1437, i16 1502, i16 1567>, <32 x i16> zeroinitializer, <32 x i1> %i.dr)
  store <32 x i16> %i.ds, ptr %i.dp, align 1, !tbaa !38
  %i.dt = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.dq)
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.du ; 2 uses
  %i.dw = lshr i64 %i.dc, 32
  %i.dx = trunc nuw nsw i64 %i.dw to i32          ; 2 uses
  %i.dy = bitcast i32 %i.dx to <32 x i1>
  %i.dz = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1632, i16 1697, i16 1762, i16 1827, i16 1892, i16 1957, i16 2022, i16 2087, i16 2152, i16 2217, i16 2282, i16 2347, i16 2412, i16 2477, i16 2542, i16 2607, i16 2672, i16 2737, i16 2802, i16 2867, i16 2932, i16 2997, i16 3062, i16 3127, i16 3192, i16 3257, i16 3322, i16 3387, i16 3452, i16 3517, i16 3582, i16 3647>, <32 x i16> zeroinitializer, <32 x i1> %i.dy)
  store <32 x i16> %i.dz, ptr %i.dv, align 1, !tbaa !38
  %i.ea = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.dx)
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eb ; 4 uses
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 60
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !41  ; 4 uses
  %.not50.i.i = icmp eq i8 %i.ef, 64
  br i1 %.not50.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.e

bb.e:                                             ; preds = %.loopexit67.i.i
  %i.eg = add i8 %i.ef, 8
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = shl nuw i64 1, %i.eh
  %i.ej = and i64 %i.ei, %i.s
  %.not51.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not51.i.i, label %bb.f, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ek = zext i8 %i.ef to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 512), i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !34
  %i.en = and i64 %i.em, %i.aa                    ; 2 uses
  %.not5282.i.i = icmp eq i64 %i.en, 0
  br i1 %.not5282.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph85.i.i

.lr.ph85.i.i:                                     ; preds = %bb.f
  %i.eo = zext i8 %i.ef to i16
  %i.ep = or disjoint i16 %i.eo, -32768
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph85.i.i
  %.484.i.i = phi ptr [ %i.ec, %.lr.ph85.i.i ], [ %i.ew, %bb.g ] ; 2 uses
  %.083.i.i = phi i64 [ %i.en, %.lr.ph85.i.i ], [ %i.et, %bb.g ] ; 3 uses
  %i.eq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.083.i.i, i1 true)
  %i.er = trunc nuw nsw i64 %i.eq to i16
  %i.es = add i64 %.083.i.i, -1
  %i.et = and i64 %i.es, %.083.i.i                ; 2 uses
  %i.eu = shl nuw nsw i16 %i.er, 6
  %i.ev = add nuw nsw i16 %i.ep, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %.484.i.i, i64 2 ; 2 uses
  store i16 %i.ev, ptr %.484.i.i, align 2, !tbaa !36
  %.not52.i.i = icmp eq i64 %i.et, 0
  br i1 %.not52.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.g, !llvm.loop !62

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %.loopexit67.i.i
  %i.ex = phi ptr [ %i.ec, %bb.e ], [ %i.ec, %.loopexit67.i.i ], [ %i.ec, %bb.f ], [ %i.ew, %bb.g ] ; 2 uses
  %i.ey = load i64, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !34
  %i.fb = and i64 %i.fa, %i.ey                    ; 2 uses
  %.not9.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not9.i.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i24.i
  %.011.i.i = phi ptr [ %i.ga, %.lr.ph.i24.i ], [ %i.ex, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i.i = phi i64 [ %i.ff, %.lr.ph.i24.i ], [ %i.fb, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i.i, i1 true) ; 2 uses
  %i.fd = trunc nuw nsw i64 %i.fc to i16
  %i.fe = add i64 %.0810.i.i, -1
  %i.ff = and i64 %i.fe, %.0810.i.i               ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.fc
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !34
  %i.fi = and i64 %i.fh, %i.s                     ; 2 uses
  %i.fj = shl nuw nsw i16 %i.fd, 6
  %i.fk = insertelement <32 x i16> poison, i16 %i.fj, i64 0
  %i.fl = shufflevector <32 x i16> %i.fk, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.fm = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fn = or disjoint <32 x i16> %i.fl, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.fo = bitcast i32 %i.fm to <32 x i1>
  %i.fp = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.fn, <32 x i16> zeroinitializer, <32 x i1> %i.fo)
  store <32 x i16> %i.fp, ptr %.011.i.i, align 1, !tbaa !38
  %i.fq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fm)
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.011.i.i, i64 %i.fr ; 2 uses
  %i.ft = lshr i64 %i.fi, 32
  %i.fu = trunc nuw i64 %i.ft to i32              ; 2 uses
  %i.fv = or disjoint <32 x i16> %i.fl, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.fw = bitcast i32 %i.fu to <32 x i1>
  %i.fx = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.fv, <32 x i16> zeroinitializer, <32 x i1> %i.fw)
  store <32 x i16> %i.fx, ptr %i.fs, align 1, !tbaa !38
  %i.fy = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fu)
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.fz ; 2 uses
  %.not.i25.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i25.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i24.i, !llvm.loop !0

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i24.i
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.gb = phi i64 [ %i.ey, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.ex, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ga, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !34
  %i.ge = and i64 %i.gd, %i.gb                    ; 2 uses
  %.not9.i26.i = icmp eq i64 %i.ge, 0
  br i1 %.not9.i26.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i27.i
  %.011.i28.i = phi ptr [ %i.hk, %.lr.ph.i27.i ], [ %.0.lcssa.i.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i29.i = phi i64 [ %i.gi, %.lr.ph.i27.i ], [ %i.ge, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.gf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i29.i, i1 true) ; 2 uses
  %i.gg = trunc nuw nsw i64 %i.gf to i16
  %i.gh = add i64 %.0810.i29.i, -1
  %i.gi = and i64 %i.gh, %.0810.i29.i             ; 2 uses
  %i.gj = load i64, ptr %i.t, align 8, !tbaa !34
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.gf ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !44
  %i.gn = load i64, ptr %i.gk, align 16, !tbaa !45
  %i.go = tail call noundef i64 @llvm.pext.i64(i64 %i.gj, i64 %i.gn)
  %i.gp = and i64 %i.go, 4294967295
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !34
  %i.gs = and i64 %i.gr, %i.s                     ; 2 uses
  %i.gt = shl nuw nsw i16 %i.gg, 6
  %i.gu = insertelement <32 x i16> poison, i16 %i.gt, i64 0
  %i.gv = shufflevector <32 x i16> %i.gu, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.gw = trunc i64 %i.gs to i32                  ; 2 uses
  %i.gx = or disjoint <32 x i16> %i.gv, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.gy = bitcast i32 %i.gw to <32 x i1>
  %i.gz = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gx, <32 x i16> zeroinitializer, <32 x i1> %i.gy)
  store <32 x i16> %i.gz, ptr %.011.i28.i, align 1, !tbaa !38
  %i.ha = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gw)
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %.011.i28.i, i64 %i.hb ; 2 uses
  %i.hd = lshr i64 %i.gs, 32
  %i.he = trunc nuw i64 %i.hd to i32              ; 2 uses
  %i.hf = or disjoint <32 x i16> %i.gv, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.hg = bitcast i32 %i.he to <32 x i1>
  %i.hh = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.hf, <32 x i16> zeroinitializer, <32 x i1> %i.hg)
  store <32 x i16> %i.hh, ptr %i.hc, align 1, !tbaa !38
  %i.hi = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.he)
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.hj ; 2 uses
  %.not.i30.i = icmp eq i64 %i.gi, 0
  br i1 %.not.i30.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i27.i, !llvm.loop !1

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i27.i
  %.pre58.i = load i64, ptr %i.l, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.hl = phi i64 [ %i.gb, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre58.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i31.i = phi ptr [ %.0.lcssa.i.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.hk, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !34
  %i.ho = and i64 %i.hn, %i.hl                    ; 2 uses
  %.not9.i32.i = icmp eq i64 %i.ho, 0
  br i1 %.not9.i32.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i33.i
  %.011.i34.i = phi ptr [ %i.iv, %.lr.ph.i33.i ], [ %.0.lcssa.i31.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i35.i = phi i64 [ %i.hs, %.lr.ph.i33.i ], [ %i.ho, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.hp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i35.i, i1 true) ; 2 uses
  %i.hq = trunc nuw nsw i64 %i.hp to i16
  %i.hr = add i64 %.0810.i35.i, -1
  %i.hs = and i64 %i.hr, %.0810.i35.i             ; 2 uses
  %i.ht = load i64, ptr %i.t, align 8, !tbaa !34
  %i.hu = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.hp ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !44
  %i.hy = load i64, ptr %i.hv, align 16, !tbaa !45
  %i.hz = tail call noundef i64 @llvm.pext.i64(i64 %i.ht, i64 %i.hy)
  %i.ia = and i64 %i.hz, 4294967295
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !34
  %i.id = and i64 %i.ic, %i.s                     ; 2 uses
  %i.ie = shl nuw nsw i16 %i.hq, 6
  %i.if = insertelement <32 x i16> poison, i16 %i.ie, i64 0
  %i.ig = shufflevector <32 x i16> %i.if, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.ih = trunc i64 %i.id to i32                  ; 2 uses
  %i.ii = or disjoint <32 x i16> %i.ig, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.ij = bitcast i32 %i.ih to <32 x i1>
  %i.ik = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ii, <32 x i16> zeroinitializer, <32 x i1> %i.ij)
  store <32 x i16> %i.ik, ptr %.011.i34.i, align 1, !tbaa !38
  %i.il = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ih)
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %.011.i34.i, i64 %i.im ; 2 uses
  %i.io = lshr i64 %i.id, 32
  %i.ip = trunc nuw i64 %i.io to i32              ; 2 uses
  %i.iq = or disjoint <32 x i16> %i.ig, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.ir = bitcast i32 %i.ip to <32 x i1>
  %i.is = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.iq, <32 x i16> zeroinitializer, <32 x i1> %i.ir)
  store <32 x i16> %i.is, ptr %i.in, align 1, !tbaa !38
  %i.it = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ip)
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.iu ; 2 uses
  %.not.i36.i = icmp eq i64 %i.hs, 0
  br i1 %.not.i36.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i33.i, !llvm.loop !2

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i33.i
  %.pre59.i = load i64, ptr %i.l, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.iw = phi i64 [ %i.hl, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre59.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i37.i = phi ptr [ %.0.lcssa.i31.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.iv, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !34
  %i.iz = and i64 %i.iy, %i.iw                    ; 2 uses
  %.not9.i38.i = icmp eq i64 %i.iz, 0
  br i1 %.not9.i38.i, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_.exit, label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i39.i
  %.011.i40.i = phi ptr [ %i.ko, %.lr.ph.i39.i ], [ %.0.lcssa.i37.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i41.i = phi i64 [ %i.jd, %.lr.ph.i39.i ], [ %i.iz, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.ja = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i41.i, i1 true) ; 2 uses
  %i.jb = trunc nuw nsw i64 %i.ja to i16
  %i.jc = add i64 %.0810.i41.i, -1
  %i.jd = and i64 %i.jc, %.0810.i41.i             ; 2 uses
  %i.je = load i64, ptr %i.t, align 8, !tbaa !34  ; 2 uses
  %i.jf = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.ja ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !44
  %i.ji = load i64, ptr %i.jf, align 16, !tbaa !45
  %i.jj = tail call noundef i64 @llvm.pext.i64(i64 %i.je, i64 %i.ji)
  %i.jk = and i64 %i.jj, 4294967295
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !34
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !44
  %i.jq = load i64, ptr %i.jn, align 16, !tbaa !45
  %i.jr = tail call noundef i64 @llvm.pext.i64(i64 %i.je, i64 %i.jq)
  %i.js = and i64 %i.jr, 4294967295
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.js
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !34
  %i.jv = or i64 %i.ju, %i.jm
  %i.jw = and i64 %i.jv, %i.s                     ; 2 uses
  %i.jx = shl nuw nsw i16 %i.jb, 6
  %i.jy = insertelement <32 x i16> poison, i16 %i.jx, i64 0
  %i.jz = shufflevector <32 x i16> %i.jy, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.ka = trunc i64 %i.jw to i32                  ; 2 uses
  %i.kb = or disjoint <32 x i16> %i.jz, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.kc = bitcast i32 %i.ka to <32 x i1>
  %i.kd = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.kb, <32 x i16> zeroinitializer, <32 x i1> %i.kc)
  store <32 x i16> %i.kd, ptr %.011.i40.i, align 1, !tbaa !38
  %i.ke = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ka)
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.011.i40.i, i64 %i.kf ; 2 uses
  %i.kh = lshr i64 %i.jw, 32
  %i.ki = trunc nuw i64 %i.kh to i32              ; 2 uses
  %i.kj = or disjoint <32 x i16> %i.jz, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.kk = bitcast i32 %i.ki to <32 x i1>
  %i.kl = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.kj, <32 x i16> zeroinitializer, <32 x i1> %i.kk)
  store <32 x i16> %i.kl, ptr %i.kg, align 1, !tbaa !38
  %i.km = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ki)
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %i.kn ; 2 uses
  %.not.i42.i = icmp eq i64 %i.jd, 0
  br i1 %.not.i42.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i39.i, !llvm.loop !3

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i39.i
  %.pre60.i = load i64, ptr %i.l, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_.exit

bb.h:                                             ; preds = %bb.a
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !34 ; 3 uses
  %i.kr = and i64 %i.e, %i.kq
  %i.ks = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kr, i1 true) ; 4 uses
  br i1 %i.k, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.kt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.i, i1 true)
  %i.ku = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.ks
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !34 ; 8 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !34
  %i.kz = xor i64 %i.ky, -1                       ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !34
  %i.lc = and i64 %i.lb, %i.kq                    ; 5 uses
  %i.ld = and i64 %i.lc, 65280                    ; 3 uses
  %i.le = and i64 %i.lc, -65281                   ; 2 uses
  %i.lf = lshr i64 %i.le, 8
  %i.lg = and i64 %i.lf, %i.kz                    ; 2 uses
  %i.lh = and i64 %i.lg, %i.kw                    ; 2 uses
  %i.li = and i64 %i.kw, %i.kz
  %i.lj = trunc i64 %i.lh to i32                  ; 2 uses
  %i.lk = bitcast i32 %i.lj to <32 x i1>
  %i.ll = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 512, i16 577, i16 642, i16 707, i16 772, i16 837, i16 902, i16 967, i16 1032, i16 1097, i16 1162, i16 1227, i16 1292, i16 1357, i16 1422, i16 1487, i16 1552, i16 1617, i16 1682, i16 1747, i16 1812, i16 1877, i16 1942, i16 2007, i16 2072, i16 2137, i16 2202, i16 2267, i16 2332, i16 2397, i16 2462, i16 2527>, <32 x i16> zeroinitializer, <32 x i1> %i.lk)
  store <32 x i16> %i.ll, ptr %1, align 1, !tbaa !38
  %i.lm = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.lj)
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ln ; 2 uses
  %i.lp = lshr i64 %i.lh, 32
  %i.lq = trunc nuw nsw i64 %i.lp to i32          ; 2 uses
  %i.lr = bitcast i32 %i.lq to <32 x i1>
  %i.ls = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2592, i16 2657, i16 2722, i16 2787, i16 2852, i16 2917, i16 2982, i16 3047, i16 3112, i16 3177, i16 3242, i16 3307, i16 3372, i16 3437, i16 3502, i16 3567, i16 3632, i16 3697, i16 3762, i16 3827, i16 3892, i16 3957, i16 4022, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.lr)
  store <32 x i16> %i.ls, ptr %i.lo, align 1, !tbaa !38
  %i.lt = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.lq)
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %i.lu ; 2 uses
  %i.lw = lshr i64 %i.lg, 40
  %i.lx = lshr i64 %i.li, 32
  %i.ly = and i64 %i.lx, 255
  %i.lz = and i64 %i.ly, %i.lw
  %i.ma = trunc nuw nsw i64 %i.lz to i32          ; 2 uses
  %i.mb = bitcast i32 %i.ma to <32 x i1>
  %i.mc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 3104, i16 3169, i16 3234, i16 3299, i16 3364, i16 3429, i16 3494, i16 3559, i16 3624, i16 3689, i16 3754, i16 3819, i16 3884, i16 3949, i16 4014, i16 4079, i16 4080, i16 4081, i16 4082, i16 4083, i16 4084, i16 4085, i16 4086, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.mb)
  store <32 x i16> %i.mc, ptr %i.lv, align 1, !tbaa !38
  %i.md = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ma)
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %i.me ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.ld, 0
  br i1 %.not.i.i5, label %..loopexit67_crit_edge.i.i, label %bb.j

..loopexit67_crit_edge.i.i:                       ; preds = %bb.i
  %.pre.i.i = lshr i64 %i.lc, 7
  br label %.loopexit67.i.i25

bb.j:                                             ; preds = %bb.i
  %i.mg = lshr i64 %i.ld, 9
  %i.mh = and i64 %i.mg, %i.i                     ; 2 uses
  %i.mi = lshr i64 %i.lc, 7                       ; 3 uses
  %i.mj = and i64 %i.i, 254
  %i.mk = and i64 %i.mj, %i.mi                    ; 2 uses
  %i.ml = lshr exact i64 %i.ld, 8
  %i.mm = and i64 %i.ml, %i.kz
  %i.mn = and i64 %i.mm, %i.kw                    ; 2 uses
  %.not4769.i.i6 = icmp eq i64 %i.mh, 0
  br i1 %.not4769.i.i6, label %.preheader68.i.i11, label %.lr.ph.i.i7

.preheader68.i.i11:                               ; preds = %.lr.ph.i.i7, %bb.j
  %.045.lcssa.i.i12 = phi ptr [ %i.mf, %bb.j ], [ %i.mv, %.lr.ph.i.i7 ] ; 2 uses
  %.not4872.i.i13 = icmp eq i64 %i.mk, 0
  br i1 %.not4872.i.i13, label %.preheader.i.i18, label %.lr.ph75.i.i14

.lr.ph.i.i7:                                      ; preds = %bb.j, %.lr.ph.i.i7
  %.04571.i.i8 = phi ptr [ %i.mv, %.lr.ph.i.i7 ], [ %i.mf, %bb.j ] ; 2 uses
  %.06370.i.i9 = phi i64 [ %i.mr, %.lr.ph.i.i7 ], [ %i.mh, %bb.j ] ; 3 uses
  %i.mo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06370.i.i9, i1 true)
  %i.mp = trunc nuw nsw i64 %i.mo to i16          ; 2 uses
  %i.mq = add nuw nsw i64 %.06370.i.i9, 127
  %i.mr = and i64 %i.mq, %.06370.i.i9             ; 2 uses
  %i.ms = shl nuw nsw i16 %i.mp, 6
  %i.mt = add nuw nsw i16 %i.ms, 576
  %i.mu = or disjoint i16 %i.mt, %i.mp
  %i.mv = getelementptr inbounds nuw i8, ptr %.04571.i.i8, i64 8 ; 2 uses
  %i.mw = insertelement <4 x i16> poison, i16 %i.mu, i64 0
  %i.mx = shufflevector <4 x i16> %i.mw, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.my = add nuw nsw <4 x i16> %i.mx, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.my, ptr %.04571.i.i8, align 2, !tbaa !36
  %.not47.i.i10 = icmp eq i64 %i.mr, 0
  br i1 %.not47.i.i10, label %.preheader68.i.i11, label %.lr.ph.i.i7, !llvm.loop !63

.preheader.i.i18:                                 ; preds = %.lr.ph75.i.i14, %.preheader68.i.i11
  %.146.lcssa.i.i19 = phi ptr [ %.045.lcssa.i.i12, %.preheader68.i.i11 ], [ %i.ng, %.lr.ph75.i.i14 ] ; 2 uses
  %.not4977.i.i20 = icmp eq i64 %i.mn, 0
  br i1 %.not4977.i.i20, label %.loopexit67.i.i25, label %.lr.ph80.i.i21

.lr.ph75.i.i14:                                   ; preds = %.preheader68.i.i11, %.lr.ph75.i.i14
  %.14674.i.i15 = phi ptr [ %i.ng, %.lr.ph75.i.i14 ], [ %.045.lcssa.i.i12, %.preheader68.i.i11 ] ; 2 uses
  %.06273.i.i16 = phi i64 [ %i.nc, %.lr.ph75.i.i14 ], [ %i.mk, %.preheader68.i.i11 ] ; 3 uses
  %i.mz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06273.i.i16, i1 true)
  %i.na = trunc nuw nsw i64 %i.mz to i16          ; 2 uses
  %i.nb = add nuw nsw i64 %.06273.i.i16, 254
  %i.nc = and i64 %i.nb, %.06273.i.i16            ; 2 uses
  %i.nd = shl nuw nsw i16 %i.na, 6
  %i.ne = add nuw nsw i16 %i.nd, 448
  %i.nf = or disjoint i16 %i.ne, %i.na
  %i.ng = getelementptr inbounds nuw i8, ptr %.14674.i.i15, i64 8 ; 2 uses
  %i.nh = insertelement <4 x i16> poison, i16 %i.nf, i64 0
  %i.ni = shufflevector <4 x i16> %i.nh, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.nj = add nuw nsw <4 x i16> %i.ni, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.nj, ptr %.14674.i.i15, align 2, !tbaa !36
  %.not48.i.i17 = icmp eq i64 %i.nc, 0
  br i1 %.not48.i.i17, label %.preheader.i.i18, label %.lr.ph75.i.i14, !llvm.loop !64

.lr.ph80.i.i21:                                   ; preds = %.preheader.i.i18, %.lr.ph80.i.i21
  %.279.i.i22 = phi ptr [ %i.nr, %.lr.ph80.i.i21 ], [ %.146.lcssa.i.i19, %.preheader.i.i18 ] ; 2 uses
  %.06178.i.i23 = phi i64 [ %i.nn, %.lr.ph80.i.i21 ], [ %i.mn, %.preheader.i.i18 ] ; 3 uses
  %i.nk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06178.i.i23, i1 true)
  %i.nl = trunc nuw nsw i64 %i.nk to i16          ; 2 uses
  %i.nm = add nuw nsw i64 %.06178.i.i23, 255
  %i.nn = and i64 %i.nm, %.06178.i.i23            ; 2 uses
  %i.no = shl nuw nsw i16 %i.nl, 6
  %i.np = add nuw nsw i16 %i.no, 512
  %i.nq = or disjoint i16 %i.np, %i.nl
  %i.nr = getelementptr inbounds nuw i8, ptr %.279.i.i22, i64 8 ; 2 uses
  %i.ns = insertelement <4 x i16> poison, i16 %i.nq, i64 0
  %i.nt = shufflevector <4 x i16> %i.ns, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.nu = add nuw nsw <4 x i16> %i.nt, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.nu, ptr %.279.i.i22, align 2, !tbaa !36
  %.not49.i.i24 = icmp eq i64 %i.nn, 0
  br i1 %.not49.i.i24, label %.loopexit67.i.i25, label %.lr.ph80.i.i21, !llvm.loop !65

.loopexit67.i.i25:                                ; preds = %.lr.ph80.i.i21, %.preheader.i.i18, %..loopexit67_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %..loopexit67_crit_edge.i.i ], [ %i.mi, %.preheader.i.i18 ], [ %i.mi, %.lr.ph80.i.i21 ]
  %.3.i.i26 = phi ptr [ %i.mf, %..loopexit67_crit_edge.i.i ], [ %.146.lcssa.i.i19, %.preheader.i.i18 ], [ %i.nr, %.lr.ph80.i.i21 ] ; 2 uses
  %i.nv = lshr i64 %i.lc, 9
  %i.nw = and i64 %i.i, 35887507618889472
  %i.nx = and i64 %i.nw, %i.nv                    ; 2 uses
  %i.ny = and i64 %i.i, 71775015237778944
  %i.nz = and i64 %i.ny, %.pre-phi.i.i            ; 2 uses
  %i.oa = trunc i64 %i.nx to i32                  ; 2 uses
  %i.ob = bitcast i32 %i.oa to <32 x i1>
  %i.oc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 576, i16 641, i16 706, i16 771, i16 836, i16 901, i16 966, i16 1031, i16 1096, i16 1161, i16 1226, i16 1291, i16 1356, i16 1421, i16 1486, i16 1551, i16 1616, i16 1681, i16 1746, i16 1811, i16 1876, i16 1941, i16 2006, i16 2071, i16 2136, i16 2201, i16 2266, i16 2331, i16 2396, i16 2461, i16 2526, i16 2591>, <32 x i16> zeroinitializer, <32 x i1> %i.ob)
  store <32 x i16> %i.oc, ptr %.3.i.i26, align 1, !tbaa !38
  %i.od = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.oa)
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i26, i64 %i.oe ; 2 uses
  %i.og = lshr i64 %i.nx, 32
  %i.oh = trunc nuw nsw i64 %i.og to i32          ; 2 uses
  %i.oi = bitcast i32 %i.oh to <32 x i1>
  %i.oj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2656, i16 2721, i16 2786, i16 2851, i16 2916, i16 2981, i16 3046, i16 3111, i16 3176, i16 3241, i16 3306, i16 3371, i16 3436, i16 3501, i16 3566, i16 3631, i16 3696, i16 3761, i16 3826, i16 3891, i16 3956, i16 4021, i16 4086, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.oi)
  store <32 x i16> %i.oj, ptr %i.of, align 1, !tbaa !38
  %i.ok = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.oh)
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.of, i64 %i.ol ; 2 uses
  %i.on = trunc i64 %i.nz to i32                  ; 2 uses
  %i.oo = bitcast i32 %i.on to <32 x i1>
  %i.op = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 448, i16 513, i16 578, i16 643, i16 708, i16 773, i16 838, i16 903, i16 968, i16 1033, i16 1098, i16 1163, i16 1228, i16 1293, i16 1358, i16 1423, i16 1488, i16 1553, i16 1618, i16 1683, i16 1748, i16 1813, i16 1878, i16 1943, i16 2008, i16 2073, i16 2138, i16 2203, i16 2268, i16 2333, i16 2398, i16 2463>, <32 x i16> zeroinitializer, <32 x i1> %i.oo)
  store <32 x i16> %i.op, ptr %i.om, align 1, !tbaa !38
  %i.oq = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.on)
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.or ; 2 uses
  %i.ot = lshr i64 %i.nz, 32
  %i.ou = trunc nuw nsw i64 %i.ot to i32          ; 2 uses
  %i.ov = bitcast i32 %i.ou to <32 x i1>
  %i.ow = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2528, i16 2593, i16 2658, i16 2723, i16 2788, i16 2853, i16 2918, i16 2983, i16 3048, i16 3113, i16 3178, i16 3243, i16 3308, i16 3373, i16 3438, i16 3503, i16 3568, i16 3633, i16 3698, i16 3763, i16 3828, i16 3893, i16 3958, i16 4023, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.ov)
  store <32 x i16> %i.ow, ptr %i.os, align 1, !tbaa !38
  %i.ox = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.ou)
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %i.oy ; 4 uses
  %i.pa = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 60
  %i.pc = load i8, ptr %i.pb, align 4, !tbaa !41  ; 4 uses
  %.not50.i.i27 = icmp eq i8 %i.pc, 64
  br i1 %.not50.i.i27, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.k

bb.k:                                             ; preds = %.loopexit67.i.i25
  %i.pd = add i8 %i.pc, -8
  %i.pe = zext nneg i8 %i.pd to i64
  %i.pf = shl nuw i64 1, %i.pe
  %i.pg = and i64 %i.pf, %i.kw
  %.not51.i.i28 = icmp eq i64 %i.pg, 0
  br i1 %.not51.i.i28, label %bb.l, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ph = zext i8 %i.pc to i64
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.ph
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !34
  %i.pk = and i64 %i.pj, %i.le                    ; 2 uses
  %.not5282.i.i57 = icmp eq i64 %i.pk, 0
  br i1 %.not5282.i.i57, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph85.i.i58

.lr.ph85.i.i58:                                   ; preds = %bb.l
  %i.pl = zext i8 %i.pc to i16
  %i.pm = or disjoint i16 %i.pl, -32768
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph85.i.i58
  %.484.i.i59 = phi ptr [ %i.oz, %.lr.ph85.i.i58 ], [ %i.pt, %bb.m ] ; 2 uses
  %.083.i.i60 = phi i64 [ %i.pk, %.lr.ph85.i.i58 ], [ %i.pq, %bb.m ] ; 3 uses
  %i.pn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.083.i.i60, i1 true)
  %i.po = trunc nuw nsw i64 %i.pn to i16
  %i.pp = add i64 %.083.i.i60, -1
  %i.pq = and i64 %i.pp, %.083.i.i60              ; 2 uses
  %i.pr = shl nuw nsw i16 %i.po, 6
  %i.ps = add nuw nsw i16 %i.pm, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %.484.i.i59, i64 2 ; 2 uses
  store i16 %i.ps, ptr %.484.i.i59, align 2, !tbaa !36
  %.not52.i.i61 = icmp eq i64 %i.pq, 0
  br i1 %.not52.i.i61, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.m, !llvm.loop !66

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %.loopexit67.i.i25
  %i.pu = phi ptr [ %i.oz, %bb.k ], [ %i.oz, %.loopexit67.i.i25 ], [ %i.oz, %bb.l ], [ %i.pt, %bb.m ] ; 2 uses
  %i.pv = load i64, ptr %i.kp, align 8, !tbaa !34 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !34
  %i.py = and i64 %i.px, %i.pv                    ; 2 uses
  %.not9.i.i29 = icmp eq i64 %i.py, 0
  br i1 %.not9.i.i29, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i24.i30

.lr.ph.i24.i30:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i24.i30
  %.011.i.i31 = phi ptr [ %i.qx, %.lr.ph.i24.i30 ], [ %i.pu, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i.i32 = phi i64 [ %i.qc, %.lr.ph.i24.i30 ], [ %i.py, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.pz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i.i32, i1 true) ; 2 uses
  %i.qa = trunc nuw nsw i64 %i.pz to i16
  %i.qb = add i64 %.0810.i.i32, -1
  %i.qc = and i64 %i.qb, %.0810.i.i32             ; 2 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.pz
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !34
  %i.qf = and i64 %i.qe, %i.kw                    ; 2 uses
  %i.qg = shl nuw nsw i16 %i.qa, 6
  %i.qh = insertelement <32 x i16> poison, i16 %i.qg, i64 0
  %i.qi = shufflevector <32 x i16> %i.qh, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.qj = trunc i64 %i.qf to i32                  ; 2 uses
  %i.qk = or disjoint <32 x i16> %i.qi, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.ql = bitcast i32 %i.qj to <32 x i1>
  %i.qm = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.qk, <32 x i16> zeroinitializer, <32 x i1> %i.ql)
  store <32 x i16> %i.qm, ptr %.011.i.i31, align 1, !tbaa !38
  %i.qn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qj)
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %.011.i.i31, i64 %i.qo ; 2 uses
  %i.qq = lshr i64 %i.qf, 32
  %i.qr = trunc nuw i64 %i.qq to i32              ; 2 uses
  %i.qs = or disjoint <32 x i16> %i.qi, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.qt = bitcast i32 %i.qr to <32 x i1>
  %i.qu = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.qs, <32 x i16> zeroinitializer, <32 x i1> %i.qt)
  store <32 x i16> %i.qu, ptr %i.qp, align 1, !tbaa !38
  %i.qv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qr)
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.qw ; 2 uses
  %.not.i25.i33 = icmp eq i64 %i.qc, 0
  br i1 %.not.i25.i33, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i24.i30, !llvm.loop !4

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i24.i30
  %.pre.i34 = load i64, ptr %i.kp, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.qy = phi i64 [ %i.pv, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i34, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i35 = phi ptr [ %i.pu, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.qx, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !34
  %i.rb = and i64 %i.ra, %i.qy                    ; 2 uses
  %.not9.i26.i36 = icmp eq i64 %i.rb, 0
  br i1 %.not9.i26.i36, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i27.i37

.lr.ph.i27.i37:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i27.i37
  %.011.i28.i38 = phi ptr [ %i.sh, %.lr.ph.i27.i37 ], [ %.0.lcssa.i.i35, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i29.i39 = phi i64 [ %i.rf, %.lr.ph.i27.i37 ], [ %i.rb, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.rc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i29.i39, i1 true) ; 2 uses
  %i.rd = trunc nuw nsw i64 %i.rc to i16
  %i.re = add i64 %.0810.i29.i39, -1
  %i.rf = and i64 %i.re, %.0810.i29.i39           ; 2 uses
  %i.rg = load i64, ptr %i.kx, align 8, !tbaa !34
  %i.rh = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.rc ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !44
  %i.rk = load i64, ptr %i.rh, align 16, !tbaa !45
  %i.rl = tail call noundef i64 @llvm.pext.i64(i64 %i.rg, i64 %i.rk)
  %i.rm = and i64 %i.rl, 4294967295
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.rm
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !34
  %i.rp = and i64 %i.ro, %i.kw                    ; 2 uses
  %i.rq = shl nuw nsw i16 %i.rd, 6
  %i.rr = insertelement <32 x i16> poison, i16 %i.rq, i64 0
  %i.rs = shufflevector <32 x i16> %i.rr, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.rt = trunc i64 %i.rp to i32                  ; 2 uses
  %i.ru = or disjoint <32 x i16> %i.rs, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.rv = bitcast i32 %i.rt to <32 x i1>
  %i.rw = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ru, <32 x i16> zeroinitializer, <32 x i1> %i.rv)
  store <32 x i16> %i.rw, ptr %.011.i28.i38, align 1, !tbaa !38
  %i.rx = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.rt)
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %.011.i28.i38, i64 %i.ry ; 2 uses
  %i.sa = lshr i64 %i.rp, 32
  %i.sb = trunc nuw i64 %i.sa to i32              ; 2 uses
  %i.sc = or disjoint <32 x i16> %i.rs, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.sd = bitcast i32 %i.sb to <32 x i1>
  %i.se = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.sc, <32 x i16> zeroinitializer, <32 x i1> %i.sd)
  store <32 x i16> %i.se, ptr %i.rz, align 1, !tbaa !38
  %i.sf = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.sb)
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.rz, i64 %i.sg ; 2 uses
  %.not.i30.i40 = icmp eq i64 %i.rf, 0
  br i1 %.not.i30.i40, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i27.i37, !llvm.loop !5

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i27.i37
  %.pre58.i41 = load i64, ptr %i.kp, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.si = phi i64 [ %i.qy, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre58.i41, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i31.i42 = phi ptr [ %.0.lcssa.i.i35, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.sh, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !34
  %i.sl = and i64 %i.sk, %i.si                    ; 2 uses
  %.not9.i32.i43 = icmp eq i64 %i.sl, 0
  br i1 %.not9.i32.i43, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i33.i44

.lr.ph.i33.i44:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i33.i44
end_hunk_1
begin_hunk_2_@_ZN9Stockfish8generateILNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES3_:bb.a
  %i.tc = insertelement <32 x i16> poison, i16 %i.tb, i64 0
  %i.td = shufflevector <32 x i16> %i.tc, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.te = trunc i64 %i.ta to i32                  ; 2 uses
  %i.tf = or disjoint <32 x i16> %i.td, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.tg = bitcast i32 %i.te to <32 x i1>
  %i.th = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.tf, <32 x i16> zeroinitializer, <32 x i1> %i.tg)
  store <32 x i16> %i.th, ptr %.011.i34.i45, align 1, !tbaa !38
  %i.ti = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.te)
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %.011.i34.i45, i64 %i.tj ; 2 uses
  %i.tl = lshr i64 %i.ta, 32
  %i.tm = trunc nuw i64 %i.tl to i32              ; 2 uses
  %i.tn = or disjoint <32 x i16> %i.td, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.to = bitcast i32 %i.tm to <32 x i1>
  %i.tp = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.tn, <32 x i16> zeroinitializer, <32 x i1> %i.to)
  store <32 x i16> %i.tp, ptr %i.tk, align 1, !tbaa !38
  %i.tq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.tm)
  %i.tr = zext nneg i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.tk, i64 %i.tr ; 2 uses
  %.not.i36.i47 = icmp eq i64 %i.sp, 0
  br i1 %.not.i36.i47, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i33.i44, !llvm.loop !6

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i33.i44
  %.pre59.i48 = load i64, ptr %i.kp, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.tt = phi i64 [ %i.si, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre59.i48, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i37.i49 = phi ptr [ %.0.lcssa.i31.i42, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ts, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !34
  %i.tw = and i64 %i.tv, %i.tt                    ; 2 uses
  %.not9.i38.i50 = icmp eq i64 %i.tw, 0
  br i1 %.not9.i38.i50, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_.exit, label %.lr.ph.i39.i51

.lr.ph.i39.i51:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i39.i51
  %.011.i40.i52 = phi ptr [ %i.vl, %.lr.ph.i39.i51 ], [ %.0.lcssa.i37.i49, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i41.i53 = phi i64 [ %i.ua, %.lr.ph.i39.i51 ], [ %i.tw, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.tx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i41.i53, i1 true) ; 2 uses
  %i.ty = trunc nuw nsw i64 %i.tx to i16
  %i.tz = add i64 %.0810.i41.i53, -1
  %i.ua = and i64 %i.tz, %.0810.i41.i53           ; 2 uses
  %i.ub = load i64, ptr %i.kx, align 8, !tbaa !34 ; 2 uses
  %i.uc = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.tx ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !44
  %i.uf = load i64, ptr %i.uc, align 16, !tbaa !45
  %i.ug = tail call noundef i64 @llvm.pext.i64(i64 %i.ub, i64 %i.uf)
  %i.uh = and i64 %i.ug, 4294967295
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %i.uh
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !34
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !44
  %i.un = load i64, ptr %i.uk, align 16, !tbaa !45
  %i.uo = tail call noundef i64 @llvm.pext.i64(i64 %i.ub, i64 %i.un)
  %i.up = and i64 %i.uo, 4294967295
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.up
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !34
  %i.us = or i64 %i.ur, %i.uj
  %i.ut = and i64 %i.us, %i.kw                    ; 2 uses
  %i.uu = shl nuw nsw i16 %i.ty, 6
  %i.uv = insertelement <32 x i16> poison, i16 %i.uu, i64 0
  %i.uw = shufflevector <32 x i16> %i.uv, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.ux = trunc i64 %i.ut to i32                  ; 2 uses
  %i.uy = or disjoint <32 x i16> %i.uw, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.uz = bitcast i32 %i.ux to <32 x i1>
  %i.va = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.uy, <32 x i16> zeroinitializer, <32 x i1> %i.uz)
  store <32 x i16> %i.va, ptr %.011.i40.i52, align 1, !tbaa !38
  %i.vb = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ux)
  %i.vc = zext nneg i32 %i.vb to i64
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %.011.i40.i52, i64 %i.vc ; 2 uses
  %i.ve = lshr i64 %i.ut, 32
  %i.vf = trunc nuw i64 %i.ve to i32              ; 2 uses
  %i.vg = or disjoint <32 x i16> %i.uw, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.vh = bitcast i32 %i.vf to <32 x i1>
  %i.vi = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.vg, <32 x i16> zeroinitializer, <32 x i1> %i.vh)
  store <32 x i16> %i.vi, ptr %i.vd, align 1, !tbaa !38
  %i.vj = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.vf)
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %i.vk ; 2 uses
  %.not.i42.i54 = icmp eq i64 %i.ua, 0
  br i1 %.not.i42.i54, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i39.i51, !llvm.loop !7

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i39.i51
  %.pre60.i55 = load i64, ptr %i.kp, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_.exit

_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_.exit: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %bb.h, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %bb.b
  %.sink150 = phi i64 [ %i.o, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ], [ %i.o, %bb.b ], [ %i.o, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ks, %bb.h ], [ %i.ks, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ks, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.sink147 = phi i64 [ %.pre60.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ], [ %i.m, %bb.b ], [ %i.iw, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.kq, %bb.h ], [ %i.tt, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre60.i55, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.i56.sink139 = phi ptr [ %i.ko, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ], [ %1, %bb.b ], [ %.0.lcssa.i37.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %1, %bb.h ], [ %.0.lcssa.i37.i49, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.vl, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.vm = trunc nuw nsw i64 %.sink150 to i16
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %.sink150
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !34
  %i.vp = xor i64 %.sink147, -1
  %i.vq = and i64 %i.vo, %i.vp                    ; 2 uses
  %i.vr = shl nuw nsw i16 %i.vm, 6
  %i.vs = insertelement <32 x i16> poison, i16 %i.vr, i64 0
  %i.vt = shufflevector <32 x i16> %i.vs, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.vu = trunc i64 %i.vq to i32                  ; 2 uses
  %i.vv = or disjoint <32 x i16> %i.vt, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.vw = bitcast i32 %i.vu to <32 x i1>
  %i.vx = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.vv, <32 x i16> zeroinitializer, <32 x i1> %i.vw)
  store <32 x i16> %i.vx, ptr %.0.i56.sink139, align 1, !tbaa !38
  %i.vy = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.vu)
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %.0.i56.sink139, i64 %i.vz ; 2 uses
  %i.wb = lshr i64 %i.vq, 32
  %i.wc = trunc nuw i64 %i.wb to i32              ; 2 uses
  %i.wd = or disjoint <32 x i16> %i.vt, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.we = bitcast i32 %i.wc to <32 x i1>
  %i.wf = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.wd, <32 x i16> zeroinitializer, <32 x i1> %i.we)
  store <32 x i16> %i.wf, ptr %i.wa, align 1, !tbaa !38
  %i.wg = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.wc)
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.wa, i64 %i.wh
  ret ptr %i.wi
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %i.j = and i64 %i.i, %i.g
  %i.k = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = trunc nuw nsw i64 %i.k to i16
  %i.m = xor i64 %i.g, -1                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  %i.p = xor i64 %i.o, -1                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34   ; 4 uses
  %i.s = and i64 %i.f, %i.g                       ; 4 uses
  %i.t = and i64 %i.s, 71776119061217280          ; 4 uses
  %i.u = and i64 %i.s, -71776119061217281         ; 2 uses
  %i.v = shl i64 %i.u, 8
  %i.w = and i64 %i.v, %i.p                       ; 3 uses
  %i.x = shl nuw i64 %i.w, 8
  %i.y = and i64 %i.p, 4278190080
  %i.z = and i64 %i.y, %i.x
  %i.aa = trunc i64 %i.w to i32                   ; 2 uses
  %i.ab = bitcast i32 %i.aa to <32 x i1>
  %i.ac = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 73, i16 138, i16 203, i16 268, i16 333, i16 398, i16 463, i16 528, i16 593, i16 658, i16 723, i16 788, i16 853, i16 918, i16 983, i16 1048, i16 1113, i16 1178, i16 1243, i16 1308, i16 1373, i16 1438, i16 1503>, <32 x i16> zeroinitializer, <32 x i1> %i.ab)
  store <32 x i16> %i.ac, ptr %1, align 1, !tbaa !38
  %i.ad = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.aa)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.w, 32
  %i.ah = trunc nuw nsw i64 %i.ag to i32          ; 2 uses
  %i.ai = bitcast i32 %i.ah to <32 x i1>
  %i.aj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1568, i16 1633, i16 1698, i16 1763, i16 1828, i16 1893, i16 1958, i16 2023, i16 2088, i16 2153, i16 2218, i16 2283, i16 2348, i16 2413, i16 2478, i16 2543, i16 2608, i16 2673, i16 2738, i16 2803, i16 2868, i16 2933, i16 2998, i16 3063, i16 3128, i16 3193, i16 3258, i16 3323, i16 3388, i16 3453, i16 3518, i16 3583>, <32 x i16> zeroinitializer, <32 x i1> %i.ai)
  store <32 x i16> %i.aj, ptr %i.af, align 1, !tbaa !38
  %i.ak = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.ah)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.al ; 2 uses
  %i.an = trunc nuw i64 %i.z to i32               ; 2 uses
  %i.ao = bitcast i32 %i.an to <32 x i1>
  %i.ap = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 81, i16 146, i16 211, i16 276, i16 341, i16 406, i16 471, i16 536, i16 601, i16 666, i16 731, i16 796, i16 861, i16 926, i16 991>, <32 x i16> zeroinitializer, <32 x i1> %i.ao)
  store <32 x i16> %i.ap, ptr %i.am, align 1, !tbaa !38
  %i.aq = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.an)
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ar ; 4 uses
  %i.at = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1056, i16 1121, i16 1186, i16 1251, i16 1316, i16 1381, i16 1446, i16 1511, i16 1576, i16 1641, i16 1706, i16 1771, i16 1836, i16 1901, i16 1966, i16 2031, i16 2096, i16 2161, i16 2226, i16 2291, i16 2356, i16 2421, i16 2486, i16 2551, i16 2616, i16 2681, i16 2746, i16 2811, i16 2876, i16 2941, i16 3006, i16 3071>, <32 x i16> zeroinitializer, <32 x i1> zeroinitializer)
  store <32 x i16> %i.at, ptr %i.as, align 1, !tbaa !38
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %.loopexit52.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = shl i64 %i.t, 9
  %i.av = and i64 %i.au, %i.r                     ; 2 uses
  %i.aw = shl nuw nsw i64 %i.t, 7
  %i.ax = and i64 %i.r, 9151314442816847872
  %i.ay = and i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = shl nuw i64 %i.t, 8
  %i.ba = and i64 %i.az, %i.p                     ; 2 uses
  %.not3554.i.i = icmp eq i64 %i.av, 0
  br i1 %.not3554.i.i, label %.preheader53.i.i, label %.lr.ph.i.i

.preheader53.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi ptr [ %i.as, %bb.c ], [ %i.bk, %.lr.ph.i.i ] ; 2 uses
  %.not3657.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not3657.i.i, label %.preheader.i.i, label %.lr.ph60.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.056.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %i.as, %bb.c ] ; 2 uses
  %.05155.i.i = phi i64 [ %i.be, %.lr.ph.i.i ], [ %i.av, %bb.c ] ; 3 uses
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.05155.i.i, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.05155.i.i, -144115188075855872
  %i.be = and i64 %i.bd, %.05155.i.i              ; 2 uses
  %i.bf = shl nuw nsw i16 %i.bc, 6
  %i.bg = add nuw nsw i16 %i.bf, 15808
  %i.bh = and i16 %i.bg, 16320
  %i.bi = or disjoint i16 %i.bc, 8192
  %i.bj = add nuw nsw i16 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.056.i.i, i64 8 ; 2 uses
  %i.bl = insertelement <4 x i16> poison, i16 %i.bj, i64 0
  %i.bm = shufflevector <4 x i16> %i.bl, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bn = add nuw <4 x i16> %i.bm, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.bn, ptr %.056.i.i, align 2, !tbaa !36
  %.not35.i.i = icmp eq i64 %i.be, 0
  br i1 %.not35.i.i, label %.preheader53.i.i, label %.lr.ph.i.i, !llvm.loop !67

.preheader.i.i:                                   ; preds = %.lr.ph60.i.i, %.preheader53.i.i
  %.1.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader53.i.i ], [ %i.bx, %.lr.ph60.i.i ] ; 2 uses
  %.not3762.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not3762.i.i, label %.loopexit52.i.i, label %.lr.ph65.i.i

.lr.ph60.i.i:                                     ; preds = %.preheader53.i.i, %.lr.ph60.i.i
  %.159.i.i = phi ptr [ %i.bx, %.lr.ph60.i.i ], [ %.0.lcssa.i.i, %.preheader53.i.i ] ; 2 uses
  %.05058.i.i = phi i64 [ %i.br, %.lr.ph60.i.i ], [ %i.ay, %.preheader53.i.i ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.05058.i.i, i1 true)
  %i.bp = trunc nuw nsw i64 %i.bo to i16          ; 2 uses
  %i.bq = add nuw i64 %.05058.i.i, 9151314442816847872
  %i.br = and i64 %i.bq, %.05058.i.i              ; 2 uses
  %i.bs = shl nuw nsw i16 %i.bp, 6
  %i.bt = add nuw nsw i16 %i.bs, 15936
  %i.bu = and i16 %i.bt, 16320
  %i.bv = or disjoint i16 %i.bp, 8192
  %i.bw = add nuw nsw i16 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 8 ; 2 uses
  %i.by = insertelement <4 x i16> poison, i16 %i.bw, i64 0
  %i.bz = shufflevector <4 x i16> %i.by, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ca = add nuw <4 x i16> %i.bz, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.ca, ptr %.159.i.i, align 2, !tbaa !36
  %.not36.i.i = icmp eq i64 %i.br, 0
  br i1 %.not36.i.i, label %.preheader.i.i, label %.lr.ph60.i.i, !llvm.loop !68

.lr.ph65.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph65.i.i
  %.264.i.i = phi ptr [ %i.ck, %.lr.ph65.i.i ], [ %.1.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.04963.i.i = phi i64 [ %i.ce, %.lr.ph65.i.i ], [ %i.ba, %.preheader.i.i ] ; 3 uses
  %i.cb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04963.i.i, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i16          ; 2 uses
  %i.cd = add i64 %.04963.i.i, -72057594037927936
  %i.ce = and i64 %i.cd, %.04963.i.i              ; 2 uses
  %i.cf = shl nuw nsw i16 %i.cc, 6
  %i.cg = add nuw nsw i16 %i.cf, 15872
  %i.ch = and i16 %i.cg, 16320
  %i.ci = or disjoint i16 %i.cc, 8192
  %i.cj = add nuw nsw i16 %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.264.i.i, i64 8 ; 2 uses
  %i.cl = insertelement <4 x i16> poison, i16 %i.cj, i64 0
  %i.cm = shufflevector <4 x i16> %i.cl, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cn = add nuw <4 x i16> %i.cm, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.cn, ptr %.264.i.i, align 2, !tbaa !36
  %.not37.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not37.i.i, label %.loopexit52.i.i, label %.lr.ph65.i.i, !llvm.loop !69

.loopexit52.i.i:                                  ; preds = %.lr.ph65.i.i, %.preheader.i.i, %bb.b
  %.3.i.i = phi ptr [ %i.as, %bb.b ], [ %.1.lcssa.i.i, %.preheader.i.i ], [ %i.ck, %.lr.ph65.i.i ] ; 2 uses
  %i.co = shl i64 %i.s, 9
  %i.cp = and i64 %i.r, 71775015237778944
  %i.cq = and i64 %i.cp, %i.co                    ; 2 uses
  %i.cr = shl i64 %i.s, 7
  %i.cs = and i64 %i.r, 35887507618889472
  %i.ct = and i64 %i.cs, %i.cr                    ; 2 uses
  %i.cu = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cv = bitcast i32 %i.cu to <32 x i1>
  %i.cw = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 74, i16 139, i16 204, i16 269, i16 334, i16 399, i16 464, i16 529, i16 594, i16 659, i16 724, i16 789, i16 854, i16 919, i16 984, i16 1049, i16 1114, i16 1179, i16 1244, i16 1309, i16 1374, i16 1439>, <32 x i16> zeroinitializer, <32 x i1> %i.cv)
  store <32 x i16> %i.cw, ptr %.3.i.i, align 1, !tbaa !38
  %i.cx = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.cu)
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i, i64 %i.cy ; 2 uses
  %i.da = lshr i64 %i.cq, 32
  %i.db = trunc nuw nsw i64 %i.da to i32          ; 2 uses
  %i.dc = bitcast i32 %i.db to <32 x i1>
  %i.dd = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1504, i16 1569, i16 1634, i16 1699, i16 1764, i16 1829, i16 1894, i16 1959, i16 2024, i16 2089, i16 2154, i16 2219, i16 2284, i16 2349, i16 2414, i16 2479, i16 2544, i16 2609, i16 2674, i16 2739, i16 2804, i16 2869, i16 2934, i16 2999, i16 3064, i16 3129, i16 3194, i16 3259, i16 3324, i16 3389, i16 3454, i16 3519>, <32 x i16> zeroinitializer, <32 x i1> %i.dc)
  store <32 x i16> %i.dd, ptr %i.cz, align 1, !tbaa !38
  %i.de = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.db)
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.df ; 2 uses
  %i.dh = trunc i64 %i.ct to i32                  ; 2 uses
  %i.di = bitcast i32 %i.dh to <32 x i1>
  %i.dj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 72, i16 137, i16 202, i16 267, i16 332, i16 397, i16 462, i16 527, i16 592, i16 657, i16 722, i16 787, i16 852, i16 917, i16 982, i16 1047, i16 1112, i16 1177, i16 1242, i16 1307, i16 1372, i16 1437, i16 1502, i16 1567>, <32 x i16> zeroinitializer, <32 x i1> %i.di)
  store <32 x i16> %i.dj, ptr %i.dg, align 1, !tbaa !38
  %i.dk = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.dh)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.dl ; 2 uses
  %i.dn = lshr i64 %i.ct, 32
  %i.do = trunc nuw nsw i64 %i.dn to i32          ; 2 uses
  %i.dp = bitcast i32 %i.do to <32 x i1>
  %i.dq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1632, i16 1697, i16 1762, i16 1827, i16 1892, i16 1957, i16 2022, i16 2087, i16 2152, i16 2217, i16 2282, i16 2347, i16 2412, i16 2477, i16 2542, i16 2607, i16 2672, i16 2737, i16 2802, i16 2867, i16 2932, i16 2997, i16 3062, i16 3127, i16 3192, i16 3257, i16 3322, i16 3387, i16 3452, i16 3517, i16 3582, i16 3647>, <32 x i16> zeroinitializer, <32 x i1> %i.dp)
  store <32 x i16> %i.dq, ptr %i.dm, align 1, !tbaa !38
  %i.dr = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.do)
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !39
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 60
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !41  ; 3 uses
  %.not38.i.i = icmp eq i8 %i.dx, 64
  br i1 %.not38.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %.loopexit52.i.i
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 512), i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !34
  %i.eb = and i64 %i.ea, %i.u                     ; 2 uses
  %.not3967.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not3967.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %bb.d
  %i.ec = zext i8 %i.dx to i16
  %i.ed = or disjoint i16 %i.ec, -32768
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph70.i.i
  %.469.i.i = phi ptr [ %i.dt, %.lr.ph70.i.i ], [ %i.ek, %bb.e ] ; 2 uses
  %.04868.i.i = phi i64 [ %i.eb, %.lr.ph70.i.i ], [ %i.eh, %bb.e ] ; 3 uses
  %i.ee = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04868.i.i, i1 true)
  %i.ef = trunc nuw nsw i64 %i.ee to i16
  %i.eg = add i64 %.04868.i.i, -1
  %i.eh = and i64 %i.eg, %.04868.i.i              ; 2 uses
  %i.ei = shl nuw nsw i16 %i.ef, 6
  %i.ej = add nuw nsw i16 %i.ed, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.469.i.i, i64 2 ; 2 uses
  store i16 %i.ej, ptr %.469.i.i, align 2, !tbaa !36
  %.not39.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not39.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.e, !llvm.loop !70

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %bb.e, %bb.d, %.loopexit52.i.i
  %.5.i.i = phi ptr [ %i.dt, %.loopexit52.i.i ], [ %i.dt, %bb.d ], [ %i.ek, %bb.e ] ; 2 uses
  %i.el = load i64, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.en = load i64, ptr %i.em, align 8, !tbaa !34
  %i.eo = and i64 %i.en, %i.el                    ; 2 uses
  %.not9.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not9.i.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i38.i
  %.011.i.i = phi ptr [ %i.fn, %.lr.ph.i38.i ], [ %.5.i.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i.i = phi i64 [ %i.es, %.lr.ph.i38.i ], [ %i.eo, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.ep = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i.i, i1 true) ; 2 uses
  %i.eq = trunc nuw nsw i64 %i.ep to i16
  %i.er = add i64 %.0810.i.i, -1
  %i.es = and i64 %i.er, %.0810.i.i               ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.ep
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !34
  %i.ev = and i64 %i.eu, %i.m                     ; 2 uses
  %i.ew = shl nuw nsw i16 %i.eq, 6
  %i.ex = insertelement <32 x i16> poison, i16 %i.ew, i64 0
  %i.ey = shufflevector <32 x i16> %i.ex, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.ez = trunc i64 %i.ev to i32                  ; 2 uses
  %i.fa = or disjoint <32 x i16> %i.ey, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.fb = bitcast i32 %i.ez to <32 x i1>
  %i.fc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.fa, <32 x i16> zeroinitializer, <32 x i1> %i.fb)
  store <32 x i16> %i.fc, ptr %.011.i.i, align 1, !tbaa !38
  %i.fd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ez)
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.011.i.i, i64 %i.fe ; 2 uses
  %i.fg = lshr i64 %i.ev, 32
  %i.fh = trunc nuw i64 %i.fg to i32              ; 2 uses
  %i.fi = or disjoint <32 x i16> %i.ey, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.fj = bitcast i32 %i.fh to <32 x i1>
  %i.fk = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.fi, <32 x i16> zeroinitializer, <32 x i1> %i.fj)
  store <32 x i16> %i.fk, ptr %i.ff, align 1, !tbaa !38
  %i.fl = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fh)
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.fm ; 2 uses
  %.not.i39.i = icmp eq i64 %i.es, 0
  br i1 %.not.i39.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i38.i, !llvm.loop !0

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i38.i
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.fo = phi i64 [ %i.el, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i40.i = phi ptr [ %.5.i.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.fn, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !34
  %i.fr = and i64 %i.fq, %i.fo                    ; 2 uses
  %.not9.i41.i = icmp eq i64 %i.fr, 0
  br i1 %.not9.i41.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i42.i
  %.011.i43.i = phi ptr [ %i.gx, %.lr.ph.i42.i ], [ %.0.lcssa.i40.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i44.i = phi i64 [ %i.fv, %.lr.ph.i42.i ], [ %i.fr, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i44.i, i1 true) ; 2 uses
  %i.ft = trunc nuw nsw i64 %i.fs to i16
  %i.fu = add i64 %.0810.i44.i, -1
  %i.fv = and i64 %i.fu, %.0810.i44.i             ; 2 uses
  %i.fw = load i64, ptr %i.n, align 8, !tbaa !34
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.fs ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !44
  %i.ga = load i64, ptr %i.fx, align 16, !tbaa !45
  %i.gb = tail call noundef i64 @llvm.pext.i64(i64 %i.fw, i64 %i.ga)
  %i.gc = and i64 %i.gb, 4294967295
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !34
  %i.gf = and i64 %i.ge, %i.m                     ; 2 uses
  %i.gg = shl nuw nsw i16 %i.ft, 6
  %i.gh = insertelement <32 x i16> poison, i16 %i.gg, i64 0
  %i.gi = shufflevector <32 x i16> %i.gh, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.gj = trunc i64 %i.gf to i32                  ; 2 uses
  %i.gk = or disjoint <32 x i16> %i.gi, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.gl = bitcast i32 %i.gj to <32 x i1>
  %i.gm = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gk, <32 x i16> zeroinitializer, <32 x i1> %i.gl)
  store <32 x i16> %i.gm, ptr %.011.i43.i, align 1, !tbaa !38
  %i.gn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gj)
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.011.i43.i, i64 %i.go ; 2 uses
  %i.gq = lshr i64 %i.gf, 32
  %i.gr = trunc nuw i64 %i.gq to i32              ; 2 uses
  %i.gs = or disjoint <32 x i16> %i.gi, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.gt = bitcast i32 %i.gr to <32 x i1>
  %i.gu = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gs, <32 x i16> zeroinitializer, <32 x i1> %i.gt)
  store <32 x i16> %i.gu, ptr %i.gp, align 1, !tbaa !38
  %i.gv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gr)
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.gw ; 2 uses
  %.not.i45.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i45.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i42.i, !llvm.loop !1

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i42.i
  %.pre79.i = load i64, ptr %i.d, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.gy = phi i64 [ %i.fo, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre79.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i46.i = phi ptr [ %.0.lcssa.i40.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.gx, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !34
  %i.hb = and i64 %i.ha, %i.gy                    ; 2 uses
  %.not9.i47.i = icmp eq i64 %i.hb, 0
  br i1 %.not9.i47.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i48.i
  %.011.i49.i = phi ptr [ %i.ii, %.lr.ph.i48.i ], [ %.0.lcssa.i46.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i50.i = phi i64 [ %i.hf, %.lr.ph.i48.i ], [ %i.hb, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.hc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i50.i, i1 true) ; 2 uses
  %i.hd = trunc nuw nsw i64 %i.hc to i16
  %i.he = add i64 %.0810.i50.i, -1
end_hunk_2
begin_hunk_3_@_ZN9Stockfish8generateILNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES3_:bb.a
  %.not.i51.i = icmp eq i64 %i.hf, 0
  br i1 %.not.i51.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i48.i, !llvm.loop !2

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i48.i
  %.pre80.i = load i64, ptr %i.d, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.ij = phi i64 [ %i.gy, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre80.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.lcssa.i52.i = phi ptr [ %.0.lcssa.i46.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ii, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !34
  %i.im = and i64 %i.il, %i.ij                    ; 2 uses
  %.not9.i53.i = icmp eq i64 %i.im, 0
  br i1 %.not9.i53.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i54.i
  %.011.i55.i = phi ptr [ %i.kb, %.lr.ph.i54.i ], [ %.0.lcssa.i52.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i56.i = phi i64 [ %i.iq, %.lr.ph.i54.i ], [ %i.im, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.in = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i56.i, i1 true) ; 2 uses
  %i.io = trunc nuw nsw i64 %i.in to i16
  %i.ip = add i64 %.0810.i56.i, -1
  %i.iq = and i64 %i.ip, %.0810.i56.i             ; 2 uses
  %i.ir = load i64, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  %i.is = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.in ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !44
  %i.iv = load i64, ptr %i.is, align 16, !tbaa !45
  %i.iw = tail call noundef i64 @llvm.pext.i64(i64 %i.ir, i64 %i.iv)
  %i.ix = and i64 %i.iw, 4294967295
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !34
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !44
  %i.jd = load i64, ptr %i.ja, align 16, !tbaa !45
  %i.je = tail call noundef i64 @llvm.pext.i64(i64 %i.ir, i64 %i.jd)
  %i.jf = and i64 %i.je, 4294967295
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !34
  %i.ji = or i64 %i.jh, %i.iz
  %i.jj = and i64 %i.ji, %i.m                     ; 2 uses
  %i.jk = shl nuw nsw i16 %i.io, 6
  %i.jl = insertelement <32 x i16> poison, i16 %i.jk, i64 0
  %i.jm = shufflevector <32 x i16> %i.jl, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.jn = trunc i64 %i.jj to i32                  ; 2 uses
  %i.jo = or disjoint <32 x i16> %i.jm, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.jp = bitcast i32 %i.jn to <32 x i1>
  %i.jq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.jo, <32 x i16> zeroinitializer, <32 x i1> %i.jp)
  store <32 x i16> %i.jq, ptr %.011.i55.i, align 1, !tbaa !38
  %i.jr = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jn)
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %.011.i55.i, i64 %i.js ; 2 uses
  %i.ju = lshr i64 %i.jj, 32
  %i.jv = trunc nuw i64 %i.ju to i32              ; 2 uses
  %i.jw = or disjoint <32 x i16> %i.jm, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.jx = bitcast i32 %i.jv to <32 x i1>
  %i.jy = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.jw, <32 x i16> zeroinitializer, <32 x i1> %i.jx)
  store <32 x i16> %i.jy, ptr %i.jt, align 1, !tbaa !38
  %i.jz = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jv)
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %i.ka ; 2 uses
  %.not.i57.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i57.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i54.i, !llvm.loop !3

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph.i54.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %.0.lcssa.i58.i = phi ptr [ %.0.lcssa.i52.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.kb, %.lr.ph.i54.i ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.k
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !34
  %i.ke = and i64 %i.kd, %i.m                     ; 2 uses
  %i.kf = shl nuw nsw i16 %i.l, 6                 ; 2 uses
  %i.kg = insertelement <32 x i16> poison, i16 %i.kf, i64 0
  %i.kh = shufflevector <32 x i16> %i.kg, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.ki = trunc i64 %i.ke to i32                  ; 2 uses
  %i.kj = or disjoint <32 x i16> %i.kh, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.kk = bitcast i32 %i.ki to <32 x i1>
  %i.kl = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.kj, <32 x i16> zeroinitializer, <32 x i1> %i.kk)
  store <32 x i16> %i.kl, ptr %.0.lcssa.i58.i, align 1, !tbaa !38
  %i.km = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ki)
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i58.i, i64 %i.kn ; 2 uses
  %i.kp = lshr i64 %i.ke, 32
  %i.kq = trunc nuw i64 %i.kp to i32              ; 2 uses
  %i.kr = or disjoint <32 x i16> %i.kh, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.ks = bitcast i32 %i.kq to <32 x i1>
  %i.kt = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.kr, <32 x i16> zeroinitializer, <32 x i1> %i.ks)
  store <32 x i16> %i.kt, ptr %i.ko, align 1, !tbaa !38
  %i.ku = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.kq)
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.kv ; 4 uses
  %i.kx = load ptr, ptr %i.du, align 8, !tbaa !39
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !46 ; 3 uses
  %i.la = and i32 %i.kz, 3
  %.not62.i = icmp eq i32 %i.la, 0
  br i1 %.not62.i, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.lb = load i64, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  %i.lc = or disjoint i16 %i.kf, -16384           ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !34
  %i.lf = and i64 %i.le, %i.lb
  %i.lg = icmp eq i64 %i.lf, 0
  %i.lh = trunc i32 %i.kz to i1
  %or.cond.i = and i1 %i.lg, %i.lh
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 465
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !47
  %i.lk = zext i8 %i.lj to i16
  %i.ll = add nuw nsw i16 %i.lc, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  store i16 %i.ll, ptr %i.kw, align 2, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i = phi ptr [ %i.kw, %bb.f ], [ %i.lm, %bb.g ] ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !34
  %i.lp = and i64 %i.lo, %i.lb
  %i.lq = icmp eq i64 %i.lp, 0
  %i.lr = and i32 %i.kz, 2
  %i.ls = icmp ne i32 %i.lr, 0
  %or.cond.1.i = and i1 %i.ls, %i.lq
  br i1 %or.cond.1.i, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit

bb.i:                                             ; preds = %bb.a
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !34 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !34
  %i.lx = and i64 %i.lw, %i.lu
  %i.ly = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lx, i1 true) ; 2 uses
  %i.lz = trunc nuw nsw i64 %i.ly to i16
  %i.ma = xor i64 %i.lu, -1                       ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !34
  %i.md = xor i64 %i.mc, -1                       ; 3 uses
  %i.me = load i64, ptr %i.d, align 8, !tbaa !34  ; 4 uses
  %i.mf = and i64 %i.f, %i.lu                     ; 5 uses
  %i.mg = and i64 %i.mf, 65280                    ; 3 uses
  %i.mh = and i64 %i.mf, -65281                   ; 2 uses
  %i.mi = lshr i64 %i.mh, 8
  %i.mj = and i64 %i.mi, %i.md                    ; 3 uses
  %i.mk = trunc i64 %i.mj to i32                  ; 2 uses
  %i.ml = bitcast i32 %i.mk to <32 x i1>
  %i.mm = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 512, i16 577, i16 642, i16 707, i16 772, i16 837, i16 902, i16 967, i16 1032, i16 1097, i16 1162, i16 1227, i16 1292, i16 1357, i16 1422, i16 1487, i16 1552, i16 1617, i16 1682, i16 1747, i16 1812, i16 1877, i16 1942, i16 2007, i16 2072, i16 2137, i16 2202, i16 2267, i16 2332, i16 2397, i16 2462, i16 2527>, <32 x i16> zeroinitializer, <32 x i1> %i.ml)
  store <32 x i16> %i.mm, ptr %1, align 1, !tbaa !38
  %i.mn = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.mk)
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.mo ; 2 uses
  %i.mq = lshr i64 %i.mj, 32
  %i.mr = trunc nuw nsw i64 %i.mq to i32          ; 2 uses
  %i.ms = bitcast i32 %i.mr to <32 x i1>
  %i.mt = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2592, i16 2657, i16 2722, i16 2787, i16 2852, i16 2917, i16 2982, i16 3047, i16 3112, i16 3177, i16 3242, i16 3307, i16 3372, i16 3437, i16 3502, i16 3567, i16 3632, i16 3697, i16 3762, i16 3827, i16 3892, i16 3957, i16 4022, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.ms)
  store <32 x i16> %i.mt, ptr %i.mp, align 1, !tbaa !38
  %i.mu = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.mr)
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %i.mv ; 2 uses
  %i.mx = lshr i64 %i.mj, 40
  %i.my = lshr i64 %i.md, 32
  %i.mz = and i64 %i.my, 255
  %i.na = and i64 %i.mz, %i.mx
  %i.nb = trunc nuw nsw i64 %i.na to i32          ; 2 uses
  %i.nc = bitcast i32 %i.nb to <32 x i1>
  %i.nd = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 3104, i16 3169, i16 3234, i16 3299, i16 3364, i16 3429, i16 3494, i16 3559, i16 3624, i16 3689, i16 3754, i16 3819, i16 3884, i16 3949, i16 4014, i16 4079, i16 4080, i16 4081, i16 4082, i16 4083, i16 4084, i16 4085, i16 4086, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.nc)
  store <32 x i16> %i.nd, ptr %i.mw, align 1, !tbaa !38
  %i.ne = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.nb)
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.mw, i64 %i.nf ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.mg, 0
  br i1 %.not.i.i5, label %..loopexit52_crit_edge.i.i, label %bb.j

..loopexit52_crit_edge.i.i:                       ; preds = %bb.i
  %.pre.i.i = lshr i64 %i.mf, 7
  br label %.loopexit52.i.i25

bb.j:                                             ; preds = %bb.i
  %i.nh = lshr i64 %i.mg, 9
  %i.ni = and i64 %i.nh, %i.me                    ; 2 uses
  %i.nj = lshr i64 %i.mf, 7                       ; 3 uses
  %i.nk = and i64 %i.me, 254
  %i.nl = and i64 %i.nk, %i.nj                    ; 2 uses
  %i.nm = lshr exact i64 %i.mg, 8
  %i.nn = and i64 %i.nm, %i.md                    ; 2 uses
  %.not3554.i.i6 = icmp eq i64 %i.ni, 0
  br i1 %.not3554.i.i6, label %.preheader53.i.i11, label %.lr.ph.i.i7

.preheader53.i.i11:                               ; preds = %.lr.ph.i.i7, %bb.j
  %.0.lcssa.i.i12 = phi ptr [ %i.ng, %bb.j ], [ %i.nv, %.lr.ph.i.i7 ] ; 2 uses
  %.not3657.i.i13 = icmp eq i64 %i.nl, 0
  br i1 %.not3657.i.i13, label %.preheader.i.i18, label %.lr.ph60.i.i14

.lr.ph.i.i7:                                      ; preds = %bb.j, %.lr.ph.i.i7
  %.056.i.i8 = phi ptr [ %i.nv, %.lr.ph.i.i7 ], [ %i.ng, %bb.j ] ; 2 uses
  %.05155.i.i9 = phi i64 [ %i.nr, %.lr.ph.i.i7 ], [ %i.ni, %bb.j ] ; 3 uses
  %i.no = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.05155.i.i9, i1 true)
  %i.np = trunc nuw nsw i64 %i.no to i16          ; 2 uses
  %i.nq = add nuw nsw i64 %.05155.i.i9, 127
  %i.nr = and i64 %i.nq, %.05155.i.i9             ; 2 uses
  %i.ns = shl nuw nsw i16 %i.np, 6
  %i.nt = add nuw nsw i16 %i.ns, 576
  %i.nu = or disjoint i16 %i.nt, %i.np
  %i.nv = getelementptr inbounds nuw i8, ptr %.056.i.i8, i64 8 ; 2 uses
  %i.nw = insertelement <4 x i16> poison, i16 %i.nu, i64 0
  %i.nx = shufflevector <4 x i16> %i.nw, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ny = add nuw nsw <4 x i16> %i.nx, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.ny, ptr %.056.i.i8, align 2, !tbaa !36
  %.not35.i.i10 = icmp eq i64 %i.nr, 0
  br i1 %.not35.i.i10, label %.preheader53.i.i11, label %.lr.ph.i.i7, !llvm.loop !71

.preheader.i.i18:                                 ; preds = %.lr.ph60.i.i14, %.preheader53.i.i11
  %.1.lcssa.i.i19 = phi ptr [ %.0.lcssa.i.i12, %.preheader53.i.i11 ], [ %i.og, %.lr.ph60.i.i14 ] ; 2 uses
  %.not3762.i.i20 = icmp eq i64 %i.nn, 0
  br i1 %.not3762.i.i20, label %.loopexit52.i.i25, label %.lr.ph65.i.i21

.lr.ph60.i.i14:                                   ; preds = %.preheader53.i.i11, %.lr.ph60.i.i14
  %.159.i.i15 = phi ptr [ %i.og, %.lr.ph60.i.i14 ], [ %.0.lcssa.i.i12, %.preheader53.i.i11 ] ; 2 uses
  %.05058.i.i16 = phi i64 [ %i.oc, %.lr.ph60.i.i14 ], [ %i.nl, %.preheader53.i.i11 ] ; 3 uses
  %i.nz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.05058.i.i16, i1 true)
  %i.oa = trunc nuw nsw i64 %i.nz to i16          ; 2 uses
  %i.ob = add nuw nsw i64 %.05058.i.i16, 254
  %i.oc = and i64 %i.ob, %.05058.i.i16            ; 2 uses
  %i.od = shl nuw nsw i16 %i.oa, 6
  %i.oe = add nuw nsw i16 %i.od, 448
  %i.of = or disjoint i16 %i.oe, %i.oa
  %i.og = getelementptr inbounds nuw i8, ptr %.159.i.i15, i64 8 ; 2 uses
  %i.oh = insertelement <4 x i16> poison, i16 %i.of, i64 0
  %i.oi = shufflevector <4 x i16> %i.oh, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.oj = add nuw nsw <4 x i16> %i.oi, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.oj, ptr %.159.i.i15, align 2, !tbaa !36
  %.not36.i.i17 = icmp eq i64 %i.oc, 0
  br i1 %.not36.i.i17, label %.preheader.i.i18, label %.lr.ph60.i.i14, !llvm.loop !72

.lr.ph65.i.i21:                                   ; preds = %.preheader.i.i18, %.lr.ph65.i.i21
  %.264.i.i22 = phi ptr [ %i.or, %.lr.ph65.i.i21 ], [ %.1.lcssa.i.i19, %.preheader.i.i18 ] ; 2 uses
  %.04963.i.i23 = phi i64 [ %i.on, %.lr.ph65.i.i21 ], [ %i.nn, %.preheader.i.i18 ] ; 3 uses
  %i.ok = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04963.i.i23, i1 true)
  %i.ol = trunc nuw nsw i64 %i.ok to i16          ; 2 uses
  %i.om = add nuw nsw i64 %.04963.i.i23, 255
  %i.on = and i64 %i.om, %.04963.i.i23            ; 2 uses
  %i.oo = shl nuw nsw i16 %i.ol, 6
  %i.op = add nuw nsw i16 %i.oo, 512
  %i.oq = or disjoint i16 %i.op, %i.ol
  %i.or = getelementptr inbounds nuw i8, ptr %.264.i.i22, i64 8 ; 2 uses
  %i.os = insertelement <4 x i16> poison, i16 %i.oq, i64 0
  %i.ot = shufflevector <4 x i16> %i.os, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ou = add nuw nsw <4 x i16> %i.ot, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.ou, ptr %.264.i.i22, align 2, !tbaa !36
  %.not37.i.i24 = icmp eq i64 %i.on, 0
  br i1 %.not37.i.i24, label %.loopexit52.i.i25, label %.lr.ph65.i.i21, !llvm.loop !73

.loopexit52.i.i25:                                ; preds = %.lr.ph65.i.i21, %.preheader.i.i18, %..loopexit52_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %..loopexit52_crit_edge.i.i ], [ %i.nj, %.preheader.i.i18 ], [ %i.nj, %.lr.ph65.i.i21 ]
  %.3.i.i26 = phi ptr [ %i.ng, %..loopexit52_crit_edge.i.i ], [ %.1.lcssa.i.i19, %.preheader.i.i18 ], [ %i.or, %.lr.ph65.i.i21 ] ; 2 uses
  %i.ov = lshr i64 %i.mf, 9
  %i.ow = and i64 %i.me, 35887507618889472
  %i.ox = and i64 %i.ow, %i.ov                    ; 2 uses
  %i.oy = and i64 %i.me, 71775015237778944
  %i.oz = and i64 %i.oy, %.pre-phi.i.i            ; 2 uses
  %i.pa = trunc i64 %i.ox to i32                  ; 2 uses
  %i.pb = bitcast i32 %i.pa to <32 x i1>
  %i.pc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 576, i16 641, i16 706, i16 771, i16 836, i16 901, i16 966, i16 1031, i16 1096, i16 1161, i16 1226, i16 1291, i16 1356, i16 1421, i16 1486, i16 1551, i16 1616, i16 1681, i16 1746, i16 1811, i16 1876, i16 1941, i16 2006, i16 2071, i16 2136, i16 2201, i16 2266, i16 2331, i16 2396, i16 2461, i16 2526, i16 2591>, <32 x i16> zeroinitializer, <32 x i1> %i.pb)
  store <32 x i16> %i.pc, ptr %.3.i.i26, align 1, !tbaa !38
  %i.pd = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.pa)
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i26, i64 %i.pe ; 2 uses
  %i.pg = lshr i64 %i.ox, 32
  %i.ph = trunc nuw nsw i64 %i.pg to i32          ; 2 uses
  %i.pi = bitcast i32 %i.ph to <32 x i1>
  %i.pj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2656, i16 2721, i16 2786, i16 2851, i16 2916, i16 2981, i16 3046, i16 3111, i16 3176, i16 3241, i16 3306, i16 3371, i16 3436, i16 3501, i16 3566, i16 3631, i16 3696, i16 3761, i16 3826, i16 3891, i16 3956, i16 4021, i16 4086, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.pi)
  store <32 x i16> %i.pj, ptr %i.pf, align 1, !tbaa !38
  %i.pk = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.ph)
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %i.pl ; 2 uses
  %i.pn = trunc i64 %i.oz to i32                  ; 2 uses
  %i.po = bitcast i32 %i.pn to <32 x i1>
  %i.pp = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 448, i16 513, i16 578, i16 643, i16 708, i16 773, i16 838, i16 903, i16 968, i16 1033, i16 1098, i16 1163, i16 1228, i16 1293, i16 1358, i16 1423, i16 1488, i16 1553, i16 1618, i16 1683, i16 1748, i16 1813, i16 1878, i16 1943, i16 2008, i16 2073, i16 2138, i16 2203, i16 2268, i16 2333, i16 2398, i16 2463>, <32 x i16> zeroinitializer, <32 x i1> %i.po)
  store <32 x i16> %i.pp, ptr %i.pm, align 1, !tbaa !38
  %i.pq = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.pn)
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %i.pr ; 2 uses
  %i.pt = lshr i64 %i.oz, 32
  %i.pu = trunc nuw nsw i64 %i.pt to i32          ; 2 uses
  %i.pv = bitcast i32 %i.pu to <32 x i1>
  %i.pw = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2528, i16 2593, i16 2658, i16 2723, i16 2788, i16 2853, i16 2918, i16 2983, i16 3048, i16 3113, i16 3178, i16 3243, i16 3308, i16 3373, i16 3438, i16 3503, i16 3568, i16 3633, i16 3698, i16 3763, i16 3828, i16 3893, i16 3958, i16 4023, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.pv)
  store <32 x i16> %i.pw, ptr %i.ps, align 1, !tbaa !38
  %i.px = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.pu)
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.ps, i64 %i.py ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !39
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 60
  %i.qd = load i8, ptr %i.qc, align 4, !tbaa !41  ; 3 uses
  %.not38.i.i27 = icmp eq i8 %i.qd, 64
  br i1 %.not38.i.i27, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.k

bb.k:                                             ; preds = %.loopexit52.i.i25
  %i.qe = zext i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !34
  %i.qh = and i64 %i.qg, %i.mh                    ; 2 uses
  %.not3967.i.i28 = icmp eq i64 %i.qh, 0
  br i1 %.not3967.i.i28, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph70.i.i29

.lr.ph70.i.i29:                                   ; preds = %bb.k
  %i.qi = zext i8 %i.qd to i16
  %i.qj = or disjoint i16 %i.qi, -32768
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph70.i.i29
  %.469.i.i30 = phi ptr [ %i.pz, %.lr.ph70.i.i29 ], [ %i.qq, %bb.l ] ; 2 uses
  %.04868.i.i31 = phi i64 [ %i.qh, %.lr.ph70.i.i29 ], [ %i.qn, %bb.l ] ; 3 uses
  %i.qk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04868.i.i31, i1 true)
  %i.ql = trunc nuw nsw i64 %i.qk to i16
  %i.qm = add i64 %.04868.i.i31, -1
  %i.qn = and i64 %i.qm, %.04868.i.i31            ; 2 uses
  %i.qo = shl nuw nsw i16 %i.ql, 6
  %i.qp = add nuw nsw i16 %i.qj, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %.469.i.i30, i64 2 ; 2 uses
  store i16 %i.qp, ptr %.469.i.i30, align 2, !tbaa !36
  %.not39.i.i32 = icmp eq i64 %i.qn, 0
  br i1 %.not39.i.i32, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.l, !llvm.loop !74

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %bb.l, %bb.k, %.loopexit52.i.i25
  %.5.i.i33 = phi ptr [ %i.pz, %.loopexit52.i.i25 ], [ %i.pz, %bb.k ], [ %i.qq, %bb.l ] ; 2 uses
  %i.qr = load i64, ptr %i.lt, align 8, !tbaa !34 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !34
  %i.qu = and i64 %i.qt, %i.qr                    ; 2 uses
  %.not9.i.i34 = icmp eq i64 %i.qu, 0
  br i1 %.not9.i.i34, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i38.i35

.lr.ph.i38.i35:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i38.i35
  %.011.i.i36 = phi ptr [ %i.rt, %.lr.ph.i38.i35 ], [ %.5.i.i33, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i.i37 = phi i64 [ %i.qy, %.lr.ph.i38.i35 ], [ %i.qu, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.qv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i.i37, i1 true) ; 2 uses
  %i.qw = trunc nuw nsw i64 %i.qv to i16
  %i.qx = add i64 %.0810.i.i37, -1
  %i.qy = and i64 %i.qx, %.0810.i.i37             ; 2 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.qv
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !34
  %i.rb = and i64 %i.ra, %i.ma                    ; 2 uses
  %i.rc = shl nuw nsw i16 %i.qw, 6
  %i.rd = insertelement <32 x i16> poison, i16 %i.rc, i64 0
  %i.re = shufflevector <32 x i16> %i.rd, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.rf = trunc i64 %i.rb to i32                  ; 2 uses
  %i.rg = or disjoint <32 x i16> %i.re, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.rh = bitcast i32 %i.rf to <32 x i1>
  %i.ri = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.rg, <32 x i16> zeroinitializer, <32 x i1> %i.rh)
  store <32 x i16> %i.ri, ptr %.011.i.i36, align 1, !tbaa !38
  %i.rj = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.rf)
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %.011.i.i36, i64 %i.rk ; 2 uses
  %i.rm = lshr i64 %i.rb, 32
  %i.rn = trunc nuw i64 %i.rm to i32              ; 2 uses
  %i.ro = or disjoint <32 x i16> %i.re, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.rp = bitcast i32 %i.rn to <32 x i1>
  %i.rq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ro, <32 x i16> zeroinitializer, <32 x i1> %i.rp)
  store <32 x i16> %i.rq, ptr %i.rl, align 1, !tbaa !38
  %i.rr = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.rn)
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.rl, i64 %i.rs ; 2 uses
  %.not.i39.i38 = icmp eq i64 %i.qy, 0
  br i1 %.not.i39.i38, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i38.i35, !llvm.loop !4

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i38.i35
  %.pre.i39 = load i64, ptr %i.lt, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.ru = phi i64 [ %i.qr, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i39, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i40.i40 = phi ptr [ %.5.i.i33, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.rt, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !34
  %i.rx = and i64 %i.rw, %i.ru                    ; 2 uses
  %.not9.i41.i41 = icmp eq i64 %i.rx, 0
  br i1 %.not9.i41.i41, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i42.i42

.lr.ph.i42.i42:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i42.i42
  %.011.i43.i43 = phi ptr [ %i.td, %.lr.ph.i42.i42 ], [ %.0.lcssa.i40.i40, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i44.i44 = phi i64 [ %i.sb, %.lr.ph.i42.i42 ], [ %i.rx, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.ry = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i44.i44, i1 true) ; 2 uses
  %i.rz = trunc nuw nsw i64 %i.ry to i16
  %i.sa = add i64 %.0810.i44.i44, -1
  %i.sb = and i64 %i.sa, %.0810.i44.i44           ; 2 uses
  %i.sc = load i64, ptr %i.mb, align 8, !tbaa !34
  %i.sd = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.ry ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !44
  %i.sg = load i64, ptr %i.sd, align 16, !tbaa !45
  %i.sh = tail call noundef i64 @llvm.pext.i64(i64 %i.sc, i64 %i.sg)
  %i.si = and i64 %i.sh, 4294967295
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.si
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !34
  %i.sl = and i64 %i.sk, %i.ma                    ; 2 uses
  %i.sm = shl nuw nsw i16 %i.rz, 6
  %i.sn = insertelement <32 x i16> poison, i16 %i.sm, i64 0
  %i.so = shufflevector <32 x i16> %i.sn, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.sp = trunc i64 %i.sl to i32                  ; 2 uses
  %i.sq = or disjoint <32 x i16> %i.so, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.sr = bitcast i32 %i.sp to <32 x i1>
  %i.ss = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.sq, <32 x i16> zeroinitializer, <32 x i1> %i.sr)
  store <32 x i16> %i.ss, ptr %.011.i43.i43, align 1, !tbaa !38
  %i.st = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.sp)
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %.011.i43.i43, i64 %i.su ; 2 uses
  %i.sw = lshr i64 %i.sl, 32
  %i.sx = trunc nuw i64 %i.sw to i32              ; 2 uses
  %i.sy = or disjoint <32 x i16> %i.so, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.sz = bitcast i32 %i.sx to <32 x i1>
  %i.ta = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.sy, <32 x i16> zeroinitializer, <32 x i1> %i.sz)
  store <32 x i16> %i.ta, ptr %i.sv, align 1, !tbaa !38
  %i.tb = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.sx)
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.sv, i64 %i.tc ; 2 uses
  %.not.i45.i45 = icmp eq i64 %i.sb, 0
  br i1 %.not.i45.i45, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i42.i42, !llvm.loop !5

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i42.i42
  %.pre79.i46 = load i64, ptr %i.lt, align 8, !tbaa !34
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.te = phi i64 [ %i.ru, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre79.i46, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i46.i47 = phi ptr [ %.0.lcssa.i40.i40, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.td, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !34
  %i.th = and i64 %i.tg, %i.te                    ; 2 uses
  %.not9.i47.i48 = icmp eq i64 %i.th, 0
  br i1 %.not9.i47.i48, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i48.i49

.lr.ph.i48.i49:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i48.i49
  %.011.i49.i50 = phi ptr [ %i.uo, %.lr.ph.i48.i49 ], [ %.0.lcssa.i46.i47, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i50.i51 = phi i64 [ %i.tl, %.lr.ph.i48.i49 ], [ %i.th, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.ti = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i50.i51, i1 true) ; 2 uses
  %i.tj = trunc nuw nsw i64 %i.ti to i16
  %i.tk = add i64 %.0810.i50.i51, -1
  %i.tl = and i64 %i.tk, %.0810.i50.i51           ; 2 uses
  %i.tm = load i64, ptr %i.mb, align 8, !tbaa !34
end_hunk_3
