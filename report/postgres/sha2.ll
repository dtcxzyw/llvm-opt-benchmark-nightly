Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/sha2?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@sha256_initial_hash_value = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@sha512_initial_hash_value = internal unnamed_addr constant [8 x i64] [i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809], align 16
@sha384_initial_hash_value = internal unnamed_addr constant [8 x i64] [i64 -3766243637369397544, i64 7105036623409894663, i64 -7973340178411365097, i64 1526699215303891257, i64 7436329637833083697, i64 -8163818279084223215, i64 -2662702644619276377, i64 5167115440072839076], align 16
@sha224_initial_hash_value = internal unnamed_addr constant [8 x i32] [i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599, i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868], align 16
@K256 = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@K512 = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @pg_sha256_init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @sha256_initial_hash_value, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pg_sha256_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = and i64 %i.d, 63                         ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i64 64, %i.e                 ; 5 uses
  %.not40 = icmp ult i64 %2, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e ; 2 uses
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.f, i1 false)
  %i.i = shl nuw nsw i64 %i.f, 3
  %i.j = add i64 %i.i, %i.c
  store i64 %i.j, ptr %i.b, align 8
  %i.k = sub nuw i64 %2, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  tail call fastcc void @SHA256_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %1, i64 %2, i1 false)
  %i.m = shl nuw nsw i64 %2, 3
  %i.n = add i64 %i.c, %i.m
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.b
  %.035 = phi ptr [ %i.l, %bb.d ], [ %1, %bb.b ]  ; 2 uses
  %.0 = phi i64 [ %i.k, %bb.d ], [ %2, %bb.b ]    ; 3 uses
  %i.o = icmp ugt i64 %.0, 63
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.143 = phi i64 [ %i.r, %.lr.ph ], [ %.0, %bb.f ]
  %.13642 = phi ptr [ %i.s, %.lr.ph ], [ %.035, %bb.f ] ; 2 uses
  tail call fastcc void @SHA256_Transform(ptr noundef nonnull %0, ptr noundef %.13642)
  %i.p = load i64, ptr %i.b, align 8
  %i.q = add i64 %i.p, 512
  store i64 %i.q, ptr %i.b, align 8
  %i.r = add i64 %.143, -64                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.13642, i64 64 ; 2 uses
  %i.t = icmp ugt i64 %i.r, 63
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.136.lcssa = phi ptr [ %.035, %bb.f ], [ %i.s, %.lr.ph ]
  %.1.lcssa = phi i64 [ %.0, %bb.f ], [ %i.r, %.lr.ph ] ; 3 uses
  %.not41 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 1 %.136.lcssa, i64 %.1.lcssa, i1 false)
  %i.v = shl nuw nsw i64 %.1.lcssa, 3
  %i.w = load i64, ptr %i.b, align 8
  %i.x = add i64 %i.w, %i.v
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.sink = phi i64 [ %i.x, %bb.g ], [ %i.n, %bb.e ]
  store i64 %.sink, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @SHA256_Transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.0141 = phi ptr [ %i.t, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.0139 = phi i32 [ %i.au, %bb.b ], [ %i.b, %bb.a ] ; 9 uses
  %.0137 = phi i32 [ %.0139, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %.0135 = phi i32 [ %.0137, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %.0133 = phi i32 [ %.0135, %bb.b ], [ %i.h, %bb.a ]
  %.0131 = phi i32 [ %i.at, %bb.b ], [ %i.j, %bb.a ] ; 10 uses
  %.0129 = phi i32 [ %.0131, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %.0127 = phi i32 [ %.0129, %bb.b ], [ %i.n, %bb.a ] ; 3 uses
  %.0125 = phi i32 [ %.0127, %bb.b ], [ %i.p, %bb.a ]
  %i.q = load i32, ptr %.0141, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)  ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.0141, i64 4
  %i.u = tail call i32 @llvm.fshl.i32(i32 %.0131, i32 %.0131, i32 26)
  %i.v = tail call i32 @llvm.fshl.i32(i32 %.0131, i32 %.0131, i32 21)
  %i.w = xor i32 %i.u, %i.v
  %i.x = tail call i32 @llvm.fshl.i32(i32 %.0131, i32 %.0131, i32 7)
  %i.y = xor i32 %i.w, %i.x
  %i.z = add i32 %.0125, %i.y
  %i.aa = and i32 %.0129, %.0131
  %i.ab = xor i32 %.0131, -1
  %i.ac = and i32 %.0127, %i.ab
  %i.ad = or i32 %i.ac, %i.aa
  %i.ae = add i32 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ae, %i.r
  %i.ai = add i32 %i.ah, %i.ag                    ; 2 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %.0139, i32 %.0139, i32 30)
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %.0139, i32 %.0139, i32 19)
  %i.al = xor i32 %i.aj, %i.ak
  %i.am = tail call i32 @llvm.fshl.i32(i32 %.0139, i32 %.0139, i32 10)
  %i.an = xor i32 %i.al, %i.am
  %i.ao = xor i32 %.0135, %.0137
  %i.ap = and i32 %i.ao, %.0139
  %i.aq = and i32 %.0135, %.0137
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = add i32 %i.ar, %i.an
  %i.at = add i32 %i.ai, %.0133                   ; 2 uses
  %i.au = add i32 %i.as, %i.ai                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !6

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.preheader ], [ 16, %bb.b ] ; 5 uses
  %.1140 = phi i32 [ %i.cw, %.preheader ], [ %i.au, %bb.b ] ; 9 uses
  %.1138 = phi i32 [ %.1140, %.preheader ], [ %.0139, %bb.b ] ; 4 uses
  %.1136 = phi i32 [ %.1138, %.preheader ], [ %.0137, %bb.b ] ; 4 uses
  %.1134 = phi i32 [ %.1136, %.preheader ], [ %.0135, %bb.b ]
  %.1132 = phi i32 [ %i.cv, %.preheader ], [ %i.at, %bb.b ] ; 10 uses
  %.1130 = phi i32 [ %.1132, %.preheader ], [ %.0131, %bb.b ] ; 3 uses
  %.1128 = phi i32 [ %.1130, %.preheader ], [ %.0129, %bb.b ] ; 3 uses
  %.1126 = phi i32 [ %.1128, %.preheader ], [ %.0127, %bb.b ]
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 3 uses
  %i.av = and i64 %indvars.iv.next151, 15
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4            ; 5 uses
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 25)
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 14)
  %i.ba = xor i32 %i.ay, %i.az
  %i.bb = lshr i32 %i.ax, 3
  %i.bc = xor i32 %i.ba, %i.bb
  %i.bd = add nuw i64 %indvars.iv150, 14
  %i.be = and i64 %i.bd, 15
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4            ; 5 uses
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 15)
  %i.bi = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 13)
  %i.bj = xor i32 %i.bh, %i.bi
  %i.bk = lshr i32 %i.bg, 10
  %i.bl = xor i32 %i.bj, %i.bk
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %.1132, i32 %.1132, i32 26)
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %.1132, i32 %.1132, i32 21)
  %i.bo = xor i32 %i.bm, %i.bn
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %.1132, i32 %.1132, i32 7)
  %i.bq = xor i32 %i.bo, %i.bp
  %i.br = add i32 %.1126, %i.bq
  %i.bs = and i32 %.1130, %.1132
  %i.bt = xor i32 %.1132, -1
  %i.bu = and i32 %.1128, %i.bt
  %i.bv = or i32 %i.bu, %i.bs
  %i.bw = add i32 %i.br, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %indvars.iv150
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add i32 %i.bw, %i.by
  %i.ca = add nuw i64 %indvars.iv150, 9
  %i.cb = and i64 %i.ca, 15
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = and i64 %indvars.iv150, 15
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = add i32 %i.bc, %i.cd
  %i.ci = add i32 %i.ch, %i.bl
  %i.cj = add i32 %i.ci, %i.cg                    ; 2 uses
  store i32 %i.cj, ptr %i.cf, align 4
  %i.ck = add i32 %i.bz, %i.cj                    ; 2 uses
  %i.cl = tail call i32 @llvm.fshl.i32(i32 %.1140, i32 %.1140, i32 30)
  %i.cm = tail call i32 @llvm.fshl.i32(i32 %.1140, i32 %.1140, i32 19)
  %i.cn = xor i32 %i.cl, %i.cm
  %i.co = tail call i32 @llvm.fshl.i32(i32 %.1140, i32 %.1140, i32 10)
  %i.cp = xor i32 %i.cn, %i.co
  %i.cq = xor i32 %.1136, %.1138
  %i.cr = and i32 %i.cq, %.1140
  %i.cs = and i32 %.1136, %.1138
  %i.ct = xor i32 %i.cr, %i.cs
  %i.cu = add i32 %i.ct, %i.cp
  %i.cv = add i32 %i.ck, %.1134                   ; 2 uses
  %i.cw = add i32 %i.cu, %i.ck                    ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, 64
  br i1 %exitcond153.not, label %bb.c, label %.preheader, !llvm.loop !7

