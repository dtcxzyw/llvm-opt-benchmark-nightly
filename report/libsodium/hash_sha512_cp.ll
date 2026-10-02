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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.c = alloca [88 x i64], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.e = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = and i64 %i.h, 127                        ; 7 uses
  %i.j = shl i64 %2, 3                            ; 2 uses
  %i.k = lshr i64 %2, 61
  %i.l = add i64 %i.g, %i.j                       ; 2 uses
  store i64 %i.l, ptr %i.f, align 8
  %i.m = icmp ult i64 %i.l, %i.j
  %.pre = load i64, ptr %i.e, align 8
  %i.n = zext i1 %i.m to i64
  %spec.select = add i64 %.pre, %i.n
  %i.o = add i64 %spec.select, %i.k
  store i64 %i.o, ptr %i.e, align 8
  %i.p = sub nuw nsw i64 128, %i.i                ; 9 uses
  %i.q = icmp ult i64 %2, %i.p
  %i.r = getelementptr i8, ptr %0, i64 80         ; 9 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.i     ; 34 uses
  br i1 %i.q, label %iter.check118, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp samesign ugt i64 %i.i, 124
  br i1 %min.iters.check, label %.preheader51.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %i.i, %i.b
  %i.u = sub i64 %i.t, %i.a
  %i.v = add i64 %i.u, 79
  %diff.check = icmp ult i64 %i.v, 31
  br i1 %diff.check, label %.preheader51.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check67 = icmp samesign ugt i64 %i.i, 96
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.p, 28
  %n.vec = and i64 %i.p, 224                      ; 6 uses
  %i.x = getelementptr i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1
  %wide.load68 = load <16 x i8>, ptr %i.x, align 1
  %i.y = getelementptr i8, ptr %i.s, i64 16
  store <16 x i8> %wide.load, ptr %i.s, align 1
  store <16 x i8> %wide.load68, ptr %i.y, align 1
  %i.z = icmp eq i64 %n.vec, 32
  br i1 %i.z, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.aa = getelementptr i8, ptr %1, i64 32
  %i.ab = getelementptr i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.aa, align 1
  %wide.load68.1 = load <16 x i8>, ptr %i.ab, align 1
  %i.ac = getelementptr i8, ptr %i.s, i64 32
  %i.ad = getelementptr i8, ptr %i.s, i64 48
  store <16 x i8> %wide.load.1, ptr %i.ac, align 1
  store <16 x i8> %wide.load68.1, ptr %i.ad, align 1
  %i.ae = icmp eq i64 %n.vec, 64
  br i1 %i.ae, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.af = getelementptr i8, ptr %1, i64 64
  %i.ag = getelementptr i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.af, align 1
  %wide.load68.2 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr i8, ptr %i.s, i64 64
  %i.ai = getelementptr i8, ptr %i.s, i64 80
  store <16 x i8> %wide.load.2, ptr %i.ah, align 1
  store <16 x i8> %wide.load68.2, ptr %i.ai, align 1
  %i.aj = icmp eq i64 %n.vec, 96
  br i1 %i.aj, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ak = getelementptr i8, ptr %1, i64 96
  %i.al = getelementptr i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.ak, align 1
  %wide.load68.3 = load <16 x i8>, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %i.s, i64 96
  %i.an = getelementptr i8, ptr %i.s, i64 112
  store <16 x i8> %wide.load.3, ptr %i.am, align 1
  store <16 x i8> %wide.load68.3, ptr %i.an, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit131, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.preheader51.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec69 = and i64 %i.p, 252                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %i.ao = getelementptr i8, ptr %1, i64 %index70
  %wide.load71 = load <4 x i8>, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %i.s, i64 %index70
  store <4 x i8> %wide.load71, ptr %i.ap, align 1
  %index.next72 = add nuw i64 %index70, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next72, %n.vec69
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n73 = icmp eq i64 %i.p, %n.vec69
  br i1 %cmp.n73, label %.loopexit131, label %.preheader51.preheader

.preheader51.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.152.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec69, %vec.epilog.middle.block ] ; 3 uses
  %i.ar = sub nsw i64 0, %i.h
  %i.as = add nuw nsw i64 %.152.ph, %i.i
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader51.prol.loopexit, label %.preheader51.prol

.preheader51.prol:                                ; preds = %.preheader51.preheader, %.preheader51.prol
  %.152.prol = phi i64 [ %i.aw, %.preheader51.prol ], [ %.152.ph, %.preheader51.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader51.prol ], [ 0, %.preheader51.preheader ]
  %i.at = getelementptr i8, ptr %1, i64 %.152.prol
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr i8, ptr %i.s, i64 %.152.prol
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = add nuw nsw i64 %.152.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader51.prol.loopexit, label %.preheader51.prol, !llvm.loop !6

.preheader51.prol.loopexit:                       ; preds = %.preheader51.prol, %.preheader51.preheader
  %.152.unr = phi i64 [ %.152.ph, %.preheader51.preheader ], [ %i.aw, %.preheader51.prol ]
  %i.ax = add nsw i64 %i.as, -125
  %i.ay = icmp ult i64 %i.ax, 3
  br i1 %i.ay, label %.loopexit131, label %.preheader51

iter.check118:                                    ; preds = %bb.b
  %min.iters.check105 = icmp ult i64 %2, 4
  br i1 %min.iters.check105, label %.preheader.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %iter.check118
  %i.az = add i64 %i.i, %i.b
  %i.ba = sub i64 %i.az, %i.a
  %i.bb = add i64 %i.ba, 79
  %diff.check104 = icmp ult i64 %i.bb, 15
  br i1 %diff.check104, label %.preheader.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %vector.memcheck103
  %min.iters.check107 = icmp ult i64 %2, 16
  br i1 %min.iters.check107, label %vec.epilog.ph122, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.bc = and i64 %2, 12
  %n.vec109 = and i64 %2, -16                     ; 9 uses
  %i.bd = getelementptr i8, ptr %1, i64 8
  %wide.load112 = load <8 x i8>, ptr %1, align 1
  %wide.load113 = load <8 x i8>, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %i.s, i64 8
  store <8 x i8> %wide.load112, ptr %i.s, align 1
  store <8 x i8> %wide.load113, ptr %i.be, align 1
  %i.bf = icmp eq i64 %n.vec109, 16
  br i1 %i.bf, label %middle.block115, label %vector.body110.1

vector.body110.1:                                 ; preds = %vector.ph108
  %i.bg = getelementptr i8, ptr %1, i64 16
  %i.bh = getelementptr i8, ptr %1, i64 24
  %wide.load112.1 = load <8 x i8>, ptr %i.bg, align 1
  %wide.load113.1 = load <8 x i8>, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.s, i64 16
  %i.bj = getelementptr i8, ptr %i.s, i64 24
  store <8 x i8> %wide.load112.1, ptr %i.bi, align 1
  store <8 x i8> %wide.load113.1, ptr %i.bj, align 1
  %i.bk = icmp eq i64 %n.vec109, 32
  br i1 %i.bk, label %middle.block115, label %vector.body110.2

vector.body110.2:                                 ; preds = %vector.body110.1
  %i.bl = getelementptr i8, ptr %1, i64 32
  %i.bm = getelementptr i8, ptr %1, i64 40
  %wide.load112.2 = load <8 x i8>, ptr %i.bl, align 1
  %wide.load113.2 = load <8 x i8>, ptr %i.bm, align 1
  %i.bn = getelementptr i8, ptr %i.s, i64 32
  %i.bo = getelementptr i8, ptr %i.s, i64 40
  store <8 x i8> %wide.load112.2, ptr %i.bn, align 1
  store <8 x i8> %wide.load113.2, ptr %i.bo, align 1
  %i.bp = icmp eq i64 %n.vec109, 48
  br i1 %i.bp, label %middle.block115, label %vector.body110.3

vector.body110.3:                                 ; preds = %vector.body110.2
  %i.bq = getelementptr i8, ptr %1, i64 48
  %i.br = getelementptr i8, ptr %1, i64 56
  %wide.load112.3 = load <8 x i8>, ptr %i.bq, align 1
  %wide.load113.3 = load <8 x i8>, ptr %i.br, align 1
  %i.bs = getelementptr i8, ptr %i.s, i64 48
  %i.bt = getelementptr i8, ptr %i.s, i64 56
  store <8 x i8> %wide.load112.3, ptr %i.bs, align 1
  store <8 x i8> %wide.load113.3, ptr %i.bt, align 1
  %i.bu = icmp eq i64 %n.vec109, 64
  br i1 %i.bu, label %middle.block115, label %vector.body110.4

vector.body110.4:                                 ; preds = %vector.body110.3
  %i.bv = getelementptr i8, ptr %1, i64 64
  %i.bw = getelementptr i8, ptr %1, i64 72
  %wide.load112.4 = load <8 x i8>, ptr %i.bv, align 1
  %wide.load113.4 = load <8 x i8>, ptr %i.bw, align 1
  %i.bx = getelementptr i8, ptr %i.s, i64 64
  %i.by = getelementptr i8, ptr %i.s, i64 72
  store <8 x i8> %wide.load112.4, ptr %i.bx, align 1
  store <8 x i8> %wide.load113.4, ptr %i.by, align 1
  %i.bz = icmp eq i64 %n.vec109, 80
  br i1 %i.bz, label %middle.block115, label %vector.body110.5

vector.body110.5:                                 ; preds = %vector.body110.4
  %i.ca = getelementptr i8, ptr %1, i64 80
  %i.cb = getelementptr i8, ptr %1, i64 88
  %wide.load112.5 = load <8 x i8>, ptr %i.ca, align 1
  %wide.load113.5 = load <8 x i8>, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %i.s, i64 80
  %i.cd = getelementptr i8, ptr %i.s, i64 88
  store <8 x i8> %wide.load112.5, ptr %i.cc, align 1
  store <8 x i8> %wide.load113.5, ptr %i.cd, align 1
  %i.ce = icmp eq i64 %n.vec109, 96
  br i1 %i.ce, label %middle.block115, label %vector.body110.6

vector.body110.6:                                 ; preds = %vector.body110.5
  %i.cf = getelementptr i8, ptr %1, i64 96
  %i.cg = getelementptr i8, ptr %1, i64 104
  %wide.load112.6 = load <8 x i8>, ptr %i.cf, align 1
  %wide.load113.6 = load <8 x i8>, ptr %i.cg, align 1
  %i.ch = getelementptr i8, ptr %i.s, i64 96
  %i.ci = getelementptr i8, ptr %i.s, i64 104
  store <8 x i8> %wide.load112.6, ptr %i.ch, align 1
  store <8 x i8> %wide.load113.6, ptr %i.ci, align 1
  br label %middle.block115

