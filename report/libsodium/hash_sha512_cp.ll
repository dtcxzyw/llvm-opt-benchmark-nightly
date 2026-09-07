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

.preheader51.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.152.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec69, %vec.epilog.middle.block ] ; 3 uses
  %3 = sub nsw i64 0, %i.h
  %i.ar = add nuw nsw i64 %.152.ph, %i.i
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader51.prol.loopexit, label %.preheader51.prol

.preheader51.prol:                                ; preds = %.preheader51.preheader, %.preheader51.prol
  %.152.prol = phi i64 [ %i.av, %.preheader51.prol ], [ %.152.ph, %.preheader51.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader51.prol ], [ 0, %.preheader51.preheader ]
  %i.as = getelementptr i8, ptr %1, i64 %.152.prol
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr i8, ptr %i.s, i64 %.152.prol
  store i8 %i.at, ptr %i.au, align 1
  %i.av = add nuw nsw i64 %.152.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader51.prol.loopexit, label %.preheader51.prol, !llvm.loop !6

.preheader51.prol.loopexit:                       ; preds = %.preheader51.prol, %.preheader51.preheader
  %.152.unr = phi i64 [ %.152.ph, %.preheader51.preheader ], [ %i.av, %.preheader51.prol ]
  %i.aw = add nsw i64 %i.ar, -125
  %i.ax = icmp ult i64 %i.aw, 3
  br i1 %i.ax, label %.loopexit131, label %.preheader51

iter.check118:                                    ; preds = %bb.b
  %min.iters.check105 = icmp ult i64 %2, 4
  br i1 %min.iters.check105, label %.preheader.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %iter.check118
  %i.ay = add i64 %i.i, %i.b
  %i.az = sub i64 %i.ay, %i.a
  %i.ba = add i64 %i.az, 79
  %diff.check104 = icmp ult i64 %i.ba, 15
  br i1 %diff.check104, label %.preheader.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %vector.memcheck103
  %min.iters.check107 = icmp ult i64 %2, 16
  br i1 %min.iters.check107, label %vec.epilog.ph122, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.bb = and i64 %2, 12
  %n.vec109 = and i64 %2, -16                     ; 9 uses
  %i.bc = getelementptr i8, ptr %1, i64 8
  %wide.load112 = load <8 x i8>, ptr %1, align 1
  %wide.load113 = load <8 x i8>, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %i.s, i64 8
  store <8 x i8> %wide.load112, ptr %i.s, align 1
  store <8 x i8> %wide.load113, ptr %i.bd, align 1
  %i.be = icmp eq i64 %n.vec109, 16
  br i1 %i.be, label %middle.block115, label %vector.body110.1

vector.body110.1:                                 ; preds = %vector.ph108
  %i.bf = getelementptr i8, ptr %1, i64 16
  %i.bg = getelementptr i8, ptr %1, i64 24
  %wide.load112.1 = load <8 x i8>, ptr %i.bf, align 1
  %wide.load113.1 = load <8 x i8>, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %i.s, i64 16
  %i.bi = getelementptr i8, ptr %i.s, i64 24
  store <8 x i8> %wide.load112.1, ptr %i.bh, align 1
  store <8 x i8> %wide.load113.1, ptr %i.bi, align 1
  %i.bj = icmp eq i64 %n.vec109, 32
  br i1 %i.bj, label %middle.block115, label %vector.body110.2

vector.body110.2:                                 ; preds = %vector.body110.1
  %i.bk = getelementptr i8, ptr %1, i64 32
  %i.bl = getelementptr i8, ptr %1, i64 40
  %wide.load112.2 = load <8 x i8>, ptr %i.bk, align 1
  %wide.load113.2 = load <8 x i8>, ptr %i.bl, align 1
  %i.bm = getelementptr i8, ptr %i.s, i64 32
  %i.bn = getelementptr i8, ptr %i.s, i64 40
  store <8 x i8> %wide.load112.2, ptr %i.bm, align 1
  store <8 x i8> %wide.load113.2, ptr %i.bn, align 1
  %i.bo = icmp eq i64 %n.vec109, 48
  br i1 %i.bo, label %middle.block115, label %vector.body110.3

vector.body110.3:                                 ; preds = %vector.body110.2
  %i.bp = getelementptr i8, ptr %1, i64 48
  %i.bq = getelementptr i8, ptr %1, i64 56
  %wide.load112.3 = load <8 x i8>, ptr %i.bp, align 1
  %wide.load113.3 = load <8 x i8>, ptr %i.bq, align 1
  %i.br = getelementptr i8, ptr %i.s, i64 48
  %i.bs = getelementptr i8, ptr %i.s, i64 56
  store <8 x i8> %wide.load112.3, ptr %i.br, align 1
  store <8 x i8> %wide.load113.3, ptr %i.bs, align 1
  %i.bt = icmp eq i64 %n.vec109, 64
  br i1 %i.bt, label %middle.block115, label %vector.body110.4

vector.body110.4:                                 ; preds = %vector.body110.3
  %i.bu = getelementptr i8, ptr %1, i64 64
  %i.bv = getelementptr i8, ptr %1, i64 72
  %wide.load112.4 = load <8 x i8>, ptr %i.bu, align 1
  %wide.load113.4 = load <8 x i8>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %i.s, i64 64
  %i.bx = getelementptr i8, ptr %i.s, i64 72
  store <8 x i8> %wide.load112.4, ptr %i.bw, align 1
  store <8 x i8> %wide.load113.4, ptr %i.bx, align 1
  %i.by = icmp eq i64 %n.vec109, 80
  br i1 %i.by, label %middle.block115, label %vector.body110.5

