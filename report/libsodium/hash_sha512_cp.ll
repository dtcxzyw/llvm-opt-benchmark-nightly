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
  %i.bh = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 31 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr [8 x i8], ptr @Krnd, i64 %indvars.iv
  %i.bk = load i64, ptr %i.bj, align 16
  %i.bl = load i64, ptr %i.as, align 8
  %i.bm = add i64 %i.bi, %i.bb
  %i.bn = add i64 %i.bm, %i.bk
  %i.bo = add i64 %i.bn, %i.bg
  %i.bp = add i64 %i.bo, %i.bl                    ; 2 uses
  %i.bq = load i64, ptr %i.at, align 8
  %i.br = add i64 %i.bp, %i.bq                    ; 12 uses
  store i64 %i.br, ptr %i.at, align 8
  %i.bs = load i64, ptr %3, align 8               ; 12 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 36)
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 30)
  %i.bv = xor i64 %i.bt, %i.bu
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 25)
  %i.bx = xor i64 %i.bv, %i.bw
  %i.by = load i64, ptr %i.au, align 8            ; 5 uses
  %i.bz = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ca = or i64 %i.bz, %i.by
  %i.cb = and i64 %i.ca, %i.bs
  %i.cc = and i64 %i.bz, %i.by
  %i.cd = or i64 %i.cb, %i.cc
  %i.ce = add i64 %i.bx, %i.bp
  %i.cf = add i64 %i.ce, %i.cd                    ; 13 uses
  store i64 %i.cf, ptr %i.as, align 8
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 50)
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 46)
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 23)
  %i.ck = xor i64 %i.ci, %i.cj
  %i.cl = xor i64 %i.bc, %i.aw
  %i.cm = and i64 %i.br, %i.cl
  %i.cn = xor i64 %i.cm, %i.bc
  %i.co = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %2, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr [8 x i8], ptr @Krnd, i64 %i.co
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = add i64 %i.cn, %i.bd
  %i.cu = add i64 %i.ct, %i.ck
  %i.cv = add i64 %i.cu, %i.cq
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  %i.cx = add i64 %i.cw, %i.bz                    ; 12 uses
  store i64 %i.cx, ptr %i.av, align 8
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 36)
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 30)
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 25)
  %i.dc = xor i64 %i.da, %i.db
  %i.dd = or i64 %i.by, %i.bs
  %i.de = and i64 %i.cf, %i.dd
  %i.df = and i64 %i.by, %i.bs
  %i.dg = or i64 %i.de, %i.df
  %i.dh = add i64 %i.dg, %i.cw
  %i.di = add i64 %i.dh, %i.dc                    ; 13 uses
  store i64 %i.di, ptr %i.ar, align 8
  %i.dj = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 50)
  %i.dk = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 46)
  %i.dl = xor i64 %i.dj, %i.dk
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 23)
  %i.dn = xor i64 %i.dl, %i.dm
  %i.do = xor i64 %i.br, %i.aw
  %i.dp = and i64 %i.cx, %i.do
  %i.dq = xor i64 %i.dp, %i.aw
  %i.dr = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %2, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr [8 x i8], ptr @Krnd, i64 %i.dr
  %i.dv = load i64, ptr %i.du, align 16
  %i.dw = add i64 %i.dt, %i.bc
  %i.dx = add i64 %i.dw, %i.dv
  %i.dy = add i64 %i.dx, %i.dq
  %i.dz = add i64 %i.dy, %i.dn                    ; 2 uses
  %i.ea = add i64 %i.dz, %i.by                    ; 12 uses
  store i64 %i.ea, ptr %i.au, align 8
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 36)
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 30)
  %i.ed = xor i64 %i.eb, %i.ec
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 25)
  %i.ef = xor i64 %i.ed, %i.ee
  %i.eg = or i64 %i.cf, %i.bs
  %i.eh = and i64 %i.di, %i.eg
  %i.ei = and i64 %i.cf, %i.bs
  %i.ej = or i64 %i.eh, %i.ei
  %i.ek = add i64 %i.ef, %i.ej
  %i.el = add i64 %i.ek, %i.dz                    ; 13 uses
  store i64 %i.el, ptr %i.aq, align 8
  %i.em = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 50)
  %i.en = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 46)
  %i.eo = xor i64 %i.em, %i.en
  %i.ep = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 23)
  %i.eq = xor i64 %i.eo, %i.ep
  %i.er = xor i64 %i.cx, %i.br
  %i.es = and i64 %i.ea, %i.er
  %i.et = xor i64 %i.es, %i.br
  %i.eu = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %2, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr [8 x i8], ptr @Krnd, i64 %i.eu
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = add i64 %i.ew, %i.aw
  %i.fa = add i64 %i.ez, %i.ey
  %i.fb = add i64 %i.fa, %i.et
  %i.fc = add i64 %i.fb, %i.eq                    ; 2 uses
  %i.fd = add i64 %i.fc, %i.bs                    ; 12 uses
  store i64 %i.fd, ptr %3, align 8
  %i.fe = tail call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 36)
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 30)
  %i.fg = xor i64 %i.fe, %i.ff
  %i.fh = tail call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 25)
  %i.fi = xor i64 %i.fg, %i.fh
  %i.fj = or i64 %i.di, %i.cf
  %i.fk = and i64 %i.el, %i.fj
  %i.fl = and i64 %i.di, %i.cf
  %i.fm = or i64 %i.fk, %i.fl
  %i.fn = add i64 %i.fi, %i.fm
  %i.fo = add i64 %i.fn, %i.fc                    ; 13 uses
  store i64 %i.fo, ptr %i.ap, align 8
  %i.fp = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 50)
  %i.fq = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 46)
  %i.fr = xor i64 %i.fp, %i.fq
  %i.fs = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 23)
  %i.ft = xor i64 %i.fr, %i.fs
  %i.fu = xor i64 %i.ea, %i.cx
  %i.fv = and i64 %i.fd, %i.fu
  %i.fw = xor i64 %i.fv, %i.cx
  %i.fx = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %i.fy = getelementptr [8 x i8], ptr %2, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr [8 x i8], ptr @Krnd, i64 %i.fx
  %i.gb = load i64, ptr %i.ga, align 16
  %i.gc = add i64 %i.fz, %i.br
  %i.gd = add i64 %i.gc, %i.gb
  %i.ge = add i64 %i.gd, %i.fw
  %i.gf = add i64 %i.ge, %i.ft                    ; 2 uses
  %i.gg = add i64 %i.gf, %i.cf                    ; 12 uses
  store i64 %i.gg, ptr %i.as, align 8
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 36)
  %i.gi = tail call i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 30)
  %i.gj = xor i64 %i.gh, %i.gi
  %i.gk = tail call i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 25)
  %i.gl = xor i64 %i.gj, %i.gk
  %i.gm = or i64 %i.el, %i.di
  %i.gn = and i64 %i.fo, %i.gm
  %i.go = and i64 %i.el, %i.di
  %i.gp = or i64 %i.gn, %i.go
  %i.gq = add i64 %i.gl, %i.gp
  %i.gr = add i64 %i.gq, %i.gf                    ; 13 uses
  store i64 %i.gr, ptr %i.at, align 8
  %i.gs = tail call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 50)
  %i.gt = tail call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 46)
  %i.gu = xor i64 %i.gs, %i.gt
  %i.gv = tail call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 23)
  %i.gw = xor i64 %i.gu, %i.gv
  %i.gx = xor i64 %i.fd, %i.ea
  %i.gy = and i64 %i.gg, %i.gx
  %i.gz = xor i64 %i.gy, %i.ea
  %i.ha = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %i.hb = getelementptr [8 x i8], ptr %2, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = getelementptr [8 x i8], ptr @Krnd, i64 %i.ha
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = add i64 %i.hc, %i.cx
  %i.hg = add i64 %i.hf, %i.he
  %i.hh = add i64 %i.hg, %i.gz
  %i.hi = add i64 %i.hh, %i.gw                    ; 2 uses
  %i.hj = add i64 %i.hi, %i.di                    ; 12 uses
  store i64 %i.hj, ptr %i.ar, align 8
  %i.hk = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 36)
  %i.hl = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 30)
  %i.hm = xor i64 %i.hk, %i.hl
  %i.hn = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 25)
  %i.ho = xor i64 %i.hm, %i.hn