middle.block115:                                  ; preds = %vector.body110.6, %vector.body110.5, %vector.body110.4, %vector.body110.3, %vector.body110.2, %vector.body110.1, %vector.ph108
  %cmp.n116 = icmp eq i64 %2, %n.vec109
  br i1 %cmp.n116, label %.loopexit, label %vec.epilog.iter.check120

vec.epilog.iter.check120:                         ; preds = %middle.block115
  %min.epilog.iters.check121 = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check121, label %.preheader.preheader, label %vec.epilog.ph122, !prof !20

vec.epilog.ph122:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check120
  %vec.epilog.resume.val117 = phi i64 [ %n.vec109, %vec.epilog.iter.check120 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec123 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph122
  %index125 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph122 ], [ %index.next127, %vec.epilog.vector.body124 ] ; 3 uses
  %i.cj = getelementptr i8, ptr %1, i64 %index125
  %wide.load126 = load <4 x i8>, ptr %i.cj, align 1
  %i.ck = getelementptr i8, ptr %i.s, i64 %index125
  store <4 x i8> %wide.load126, ptr %i.ck, align 1
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.cl, label %vec.epilog.middle.block128, label %vec.epilog.vector.body124, !llvm.loop !7

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body124
  %cmp.n129 = icmp eq i64 %2, %n.vec123
  br i1 %cmp.n129, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check118, %vector.memcheck103, %vec.epilog.iter.check120, %vec.epilog.middle.block128
  %.058.ph = phi i64 [ 0, %iter.check118 ], [ 0, %vector.memcheck103 ], [ %n.vec109, %vec.epilog.iter.check120 ], [ %n.vec123, %vec.epilog.middle.block128 ] ; 3 uses
  %xtraiter136 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.058.prol = phi i64 [ %i.cp, %.preheader.prol ], [ %.058.ph, %.preheader.preheader ] ; 3 uses
  %prol.iter138 = phi i64 [ %prol.iter138.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cm = getelementptr i8, ptr %1, i64 %.058.prol
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = getelementptr i8, ptr %i.s, i64 %.058.prol
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = add nuw nsw i64 %.058.prol, 1           ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.058.unr = phi i64 [ %.058.ph, %.preheader.preheader ], [ %i.cp, %.preheader.prol ]
  %i.cq = sub i64 %.058.ph, %2
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.058 = phi i64 [ %i.dh, %.preheader ], [ %.058.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.cs = getelementptr i8, ptr %1, i64 %.058
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = getelementptr i8, ptr %i.s, i64 %.058
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = add nuw nsw i64 %.058, 1                ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr i8, ptr %i.s, i64 %i.cv
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = add nuw nsw i64 %.058, 2                ; 2 uses
  %i.da = getelementptr i8, ptr %1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = getelementptr i8, ptr %i.s, i64 %i.cz
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = add nuw nsw i64 %.058, 3                ; 2 uses
  %i.de = getelementptr i8, ptr %1, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = getelementptr i8, ptr %i.s, i64 %i.dd
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = add nuw nsw i64 %.058, 4                ; 2 uses
  %exitcond61.not.3 = icmp eq i64 %i.dh, %2
  br i1 %exitcond61.not.3, label %.loopexit, label %.preheader, !llvm.loop !9

.preheader51:                                     ; preds = %.preheader51.prol.loopexit, %.preheader51
  %.152 = phi i64 [ %i.dx, %.preheader51 ], [ %.152.unr, %.preheader51.prol.loopexit ] ; 6 uses
  %i.di = getelementptr i8, ptr %1, i64 %.152
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = getelementptr i8, ptr %i.s, i64 %.152
  store i8 %i.dj, ptr %i.dk, align 1
  %i.dl = add nuw nsw i64 %.152, 1                ; 2 uses
  %i.dm = getelementptr i8, ptr %1, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = getelementptr i8, ptr %i.s, i64 %i.dl
  store i8 %i.dn, ptr %i.do, align 1
  %i.dp = add nuw nsw i64 %.152, 2                ; 2 uses
  %i.dq = getelementptr i8, ptr %1, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = getelementptr i8, ptr %i.s, i64 %i.dp
  store i8 %i.dr, ptr %i.ds, align 1
  %i.dt = add nuw nsw i64 %.152, 3                ; 2 uses
  %i.du = getelementptr i8, ptr %1, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = getelementptr i8, ptr %i.s, i64 %i.dt
  store i8 %i.dv, ptr %i.dw, align 1
  %i.dx = add nuw nsw i64 %.152, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dx, %i.p
  br i1 %exitcond.not.3, label %.loopexit131, label %.preheader51, !llvm.loop !10

.loopexit131:                                     ; preds = %.preheader51.prol.loopexit, %.preheader51, %vec.epilog.middle.block, %middle.block
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 640 ; 2 uses
  call fastcc void @SHA512_Transform(ptr noundef %0, ptr noundef %i.r, ptr noundef %i.c, ptr noundef nonnull %i.dy)
  %i.dz = getelementptr i8, ptr %1, i64 %i.p      ; 2 uses
  %i.ea = sub nuw i64 %2, %i.p                    ; 3 uses
  %i.eb = icmp ugt i64 %i.ea, 127
  br i1 %i.eb, label %.lr.ph, label %.preheader50

.preheader50:                                     ; preds = %.lr.ph, %.loopexit131
  %.046.lcssa = phi ptr [ %i.dz, %.loopexit131 ], [ %i.et, %.lr.ph ] ; 8 uses
  %.045.lcssa = phi i64 [ %i.ea, %.loopexit131 ], [ %i.eu, %.lr.ph ] ; 11 uses
  %.046.lcssa75 = ptrtoaddr ptr %.046.lcssa to i64
  %.not = icmp eq i64 %.045.lcssa, 0
  br i1 %.not, label %._crit_edge, label %iter.check90

iter.check90:                                     ; preds = %.preheader50
  %min.iters.check77 = icmp samesign ult i64 %.045.lcssa, 4
  br i1 %min.iters.check77, label %.lr.ph57.preheader, label %vector.memcheck74

vector.memcheck74:                                ; preds = %iter.check90
  %i.ec = sub i64 %i.b, %.046.lcssa75
  %i.ed = add i64 %i.ec, 79
  %diff.check76 = icmp ult i64 %i.ed, 31
  br i1 %diff.check76, label %.lr.ph57.preheader, label %vector.main.loop.iter.check78

vector.main.loop.iter.check78:                    ; preds = %vector.memcheck74
  %min.iters.check79 = icmp samesign ult i64 %.045.lcssa, 32
  br i1 %min.iters.check79, label %vec.epilog.ph94, label %vector.ph80

vector.ph80:                                      ; preds = %vector.main.loop.iter.check78
  %i.ee = and i64 %.045.lcssa, 28
  %n.vec81 = and i64 %.045.lcssa, 96              ; 4 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.ph80, %vector.body82
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next86, %vector.body82 ] ; 3 uses
  %i.ef = getelementptr i8, ptr %.046.lcssa, i64 %index83 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %wide.load84 = load <16 x i8>, ptr %i.ef, align 1
  %wide.load85 = load <16 x i8>, ptr %i.eg, align 1
  %i.eh = getelementptr i8, ptr %i.r, i64 %index83 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  store <16 x i8> %wide.load84, ptr %i.eh, align 1
  store <16 x i8> %wide.load85, ptr %i.ei, align 1
  %index.next86 = add nuw i64 %index83, 32        ; 2 uses
  %i.ej = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.ej, label %middle.block87, label %vector.body82, !llvm.loop !11

middle.block87:                                   ; preds = %vector.body82
  %cmp.n88 = icmp eq i64 %.045.lcssa, %n.vec81
  br i1 %cmp.n88, label %._crit_edge, label %vec.epilog.iter.check92

vec.epilog.iter.check92:                          ; preds = %middle.block87
  %min.epilog.iters.check93 = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check93, label %.lr.ph57.preheader, label %vec.epilog.ph94, !prof !16

vec.epilog.ph94:                                  ; preds = %vector.main.loop.iter.check78, %vec.epilog.iter.check92
  %vec.epilog.resume.val89 = phi i64 [ %n.vec81, %vec.epilog.iter.check92 ], [ 0, %vector.main.loop.iter.check78 ]
  %n.vec95 = and i64 %.045.lcssa, 124             ; 3 uses
  br label %vec.epilog.vector.body96

vec.epilog.vector.body96:                         ; preds = %vec.epilog.vector.body96, %vec.epilog.ph94
  %index97 = phi i64 [ %vec.epilog.resume.val89, %vec.epilog.ph94 ], [ %index.next99, %vec.epilog.vector.body96 ] ; 3 uses
  %i.ek = getelementptr i8, ptr %.046.lcssa, i64 %index97
  %wide.load98 = load <4 x i8>, ptr %i.ek, align 1
  %i.el = getelementptr i8, ptr %i.r, i64 %index97
  store <4 x i8> %wide.load98, ptr %i.el, align 1
  %index.next99 = add nuw i64 %index97, 4         ; 2 uses
  %i.em = icmp eq i64 %index.next99, %n.vec95
  br i1 %i.em, label %vec.epilog.middle.block100, label %vec.epilog.vector.body96, !llvm.loop !12

vec.epilog.middle.block100:                       ; preds = %vec.epilog.vector.body96
  %cmp.n101 = icmp eq i64 %.045.lcssa, %n.vec95
  br i1 %cmp.n101, label %._crit_edge, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %iter.check90, %vector.memcheck74, %vec.epilog.iter.check92, %vec.epilog.middle.block100
  %.256.ph = phi i64 [ 0, %iter.check90 ], [ 0, %vector.memcheck74 ], [ %n.vec81, %vec.epilog.iter.check92 ], [ %n.vec95, %vec.epilog.middle.block100 ] ; 3 uses
  %xtraiter133 = and i64 %.045.lcssa, 3           ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol

.lr.ph57.prol:                                    ; preds = %.lr.ph57.preheader, %.lr.ph57.prol
  %.256.prol = phi i64 [ %i.eq, %.lr.ph57.prol ], [ %.256.ph, %.lr.ph57.preheader ] ; 3 uses
  %prol.iter135 = phi i64 [ %prol.iter135.next, %.lr.ph57.prol ], [ 0, %.lr.ph57.preheader ]
  %i.en = getelementptr i8, ptr %.046.lcssa, i64 %.256.prol
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr i8, ptr %i.r, i64 %.256.prol
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = add nuw nsw i64 %.256.prol, 1           ; 2 uses
  %prol.iter135.next = add i64 %prol.iter135, 1   ; 2 uses
  %prol.iter135.cmp.not = icmp eq i64 %prol.iter135.next, %xtraiter133
  br i1 %prol.iter135.cmp.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol, !llvm.loop !13

.lr.ph57.prol.loopexit:                           ; preds = %.lr.ph57.prol, %.lr.ph57.preheader
  %.256.unr = phi i64 [ %.256.ph, %.lr.ph57.preheader ], [ %i.eq, %.lr.ph57.prol ]
  %i.er = sub nsw i64 %.256.ph, %.045.lcssa
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %._crit_edge, label %.lr.ph57

.lr.ph:                                           ; preds = %.loopexit131, %.lr.ph
  %.04554 = phi i64 [ %i.eu, %.lr.ph ], [ %i.ea, %.loopexit131 ]
  %.04653 = phi ptr [ %i.et, %.lr.ph ], [ %i.dz, %.loopexit131 ] ; 2 uses
  call fastcc void @SHA512_Transform(ptr noundef %0, ptr noundef %.04653, ptr noundef %i.c, ptr noundef nonnull %i.dy)
  %i.et = getelementptr i8, ptr %.04653, i64 128  ; 2 uses
  %i.eu = add i64 %.04554, -128                   ; 3 uses
  %i.ev = icmp ugt i64 %i.eu, 127
  br i1 %i.ev, label %.lr.ph, label %.preheader50, !llvm.loop !14

.lr.ph57:                                         ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57
  %.256 = phi i64 [ %i.fl, %.lr.ph57 ], [ %.256.unr, %.lr.ph57.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr i8, ptr %.046.lcssa, i64 %.256
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = getelementptr i8, ptr %i.r, i64 %.256
  store i8 %i.ex, ptr %i.ey, align 1
  %i.ez = add nuw nsw i64 %.256, 1                ; 2 uses
  %i.fa = getelementptr i8, ptr %.046.lcssa, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = getelementptr i8, ptr %i.r, i64 %i.ez
  store i8 %i.fb, ptr %i.fc, align 1
  %i.fd = add nuw nsw i64 %.256, 2                ; 2 uses
  %i.fe = getelementptr i8, ptr %.046.lcssa, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = getelementptr i8, ptr %i.r, i64 %i.fd
  store i8 %i.ff, ptr %i.fg, align 1
  %i.fh = add nuw nsw i64 %.256, 3                ; 2 uses
  %i.fi = getelementptr i8, ptr %.046.lcssa, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = getelementptr i8, ptr %i.r, i64 %i.fh
  store i8 %i.fj, ptr %i.fk, align 1
  %i.fl = add nuw nsw i64 %.256, 4                ; 2 uses
  %exitcond60.not.3 = icmp eq i64 %i.fl, %.045.lcssa
  br i1 %exitcond60.not.3, label %._crit_edge, label %.lr.ph57, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57, %middle.block87, %vec.epilog.middle.block100, %.preheader50
  call void @sodium_memzero(ptr noundef nonnull %i.c, i64 noundef 704) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block115, %vec.epilog.middle.block128, %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define internal fastcc void @SHA512_Transform(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #0 {
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %4
  %.06.i = phi i64 [ 0, %4 ], [ %37, %bb.a ]      ; 3 uses
  %5 = shl nuw nsw i64 %.06.i, 3
  %i.a = getelementptr i8, ptr %1, i64 %5         ; 8 uses
  %i.b = getelementptr i8, ptr %i.a, i64 7
  %6 = load i8, ptr %i.b, align 1
  %7 = zext i8 %6 to i64
  %i.c = getelementptr i8, ptr %i.a, i64 6
  %8 = load i8, ptr %i.c, align 1
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 8
  %11 = or disjoint i64 %10, %7
  %i.d = getelementptr i8, ptr %i.a, i64 5
  %12 = load i8, ptr %i.d, align 1
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 16
  %15 = or disjoint i64 %11, %14
  %i.e = getelementptr i8, ptr %i.a, i64 4
  %16 = load i8, ptr %i.e, align 1
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 24
  %19 = or disjoint i64 %15, %18
  %i.f = getelementptr i8, ptr %i.a, i64 3
  %20 = load i8, ptr %i.f, align 1
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = or disjoint i64 %19, %22
  %i.g = getelementptr i8, ptr %i.a, i64 2
  %24 = load i8, ptr %i.g, align 1
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 40
  %27 = or i64 %23, %26
  %i.h = getelementptr i8, ptr %i.a, i64 1
  %28 = load i8, ptr %i.h, align 1
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 48
  %31 = or i64 %27, %30
  %32 = load i8, ptr %i.a, align 1
  %33 = zext i8 %32 to i64
  %34 = shl nuw i64 %33, 56
  %35 = or i64 %31, %34
  %36 = getelementptr [8 x i8], ptr %2, i64 %.06.i
  store i64 %35, ptr %36, align 8
  %37 = add nuw nsw i64 %.06.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %37, 16
  br i1 %exitcond.not.i, label %be64dec_vect.exit, label %bb.a, !llvm.loop !21

be64dec_vect.exit:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(64) %0, i64 noundef 64, i1 noundef false) #6
  %38 = getelementptr i8, ptr %3, i64 32          ; 6 uses
  %39 = getelementptr i8, ptr %3, i64 40          ; 6 uses
  %40 = getelementptr i8, ptr %3, i64 48          ; 6 uses
  %41 = getelementptr i8, ptr %3, i64 56          ; 6 uses
  %42 = getelementptr i8, ptr %3, i64 24          ; 6 uses
  %43 = getelementptr i8, ptr %3, i64 8           ; 6 uses
  %44 = getelementptr i8, ptr %3, i64 16          ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %be64dec_vect.exit
  %indvars.iv = phi i64 [ 0, %be64dec_vect.exit ], [ %indvars.iv.next, %bb.c ] ; 19 uses
  %i.i = load i64, ptr %38, align 8               ; 11 uses
  %i.j = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 50)
  %i.k = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 46)
  %i.l = xor i64 %i.j, %i.k
  %i.m = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 23)
  %i.n = xor i64 %i.l, %i.m
  %i.o = load i64, ptr %39, align 8               ; 4 uses
  %i.p = load i64, ptr %40, align 8               ; 3 uses
  %i.q = xor i64 %i.p, %i.o
  %i.r = and i64 %i.q, %i.i
  %i.s = xor i64 %i.r, %i.p
  %i.t = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 31 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr [8 x i8], ptr @Krnd, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 16
  %i.x = load i64, ptr %41, align 8
  %i.y = add i64 %i.u, %i.n
  %i.z = add i64 %i.y, %i.w
  %i.aa = add i64 %i.z, %i.s
  %i.ab = add i64 %i.aa, %i.x                     ; 2 uses
  %i.ac = load i64, ptr %42, align 8
  %i.ad = add i64 %i.ab, %i.ac                    ; 12 uses
  store i64 %i.ad, ptr %42, align 8
  %i.ae = load i64, ptr %3, align 8               ; 12 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 36)
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 30)
  %i.ah = xor i64 %i.af, %i.ag
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 25)
  %i.aj = xor i64 %i.ah, %i.ai
  %i.ak = load i64, ptr %43, align 8              ; 5 uses
  %i.al = load i64, ptr %44, align 8              ; 3 uses
  %i.am = or i64 %i.al, %i.ak
  %i.an = and i64 %i.am, %i.ae
  %i.ao = and i64 %i.al, %i.ak
  %i.ap = or i64 %i.an, %i.ao
  %i.aq = add i64 %i.aj, %i.ab
  %i.ar = add i64 %i.aq, %i.ap                    ; 13 uses
  store i64 %i.ar, ptr %41, align 8
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 50)
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 46)
  %i.au = xor i64 %i.as, %i.at
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 23)
  %i.aw = xor i64 %i.au, %i.av
  %i.ax = xor i64 %i.o, %i.i
  %i.ay = and i64 %i.ad, %i.ax
  %i.az = xor i64 %i.ay, %i.o
  %i.ba = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %2, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr [8 x i8], ptr @Krnd, i64 %i.ba
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.az, %i.p
  %i.bg = add i64 %i.bf, %i.aw
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = add i64 %i.bh, %i.be                    ; 2 uses
  %i.bj = add i64 %i.bi, %i.al                    ; 12 uses
  store i64 %i.bj, ptr %44, align 8
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 36)
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 30)
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 25)
  %i.bo = xor i64 %i.bm, %i.bn
  %i.bp = or i64 %i.ak, %i.ae
  %i.bq = and i64 %i.ar, %i.bp
  %i.br = and i64 %i.ak, %i.ae
  %i.bs = or i64 %i.bq, %i.br
  %i.bt = add i64 %i.bs, %i.bi
  %i.bu = add i64 %i.bt, %i.bo                    ; 13 uses
  store i64 %i.bu, ptr %40, align 8
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 50)
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 46)
  %i.bx = xor i64 %i.bv, %i.bw
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 23)
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = xor i64 %i.ad, %i.i
  %i.cb = and i64 %i.bj, %i.ca
  %i.cc = xor i64 %i.cb, %i.i
  %i.cd = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %2, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr [8 x i8], ptr @Krnd, i64 %i.cd
  %i.ch = load i64, ptr %i.cg, align 16
  %i.ci = add i64 %i.cf, %i.o
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = add i64 %i.cj, %i.cc
  %i.cl = add i64 %i.ck, %i.bz                    ; 2 uses
  %i.cm = add i64 %i.cl, %i.ak                    ; 12 uses
  store i64 %i.cm, ptr %43, align 8
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 36)
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 30)
  %i.cp = xor i64 %i.cn, %i.co
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 25)
  %i.cr = xor i64 %i.cp, %i.cq
  %i.cs = or i64 %i.ar, %i.ae
  %i.ct = and i64 %i.bu, %i.cs
  %i.cu = and i64 %i.ar, %i.ae
  %i.cv = or i64 %i.ct, %i.cu
  %i.cw = add i64 %i.cr, %i.cv
  %i.cx = add i64 %i.cw, %i.cl                    ; 13 uses
  store i64 %i.cx, ptr %39, align 8
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 50)
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 46)
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 23)
  %i.dc = xor i64 %i.da, %i.db
  %i.dd = xor i64 %i.bj, %i.ad
  %i.de = and i64 %i.cm, %i.dd
  %i.df = xor i64 %i.de, %i.ad
  %i.dg = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %2, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr [8 x i8], ptr @Krnd, i64 %i.dg
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = add i64 %i.di, %i.i
  %i.dm = add i64 %i.dl, %i.dk
  %i.dn = add i64 %i.dm, %i.df
  %i.do = add i64 %i.dn, %i.dc                    ; 2 uses
  %i.dp = add i64 %i.do, %i.ae                    ; 12 uses
  store i64 %i.dp, ptr %3, align 8
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 36)
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 30)
  %i.ds = xor i64 %i.dq, %i.dr
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 25)
  %i.du = xor i64 %i.ds, %i.dt
  %i.dv = or i64 %i.bu, %i.ar
  %i.dw = and i64 %i.cx, %i.dv
  %i.dx = and i64 %i.bu, %i.ar
  %i.dy = or i64 %i.dw, %i.dx
  %i.dz = add i64 %i.du, %i.dy
  %i.ea = add i64 %i.dz, %i.do                    ; 13 uses
  store i64 %i.ea, ptr %38, align 8
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 50)
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 46)
  %i.ed = xor i64 %i.eb, %i.ec
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 23)
  %i.ef = xor i64 %i.ed, %i.ee
  %i.eg = xor i64 %i.cm, %i.bj
  %i.eh = and i64 %i.dp, %i.eg
  %i.ei = xor i64 %i.eh, %i.bj
  %i.ej = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %2, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr [8 x i8], ptr @Krnd, i64 %i.ej
  %i.en = load i64, ptr %i.em, align 16
  %i.eo = add i64 %i.el, %i.ad
  %i.ep = add i64 %i.eo, %i.en
  %i.eq = add i64 %i.ep, %i.ei
  %i.er = add i64 %i.eq, %i.ef                    ; 2 uses
  %i.es = add i64 %i.er, %i.ar                    ; 12 uses
  store i64 %i.es, ptr %41, align 8
  %i.et = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 36)
  %i.eu = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 30)
  %i.ev = xor i64 %i.et, %i.eu
  %i.ew = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 25)
  %i.ex = xor i64 %i.ev, %i.ew
  %i.ey = or i64 %i.cx, %i.bu
  %i.ez = and i64 %i.ea, %i.ey
  %i.fa = and i64 %i.cx, %i.bu
  %i.fb = or i64 %i.ez, %i.fa
  %i.fc = add i64 %i.ex, %i.fb
  %i.fd = add i64 %i.fc, %i.er                    ; 13 uses
  store i64 %i.fd, ptr %42, align 8
  %i.fe = tail call i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 50)
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 46)
  %i.fg = xor i64 %i.fe, %i.ff
  %i.fh = tail call i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 23)
  %i.fi = xor i64 %i.fg, %i.fh
  %i.fj = xor i64 %i.dp, %i.cm
  %i.fk = and i64 %i.es, %i.fj
  %i.fl = xor i64 %i.fk, %i.cm
  %i.fm = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %2, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr [8 x i8], ptr @Krnd, i64 %i.fm
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = add i64 %i.fo, %i.bj
  %i.fs = add i64 %i.fr, %i.fq
  %i.ft = add i64 %i.fs, %i.fl
  %i.fu = add i64 %i.ft, %i.fi                    ; 2 uses
  %i.fv = add i64 %i.fu, %i.bu                    ; 12 uses
  store i64 %i.fv, ptr %40, align 8
  %i.fw = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 36)
  %i.fx = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 30)
  %i.fy = xor i64 %i.fw, %i.fx
  %i.fz = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 25)
  %i.ga = xor i64 %i.fy, %i.fz
  %i.gb = or i64 %i.ea, %i.cx
  %i.gc = and i64 %i.fd, %i.gb
  %i.gd = and i64 %i.ea, %i.cx
  %i.ge = or i64 %i.gc, %i.gd
  %i.gf = add i64 %i.ga, %i.ge
  %i.gg = add i64 %i.gf, %i.fu                    ; 13 uses
  store i64 %i.gg, ptr %44, align 8
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 50)
  %i.gi = tail call i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 46)
  %i.gj = xor i64 %i.gh, %i.gi
  %i.gk = tail call i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 23)
  %i.gl = xor i64 %i.gj, %i.gk
  %i.gm = xor i64 %i.es, %i.dp
  %i.gn = and i64 %i.fv, %i.gm
  %i.go = xor i64 %i.gn, %i.dp
  %i.gp = or disjoint i64 %indvars.iv, 6          ; 2 uses
  %i.gq = getelementptr [8 x i8], ptr %2, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = getelementptr [8 x i8], ptr @Krnd, i64 %i.gp
  %i.gt = load i64, ptr %i.gs, align 16
  %i.gu = add i64 %i.gr, %i.cm
  %i.gv = add i64 %i.gu, %i.gt
  %i.gw = add i64 %i.gv, %i.go
  %i.gx = add i64 %i.gw, %i.gl                    ; 2 uses
  %i.gy = add i64 %i.gx, %i.cx                    ; 12 uses
  store i64 %i.gy, ptr %39, align 8
  %i.gz = tail call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 36)
  %i.ha = tail call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 30)
  %i.hb = xor i64 %i.gz, %i.ha
  %i.hc = tail call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 25)
  %i.hd = xor i64 %i.hb, %i.hc
  %i.he = or i64 %i.fd, %i.ea
  %i.hf = and i64 %i.gg, %i.he
  %i.hg = and i64 %i.fd, %i.ea
  %i.hh = or i64 %i.hf, %i.hg
  %i.hi = add i64 %i.hd, %i.hh
  %i.hj = add i64 %i.hi, %i.gx                    ; 13 uses
  store i64 %i.hj, ptr %43, align 8
  %i.hk = tail call i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 50)
  %i.hl = tail call i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 46)
  %i.hm = xor i64 %i.hk, %i.hl
  %i.hn = tail call i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 23)
  %i.ho = xor i64 %i.hm, %i.hn
  %i.hp = xor i64 %i.fv, %i.es
  %i.hq = and i64 %i.gy, %i.hp
  %i.hr = xor i64 %i.hq, %i.es
  %i.hs = or disjoint i64 %indvars.iv, 7          ; 2 uses
  %i.ht = getelementptr [8 x i8], ptr %2, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = getelementptr [8 x i8], ptr @Krnd, i64 %i.hs
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = add i64 %i.hu, %i.dp
  %i.hy = add i64 %i.hx, %i.hw
  %i.hz = add i64 %i.hy, %i.hr
  %i.ia = add i64 %i.hz, %i.ho                    ; 2 uses
  %i.ib = add i64 %i.ia, %i.ea                    ; 12 uses
  store i64 %i.ib, ptr %38, align 8
  %i.ic = tail call i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 36)
  %i.id = tail call i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 30)
  %i.ie = xor i64 %i.ic, %i.id
  %i.if = tail call i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 25)
  %i.ig = xor i64 %i.ie, %i.if
  %i.ih = or i64 %i.gg, %i.fd
  %i.ii = and i64 %i.hj, %i.ih
  %i.ij = and i64 %i.gg, %i.fd
  %i.ik = or i64 %i.ii, %i.ij
  %i.il = add i64 %i.ig, %i.ik
  %i.im = add i64 %i.il, %i.ia                    ; 13 uses
  store i64 %i.im, ptr %3, align 8
  %i.in = tail call i64 @llvm.fshl.i64(i64 %i.ib, i64 %i.ib, i64 50)
  %i.io = tail call i64 @llvm.fshl.i64(i64 %i.ib, i64 %i.ib, i64 46)
  %i.ip = xor i64 %i.in, %i.io
  %i.iq = tail call i64 @llvm.fshl.i64(i64 %i.ib, i64 %i.ib, i64 23)
  %i.ir = xor i64 %i.ip, %i.iq
  %i.is = xor i64 %i.gy, %i.fv
  %i.it = and i64 %i.ib, %i.is
  %i.iu = xor i64 %i.it, %i.fv
  %i.iv = or disjoint i64 %indvars.iv, 8          ; 2 uses
  %i.iw = getelementptr [8 x i8], ptr %2, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = getelementptr [8 x i8], ptr @Krnd, i64 %i.iv
  %i.iz = load i64, ptr %i.iy, align 16
  %i.ja = add i64 %i.ix, %i.es
  %i.jb = add i64 %i.ja, %i.iz
  %i.jc = add i64 %i.jb, %i.iu
  %i.jd = add i64 %i.jc, %i.ir                    ; 2 uses
  %i.je = add i64 %i.jd, %i.fd                    ; 12 uses
  store i64 %i.je, ptr %42, align 8
  %i.jf = tail call i64 @llvm.fshl.i64(i64 %i.im, i64 %i.im, i64 36)
  %i.jg = tail call i64 @llvm.fshl.i64(i64 %i.im, i64 %i.im, i64 30)
  %i.jh = xor i64 %i.jf, %i.jg
  %i.ji = tail call i64 @llvm.fshl.i64(i64 %i.im, i64 %i.im, i64 25)
  %i.jj = xor i64 %i.jh, %i.ji
  %i.jk = or i64 %i.hj, %i.gg
  %i.jl = and i64 %i.im, %i.jk
  %i.jm = and i64 %i.hj, %i.gg
  %i.jn = or i64 %i.jl, %i.jm
  %i.jo = add i64 %i.jj, %i.jn
  %i.jp = add i64 %i.jo, %i.jd                    ; 13 uses
  store i64 %i.jp, ptr %41, align 8
  %i.jq = tail call i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 50)
  %i.jr = tail call i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 46)
  %i.js = xor i64 %i.jq, %i.jr
  %i.jt = tail call i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 23)
  %i.ju = xor i64 %i.js, %i.jt
  %i.jv = xor i64 %i.ib, %i.gy
  %i.jw = and i64 %i.je, %i.jv
  %i.jx = xor i64 %i.jw, %i.gy
  %i.jy = or disjoint i64 %indvars.iv, 9          ; 2 uses
  %i.jz = getelementptr [8 x i8], ptr %2, i64 %i.jy ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = getelementptr [8 x i8], ptr @Krnd, i64 %i.jy
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = add i64 %i.ka, %i.fv
  %i.ke = add i64 %i.kd, %i.kc
  %i.kf = add i64 %i.ke, %i.jx
  %i.kg = add i64 %i.kf, %i.ju                    ; 2 uses
  %i.kh = add i64 %i.kg, %i.gg                    ; 12 uses
  store i64 %i.kh, ptr %44, align 8
  %i.ki = tail call i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 36)
  %i.kj = tail call i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 30)
  %i.kk = xor i64 %i.ki, %i.kj
  %i.kl = tail call i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 25)
  %i.km = xor i64 %i.kk, %i.kl
  %i.kn = or i64 %i.im, %i.hj
  %i.ko = and i64 %i.jp, %i.kn
  %i.kp = and i64 %i.im, %i.hj
  %i.kq = or i64 %i.ko, %i.kp
  %i.kr = add i64 %i.km, %i.kq
  %i.ks = add i64 %i.kr, %i.kg                    ; 13 uses
  store i64 %i.ks, ptr %40, align 8
  %i.kt = tail call i64 @llvm.fshl.i64(i64 %i.kh, i64 %i.kh, i64 50)
  %i.ku = tail call i64 @llvm.fshl.i64(i64 %i.kh, i64 %i.kh, i64 46)
  %i.kv = xor i64 %i.kt, %i.ku
  %i.kw = tail call i64 @llvm.fshl.i64(i64 %i.kh, i64 %i.kh, i64 23)
  %i.kx = xor i64 %i.kv, %i.kw
  %i.ky = xor i64 %i.je, %i.ib
  %i.kz = and i64 %i.kh, %i.ky
  %i.la = xor i64 %i.kz, %i.ib
  %i.lb = or disjoint i64 %indvars.iv, 10         ; 2 uses
  %i.lc = getelementptr [8 x i8], ptr %2, i64 %i.lb ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8
  %i.le = getelementptr [8 x i8], ptr @Krnd, i64 %i.lb
  %i.lf = load i64, ptr %i.le, align 16
  %i.lg = add i64 %i.gy, %i.ld
  %i.lh = add i64 %i.lg, %i.lf
  %i.li = add i64 %i.lh, %i.la
  %i.lj = add i64 %i.li, %i.kx                    ; 2 uses
  %i.lk = add i64 %i.lj, %i.hj                    ; 12 uses
  store i64 %i.lk, ptr %43, align 8
  %i.ll = tail call i64 @llvm.fshl.i64(i64 %i.ks, i64 %i.ks, i64 36)
  %i.lm = tail call i64 @llvm.fshl.i64(i64 %i.ks, i64 %i.ks, i64 30)
  %i.ln = xor i64 %i.ll, %i.lm
  %i.lo = tail call i64 @llvm.fshl.i64(i64 %i.ks, i64 %i.ks, i64 25)
  %i.lp = xor i64 %i.ln, %i.lo
  %i.lq = or i64 %i.jp, %i.im
  %i.lr = and i64 %i.ks, %i.lq
  %i.ls = and i64 %i.jp, %i.im
  %i.lt = or i64 %i.lr, %i.ls
  %i.lu = add i64 %i.lp, %i.lt
  %i.lv = add i64 %i.lu, %i.lj                    ; 13 uses
  store i64 %i.lv, ptr %39, align 8
  %i.lw = tail call i64 @llvm.fshl.i64(i64 %i.lk, i64 %i.lk, i64 50)
  %i.lx = tail call i64 @llvm.fshl.i64(i64 %i.lk, i64 %i.lk, i64 46)
  %i.ly = xor i64 %i.lw, %i.lx
  %i.lz = tail call i64 @llvm.fshl.i64(i64 %i.lk, i64 %i.lk, i64 23)
  %i.ma = xor i64 %i.ly, %i.lz
  %i.mb = xor i64 %i.kh, %i.je
  %i.mc = and i64 %i.lk, %i.mb
  %i.md = xor i64 %i.mc, %i.je
  %i.me = or disjoint i64 %indvars.iv, 11         ; 2 uses
  %i.mf = getelementptr [8 x i8], ptr %2, i64 %i.me ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = getelementptr [8 x i8], ptr @Krnd, i64 %i.me
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = add i64 %i.mi, %i.mg
  %i.mk = add i64 %i.mj, %i.ib
  %i.ml = add i64 %i.mk, %i.md
  %i.mm = add i64 %i.ml, %i.ma                    ; 2 uses
  %i.mn = add i64 %i.mm, %i.im                    ; 12 uses
  store i64 %i.mn, ptr %3, align 8
  %i.mo = tail call i64 @llvm.fshl.i64(i64 %i.lv, i64 %i.lv, i64 36)
  %i.mp = tail call i64 @llvm.fshl.i64(i64 %i.lv, i64 %i.lv, i64 30)
  %i.mq = xor i64 %i.mo, %i.mp
  %i.mr = tail call i64 @llvm.fshl.i64(i64 %i.lv, i64 %i.lv, i64 25)
  %i.ms = xor i64 %i.mq, %i.mr
  %i.mt = or i64 %i.ks, %i.jp
  %i.mu = and i64 %i.lv, %i.mt
  %i.mv = and i64 %i.ks, %i.jp
  %i.mw = or i64 %i.mu, %i.mv
  %i.mx = add i64 %i.ms, %i.mw
  %i.my = add i64 %i.mx, %i.mm                    ; 13 uses
  store i64 %i.my, ptr %38, align 8
  %i.mz = tail call i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 50)
  %i.na = tail call i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 46)
  %i.nb = xor i64 %i.mz, %i.na
  %i.nc = tail call i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 23)
  %i.nd = xor i64 %i.nb, %i.nc
  %i.ne = xor i64 %i.lk, %i.kh
  %i.nf = and i64 %i.mn, %i.ne
  %i.ng = xor i64 %i.nf, %i.kh
  %i.nh = or disjoint i64 %indvars.iv, 12         ; 2 uses
  %i.ni = getelementptr [8 x i8], ptr %2, i64 %i.nh ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8
  %i.nk = getelementptr [8 x i8], ptr @Krnd, i64 %i.nh
  %i.nl = load i64, ptr %i.nk, align 16
  %i.nm = add i64 %i.nl, %i.nj
  %i.nn = add i64 %i.nm, %i.je
  %i.no = add i64 %i.nn, %i.ng
  %i.np = add i64 %i.no, %i.nd                    ; 2 uses
  %i.nq = add i64 %i.np, %i.jp                    ; 11 uses
  store i64 %i.nq, ptr %41, align 8
  %i.nr = tail call i64 @llvm.fshl.i64(i64 %i.my, i64 %i.my, i64 36)
  %i.ns = tail call i64 @llvm.fshl.i64(i64 %i.my, i64 %i.my, i64 30)
  %i.nt = xor i64 %i.nr, %i.ns
  %i.nu = tail call i64 @llvm.fshl.i64(i64 %i.my, i64 %i.my, i64 25)
  %i.nv = xor i64 %i.nt, %i.nu
  %i.nw = or i64 %i.lv, %i.ks
  %i.nx = and i64 %i.my, %i.nw
  %i.ny = and i64 %i.lv, %i.ks
  %i.nz = or i64 %i.nx, %i.ny
  %i.oa = add i64 %i.nv, %i.nz
  %i.ob = add i64 %i.oa, %i.np                    ; 12 uses
  store i64 %i.ob, ptr %42, align 8
  %i.oc = tail call i64 @llvm.fshl.i64(i64 %i.nq, i64 %i.nq, i64 50)
  %i.od = tail call i64 @llvm.fshl.i64(i64 %i.nq, i64 %i.nq, i64 46)
  %i.oe = xor i64 %i.oc, %i.od
  %i.of = tail call i64 @llvm.fshl.i64(i64 %i.nq, i64 %i.nq, i64 23)
  %i.og = xor i64 %i.oe, %i.of
  %i.oh = xor i64 %i.mn, %i.lk
  %i.oi = and i64 %i.nq, %i.oh
  %i.oj = xor i64 %i.oi, %i.lk
  %i.ok = or disjoint i64 %indvars.iv, 13         ; 2 uses
  %i.ol = getelementptr [8 x i8], ptr %2, i64 %i.ok ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8
  %i.on = getelementptr [8 x i8], ptr @Krnd, i64 %i.ok
  %i.oo = load i64, ptr %i.on, align 8
  %i.op = add i64 %i.oo, %i.om
  %i.oq = add i64 %i.op, %i.kh
  %i.or = add i64 %i.oq, %i.oj
  %i.os = add i64 %i.or, %i.og                    ; 2 uses
  %i.ot = add i64 %i.os, %i.ks                    ; 9 uses
  store i64 %i.ot, ptr %40, align 8
  %i.ou = tail call i64 @llvm.fshl.i64(i64 %i.ob, i64 %i.ob, i64 36)
  %i.ov = tail call i64 @llvm.fshl.i64(i64 %i.ob, i64 %i.ob, i64 30)
  %i.ow = xor i64 %i.ou, %i.ov
  %i.ox = tail call i64 @llvm.fshl.i64(i64 %i.ob, i64 %i.ob, i64 25)
  %i.oy = xor i64 %i.ow, %i.ox
  %i.oz = or i64 %i.my, %i.lv
  %i.pa = and i64 %i.ob, %i.oz
  %i.pb = and i64 %i.my, %i.lv
  %i.pc = or i64 %i.pa, %i.pb
  %i.pd = add i64 %i.oy, %i.pc
  %i.pe = add i64 %i.pd, %i.os                    ; 10 uses
  store i64 %i.pe, ptr %44, align 8
  %i.pf = tail call i64 @llvm.fshl.i64(i64 %i.ot, i64 %i.ot, i64 50)
  %i.pg = tail call i64 @llvm.fshl.i64(i64 %i.ot, i64 %i.ot, i64 46)
  %i.ph = xor i64 %i.pf, %i.pg
  %i.pi = tail call i64 @llvm.fshl.i64(i64 %i.ot, i64 %i.ot, i64 23)
  %i.pj = xor i64 %i.ph, %i.pi
  %i.pk = xor i64 %i.nq, %i.mn
  %i.pl = and i64 %i.ot, %i.pk
  %i.pm = xor i64 %i.pl, %i.mn
  %i.pn = or disjoint i64 %indvars.iv, 14         ; 2 uses
  %i.po = getelementptr [8 x i8], ptr %2, i64 %i.pn ; 2 uses
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = getelementptr [8 x i8], ptr @Krnd, i64 %i.pn
  %i.pr = load i64, ptr %i.pq, align 16
  %i.ps = add i64 %i.pr, %i.pp
  %i.pt = add i64 %i.ps, %i.lk
  %i.pu = add i64 %i.pt, %i.pm
  %i.pv = add i64 %i.pu, %i.pj                    ; 2 uses
  %i.pw = add i64 %i.pv, %i.lv                    ; 8 uses
  store i64 %i.pw, ptr %39, align 8
  %i.px = tail call i64 @llvm.fshl.i64(i64 %i.pe, i64 %i.pe, i64 36)
  %i.py = tail call i64 @llvm.fshl.i64(i64 %i.pe, i64 %i.pe, i64 30)
  %i.pz = xor i64 %i.px, %i.py
  %i.qa = tail call i64 @llvm.fshl.i64(i64 %i.pe, i64 %i.pe, i64 25)
  %i.qb = xor i64 %i.pz, %i.qa
  %i.qc = or i64 %i.ob, %i.my
  %i.qd = and i64 %i.pe, %i.qc
  %i.qe = and i64 %i.ob, %i.my
  %i.qf = or i64 %i.qd, %i.qe
  %i.qg = add i64 %i.qb, %i.qf
  %i.qh = add i64 %i.qg, %i.pv                    ; 8 uses
  store i64 %i.qh, ptr %43, align 8
  %i.qi = tail call i64 @llvm.fshl.i64(i64 %i.pw, i64 %i.pw, i64 50)
  %i.qj = tail call i64 @llvm.fshl.i64(i64 %i.pw, i64 %i.pw, i64 46)
  %i.qk = xor i64 %i.qi, %i.qj
  %i.ql = tail call i64 @llvm.fshl.i64(i64 %i.pw, i64 %i.pw, i64 23)
  %i.qm = xor i64 %i.qk, %i.ql
  %i.qn = xor i64 %i.ot, %i.nq
  %i.qo = and i64 %i.pw, %i.qn
  %i.qp = xor i64 %i.qo, %i.nq
  %i.qq = or disjoint i64 %indvars.iv, 15         ; 2 uses
  %i.qr = getelementptr [8 x i8], ptr %2, i64 %i.qq ; 2 uses
  %i.qs = load i64, ptr %i.qr, align 8
  %i.qt = getelementptr [8 x i8], ptr @Krnd, i64 %i.qq
  %i.qu = load i64, ptr %i.qt, align 8
  %i.qv = add i64 %i.qu, %i.qs
  %i.qw = add i64 %i.qv, %i.mn
  %i.qx = add i64 %i.qw, %i.qp
  %i.qy = add i64 %i.qx, %i.qm                    ; 2 uses
  %i.qz = add i64 %i.qy, %i.my
  store i64 %i.qz, ptr %38, align 8
  %i.ra = tail call i64 @llvm.fshl.i64(i64 %i.qh, i64 %i.qh, i64 36)
  %i.rb = tail call i64 @llvm.fshl.i64(i64 %i.qh, i64 %i.qh, i64 30)
  %i.rc = xor i64 %i.ra, %i.rb
  %i.rd = tail call i64 @llvm.fshl.i64(i64 %i.qh, i64 %i.qh, i64 25)
  %i.re = xor i64 %i.rc, %i.rd
  %i.rf = or i64 %i.pe, %i.ob
  %i.rg = and i64 %i.qh, %i.rf
  %i.rh = and i64 %i.pe, %i.ob
  %i.ri = or i64 %i.rg, %i.rh
  %i.rj = add i64 %i.re, %i.ri
  %i.rk = add i64 %i.rj, %i.qy                    ; 2 uses
  store i64 %i.rk, ptr %3, align 8
  %i.rl = icmp eq i64 %indvars.iv, 64
  br i1 %i.rl, label %split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.rm = load i64, ptr %i.po, align 8            ; 6 uses
  %i.rn = tail call i64 @llvm.fshl.i64(i64 %i.rm, i64 %i.rm, i64 45)
  %i.ro = tail call i64 @llvm.fshl.i64(i64 %i.rm, i64 %i.rm, i64 3)
  %i.rp = xor i64 %i.rn, %i.ro
  %i.rq = lshr i64 %i.rm, 6
  %i.rr = xor i64 %i.rp, %i.rq
  %i.rs = load i64, ptr %i.jz, align 8            ; 2 uses
  %i.rt = add i64 %i.rr, %i.rs
  %i.ru = load i64, ptr %i.bb, align 8            ; 6 uses
  %i.rv = tail call i64 @llvm.fshl.i64(i64 %i.ru, i64 %i.ru, i64 63)
  %i.rw = tail call i64 @llvm.fshl.i64(i64 %i.ru, i64 %i.ru, i64 56)
  %i.rx = xor i64 %i.rv, %i.rw
  %i.ry = lshr i64 %i.ru, 7
  %i.rz = xor i64 %i.rx, %i.ry
  %i.sa = load i64, ptr %i.t, align 8
  %i.sb = add i64 %i.rt, %i.sa
  %i.sc = add i64 %i.sb, %i.rz                    ; 12 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.sd = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.sc, ptr %i.sd, align 8
  %i.se = getelementptr i8, ptr %i.t, i64 120
  %i.sf = load i64, ptr %i.se, align 8            ; 11 uses
  %i.sg = tail call i64 @llvm.fshl.i64(i64 %i.sf, i64 %i.sf, i64 45)
  %i.sh = tail call i64 @llvm.fshl.i64(i64 %i.sf, i64 %i.sf, i64 3)
  %i.si = xor i64 %i.sg, %i.sh
  %i.sj = lshr i64 %i.sf, 6
  %i.sk = xor i64 %i.si, %i.sj
  %i.sl = getelementptr i8, ptr %i.t, i64 80
  %i.sm = load i64, ptr %i.sl, align 8            ; 6 uses
  %i.sn = getelementptr i8, ptr %i.t, i64 16
  %i.so = load i64, ptr %i.sn, align 8            ; 6 uses
  %i.sp = tail call i64 @llvm.fshl.i64(i64 %i.so, i64 %i.so, i64 63)
  %i.sq = tail call i64 @llvm.fshl.i64(i64 %i.so, i64 %i.so, i64 56)
  %i.sr = xor i64 %i.sp, %i.sq
  %i.ss = lshr i64 %i.so, 7
  %i.st = xor i64 %i.sr, %i.ss
  %i.su = add i64 %i.sm, %i.ru
  %i.sv = add i64 %i.su, %i.sk
  %i.sw = add i64 %i.sv, %i.st                    ; 7 uses
  %i.sx = getelementptr i8, ptr %i.t, i64 136
  store i64 %i.sw, ptr %i.sx, align 8
  %i.sy = tail call i64 @llvm.fshl.i64(i64 %i.sc, i64 %i.sc, i64 45)
  %i.sz = tail call i64 @llvm.fshl.i64(i64 %i.sc, i64 %i.sc, i64 3)
  %i.ta = xor i64 %i.sy, %i.sz
  %i.tb = lshr i64 %i.sc, 6
  %i.tc = xor i64 %i.ta, %i.tb
  %i.td = getelementptr i8, ptr %i.t, i64 88
  %i.te = load i64, ptr %i.td, align 8            ; 6 uses
  %i.tf = add i64 %i.tc, %i.te
  %i.tg = getelementptr i8, ptr %i.t, i64 24
  %i.th = load i64, ptr %i.tg, align 8            ; 6 uses
  %i.ti = tail call i64 @llvm.fshl.i64(i64 %i.th, i64 %i.th, i64 63)
  %i.tj = tail call i64 @llvm.fshl.i64(i64 %i.th, i64 %i.th, i64 56)
  %i.tk = xor i64 %i.ti, %i.tj
  %i.tl = lshr i64 %i.th, 7
  %i.tm = xor i64 %i.tk, %i.tl
  %i.tn = add i64 %i.tf, %i.so
  %i.to = add i64 %i.tn, %i.tm                    ; 7 uses
  %i.tp = getelementptr i8, ptr %i.t, i64 144
  store i64 %i.to, ptr %i.tp, align 8
  %i.tq = tail call i64 @llvm.fshl.i64(i64 %i.sw, i64 %i.sw, i64 45)
  %i.tr = tail call i64 @llvm.fshl.i64(i64 %i.sw, i64 %i.sw, i64 3)
  %i.ts = xor i64 %i.tq, %i.tr
  %i.tt = lshr i64 %i.sw, 6
  %i.tu = xor i64 %i.ts, %i.tt
  %i.tv = getelementptr i8, ptr %i.t, i64 96
  %i.tw = load i64, ptr %i.tv, align 8            ; 6 uses
  %i.tx = add i64 %i.tu, %i.tw
  %i.ty = getelementptr i8, ptr %i.t, i64 32
  %i.tz = load i64, ptr %i.ty, align 8            ; 6 uses
  %i.ua = tail call i64 @llvm.fshl.i64(i64 %i.tz, i64 %i.tz, i64 63)
  %i.ub = tail call i64 @llvm.fshl.i64(i64 %i.tz, i64 %i.tz, i64 56)
  %i.uc = xor i64 %i.ua, %i.ub
  %i.ud = lshr i64 %i.tz, 7
  %i.ue = xor i64 %i.uc, %i.ud
  %i.uf = add i64 %i.tx, %i.th
  %i.ug = add i64 %i.uf, %i.ue                    ; 7 uses
  %i.uh = getelementptr i8, ptr %i.t, i64 152
  store i64 %i.ug, ptr %i.uh, align 8
  %i.ui = tail call i64 @llvm.fshl.i64(i64 %i.to, i64 %i.to, i64 45)
  %i.uj = tail call i64 @llvm.fshl.i64(i64 %i.to, i64 %i.to, i64 3)
  %i.uk = xor i64 %i.ui, %i.uj
  %i.ul = lshr i64 %i.to, 6
  %i.um = xor i64 %i.uk, %i.ul
  %i.un = getelementptr i8, ptr %i.t, i64 104
  %i.uo = load i64, ptr %i.un, align 8            ; 6 uses
  %i.up = add i64 %i.um, %i.uo
  %i.uq = getelementptr i8, ptr %i.t, i64 40
  %i.ur = load i64, ptr %i.uq, align 8            ; 6 uses
  %i.us = tail call i64 @llvm.fshl.i64(i64 %i.ur, i64 %i.ur, i64 63)
  %i.ut = tail call i64 @llvm.fshl.i64(i64 %i.ur, i64 %i.ur, i64 56)
  %i.uu = xor i64 %i.us, %i.ut
  %i.uv = lshr i64 %i.ur, 7
  %i.uw = xor i64 %i.uu, %i.uv
  %i.ux = add i64 %i.up, %i.tz
  %i.uy = add i64 %i.ux, %i.uw                    ; 7 uses
  %i.uz = getelementptr i8, ptr %i.t, i64 160
  store i64 %i.uy, ptr %i.uz, align 8
  %i.va = tail call i64 @llvm.fshl.i64(i64 %i.ug, i64 %i.ug, i64 45)
  %i.vb = tail call i64 @llvm.fshl.i64(i64 %i.ug, i64 %i.ug, i64 3)
  %i.vc = xor i64 %i.va, %i.vb
  %i.vd = lshr i64 %i.ug, 6
  %i.ve = xor i64 %i.vc, %i.vd
  %i.vf = getelementptr i8, ptr %i.t, i64 112
  %i.vg = load i64, ptr %i.vf, align 8            ; 6 uses
  %i.vh = add i64 %i.ve, %i.vg
  %i.vi = getelementptr i8, ptr %i.t, i64 48
  %i.vj = load i64, ptr %i.vi, align 8            ; 6 uses
  %i.vk = tail call i64 @llvm.fshl.i64(i64 %i.vj, i64 %i.vj, i64 63)
  %i.vl = tail call i64 @llvm.fshl.i64(i64 %i.vj, i64 %i.vj, i64 56)
  %i.vm = xor i64 %i.vk, %i.vl
  %i.vn = lshr i64 %i.vj, 7
  %i.vo = xor i64 %i.vm, %i.vn
  %i.vp = add i64 %i.vh, %i.ur
  %i.vq = add i64 %i.vp, %i.vo                    ; 7 uses
  %i.vr = getelementptr i8, ptr %i.t, i64 168
  store i64 %i.vq, ptr %i.vr, align 8
  %i.vs = tail call i64 @llvm.fshl.i64(i64 %i.uy, i64 %i.uy, i64 45)
  %i.vt = tail call i64 @llvm.fshl.i64(i64 %i.uy, i64 %i.uy, i64 3)
  %i.vu = xor i64 %i.vs, %i.vt
  %i.vv = lshr i64 %i.uy, 6
  %i.vw = xor i64 %i.vu, %i.vv
  %i.vx = add i64 %i.vw, %i.sf
  %i.vy = getelementptr i8, ptr %i.t, i64 56
  %i.vz = load i64, ptr %i.vy, align 8            ; 6 uses
  %i.wa = tail call i64 @llvm.fshl.i64(i64 %i.vz, i64 %i.vz, i64 63)
  %i.wb = tail call i64 @llvm.fshl.i64(i64 %i.vz, i64 %i.vz, i64 56)
  %i.wc = xor i64 %i.wa, %i.wb
  %i.wd = lshr i64 %i.vz, 7
  %i.we = xor i64 %i.wc, %i.wd
  %i.wf = add i64 %i.vx, %i.vj
  %i.wg = add i64 %i.wf, %i.we                    ; 7 uses
  %i.wh = getelementptr i8, ptr %i.t, i64 176
  store i64 %i.wg, ptr %i.wh, align 8
  %i.wi = tail call i64 @llvm.fshl.i64(i64 %i.vq, i64 %i.vq, i64 45)
  %i.wj = tail call i64 @llvm.fshl.i64(i64 %i.vq, i64 %i.vq, i64 3)
  %i.wk = xor i64 %i.wi, %i.wj
  %i.wl = lshr i64 %i.vq, 6
  %i.wm = xor i64 %i.wk, %i.wl
  %i.wn = getelementptr i8, ptr %i.t, i64 64
  %i.wo = load i64, ptr %i.wn, align 8            ; 6 uses
  %i.wp = tail call i64 @llvm.fshl.i64(i64 %i.wo, i64 %i.wo, i64 63)
  %i.wq = tail call i64 @llvm.fshl.i64(i64 %i.wo, i64 %i.wo, i64 56)
  %i.wr = xor i64 %i.wp, %i.wq
  %i.ws = lshr i64 %i.wo, 7
  %i.wt = xor i64 %i.wr, %i.ws
  %i.wu = add i64 %i.vz, %i.sc
  %i.wv = add i64 %i.wu, %i.wm
  %i.ww = add i64 %i.wv, %i.wt                    ; 7 uses
  %i.wx = getelementptr i8, ptr %i.t, i64 184
  store i64 %i.ww, ptr %i.wx, align 8
  %i.wy = tail call i64 @llvm.fshl.i64(i64 %i.wg, i64 %i.wg, i64 45)
  %i.wz = tail call i64 @llvm.fshl.i64(i64 %i.wg, i64 %i.wg, i64 3)
  %i.xa = xor i64 %i.wy, %i.wz
  %i.xb = lshr i64 %i.wg, 6
  %i.xc = xor i64 %i.xa, %i.xb
  %i.xd = getelementptr i8, ptr %i.t, i64 72
  %i.xe = load i64, ptr %i.xd, align 8            ; 5 uses
  %i.xf = tail call i64 @llvm.fshl.i64(i64 %i.xe, i64 %i.xe, i64 63)
  %i.xg = tail call i64 @llvm.fshl.i64(i64 %i.xe, i64 %i.xe, i64 56)
  %i.xh = xor i64 %i.xf, %i.xg
  %i.xi = lshr i64 %i.xe, 7
  %i.xj = xor i64 %i.xh, %i.xi
  %i.xk = add i64 %i.wo, %i.sw
  %i.xl = add i64 %i.xk, %i.xc
  %i.xm = add i64 %i.xl, %i.xj                    ; 7 uses
  %i.xn = getelementptr i8, ptr %i.t, i64 192
  store i64 %i.xm, ptr %i.xn, align 8
  %i.xo = tail call i64 @llvm.fshl.i64(i64 %i.ww, i64 %i.ww, i64 45)
  %i.xp = tail call i64 @llvm.fshl.i64(i64 %i.ww, i64 %i.ww, i64 3)
  %i.xq = xor i64 %i.xo, %i.xp
  %i.xr = lshr i64 %i.ww, 6
  %i.xs = xor i64 %i.xq, %i.xr
  %i.xt = tail call i64 @llvm.fshl.i64(i64 %i.sm, i64 %i.sm, i64 63)
  %i.xu = tail call i64 @llvm.fshl.i64(i64 %i.sm, i64 %i.sm, i64 56)
  %i.xv = xor i64 %i.xt, %i.xu
  %i.xw = lshr i64 %i.sm, 7
  %i.xx = xor i64 %i.xv, %i.xw
  %i.xy = add i64 %i.xx, %i.rs
  %i.xz = add i64 %i.xy, %i.to
  %i.ya = add i64 %i.xz, %i.xs                    ; 6 uses
  %i.yb = getelementptr i8, ptr %i.t, i64 200
  store i64 %i.ya, ptr %i.yb, align 8
  %i.yc = tail call i64 @llvm.fshl.i64(i64 %i.xm, i64 %i.xm, i64 45)
  %i.yd = tail call i64 @llvm.fshl.i64(i64 %i.xm, i64 %i.xm, i64 3)
  %i.ye = xor i64 %i.yc, %i.yd
  %i.yf = lshr i64 %i.xm, 6
  %i.yg = xor i64 %i.ye, %i.yf
  %i.yh = tail call i64 @llvm.fshl.i64(i64 %i.te, i64 %i.te, i64 63)
  %i.yi = tail call i64 @llvm.fshl.i64(i64 %i.te, i64 %i.te, i64 56)
  %i.yj = xor i64 %i.yh, %i.yi
  %i.yk = lshr i64 %i.te, 7
  %i.yl = xor i64 %i.yj, %i.yk
  %i.ym = load i64, ptr %i.lc, align 8
  %i.yn = add i64 %i.ug, %i.yl
  %i.yo = add i64 %i.yn, %i.ym
  %i.yp = add i64 %i.yo, %i.yg                    ; 6 uses
  %i.yq = getelementptr i8, ptr %i.t, i64 208
  store i64 %i.yp, ptr %i.yq, align 8
  %i.yr = tail call i64 @llvm.fshl.i64(i64 %i.ya, i64 %i.ya, i64 45)
  %i.ys = tail call i64 @llvm.fshl.i64(i64 %i.ya, i64 %i.ya, i64 3)
  %i.yt = xor i64 %i.yr, %i.ys
  %i.yu = lshr i64 %i.ya, 6
  %i.yv = xor i64 %i.yt, %i.yu
  %i.yw = tail call i64 @llvm.fshl.i64(i64 %i.tw, i64 %i.tw, i64 63)
  %i.yx = tail call i64 @llvm.fshl.i64(i64 %i.tw, i64 %i.tw, i64 56)
  %i.yy = xor i64 %i.yw, %i.yx
  %i.yz = lshr i64 %i.tw, 7
  %i.za = xor i64 %i.yy, %i.yz
  %i.zb = load i64, ptr %i.mf, align 8
  %i.zc = add i64 %i.uy, %i.za
  %i.zd = add i64 %i.zc, %i.zb
  %i.ze = add i64 %i.zd, %i.yv                    ; 6 uses
  %i.zf = getelementptr i8, ptr %i.t, i64 216
  store i64 %i.ze, ptr %i.zf, align 8
  %i.zg = tail call i64 @llvm.fshl.i64(i64 %i.yp, i64 %i.yp, i64 45)
  %i.zh = tail call i64 @llvm.fshl.i64(i64 %i.yp, i64 %i.yp, i64 3)
  %i.zi = xor i64 %i.zg, %i.zh
  %i.zj = lshr i64 %i.yp, 6
  %i.zk = xor i64 %i.zi, %i.zj
  %i.zl = tail call i64 @llvm.fshl.i64(i64 %i.uo, i64 %i.uo, i64 63)
  %i.zm = tail call i64 @llvm.fshl.i64(i64 %i.uo, i64 %i.uo, i64 56)
  %i.zn = xor i64 %i.zl, %i.zm
  %i.zo = lshr i64 %i.uo, 7
  %i.zp = xor i64 %i.zn, %i.zo
  %i.zq = load i64, ptr %i.ni, align 8
  %i.zr = add i64 %i.vq, %i.zp
  %i.zs = add i64 %i.zr, %i.zq
  %i.zt = add i64 %i.zs, %i.zk                    ; 6 uses
  %i.zu = getelementptr i8, ptr %i.t, i64 224
  store i64 %i.zt, ptr %i.zu, align 8
  %i.zv = tail call i64 @llvm.fshl.i64(i64 %i.ze, i64 %i.ze, i64 45)
  %i.zw = tail call i64 @llvm.fshl.i64(i64 %i.ze, i64 %i.ze, i64 3)
  %i.zx = xor i64 %i.zv, %i.zw
  %i.zy = lshr i64 %i.ze, 6
  %i.zz = xor i64 %i.zx, %i.zy
  %i.aaa = tail call i64 @llvm.fshl.i64(i64 %i.vg, i64 %i.vg, i64 63)
  %i.aab = tail call i64 @llvm.fshl.i64(i64 %i.vg, i64 %i.vg, i64 56)
  %i.aac = xor i64 %i.aaa, %i.aab
  %i.aad = lshr i64 %i.vg, 7
  %i.aae = xor i64 %i.aac, %i.aad
  %i.aaf = load i64, ptr %i.ol, align 8
  %i.aag = add i64 %i.wg, %i.aae
  %i.aah = add i64 %i.aag, %i.aaf
  %i.aai = add i64 %i.aah, %i.zz                  ; 6 uses
  %i.aaj = getelementptr i8, ptr %i.t, i64 232
  store i64 %i.aai, ptr %i.aaj, align 8
  %i.aak = tail call i64 @llvm.fshl.i64(i64 %i.zt, i64 %i.zt, i64 45)
  %i.aal = tail call i64 @llvm.fshl.i64(i64 %i.zt, i64 %i.zt, i64 3)
  %i.aam = xor i64 %i.aak, %i.aal
  %i.aan = lshr i64 %i.zt, 6
  %i.aao = xor i64 %i.aam, %i.aan
  %i.aap = tail call i64 @llvm.fshl.i64(i64 %i.sf, i64 %i.sf, i64 63)
  %i.aaq = tail call i64 @llvm.fshl.i64(i64 %i.sf, i64 %i.sf, i64 56)
  %i.aar = xor i64 %i.aap, %i.aaq
  %i.aas = lshr i64 %i.sf, 7
  %i.aat = xor i64 %i.aar, %i.aas
  %i.aau = add i64 %i.aat, %i.rm
  %i.aav = add i64 %i.aau, %i.ww
  %i.aaw = add i64 %i.aav, %i.aao
  %i.aax = getelementptr i8, ptr %i.t, i64 240
  store i64 %i.aaw, ptr %i.aax, align 8
  %i.aay = tail call i64 @llvm.fshl.i64(i64 %i.aai, i64 %i.aai, i64 45)
  %i.aaz = tail call i64 @llvm.fshl.i64(i64 %i.aai, i64 %i.aai, i64 3)
  %i.aba = xor i64 %i.aay, %i.aaz
  %i.abb = lshr i64 %i.aai, 6
  %i.abc = xor i64 %i.aba, %i.abb
  %i.abd = tail call i64 @llvm.fshl.i64(i64 %i.sc, i64 %i.sc, i64 63)
  %i.abe = tail call i64 @llvm.fshl.i64(i64 %i.sc, i64 %i.sc, i64 56)
  %i.abf = xor i64 %i.abd, %i.abe
  %i.abg = lshr i64 %i.sc, 7
  %i.abh = xor i64 %i.abf, %i.abg
  %i.abi = load i64, ptr %i.qr, align 8
  %i.abj = add i64 %i.xm, %i.abh
  %i.abk = add i64 %i.abj, %i.abi
  %i.abl = add i64 %i.abk, %i.abc
  %i.abm = getelementptr i8, ptr %i.t, i64 248
  store i64 %i.abl, ptr %i.abm, align 8
  br label %bb.b