bb.c:                                             ; preds = %.preheader
  %i.cx = add i32 %i.b, %i.cw
  store i32 %i.cx, ptr %0, align 8
  %i.cy = add i32 %i.d, %.1140
  store i32 %i.cy, ptr %i.c, align 4
  %i.cz = add i32 %i.f, %.1138
  store i32 %i.cz, ptr %i.e, align 8
  %i.da = add i32 %i.h, %.1136
  store i32 %i.da, ptr %i.g, align 4
  %i.db = add i32 %i.j, %i.cv
  store i32 %i.db, ptr %i.i, align 8
  %i.dc = add i32 %i.l, %.1132
  store i32 %i.dc, ptr %i.k, align 4
  %i.dd = add i32 %i.n, %.1130
  store i32 %i.dd, ptr %i.m, align 8
  %i.de = add i32 %i.p, %.1128
  store i32 %i.de, ptr %i.o, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pg_sha256_final(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 63                         ; 7 uses
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.b)  ; 3 uses
  store i64 %i.f, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  store i8 -128, ptr %i.j, align 1
  %i.k = icmp samesign ult i32 %i.e, 56
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.n = sub nuw nsw i32 55, %i.e
  %i.o = zext nneg i32 %i.n to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.o, i1 false)
  br label %SHA256_Last.exit

