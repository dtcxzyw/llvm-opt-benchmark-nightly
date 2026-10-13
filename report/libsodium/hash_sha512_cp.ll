Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/hash_sha512_cp?download=true
inline.NumInlined: 167
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypto_hash_sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }

@crypto_hash_sha512_init.sha512_initial_state = internal constant [8 x i64] [i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809], align 16
@Krnd = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16
@PAD = internal unnamed_addr constant <{ i8, [127 x i8] }> <{ i8 -128, [127 x i8] zeroinitializer }>, align 16

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define dso_local noundef i32 @crypto_hash_sha512_init(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) @crypto_hash_sha512_init.sha512_initial_state, i64 noundef 64, i1 noundef false) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_hash_sha512_update(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i64], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = lshr i64 %i.e, 3                         ; 2 uses
  %i.g = and i64 %i.f, 127                        ; 7 uses
  %i.h = shl i64 %2, 3                            ; 2 uses
  %i.i = lshr i64 %2, 61
  %i.j = add i64 %i.e, %i.h                       ; 2 uses
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp ult i64 %i.j, %i.h
  %.pre = load i64, ptr %i.c, align 8
  %i.l = zext i1 %i.k to i64
  %spec.select = add i64 %.pre, %i.l
  %i.m = add i64 %spec.select, %i.i
  store i64 %i.m, ptr %i.c, align 8
  %i.n = sub nuw nsw i64 128, %i.g                ; 9 uses
  %i.o = icmp ult i64 %2, %i.n
  %i.p = getelementptr i8, ptr %0, i64 80         ; 9 uses
  %i.q = getelementptr i8, ptr %i.p, i64 %i.g     ; 34 uses
  br i1 %i.o, label %iter.check118, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp samesign ugt i64 %i.g, 124
  br i1 %min.iters.check, label %.preheader51.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %3 = ptrtoaddr ptr %0 to i64
  %4 = ptrtoaddr ptr %1 to i64
  %i.r = add i64 %i.g, %3
  %i.s = sub i64 %i.r, %4
  %i.t = add i64 %i.s, 79
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %.preheader51.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check67 = icmp samesign ugt i64 %i.g, 96
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 224                      ; 6 uses
  %i.v = getelementptr i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1
  %wide.load68 = load <16 x i8>, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %i.q, i64 16
  store <16 x i8> %wide.load, ptr %i.q, align 1
  store <16 x i8> %wide.load68, ptr %i.w, align 1
  %i.x = icmp eq i64 %n.vec, 32
  br i1 %i.x, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.y = getelementptr i8, ptr %1, i64 32
  %i.z = getelementptr i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.y, align 1
  %wide.load68.1 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %i.q, i64 32
  %i.ab = getelementptr i8, ptr %i.q, i64 48
  store <16 x i8> %wide.load.1, ptr %i.aa, align 1
  store <16 x i8> %wide.load68.1, ptr %i.ab, align 1
  %i.ac = icmp eq i64 %n.vec, 64
  br i1 %i.ac, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ad = getelementptr i8, ptr %1, i64 64
  %i.ae = getelementptr i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.ad, align 1
  %wide.load68.2 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = getelementptr i8, ptr %i.q, i64 64
  %i.ag = getelementptr i8, ptr %i.q, i64 80
  store <16 x i8> %wide.load.2, ptr %i.af, align 1
  store <16 x i8> %wide.load68.2, ptr %i.ag, align 1
  %i.ah = icmp eq i64 %n.vec, 96
  br i1 %i.ah, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ai = getelementptr i8, ptr %1, i64 96
  %i.aj = getelementptr i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.ai, align 1
  %wide.load68.3 = load <16 x i8>, ptr %i.aj, align 1
  %i.ak = getelementptr i8, ptr %i.q, i64 96
  %i.al = getelementptr i8, ptr %i.q, i64 112
  store <16 x i8> %wide.load.3, ptr %i.ak, align 1
  store <16 x i8> %wide.load68.3, ptr %i.al, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit131, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.preheader51.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec69 = and i64 %i.n, 252                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %i.am = getelementptr i8, ptr %1, i64 %index70
  %wide.load71 = load <4 x i8>, ptr %i.am, align 1
  %i.an = getelementptr i8, ptr %i.q, i64 %index70
  store <4 x i8> %wide.load71, ptr %i.an, align 1
  %index.next72 = add nuw i64 %index70, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next72, %n.vec69
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n73 = icmp eq i64 %i.n, %n.vec69
  br i1 %cmp.n73, label %.loopexit131, label %.preheader51.preheader