split:                                            ; preds = %bb.b
  %i.abn = load i64, ptr %0, align 8
  %i.abo = add i64 %i.abn, %i.rk
  store i64 %i.abo, ptr %0, align 8
  %i.abp = load i64, ptr %43, align 8
  %i.abq = getelementptr i8, ptr %0, i64 8        ; 2 uses
  %i.abr = load i64, ptr %i.abq, align 8
  %i.abs = add i64 %i.abr, %i.abp
  store i64 %i.abs, ptr %i.abq, align 8
  %i.abt = load i64, ptr %44, align 8
  %i.abu = getelementptr i8, ptr %0, i64 16       ; 2 uses
  %i.abv = load i64, ptr %i.abu, align 8
  %i.abw = add i64 %i.abv, %i.abt
  store i64 %i.abw, ptr %i.abu, align 8
  %i.abx = load i64, ptr %42, align 8
  %i.aby = getelementptr i8, ptr %0, i64 24       ; 2 uses
  %i.abz = load i64, ptr %i.aby, align 8
  %i.aca = add i64 %i.abz, %i.abx
  store i64 %i.aca, ptr %i.aby, align 8
  %i.acb = load i64, ptr %38, align 8
  %i.acc = getelementptr i8, ptr %0, i64 32       ; 2 uses
  %i.acd = load i64, ptr %i.acc, align 8
  %i.ace = add i64 %i.acd, %i.acb
  store i64 %i.ace, ptr %i.acc, align 8
  %i.acf = load i64, ptr %39, align 8
  %i.acg = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.ach = load i64, ptr %i.acg, align 8
  %i.aci = add i64 %i.ach, %i.acf
  store i64 %i.aci, ptr %i.acg, align 8
  %i.acj = load i64, ptr %40, align 8
  %i.ack = getelementptr i8, ptr %0, i64 48       ; 2 uses
  %i.acl = load i64, ptr %i.ack, align 8
  %i.acm = add i64 %i.acl, %i.acj
  store i64 %i.acm, ptr %i.ack, align 8
  %i.acn = load i64, ptr %41, align 8
  %i.aco = getelementptr i8, ptr %0, i64 56       ; 2 uses
  %i.acp = load i64, ptr %i.aco, align 8
  %i.acq = add i64 %i.acp, %i.acn
  store i64 %i.acq, ptr %i.aco, align 8
  ret void
}

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_hash_sha512_final(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i64], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  fence acquire
  %i.b = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 127                        ; 5 uses
  %i.g = icmp samesign ult i32 %i.f, 112
  br i1 %i.g, label %.lr.ph.i, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.a
  %i.h = sub nuw nsw i32 128, %i.f
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep.i = getelementptr i8, ptr %i.j, i64 80
  %i.k = zext nneg i32 %i.h to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 16 dereferenceable(1) @PAD, i64 %i.k, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  call fastcc void @SHA512_Transform(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.l, i8 noundef 0, i64 noundef 112, i1 noundef false) #6
  br label %SHA512_Pad.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = zext nneg i32 %i.f to i64
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep32.i = getelementptr i8, ptr %i.o, i64 80
  %narrow.i = sub nuw nsw i32 112, %i.f
  %i.p = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep32.i, ptr nonnull align 16 @PAD, i64 %i.p, i1 false)
  br label %SHA512_Pad.exit