end_hunk_0
begin_hunk_1_@SHA512_Transform:bb.a
  %i.ack = add i64 %i.acj, %i.acc
  %i.acl = getelementptr i8, ptr %i.bh, i64 240
  store i64 %i.ack, ptr %i.acl, align 8
  %i.acm = tail call i64 @llvm.fshl.i64(i64 %i.abw, i64 %i.abw, i64 45)
  %i.acn = tail call i64 @llvm.fshl.i64(i64 %i.abw, i64 %i.abw, i64 3)
  %i.aco = xor i64 %i.acm, %i.acn
  %i.acp = lshr i64 %i.abw, 6
  %i.acq = xor i64 %i.aco, %i.acp
  %i.acr = tail call i64 @llvm.fshl.i64(i64 %i.tq, i64 %i.tq, i64 63)
  %i.acs = tail call i64 @llvm.fshl.i64(i64 %i.tq, i64 %i.tq, i64 56)
  %i.act = xor i64 %i.acr, %i.acs
  %i.acu = lshr i64 %i.tq, 7
  %i.acv = xor i64 %i.act, %i.acu
  %i.acw = load i64, ptr %i.sf, align 8
  %i.acx = add i64 %i.za, %i.acv
  %i.acy = add i64 %i.acx, %i.acw
  %i.acz = add i64 %i.acy, %i.acq
  %i.ada = getelementptr i8, ptr %i.bh, i64 248
  store i64 %i.acz, ptr %i.ada, align 8
  br label %bb.c