bb.e:                                             ; preds = %bb.c
  %.not29.i = icmp eq i32 %i.e, 63
  br i1 %.not29.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i32 %i.h to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.r = xor i32 %i.e, 63
  %i.s = zext nneg i32 %i.r to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call fastcc void @SHA256_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %SHA256_Last.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false)
  store i8 -128, ptr %i.g, align 8
  br label %SHA256_Last.exit

SHA256_Last.exit:                                 ; preds = %bb.d, %bb.g, %bb.h
  %i.t = phi i64 [ %i.f, %bb.d ], [ %.pre.i, %bb.g ], [ %i.f, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.t, ptr %i.u, align 8
  tail call fastcc void @SHA256_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  %i.v = load <4 x i32>, ptr %0, align 8
  %i.w = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.v)
  store <4 x i32> %i.w, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load <4 x i32>, ptr %i.x, align 8
  %i.z = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.y)
  store <4 x i32> %i.z, ptr %i.x, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %SHA256_Last.exit, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @pg_sha512_init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) @sha512_initial_hash_value, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, i8 0, i64 144, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pg_sha512_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = and i64 %i.d, 127                        ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i64 128, %i.e                ; 5 uses
  %.not51 = icmp ult i64 %2, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e ; 2 uses
  br i1 %.not51, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.f, i1 false)
  %i.i = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.j = add i64 %i.i, %i.c                       ; 2 uses
  store i64 %i.j, ptr %i.b, align 8
  %i.k = icmp ult i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = sub nuw i64 %2, %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  tail call fastcc void @SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %1, i64 %2, i1 false)
  %i.q = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.r = add i64 %i.c, %i.q                       ; 2 uses
  store i64 %i.r, ptr %i.b, align 8
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %.sink.split, label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.b
  %.046 = phi ptr [ %i.p, %bb.f ], [ %1, %bb.b ]  ; 2 uses
  %.0 = phi i64 [ %i.o, %bb.f ], [ %2, %bb.b ]    ; 3 uses
  %i.t = icmp ugt i64 %.0, 127
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.154 = phi i64 [ %.0, %.lr.ph ], [ %i.aa, %bb.k ]
  %.14753 = phi ptr [ %.046, %.lr.ph ], [ %i.ab, %bb.k ] ; 2 uses
  tail call fastcc void @SHA512_Transform(ptr noundef nonnull %0, ptr noundef %.14753)
  %i.v = load i64, ptr %i.b, align 8              ; 2 uses
  %i.w = add i64 %i.v, 1024
  store i64 %i.w, ptr %i.b, align 8
  %i.x = icmp ugt i64 %i.v, -1025
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.u, align 8
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.u, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = add i64 %.154, -128                     ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.14753, i64 128 ; 2 uses
  %i.ac = icmp ugt i64 %i.aa, 127
  br i1 %i.ac, label %bb.i, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %.147.lcssa = phi ptr [ %.046, %bb.h ], [ %i.ab, %bb.k ]
  %.1.lcssa = phi i64 [ %.0, %bb.h ], [ %i.aa, %bb.k ] ; 3 uses
  %.not52 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 1 %.147.lcssa, i64 %.1.lcssa, i1 false)
  %i.ae = shl nuw nsw i64 %.1.lcssa, 3            ; 2 uses
  %i.af = load i64, ptr %i.b, align 8
  %i.ag = add i64 %i.af, %i.ae                    ; 2 uses
  store i64 %i.ag, ptr %i.b, align 8
  %i.ah = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ah, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.l, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %._crit_edge, %bb.l, %bb.g, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @SHA512_Transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.0145 = phi ptr [ %i.r, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.0143 = phi i64 [ %i.as, %bb.b ], [ %i.b, %bb.a ] ; 9 uses
  %.0141 = phi i64 [ %.0143, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %.0139 = phi i64 [ %.0141, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %.0137 = phi i64 [ %.0139, %bb.b ], [ %i.h, %bb.a ]
  %.0135 = phi i64 [ %i.ar, %bb.b ], [ %i.j, %bb.a ] ; 10 uses
  %.0133 = phi i64 [ %.0135, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %.0131 = phi i64 [ %.0133, %bb.b ], [ %i.n, %bb.a ] ; 3 uses
  %.0129 = phi i64 [ %.0131, %bb.b ], [ %i.p, %bb.a ]
  %2 = load i64, ptr %.0145, align 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)      ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %3, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.s = tail call i64 @llvm.fshl.i64(i64 %.0135, i64 %.0135, i64 50)
  %i.t = tail call i64 @llvm.fshl.i64(i64 %.0135, i64 %.0135, i64 46)
  %i.u = xor i64 %i.s, %i.t
  %i.v = tail call i64 @llvm.fshl.i64(i64 %.0135, i64 %.0135, i64 23)
  %i.w = xor i64 %i.u, %i.v
  %i.x = add i64 %.0129, %i.w
  %i.y = and i64 %.0133, %.0135
  %i.z = xor i64 %.0135, -1
  %i.aa = and i64 %.0131, %i.z
  %i.ab = or i64 %i.aa, %i.y
  %i.ac = add i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @K512, i64 %indvars.iv
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ac, %3
  %i.ag = add i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %.0143, i64 %.0143, i64 36)
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %.0143, i64 %.0143, i64 30)
  %i.aj = xor i64 %i.ah, %i.ai
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %.0143, i64 %.0143, i64 25)
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = xor i64 %.0139, %.0141
  %i.an = and i64 %i.am, %.0143
  %i.ao = and i64 %.0139, %.0141
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = add i64 %i.ap, %i.al
  %i.ar = add i64 %i.ag, %.0137                   ; 2 uses
  %i.as = add i64 %i.aq, %i.ag                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !9

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %.preheader ], [ 16, %bb.b ] ; 5 uses
  %.1144 = phi i64 [ %i.cu, %.preheader ], [ %i.as, %bb.b ] ; 9 uses
  %.1142 = phi i64 [ %.1144, %.preheader ], [ %.0143, %bb.b ] ; 4 uses
  %.1140 = phi i64 [ %.1142, %.preheader ], [ %.0141, %bb.b ] ; 4 uses
  %.1138 = phi i64 [ %.1140, %.preheader ], [ %.0139, %bb.b ]
  %.1136 = phi i64 [ %i.ct, %.preheader ], [ %i.ar, %bb.b ] ; 10 uses
  %.1134 = phi i64 [ %.1136, %.preheader ], [ %.0135, %bb.b ] ; 3 uses
  %.1132 = phi i64 [ %.1134, %.preheader ], [ %.0133, %bb.b ] ; 3 uses
  %.1130 = phi i64 [ %.1132, %.preheader ], [ %.0131, %bb.b ]
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 3 uses
  %i.at = and i64 %indvars.iv.next155, 15
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8            ; 5 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 63)
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 56)
  %i.ay = xor i64 %i.aw, %i.ax
  %i.az = lshr i64 %i.av, 7
  %i.ba = xor i64 %i.ay, %i.az
  %i.bb = add nuw i64 %indvars.iv154, 14
  %i.bc = and i64 %i.bb, 15
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8            ; 5 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 45)
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 3)
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = lshr i64 %i.be, 6
  %i.bj = xor i64 %i.bh, %i.bi
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %.1136, i64 %.1136, i64 50)
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %.1136, i64 %.1136, i64 46)
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %.1136, i64 %.1136, i64 23)
  %i.bo = xor i64 %i.bm, %i.bn
  %i.bp = add i64 %.1130, %i.bo
  %i.bq = and i64 %.1134, %.1136
  %i.br = xor i64 %.1136, -1
  %i.bs = and i64 %.1132, %i.br
  %i.bt = or i64 %i.bs, %i.bq
  %i.bu = add i64 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @K512, i64 %indvars.iv154
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bu, %i.bw
  %i.by = add nuw i64 %indvars.iv154, 9
  %i.bz = and i64 %i.by, 15
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %indvars.iv154, 15
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = add i64 %i.ba, %i.cb
  %i.cg = add i64 %i.cf, %i.bj
  %i.ch = add i64 %i.cg, %i.ce                    ; 2 uses
  store i64 %i.ch, ptr %i.cd, align 8
  %i.ci = add i64 %i.bx, %i.ch                    ; 2 uses
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %.1144, i64 %.1144, i64 36)
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %.1144, i64 %.1144, i64 30)
  %i.cl = xor i64 %i.cj, %i.ck
  %i.cm = tail call i64 @llvm.fshl.i64(i64 %.1144, i64 %.1144, i64 25)
  %i.cn = xor i64 %i.cl, %i.cm
  %i.co = xor i64 %.1140, %.1142
  %i.cp = and i64 %i.co, %.1144
  %i.cq = and i64 %.1140, %.1142
  %i.cr = xor i64 %i.cp, %i.cq
  %i.cs = add i64 %i.cr, %i.cn
  %i.ct = add i64 %i.ci, %.1138                   ; 2 uses
  %i.cu = add i64 %i.cs, %i.ci                    ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next155, 80
  br i1 %exitcond157.not, label %bb.c, label %.preheader, !llvm.loop !10