SHA512_Pad.exit:                                  ; preds = %.preheader28.i, %.lr.ph.i
  %i.q = getelementptr i8, ptr %0, i64 64
  %i.r = getelementptr i8, ptr %0, i64 192
  %i.s = load <8 x i8>, ptr %i.q, align 8
  %i.t = shufflevector <8 x i8> %i.s, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.t, ptr %i.r, align 8
  %i.u = getelementptr i8, ptr %0, i64 200
  %i.v = load <8 x i8>, ptr %i.b, align 8
  %i.w = shufflevector <8 x i8> %i.v, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.w, ptr %i.u, align 8
  %i.x = getelementptr i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  call fastcc void @SHA512_Transform(ptr noundef nonnull %0, ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.y)
  %i.z = load <8 x i8>, ptr %0, align 8
  %i.aa = shufflevector <8 x i8> %i.z, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.aa, ptr %1, align 1
  %i.ab = getelementptr i8, ptr %1, i64 8
  %i.ac = getelementptr i8, ptr %0, i64 8
  %i.ad = load <8 x i8>, ptr %i.ac, align 8
  %i.ae = shufflevector <8 x i8> %i.ad, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.ae, ptr %i.ab, align 1
  %i.af = getelementptr i8, ptr %1, i64 16
  %i.ag = getelementptr i8, ptr %0, i64 16
  %i.ah = load <8 x i8>, ptr %i.ag, align 8
  %i.ai = shufflevector <8 x i8> %i.ah, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.ai, ptr %i.af, align 1
  %i.aj = getelementptr i8, ptr %1, i64 24
  %i.ak = getelementptr i8, ptr %0, i64 24
  %i.al = load <8 x i8>, ptr %i.ak, align 8
  %i.am = shufflevector <8 x i8> %i.al, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.am, ptr %i.aj, align 1
  %i.an = getelementptr i8, ptr %1, i64 32
  %i.ao = getelementptr i8, ptr %0, i64 32
  %i.ap = load <8 x i8>, ptr %i.ao, align 8
  %i.aq = shufflevector <8 x i8> %i.ap, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.aq, ptr %i.an, align 1
  %i.ar = getelementptr i8, ptr %1, i64 40
  %i.as = getelementptr i8, ptr %0, i64 40
  %i.at = load <8 x i8>, ptr %i.as, align 8
  %i.au = shufflevector <8 x i8> %i.at, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.au, ptr %i.ar, align 1
  %i.av = getelementptr i8, ptr %1, i64 48
  %i.aw = getelementptr i8, ptr %0, i64 48
  %i.ax = load <8 x i8>, ptr %i.aw, align 8
  %i.ay = shufflevector <8 x i8> %i.ax, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.ay, ptr %i.av, align 1
  %i.az = getelementptr i8, ptr %1, i64 56
  %i.ba = getelementptr i8, ptr %0, i64 56
  %i.bb = load <8 x i8>, ptr %i.ba, align 8
  %i.bc = shufflevector <8 x i8> %i.bb, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.bc, ptr %i.az, align 1
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 704) #6
  call void @sodium_memzero(ptr noundef nonnull %0, i64 noundef 208) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_hash_sha512(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.crypto_hash_sha512_state, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) @crypto_hash_sha512_init.sha512_initial_state, i64 noundef 64, i1 noundef false) #6
  %i.b = call i32 @crypto_hash_sha512_update(ptr noundef %3, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.c = call i32 @crypto_hash_sha512_final(ptr noundef %3, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4, !17, !18}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !4, !17, !18}
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !4, !17}
!10 = distinct !{!10, !4, !17}
!11 = distinct !{!11, !4, !17, !18}
!12 = distinct !{!12, !4, !17, !18}
!13 = distinct !{!13, !19}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4, !17}
!16 = !{!"branch_weights", i32 4, i32 28}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = distinct !{!21, !4}
end_hunk_0