split:                                            ; preds = %bb.c
  %i.adb = load i64, ptr %0, align 8
  %i.adc = add i64 %i.adb, %i.sy
  store i64 %i.adc, ptr %0, align 8
  %i.add = load i64, ptr %i.au, align 8
  %i.ade = getelementptr i8, ptr %0, i64 8        ; 2 uses
  %i.adf = load i64, ptr %i.ade, align 8
  %i.adg = add i64 %i.adf, %i.add
  store i64 %i.adg, ptr %i.ade, align 8
  %i.adh = load i64, ptr %i.av, align 8
  %i.adi = getelementptr i8, ptr %0, i64 16       ; 2 uses
  %i.adj = load i64, ptr %i.adi, align 8
  %i.adk = add i64 %i.adj, %i.adh
  store i64 %i.adk, ptr %i.adi, align 8
  %i.adl = load i64, ptr %i.at, align 8
  %i.adm = getelementptr i8, ptr %0, i64 24       ; 2 uses
  %i.adn = load i64, ptr %i.adm, align 8
  %i.ado = add i64 %i.adn, %i.adl
  store i64 %i.ado, ptr %i.adm, align 8
  %i.adp = load i64, ptr %i.ap, align 8
  %i.adq = getelementptr i8, ptr %0, i64 32       ; 2 uses
  %i.adr = load i64, ptr %i.adq, align 8
  %i.ads = add i64 %i.adr, %i.adp
  store i64 %i.ads, ptr %i.adq, align 8
  %i.adt = load i64, ptr %i.aq, align 8
  %i.adu = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.adv = load i64, ptr %i.adu, align 8
  %i.adw = add i64 %i.adv, %i.adt
  store i64 %i.adw, ptr %i.adu, align 8
  %i.adx = load i64, ptr %i.ar, align 8
  %i.ady = getelementptr i8, ptr %0, i64 48       ; 2 uses
  %i.adz = load i64, ptr %i.ady, align 8
  %i.aea = add i64 %i.adz, %i.adx
  store i64 %i.aea, ptr %i.ady, align 8
  %i.aeb = load i64, ptr %i.as, align 8
  %i.aec = getelementptr i8, ptr %0, i64 56       ; 2 uses
  %i.aed = load i64, ptr %i.aec, align 8
  %i.aee = add i64 %i.aed, %i.aeb
  store i64 %i.aee, ptr %i.aec, align 8
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
end_hunk_1