.preheader51.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.152.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec69, %vec.epilog.middle.block ] ; 3 uses
  %i.ap = sub nsw i64 0, %i.f
  %i.aq = add nuw nsw i64 %.152.ph, %i.g
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader51.prol.loopexit, label %.preheader51.prol

.preheader51.prol:                                ; preds = %.preheader51.preheader, %.preheader51.prol
  %.152.prol = phi i64 [ %i.au, %.preheader51.prol ], [ %.152.ph, %.preheader51.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader51.prol ], [ 0, %.preheader51.preheader ]
  %i.ar = getelementptr i8, ptr %1, i64 %.152.prol
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %i.q, i64 %.152.prol
  store i8 %i.as, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %.152.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader51.prol.loopexit, label %.preheader51.prol, !llvm.loop !6

.preheader51.prol.loopexit:                       ; preds = %.preheader51.prol, %.preheader51.preheader
  %.152.unr = phi i64 [ %.152.ph, %.preheader51.preheader ], [ %i.au, %.preheader51.prol ]
  %i.av = add nsw i64 %i.aq, -125
  %i.aw = icmp ult i64 %i.av, 3
  br i1 %i.aw, label %.loopexit131, label %.preheader51

iter.check118:                                    ; preds = %bb.b
  %min.iters.check105 = icmp ult i64 %2, 4
  br i1 %min.iters.check105, label %.preheader.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %iter.check118
  %5 = ptrtoaddr ptr %0 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.ax = add i64 %i.g, %5
  %i.ay = sub i64 %i.ax, %6
  %i.az = add i64 %i.ay, 79
  %diff.check104 = icmp ult i64 %i.az, 15
  br i1 %diff.check104, label %.preheader.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %vector.memcheck103
  %min.iters.check107 = icmp ult i64 %2, 16
  br i1 %min.iters.check107, label %vec.epilog.ph122, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.ba = and i64 %2, 12
  %n.vec109 = and i64 %2, -16                     ; 9 uses
  %i.bb = getelementptr i8, ptr %1, i64 8
  %wide.load112 = load <8 x i8>, ptr %1, align 1
  %wide.load113 = load <8 x i8>, ptr %i.bb, align 1
  %i.bc = getelementptr i8, ptr %i.q, i64 8
  store <8 x i8> %wide.load112, ptr %i.q, align 1
  store <8 x i8> %wide.load113, ptr %i.bc, align 1
  %i.bd = icmp eq i64 %n.vec109, 16
  br i1 %i.bd, label %middle.block115, label %vector.body110.1

vector.body110.1:                                 ; preds = %vector.ph108
  %i.be = getelementptr i8, ptr %1, i64 16
  %i.bf = getelementptr i8, ptr %1, i64 24
  %wide.load112.1 = load <8 x i8>, ptr %i.be, align 1
  %wide.load113.1 = load <8 x i8>, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %i.q, i64 16
  %i.bh = getelementptr i8, ptr %i.q, i64 24
  store <8 x i8> %wide.load112.1, ptr %i.bg, align 1
  store <8 x i8> %wide.load113.1, ptr %i.bh, align 1
  %i.bi = icmp eq i64 %n.vec109, 32
  br i1 %i.bi, label %middle.block115, label %vector.body110.2