bb.c:                                             ; preds = %.preheader
  %i.cv = add i64 %i.b, %i.cu
  store i64 %i.cv, ptr %0, align 8
  %i.cw = add i64 %i.d, %.1144
  store i64 %i.cw, ptr %i.c, align 8
  %i.cx = add i64 %i.f, %.1142
  store i64 %i.cx, ptr %i.e, align 8
  %i.cy = add i64 %i.h, %.1140
  store i64 %i.cy, ptr %i.g, align 8
  %i.cz = add i64 %i.j, %i.ct
  store i64 %i.cz, ptr %i.i, align 8
  %i.da = add i64 %i.l, %.1136
  store i64 %i.da, ptr %i.k, align 8
  %i.db = add i64 %i.n, %.1134
  store i64 %i.db, ptr %i.m, align 8
  %i.dc = add i64 %i.p, %.1132
  store i64 %i.dc, ptr %i.o, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pg_sha512_final(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 127                        ; 7 uses
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.b)  ; 3 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call i64 @llvm.bswap.i64(i64 %i.h)  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %.not.i = icmp eq i32 %i.e, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.l = zext nneg i32 %i.e to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 -128, ptr %i.m, align 1
  %i.n = icmp samesign ult i32 %i.e, 112
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.k to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = sub nuw nsw i32 111, %i.e
  %i.r = zext nneg i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.r, i1 false)
  br label %SHA512_Last.exit