vector.body110.5:                                 ; preds = %vector.body110.4
  %i.bz = getelementptr i8, ptr %1, i64 80
  %i.ca = getelementptr i8, ptr %1, i64 88
  %wide.load112.5 = load <8 x i8>, ptr %i.bz, align 1
  %wide.load113.5 = load <8 x i8>, ptr %i.ca, align 1
  %i.cb = getelementptr i8, ptr %i.s, i64 80
  %i.cc = getelementptr i8, ptr %i.s, i64 88
  store <8 x i8> %wide.load112.5, ptr %i.cb, align 1
  store <8 x i8> %wide.load113.5, ptr %i.cc, align 1
  %i.cd = icmp eq i64 %n.vec109, 96
  br i1 %i.cd, label %middle.block115, label %vector.body110.6

vector.body110.6:                                 ; preds = %vector.body110.5
  %i.ce = getelementptr i8, ptr %1, i64 96
  %i.cf = getelementptr i8, ptr %1, i64 104
  %wide.load112.6 = load <8 x i8>, ptr %i.ce, align 1
  %wide.load113.6 = load <8 x i8>, ptr %i.cf, align 1
  %i.cg = getelementptr i8, ptr %i.s, i64 96
  %i.ch = getelementptr i8, ptr %i.s, i64 104
  store <8 x i8> %wide.load112.6, ptr %i.cg, align 1
  store <8 x i8> %wide.load113.6, ptr %i.ch, align 1
  br label %middle.block115

middle.block115:                                  ; preds = %vector.body110.6, %vector.body110.5, %vector.body110.4, %vector.body110.3, %vector.body110.2, %vector.body110.1, %vector.ph108
  %cmp.n116 = icmp eq i64 %2, %n.vec109
  br i1 %cmp.n116, label %.loopexit, label %vec.epilog.iter.check120

vec.epilog.iter.check120:                         ; preds = %middle.block115
  %min.epilog.iters.check121 = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check121, label %.preheader.preheader, label %vec.epilog.ph122, !prof !20

vec.epilog.ph122:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check120
  %vec.epilog.resume.val117 = phi i64 [ %n.vec109, %vec.epilog.iter.check120 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec123 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph122
  %index125 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph122 ], [ %index.next127, %vec.epilog.vector.body124 ] ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 %index125
  %wide.load126 = load <4 x i8>, ptr %i.ci, align 1
  %i.cj = getelementptr i8, ptr %i.s, i64 %index125
  store <4 x i8> %wide.load126, ptr %i.cj, align 1
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.ck, label %vec.epilog.middle.block128, label %vec.epilog.vector.body124, !llvm.loop !7

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body124
  %cmp.n129 = icmp eq i64 %2, %n.vec123
  br i1 %cmp.n129, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck103, %iter.check118, %vec.epilog.iter.check120, %vec.epilog.middle.block128
  %.058.ph = phi i64 [ 0, %iter.check118 ], [ 0, %vector.memcheck103 ], [ %n.vec109, %vec.epilog.iter.check120 ], [ %n.vec123, %vec.epilog.middle.block128 ] ; 3 uses
  %xtraiter136 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.058.prol = phi i64 [ %i.co, %.preheader.prol ], [ %.058.ph, %.preheader.preheader ] ; 3 uses
  %prol.iter138 = phi i64 [ %prol.iter138.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cl = getelementptr i8, ptr %1, i64 %.058.prol
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr i8, ptr %i.s, i64 %.058.prol
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = add nuw nsw i64 %.058.prol, 1           ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.058.unr = phi i64 [ %.058.ph, %.preheader.preheader ], [ %i.co, %.preheader.prol ]
  %i.cp = sub i64 %.058.ph, %2
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.058 = phi i64 [ %i.dg, %.preheader ], [ %.058.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr i8, ptr %1, i64 %.058
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = getelementptr i8, ptr %i.s, i64 %.058
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = add nuw nsw i64 %.058, 1                ; 2 uses
  %i.cv = getelementptr i8, ptr %1, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr i8, ptr %i.s, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1
  %i.cy = add nuw nsw i64 %.058, 2                ; 2 uses
  %i.cz = getelementptr i8, ptr %1, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = getelementptr i8, ptr %i.s, i64 %i.cy
  store i8 %i.da, ptr %i.db, align 1
  %i.dc = add nuw nsw i64 %.058, 3                ; 2 uses
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr i8, ptr %i.s, i64 %i.dc
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = add nuw nsw i64 %.058, 4                ; 2 uses
  %exitcond61.not.3 = icmp eq i64 %i.dg, %2
  br i1 %exitcond61.not.3, label %.loopexit, label %.preheader, !llvm.loop !9

.preheader51:                                     ; preds = %.preheader51.prol.loopexit, %.preheader51
  %.152 = phi i64 [ %i.dw, %.preheader51 ], [ %.152.unr, %.preheader51.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr i8, ptr %1, i64 %.152
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr i8, ptr %i.s, i64 %.152
end_hunk_0