vector.body110.2:                                 ; preds = %vector.body110.1
  %i.bj = getelementptr i8, ptr %1, i64 32
  %i.bk = getelementptr i8, ptr %1, i64 40
  %wide.load112.2 = load <8 x i8>, ptr %i.bj, align 1
  %wide.load113.2 = load <8 x i8>, ptr %i.bk, align 1
  %i.bl = getelementptr i8, ptr %i.q, i64 32
  %i.bm = getelementptr i8, ptr %i.q, i64 40
  store <8 x i8> %wide.load112.2, ptr %i.bl, align 1
  store <8 x i8> %wide.load113.2, ptr %i.bm, align 1
  %i.bn = icmp eq i64 %n.vec109, 48
  br i1 %i.bn, label %middle.block115, label %vector.body110.3

vector.body110.3:                                 ; preds = %vector.body110.2
  %i.bo = getelementptr i8, ptr %1, i64 48
  %i.bp = getelementptr i8, ptr %1, i64 56
  %wide.load112.3 = load <8 x i8>, ptr %i.bo, align 1
  %wide.load113.3 = load <8 x i8>, ptr %i.bp, align 1
  %i.bq = getelementptr i8, ptr %i.q, i64 48
  %i.br = getelementptr i8, ptr %i.q, i64 56
  store <8 x i8> %wide.load112.3, ptr %i.bq, align 1
  store <8 x i8> %wide.load113.3, ptr %i.br, align 1
  %i.bs = icmp eq i64 %n.vec109, 64
  br i1 %i.bs, label %middle.block115, label %vector.body110.4

vector.body110.4:                                 ; preds = %vector.body110.3
  %i.bt = getelementptr i8, ptr %1, i64 64
  %i.bu = getelementptr i8, ptr %1, i64 72
  %wide.load112.4 = load <8 x i8>, ptr %i.bt, align 1
  %wide.load113.4 = load <8 x i8>, ptr %i.bu, align 1
  %i.bv = getelementptr i8, ptr %i.q, i64 64
  %i.bw = getelementptr i8, ptr %i.q, i64 72
  store <8 x i8> %wide.load112.4, ptr %i.bv, align 1
  store <8 x i8> %wide.load113.4, ptr %i.bw, align 1
  %i.bx = icmp eq i64 %n.vec109, 80
  br i1 %i.bx, label %middle.block115, label %vector.body110.5

vector.body110.5:                                 ; preds = %vector.body110.4
  %i.by = getelementptr i8, ptr %1, i64 80
  %i.bz = getelementptr i8, ptr %1, i64 88
  %wide.load112.5 = load <8 x i8>, ptr %i.by, align 1
  %wide.load113.5 = load <8 x i8>, ptr %i.bz, align 1
  %i.ca = getelementptr i8, ptr %i.q, i64 80
  %i.cb = getelementptr i8, ptr %i.q, i64 88
  store <8 x i8> %wide.load112.5, ptr %i.ca, align 1
  store <8 x i8> %wide.load113.5, ptr %i.cb, align 1
  %i.cc = icmp eq i64 %n.vec109, 96
  br i1 %i.cc, label %middle.block115, label %vector.body110.6

vector.body110.6:                                 ; preds = %vector.body110.5
  %i.cd = getelementptr i8, ptr %1, i64 96
  %i.ce = getelementptr i8, ptr %1, i64 104
  %wide.load112.6 = load <8 x i8>, ptr %i.cd, align 1
  %wide.load113.6 = load <8 x i8>, ptr %i.ce, align 1
  %i.cf = getelementptr i8, ptr %i.q, i64 96
  %i.cg = getelementptr i8, ptr %i.q, i64 104
  store <8 x i8> %wide.load112.6, ptr %i.cf, align 1
  store <8 x i8> %wide.load113.6, ptr %i.cg, align 1
  br label %middle.block115

middle.block115:                                  ; preds = %vector.body110.6, %vector.body110.5, %vector.body110.4, %vector.body110.3, %vector.body110.2, %vector.body110.1, %vector.ph108
  %cmp.n116 = icmp eq i64 %2, %n.vec109
  br i1 %cmp.n116, label %.loopexit, label %vec.epilog.iter.check120