bb.e:                                             ; preds = %bb.c
  %.not39.i = icmp eq i32 %i.e, 127
  br i1 %.not39.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = zext nneg i32 %i.k to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = xor i32 %i.e, 127
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call fastcc void @SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.j, i8 0, i64 112, i1 false)
  %.pre.i = load i64, ptr %i.g, align 8
  %.pre40.i = load i64, ptr %i.a, align 8
  br label %SHA512_Last.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, i8 0, i64 112, i1 false)
  store i8 -128, ptr %i.j, align 8
  br label %SHA512_Last.exit

SHA512_Last.exit:                                 ; preds = %bb.d, %bb.g, %bb.h
  %i.w = phi i64 [ %i.f, %bb.d ], [ %.pre40.i, %bb.g ], [ %i.f, %bb.h ]
  %i.x = phi i64 [ %i.i, %bb.d ], [ %.pre.i, %bb.g ], [ %i.i, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.w, ptr %i.z, align 8
  tail call fastcc void @SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  %i.aa = load i64, ptr %0, align 8
  %i.ab = tail call i64 @llvm.bswap.i64(i64 %i.aa)
  store i64 %i.ab, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = tail call i64 @llvm.bswap.i64(i64 %i.ad)
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = tail call i64 @llvm.bswap.i64(i64 %i.ag)
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.aj)
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call i64 @llvm.bswap.i64(i64 %i.am)
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = tail call i64 @llvm.bswap.i64(i64 %i.ap)
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
end_hunk_0