vec.epilog.iter.check120:                         ; preds = %middle.block115
  %min.epilog.iters.check121 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check121, label %.preheader.preheader, label %vec.epilog.ph122, !prof !20

vec.epilog.ph122:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check120
  %vec.epilog.resume.val117 = phi i64 [ %n.vec109, %vec.epilog.iter.check120 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec123 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph122
  %index125 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph122 ], [ %index.next127, %vec.epilog.vector.body124 ] ; 3 uses
  %i.ch = getelementptr i8, ptr %1, i64 %index125
  %wide.load126 = load <4 x i8>, ptr %i.ch, align 1
  %i.ci = getelementptr i8, ptr %i.q, i64 %index125
  store <4 x i8> %wide.load126, ptr %i.ci, align 1
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.cj, label %vec.epilog.middle.block128, label %vec.epilog.vector.body124, !llvm.loop !7

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body124
  %cmp.n129 = icmp eq i64 %2, %n.vec123
  br i1 %cmp.n129, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check118, %vector.memcheck103, %vec.epilog.iter.check120, %vec.epilog.middle.block128
  %.058.ph = phi i64 [ 0, %iter.check118 ], [ 0, %vector.memcheck103 ], [ %n.vec109, %vec.epilog.iter.check120 ], [ %n.vec123, %vec.epilog.middle.block128 ] ; 3 uses
  %xtraiter136 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.058.prol = phi i64 [ %i.cn, %.preheader.prol ], [ %.058.ph, %.preheader.preheader ] ; 3 uses
  %prol.iter138 = phi i64 [ %prol.iter138.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ck = getelementptr i8, ptr %1, i64 %.058.prol
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = getelementptr i8, ptr %i.q, i64 %.058.prol
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = add nuw nsw i64 %.058.prol, 1           ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.058.unr = phi i64 [ %.058.ph, %.preheader.preheader ], [ %i.cn, %.preheader.prol ]
  %i.co = sub i64 %.058.ph, %2
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.058 = phi i64 [ %i.df, %.preheader ], [ %.058.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr i8, ptr %1, i64 %.058
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = getelementptr i8, ptr %i.q, i64 %.058
  store i8 %i.cr, ptr %i.cs, align 1
  %i.ct = add nuw nsw i64 %.058, 1                ; 2 uses
  %i.cu = getelementptr i8, ptr %1, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr i8, ptr %i.q, i64 %i.ct
  store i8 %i.cv, ptr %i.cw, align 1
  %i.cx = add nuw nsw i64 %.058, 2                ; 2 uses
  %i.cy = getelementptr i8, ptr %1, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = getelementptr i8, ptr %i.q, i64 %i.cx
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = add nuw nsw i64 %.058, 3                ; 2 uses
  %i.dc = getelementptr i8, ptr %1, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr i8, ptr %i.q, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = add nuw nsw i64 %.058, 4                ; 2 uses
  %exitcond61.not.3 = icmp eq i64 %i.df, %2
  br i1 %exitcond61.not.3, label %.loopexit, label %.preheader, !llvm.loop !9

.preheader51:                                     ; preds = %.preheader51.prol.loopexit, %.preheader51
  %.152 = phi i64 [ %i.dv, %.preheader51 ], [ %.152.unr, %.preheader51.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr i8, ptr %1, i64 %.152
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr i8, ptr %i.q, i64 %.152
  store i8 %i.dh, ptr %i.di, align 1
  %i.dj = add nuw nsw i64 %.152, 1                ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = getelementptr i8, ptr %i.q, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1
  %i.dn = add nuw nsw i64 %.152, 2                ; 2 uses
  %i.do = getelementptr i8, ptr %1, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = getelementptr i8, ptr %i.q, i64 %i.dn
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = add nuw nsw i64 %.152, 3                ; 2 uses
  %i.ds = getelementptr i8, ptr %1, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = getelementptr i8, ptr %i.q, i64 %i.dr
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = add nuw nsw i64 %.152, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dv, %i.n
  br i1 %exitcond.not.3, label %.loopexit131, label %.preheader51, !llvm.loop !10

.loopexit131:                                     ; preds = %.preheader51.prol.loopexit, %.preheader51, %vec.epilog.middle.block, %middle.block
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 640 ; 2 uses
  call fastcc void @SHA512_Transform(ptr noundef %0, ptr noundef %i.p, ptr noundef %i.a, ptr noundef nonnull %i.dw)
  %i.dx = getelementptr i8, ptr %1, i64 %i.n      ; 2 uses
  %i.dy = sub nuw i64 %2, %i.n                    ; 3 uses
  %i.dz = icmp ugt i64 %i.dy, 127
  br i1 %i.dz, label %.lr.ph, label %.preheader50

.preheader50:                                     ; preds = %.lr.ph, %.loopexit131
  %.046.lcssa = phi ptr [ %i.dx, %.loopexit131 ], [ %i.er, %.lr.ph ] ; 8 uses
  %.045.lcssa = phi i64 [ %i.dy, %.loopexit131 ], [ %i.es, %.lr.ph ] ; 11 uses
  %.not = icmp eq i64 %.045.lcssa, 0
  br i1 %.not, label %._crit_edge, label %iter.check90

iter.check90:                                     ; preds = %.preheader50
  %min.iters.check77 = icmp samesign ult i64 %.045.lcssa, 4
  br i1 %min.iters.check77, label %.lr.ph57.preheader, label %vector.memcheck74

vector.memcheck74:                                ; preds = %iter.check90
  %7 = ptrtoaddr ptr %0 to i64
  %8 = ptrtoaddr ptr %.046.lcssa to i64
  %i.ea = sub i64 %7, %8
  %i.eb = add i64 %i.ea, 79
  %diff.check76 = icmp ult i64 %i.eb, 31
  br i1 %diff.check76, label %.lr.ph57.preheader, label %vector.main.loop.iter.check78

vector.main.loop.iter.check78:                    ; preds = %vector.memcheck74
  %min.iters.check79 = icmp samesign ult i64 %.045.lcssa, 32
  br i1 %min.iters.check79, label %vec.epilog.ph94, label %vector.ph80

vector.ph80:                                      ; preds = %vector.main.loop.iter.check78
  %i.ec = and i64 %.045.lcssa, 28
  %n.vec81 = and i64 %.045.lcssa, 96              ; 4 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.ph80, %vector.body82
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next86, %vector.body82 ] ; 3 uses
  %i.ed = getelementptr i8, ptr %.046.lcssa, i64 %index83 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  %wide.load84 = load <16 x i8>, ptr %i.ed, align 1
  %wide.load85 = load <16 x i8>, ptr %i.ee, align 1
  %i.ef = getelementptr i8, ptr %i.p, i64 %index83 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  store <16 x i8> %wide.load84, ptr %i.ef, align 1
  store <16 x i8> %wide.load85, ptr %i.eg, align 1
  %index.next86 = add nuw i64 %index83, 32        ; 2 uses
  %i.eh = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.eh, label %middle.block87, label %vector.body82, !llvm.loop !11

middle.block87:                                   ; preds = %vector.body82
  %cmp.n88 = icmp eq i64 %.045.lcssa, %n.vec81
  br i1 %cmp.n88, label %._crit_edge, label %vec.epilog.iter.check92

vec.epilog.iter.check92:                          ; preds = %middle.block87
  %min.epilog.iters.check93 = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check93, label %.lr.ph57.preheader, label %vec.epilog.ph94, !prof !16

vec.epilog.ph94:                                  ; preds = %vector.main.loop.iter.check78, %vec.epilog.iter.check92
  %vec.epilog.resume.val89 = phi i64 [ %n.vec81, %vec.epilog.iter.check92 ], [ 0, %vector.main.loop.iter.check78 ]
  %n.vec95 = and i64 %.045.lcssa, 124             ; 3 uses
  br label %vec.epilog.vector.body96

vec.epilog.vector.body96:                         ; preds = %vec.epilog.vector.body96, %vec.epilog.ph94
  %index97 = phi i64 [ %vec.epilog.resume.val89, %vec.epilog.ph94 ], [ %index.next99, %vec.epilog.vector.body96 ] ; 3 uses
  %i.ei = getelementptr i8, ptr %.046.lcssa, i64 %index97
  %wide.load98 = load <4 x i8>, ptr %i.ei, align 1
  %i.ej = getelementptr i8, ptr %i.p, i64 %index97
  store <4 x i8> %wide.load98, ptr %i.ej, align 1
  %index.next99 = add nuw i64 %index97, 4         ; 2 uses
  %i.ek = icmp eq i64 %index.next99, %n.vec95
  br i1 %i.ek, label %vec.epilog.middle.block100, label %vec.epilog.vector.body96, !llvm.loop !12

vec.epilog.middle.block100:                       ; preds = %vec.epilog.vector.body96
  %cmp.n101 = icmp eq i64 %.045.lcssa, %n.vec95
  br i1 %cmp.n101, label %._crit_edge, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %iter.check90, %vector.memcheck74, %vec.epilog.iter.check92, %vec.epilog.middle.block100
  %.256.ph = phi i64 [ 0, %iter.check90 ], [ 0, %vector.memcheck74 ], [ %n.vec81, %vec.epilog.iter.check92 ], [ %n.vec95, %vec.epilog.middle.block100 ] ; 3 uses
  %xtraiter133 = and i64 %.045.lcssa, 3           ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol

.lr.ph57.prol:                                    ; preds = %.lr.ph57.preheader, %.lr.ph57.prol
  %.256.prol = phi i64 [ %i.eo, %.lr.ph57.prol ], [ %.256.ph, %.lr.ph57.preheader ] ; 3 uses
  %prol.iter135 = phi i64 [ %prol.iter135.next, %.lr.ph57.prol ], [ 0, %.lr.ph57.preheader ]
  %i.el = getelementptr i8, ptr %.046.lcssa, i64 %.256.prol
  %i.em = load i8, ptr %i.el, align 1
  %i.en = getelementptr i8, ptr %i.p, i64 %.256.prol
  store i8 %i.em, ptr %i.en, align 1
  %i.eo = add nuw nsw i64 %.256.prol, 1           ; 2 uses
  %prol.iter135.next = add i64 %prol.iter135, 1   ; 2 uses
  %prol.iter135.cmp.not = icmp eq i64 %prol.iter135.next, %xtraiter133
  br i1 %prol.iter135.cmp.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol, !llvm.loop !13

.lr.ph57.prol.loopexit:                           ; preds = %.lr.ph57.prol, %.lr.ph57.preheader
  %.256.unr = phi i64 [ %.256.ph, %.lr.ph57.preheader ], [ %i.eo, %.lr.ph57.prol ]
  %i.ep = sub nsw i64 %.256.ph, %.045.lcssa
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %._crit_edge, label %.lr.ph57

.lr.ph:                                           ; preds = %.loopexit131, %.lr.ph
  %.04554 = phi i64 [ %i.es, %.lr.ph ], [ %i.dy, %.loopexit131 ]
  %.04653 = phi ptr [ %i.er, %.lr.ph ], [ %i.dx, %.loopexit131 ] ; 2 uses
  call fastcc void @SHA512_Transform(ptr noundef %0, ptr noundef %.04653, ptr noundef %i.a, ptr noundef nonnull %i.dw)
  %i.er = getelementptr i8, ptr %.04653, i64 128  ; 2 uses
  %i.es = add i64 %.04554, -128                   ; 3 uses
  %i.et = icmp ugt i64 %i.es, 127
  br i1 %i.et, label %.lr.ph, label %.preheader50, !llvm.loop !14

.lr.ph57:                                         ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57
  %.256 = phi i64 [ %i.fj, %.lr.ph57 ], [ %.256.unr, %.lr.ph57.prol.loopexit ] ; 6 uses
  %i.eu = getelementptr i8, ptr %.046.lcssa, i64 %.256
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = getelementptr i8, ptr %i.p, i64 %.256
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = add nuw nsw i64 %.256, 1                ; 2 uses
  %i.ey = getelementptr i8, ptr %.046.lcssa, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = getelementptr i8, ptr %i.p, i64 %i.ex
  store i8 %i.ez, ptr %i.fa, align 1
  %i.fb = add nuw nsw i64 %.256, 2                ; 2 uses
  %i.fc = getelementptr i8, ptr %.046.lcssa, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = getelementptr i8, ptr %i.p, i64 %i.fb
  store i8 %i.fd, ptr %i.fe, align 1
  %i.ff = add nuw nsw i64 %.256, 3                ; 2 uses
  %i.fg = getelementptr i8, ptr %.046.lcssa, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = getelementptr i8, ptr %i.p, i64 %i.ff
  store i8 %i.fh, ptr %i.fi, align 1
  %i.fj = add nuw nsw i64 %.256, 4                ; 2 uses
  %exitcond60.not.3 = icmp eq i64 %i.fj, %.045.lcssa
  br i1 %exitcond60.not.3, label %._crit_edge, label %.lr.ph57, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57, %middle.block87, %vec.epilog.middle.block100, %.preheader50
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 704) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block115, %vec.epilog.middle.block128, %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define internal fastcc void @SHA512_Transform(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi i64 [ 0, %bb.a ], [ %i.ao, %bb.b ] ; 3 uses
  %i.a = shl nuw nsw i64 %.06.i, 3
  %i.b = getelementptr i8, ptr %1, i64 %i.a       ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 7
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr %i.b, i64 6
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = or disjoint i64 %i.i, %i.e
  %i.k = getelementptr i8, ptr %i.b, i64 5
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 16
  %i.o = or disjoint i64 %i.j, %i.n
  %i.p = getelementptr i8, ptr %i.b, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 24
  %i.t = or disjoint i64 %i.o, %i.s
  %i.u = getelementptr i8, ptr %i.b, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = or disjoint i64 %i.t, %i.x
  %i.z = getelementptr i8, ptr %i.b, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = or i64 %i.y, %i.ac
  %i.ae = getelementptr i8, ptr %i.b, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 48
  %i.ai = or i64 %i.ad, %i.ah
  %i.aj = load i8, ptr %i.b, align 1
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw i64 %i.ak, 56
  %i.am = or i64 %i.ai, %i.al
  %i.an = getelementptr [8 x i8], ptr %2, i64 %.06.i
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, 16
  br i1 %exitcond.not.i, label %be64dec_vect.exit, label %bb.b, !llvm.loop !21

be64dec_vect.exit:                                ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(64) %0, i64 noundef 64, i1 noundef false) #6
  %i.ap = getelementptr i8, ptr %3, i64 32        ; 6 uses
  %i.aq = getelementptr i8, ptr %3, i64 40        ; 6 uses
  %i.ar = getelementptr i8, ptr %3, i64 48        ; 6 uses
  %i.as = getelementptr i8, ptr %3, i64 56        ; 6 uses
  %i.at = getelementptr i8, ptr %3, i64 24        ; 6 uses
  %i.au = getelementptr i8, ptr %3, i64 8         ; 6 uses
  %i.av = getelementptr i8, ptr %3, i64 16        ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %be64dec_vect.exit
  %indvars.iv = phi i64 [ 0, %be64dec_vect.exit ], [ %indvars.iv.next, %bb.d ] ; 19 uses
  %i.aw = load i64, ptr %i.ap, align 8            ; 11 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 50)
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 46)
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 23)
  %i.bb = xor i64 %i.az, %i.ba
  %i.bc = load i64, ptr %i.aq, align 8            ; 4 uses
  %i.bd = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = and i64 %i.be, %i.aw
  %i.bg = xor i64 %i.bf, %i.bd
end_hunk_0
