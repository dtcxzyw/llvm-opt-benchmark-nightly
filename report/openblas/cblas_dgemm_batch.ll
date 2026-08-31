Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_dgemm_batch?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"memory alloc failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DGEMM_BATCH \00", align 1
@gemm_small_kernel_b0 = internal unnamed_addr constant [8 x i64] [i64 ptrtoint (ptr @dgemm_small_kernel_b0_nn to i64), i64 ptrtoint (ptr @dgemm_small_kernel_b0_tn to i64), i64 0, i64 0, i64 ptrtoint (ptr @dgemm_small_kernel_b0_nt to i64), i64 ptrtoint (ptr @dgemm_small_kernel_b0_tt to i64), i64 0, i64 0], align 16
@gemm_small_kernel = internal unnamed_addr constant [8 x i64] [i64 ptrtoint (ptr @dgemm_small_kernel_nn to i64), i64 ptrtoint (ptr @dgemm_small_kernel_tn to i64), i64 0, i64 0, i64 ptrtoint (ptr @dgemm_small_kernel_nt to i64), i64 ptrtoint (ptr @dgemm_small_kernel_tt to i64), i64 0, i64 0], align 16
@gemm = internal unnamed_addr constant [16 x ptr] [ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nt, ptr @dgemm_tt, ptr @dgemm_nt, ptr @dgemm_tt, ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nt, ptr @dgemm_tt, ptr @dgemm_nt, ptr @dgemm_tt], align 16

; Function Attrs: nounwind uwtable
define void @cblas_dgemm_batch(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef readonly captures(none) %13, i32 noundef %14, ptr nofree noundef readonly captures(none) %15) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp sgt i32 %14, 0
  br i1 %i.b, label %iter.check, label %._crit_edge.thread

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %14 to i64     ; 6 uses
  %min.iters.check = icmp ult i32 %14, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check337 = icmp ult i32 %14, 32
  br i1 %min.iters.check337, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi338 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi339 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi340 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %index ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %wide.load = load <8 x i32>, ptr %i.d, align 4, !tbaa !8
  %wide.load341 = load <8 x i32>, ptr %i.e, align 4, !tbaa !8
  %wide.load342 = load <8 x i32>, ptr %i.f, align 4, !tbaa !8
  %wide.load343 = load <8 x i32>, ptr %i.g, align 4, !tbaa !8
  %i.h = add <8 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.i = add <8 x i32> %wide.load341, %vec.phi338 ; 2 uses
  %i.j = add <8 x i32> %wide.load342, %vec.phi339 ; 2 uses
  %i.k = add <8 x i32> %wide.load343, %vec.phi340 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.i, %i.h
  %bin.rdx344 = add <8 x i32> %i.j, %bin.rdx
  %bin.rdx345 = add <8 x i32> %i.k, %bin.rdx344
  %i.m = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx345) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.m, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec346 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.n = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index347 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next350, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi348 = phi <4 x i32> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %index347
  %wide.load349 = load <4 x i32>, ptr %i.o, align 4, !tbaa !8
  %i.p = add <4 x i32> %wide.load349, %vec.phi348 ; 2 uses
  %index.next350 = add nuw i64 %index347, 4       ; 2 uses
  %i.q = icmp eq i64 %index.next350, %n.vec346
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.p) ; 2 uses
  %cmp.n351 = icmp eq i64 %n.vec346, %wide.trip.count
  br i1 %cmp.n351, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec346, %vec.epilog.middle.block ]
  %.0236255.ph = phi i32 [ 0, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0236255 = phi i32 [ %i.u, %.lr.ph ], [ %.0236255.ph, %.lr.ph.preheader ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = add nsw i32 %i.t, %.0236255              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.r, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %i.u, %.lr.ph ]
  %i.v = sext i32 %.lcssa to i64
  %i.w = mul nsw i64 %i.v, 136
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #8 ; 11 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %.lr.ph274

._crit_edge.thread:                               ; preds = %bb.a
  %i.z = tail call noalias ptr @malloc(i64 noundef 0) #8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %._crit_edge275.thread

.lr.ph274:                                        ; preds = %._crit_edge
  %i.ab = icmp eq i32 %0, 102                     ; 2 uses
  %i.ac = icmp eq i32 %0, 101
  %wide.trip.count317 = zext nneg i32 %14 to i64
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  tail call void @openblas_warning(i32 noundef 0, ptr noundef nonnull @.str) #7
  br label %bb.p

bb.c:                                             ; preds = %.lr.ph274, %.loopexit
  %indvars.iv314 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next315, %.loopexit ] ; 21 uses
  %.sroa.0.0269 = phi i64 [ 0, %.lr.ph274 ], [ %.sroa.0.2, %.loopexit ] ; 2 uses
  %.0229272 = phi i32 [ 0, %.lr.ph274 ], [ %.2231, %.loopexit ] ; 3 uses
  %.0232268 = phi i32 [ 0, %.lr.ph274 ], [ %i.js, %.loopexit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv314 ; 6 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv314 ; 7 uses
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv314
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8  ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv314
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8  ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv314
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv314
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = sext i32 %i.ak to i64                   ; 4 uses
  %i.ap = sext i32 %i.ai to i64                   ; 2 uses
  %i.aq = sext i32 %i.ag to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv314
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv314
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8  ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv314
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8  ; 4 uses
  %i.ay = icmp ne i32 %i.ax, 111
  %spec.select = sext i1 %i.ay to i32
  %i.az = icmp eq i32 %i.ax, 112
  %.1221 = select i1 %i.az, i32 1, i32 %spec.select
  %i.ba = icmp eq i32 %i.ax, 114
  %.2222 = select i1 %i.ba, i32 0, i32 %.1221
  %i.bb = icmp eq i32 %i.ax, 113
  %.3223 = select i1 %i.bb, i32 1, i32 %.2222     ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv314
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8  ; 4 uses
  %i.be = icmp ne i32 %i.bd, 111
  %.0217 = sext i1 %i.be to i32
  %i.bf = icmp eq i32 %i.bd, 112
  %.1218 = select i1 %i.bf, i32 1, i32 %.0217
  %i.bg = icmp eq i32 %i.bd, 114
  %.2219 = select i1 %i.bg, i32 0, i32 %.1218
  %i.bh = icmp eq i32 %i.bd, 113
  %.3 = select i1 %i.bh, i32 1, i32 %.2219        ; 3 uses
  %i.bi = and i32 %.3223, 1
  %.not249 = icmp eq i32 %i.bi, 0
  %.0215 = select i1 %.not249, i64 %i.aq, i64 %i.ao
  %i.bj = and i32 %.3, 1
  %.not250 = icmp eq i32 %i.bj, 0
  %.0213 = select i1 %.not250, i64 %i.ao, i64 %i.ap
  %i.bk = icmp slt i32 %i.av, %i.ag
  %spec.store.select = select i1 %i.bk, i32 13, i32 -1
  %i.bl = icmp sgt i64 %.0213, %i.at
  %spec.store.select3 = select i1 %i.bl, i32 10, i32 %spec.store.select
  %i.bm = icmp sgt i64 %.0215, %i.an
  %spec.store.select5 = select i1 %i.bm, i32 8, i32 %spec.store.select3
  %i.bn = icmp slt i32 %i.ak, 0
  %spec.store.select7 = select i1 %i.bn, i32 5, i32 %spec.store.select5
  %i.bo = icmp slt i32 %i.ai, 0
  %spec.store.select9 = select i1 %i.bo, i32 4, i32 %spec.store.select7
  %i.bp = icmp slt i32 %i.ag, 0
  %spec.store.select11 = select i1 %i.bp, i32 3, i32 %spec.store.select9
  %i.bq = icmp slt i32 %.3, 0
  %spec.store.select13 = select i1 %i.bq, i32 2, i32 %spec.store.select11
  %i.br = icmp slt i32 %.3223, 0
  %i.bs = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.bt = insertelement <2 x i64> %i.bs, i64 %i.an, i64 1
  br i1 %i.br, label %.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  br i1 %i.ac, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv314
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8  ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv314
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8  ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv314
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8  ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv314
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = sext i32 %i.bz to i64                   ; 4 uses
  %i.ce = sext i32 %i.bx to i64                   ; 2 uses
  %i.cf = sext i32 %i.bv to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv314
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv314
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8  ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv314
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8  ; 4 uses
  %i.cn = icmp ne i32 %i.cm, 111
  %spec.select252 = sext i1 %i.cn to i32
  %i.co = icmp eq i32 %i.cm, 112
  %.5225 = select i1 %i.co, i32 1, i32 %spec.select252
  %i.cp = icmp eq i32 %i.cm, 114
  %.6226 = select i1 %i.cp, i32 0, i32 %.5225
  %i.cq = icmp eq i32 %i.cm, 113
  %.7227 = select i1 %i.cq, i32 1, i32 %.6226     ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv314
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !8  ; 4 uses
  %i.ct = icmp ne i32 %i.cs, 111
  %.4 = sext i1 %i.ct to i32
  %i.cu = icmp eq i32 %i.cs, 112
  %.5 = select i1 %i.cu, i32 1, i32 %.4
  %i.cv = icmp eq i32 %i.cs, 114
  %.6 = select i1 %i.cv, i32 0, i32 %.5
  %i.cw = icmp eq i32 %i.cs, 113
  %.7 = select i1 %i.cw, i32 1, i32 %.6           ; 3 uses
  %i.cx = and i32 %.7227, 1
  %.not = icmp eq i32 %i.cx, 0
  %.1216 = select i1 %.not, i64 %i.cf, i64 %i.cd
  %i.cy = and i32 %.7, 1
  %.not248 = icmp eq i32 %i.cy, 0
  %.1214 = select i1 %.not248, i64 %i.cd, i64 %i.ce
  %i.cz = icmp slt i32 %i.ck, %i.bv
  %spec.store.select1 = select i1 %i.cz, i32 13, i32 -1
  %i.da = icmp sgt i64 %.1214, %i.ci
  %spec.store.select4 = select i1 %i.da, i32 10, i32 %spec.store.select1
  %i.db = icmp sgt i64 %.1216, %i.cc
  %spec.store.select6 = select i1 %i.db, i32 8, i32 %spec.store.select4
  %i.dc = icmp slt i32 %i.bz, 0
  %spec.store.select8 = select i1 %i.dc, i32 5, i32 %spec.store.select6
  %i.dd = icmp slt i32 %i.bx, 0
  %spec.store.select10 = select i1 %i.dd, i32 4, i32 %spec.store.select8
  %i.de = icmp slt i32 %i.bv, 0
  %spec.store.select12 = select i1 %i.de, i32 3, i32 %spec.store.select10
  %i.df = icmp slt i32 %.7, 0
  %spec.store.select14 = select i1 %i.df, i32 2, i32 %spec.store.select12
  %i.dg = icmp slt i32 %.7227, 0
  %i.dh = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.di = insertelement <2 x i64> %i.dh, i64 %i.cc, i64 1
  br i1 %i.dg, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.dj = phi i32 [ %spec.store.select13, %bb.d ], [ %spec.store.select14, %bb.f ] ; 2 uses
  %.0243 = phi i64 [ %i.aq, %bb.d ], [ %i.cf, %bb.f ] ; 8 uses
  %.0242 = phi i64 [ %i.ap, %bb.d ], [ %i.ce, %bb.f ] ; 8 uses
  %.0241 = phi i64 [ %i.ao, %bb.d ], [ %i.cd, %bb.f ]
  %.0239 = phi i64 [ %i.at, %bb.d ], [ %i.ci, %bb.f ] ; 6 uses
  %.0238.in = phi i32 [ %i.av, %bb.d ], [ %i.ck, %bb.f ]
  %.8228 = phi i32 [ %.3223, %bb.d ], [ %.7227, %bb.f ] ; 2 uses
  %.8 = phi i32 [ %.3, %bb.d ], [ %.7, %bb.f ]    ; 2 uses
  %i.dk = phi <2 x i64> [ %i.bt, %bb.d ], [ %i.di, %bb.f ] ; 6 uses
  %.0238 = sext i32 %.0238.in to i64              ; 6 uses
  %i.dl = icmp sgt i32 %i.dj, -1
  br i1 %i.dl, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.dm = phi i32 [ %i.dj, %bb.g ], [ 1, %bb.d ], [ 0, %bb.e ], [ 1, %bb.f ]
  store i32 %i.dm, ptr %i.a, align 4
  %i.dn = call i32 @xerbla_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, i32 noundef 13) #7 ; 0 uses
  call void @free(ptr noundef %i.x) #7
  br label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.do = icmp eq i64 %.0243, 0
  %i.dp = icmp eq i64 %.0242, 0
  %or.cond = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond, label %..loopexit_crit_edge, label %bb.i

..loopexit_crit_edge:                             ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv314
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !8
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.dq = sitofp i64 %.0243 to double
  %i.dr = sitofp i64 %.0242 to double
  %i.ds = fmul nnan double %i.dq, %i.dr
  %i.dt = sitofp i64 %.0241 to double
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = fcmp ugt double %i.du, 1.000000e+06
  br i1 %i.dv, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dw = load double, ptr %i.ae, align 8, !tbaa !16
  %i.dx = fcmp oeq double %i.dw, 0.000000e+00
  %i.dy = shl nsw i32 %.8, 2
  %i.dz = or i32 %i.dy, %.8228
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds [8 x i8], ptr @gemm_small_kernel_b0, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !18
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ed = getelementptr inbounds [8 x i8], ptr @gemm_small_kernel, i64 %i.ea
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !18
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ef = shl nsw i32 %.8, 2
  %i.eg = or i32 %i.ef, %.8228
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr @gemm, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.0237 = phi i32 [ 196611, %bb.k ], [ 65539, %bb.l ], [ 3, %bb.m ] ; 6 uses
  %.0212 = phi ptr [ null, %bb.k ], [ null, %bb.l ], [ %i.ej, %bb.m ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.ec, %bb.k ], [ %i.ee, %bb.l ], [ %.sroa.0.0269, %bb.m ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv314
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8  ; 9 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph260, label %.loopexit

.lr.ph260:                                        ; preds = %bb.n
  %.not251 = icmp eq ptr %.0212, null
  %16 = inttoptr i64 %.sroa.0.1 to ptr
  %spec.select253 = select i1 %.not251, ptr %16, ptr %.0212 ; 6 uses
  %i.en = sext i32 %.0229272 to i64               ; 4 uses
  %i.eo = sext i32 %.0232268 to i64               ; 6 uses
  %wide.trip.count312 = zext nneg i32 %i.el to i64 ; 4 uses
  br i1 %i.ab, label %.lr.ph260.split.us.preheader, label %.lr.ph260.split.split.us.preheader

.lr.ph260.split.split.us.preheader:               ; preds = %.lr.ph260
  %xtraiter = and i64 %wide.trip.count312, 1
  %i.ep = icmp eq i32 %i.el, 1
  br i1 %i.ep, label %.lr.ph260.split.split.us.epil.preheader, label %.lr.ph260.split.split.us.preheader.new

.lr.ph260.split.split.us.preheader.new:           ; preds = %.lr.ph260.split.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count312, 2147483646
  %i.eq = insertelement <4 x i64> poison, i64 %.0243, i64 0
  %i.er = insertelement <4 x i64> %i.eq, i64 %.0242, i64 1
  %i.es = shufflevector <2 x i64> %i.dk, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.et = shufflevector <4 x i64> %i.er, <4 x i64> %i.es, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eu = insertelement <4 x i64> poison, i64 %.0243, i64 0
  %i.ev = insertelement <4 x i64> %i.eu, i64 %.0242, i64 1
  %i.ew = shufflevector <2 x i64> %i.dk, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ex = shufflevector <4 x i64> %i.ev, <4 x i64> %i.ew, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %.lr.ph260.split.split.us

.lr.ph260.split.us.preheader:                     ; preds = %.lr.ph260
  %xtraiter361 = and i64 %wide.trip.count312, 1
  %i.ey = icmp eq i32 %i.el, 1
  br i1 %i.ey, label %.lr.ph260.split.us.epil.preheader, label %.lr.ph260.split.us.preheader.new

.lr.ph260.split.us.preheader.new:                 ; preds = %.lr.ph260.split.us.preheader
  %unroll_iter365 = and i64 %wide.trip.count312, 2147483646
  %i.ez = insertelement <4 x i64> poison, i64 %.0243, i64 0
  %i.fa = insertelement <4 x i64> %i.ez, i64 %.0242, i64 1
  %i.fb = shufflevector <2 x i64> %i.dk, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x i64> %i.fa, <4 x i64> %i.fb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fd = insertelement <4 x i64> poison, i64 %.0243, i64 0
  %i.fe = insertelement <4 x i64> %i.fd, i64 %.0242, i64 1
  %i.ff = shufflevector <2 x i64> %i.dk, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x i64> %i.fe, <4 x i64> %i.ff, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %.lr.ph260.split.us

.lr.ph260.split.us:                               ; preds = %.lr.ph260.split.us, %.lr.ph260.split.us.preheader.new
  %indvars.iv307 = phi i64 [ 0, %.lr.ph260.split.us.preheader.new ], [ %indvars.iv.next308.1, %.lr.ph260.split.us ] ; 3 uses
  %indvars.iv305 = phi i64 [ %i.en, %.lr.ph260.split.us.preheader.new ], [ %indvars.iv.next306.1, %.lr.ph260.split.us ] ; 3 uses
  %niter366 = phi i64 [ 0, %.lr.ph260.split.us.preheader.new ], [ %niter366.next.1, %.lr.ph260.split.us ]
  %i.fh = getelementptr inbounds [136 x i8], ptr %i.x, i64 %indvars.iv305 ; 10 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store <4 x i64> %i.fc, ptr %i.fi, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 80
  store i64 %.0239, ptr %i.fj, align 8, !tbaa !22
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 88
  store i64 %.0238, ptr %i.fk, align 8, !tbaa !24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store ptr %i.ad, ptr %i.fl, align 8, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store ptr %i.ae, ptr %i.fm, align 8, !tbaa !26
  %i.fn = add nsw i64 %indvars.iv307, %i.eo       ; 3 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %7, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !27
  store ptr %i.fp, ptr %i.fh, align 8, !tbaa !29
  %i.fq = getelementptr inbounds [8 x i8], ptr %9, i64 %i.fn
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !27
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !30
  %i.ft = getelementptr inbounds [8 x i8], ptr %12, i64 %i.fn
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !27
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !31
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  store i32 %.0237, ptr %i.fw, align 8, !tbaa !32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 120
  store ptr %spec.select253, ptr %i.fx, align 8, !tbaa !33
  %indvars.iv.next308 = or disjoint i64 %indvars.iv307, 1
  %i.fy = getelementptr [136 x i8], ptr %i.x, i64 %indvars.iv305 ; 10 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 136
  %i.ga = getelementptr i8, ptr %i.fy, i64 184
  store <4 x i64> %i.fg, ptr %i.ga, align 8, !tbaa !18
  %i.gb = getelementptr i8, ptr %i.fy, i64 216
  store i64 %.0239, ptr %i.gb, align 8, !tbaa !22
  %i.gc = getelementptr i8, ptr %i.fy, i64 224
  store i64 %.0238, ptr %i.gc, align 8, !tbaa !24
  %i.gd = getelementptr i8, ptr %i.fy, i64 168
  store ptr %i.ad, ptr %i.gd, align 8, !tbaa !25
  %i.ge = getelementptr i8, ptr %i.fy, i64 176
  store ptr %i.ae, ptr %i.ge, align 8, !tbaa !26
  %i.gf = add nsw i64 %indvars.iv.next308, %i.eo  ; 3 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %7, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !27
  store ptr %i.gh, ptr %i.fz, align 8, !tbaa !29
  %i.gi = getelementptr inbounds [8 x i8], ptr %9, i64 %i.gf
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !27
  %i.gk = getelementptr i8, ptr %i.fy, i64 144
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !30
  %i.gl = getelementptr inbounds [8 x i8], ptr %12, i64 %i.gf
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !27
  %i.gn = getelementptr i8, ptr %i.fy, i64 152
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !31
  %i.go = getelementptr i8, ptr %i.fy, i64 264
  store i32 %.0237, ptr %i.go, align 8, !tbaa !32
  %i.gp = getelementptr i8, ptr %i.fy, i64 256
  store ptr %spec.select253, ptr %i.gp, align 8, !tbaa !33
  %indvars.iv.next306.1 = add nsw i64 %indvars.iv305, 2 ; 3 uses
  %indvars.iv.next308.1 = add nuw nsw i64 %indvars.iv307, 2 ; 2 uses
  %niter366.next.1 = add i64 %niter366, 2         ; 2 uses
  %niter366.ncmp.1 = icmp eq i64 %niter366.next.1, %unroll_iter365
  br i1 %niter366.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph260.split.us, !llvm.loop !34

.lr.ph260.split.split.us:                         ; preds = %.lr.ph260.split.split.us, %.lr.ph260.split.split.us.preheader.new
  %indvars.iv298 = phi i64 [ 0, %.lr.ph260.split.split.us.preheader.new ], [ %indvars.iv.next299.1, %.lr.ph260.split.split.us ] ; 3 uses
  %indvars.iv296 = phi i64 [ %i.en, %.lr.ph260.split.split.us.preheader.new ], [ %indvars.iv.next297.1, %.lr.ph260.split.split.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph260.split.split.us.preheader.new ], [ %niter.next.1, %.lr.ph260.split.split.us ]
  %i.gq = getelementptr inbounds [136 x i8], ptr %i.x, i64 %indvars.iv296 ; 10 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  store <4 x i64> %i.et, ptr %i.gr, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 80
  store i64 %.0239, ptr %i.gs, align 8, !tbaa !22
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 88
  store i64 %.0238, ptr %i.gt, align 8, !tbaa !24
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  store ptr %i.ad, ptr %i.gu, align 8, !tbaa !25
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store ptr %i.ae, ptr %i.gv, align 8, !tbaa !26
  %i.gw = add nsw i64 %indvars.iv298, %i.eo       ; 3 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %9, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !27
  store ptr %i.gy, ptr %i.gq, align 8, !tbaa !29
  %i.gz = getelementptr inbounds [8 x i8], ptr %7, i64 %i.gw
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !30
  %i.hc = getelementptr inbounds [8 x i8], ptr %12, i64 %i.gw
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !27
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !31
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gq, i64 128
  store i32 %.0237, ptr %i.hf, align 8, !tbaa !32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gq, i64 120
  store ptr %spec.select253, ptr %i.hg, align 8, !tbaa !33
  %indvars.iv.next299 = or disjoint i64 %indvars.iv298, 1
  %i.hh = getelementptr [136 x i8], ptr %i.x, i64 %indvars.iv296 ; 10 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 136
  %i.hj = getelementptr i8, ptr %i.hh, i64 184
  store <4 x i64> %i.ex, ptr %i.hj, align 8, !tbaa !18
  %i.hk = getelementptr i8, ptr %i.hh, i64 216
  store i64 %.0239, ptr %i.hk, align 8, !tbaa !22
  %i.hl = getelementptr i8, ptr %i.hh, i64 224
  store i64 %.0238, ptr %i.hl, align 8, !tbaa !24
  %i.hm = getelementptr i8, ptr %i.hh, i64 168
  store ptr %i.ad, ptr %i.hm, align 8, !tbaa !25
  %i.hn = getelementptr i8, ptr %i.hh, i64 176
  store ptr %i.ae, ptr %i.hn, align 8, !tbaa !26
  %i.ho = add nsw i64 %indvars.iv.next299, %i.eo  ; 3 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !27
  store ptr %i.hq, ptr %i.hi, align 8, !tbaa !29
  %i.hr = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ho
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !27
  %i.ht = getelementptr i8, ptr %i.hh, i64 144
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !30
  %i.hu = getelementptr inbounds [8 x i8], ptr %12, i64 %i.ho
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !27
  %i.hw = getelementptr i8, ptr %i.hh, i64 152
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !31
  %i.hx = getelementptr i8, ptr %i.hh, i64 264
  store i32 %.0237, ptr %i.hx, align 8, !tbaa !32
  %i.hy = getelementptr i8, ptr %i.hh, i64 256
  store ptr %spec.select253, ptr %i.hy, align 8, !tbaa !33
  %indvars.iv.next297.1 = add nsw i64 %indvars.iv296, 2 ; 3 uses
  %indvars.iv.next299.1 = add nuw nsw i64 %indvars.iv298, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit278.unr-lcssa, label %.lr.ph260.split.split.us, !llvm.loop !34

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph260.split.us
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.loopexit.loopexit, label %.lr.ph260.split.us.epil.preheader

.lr.ph260.split.us.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph260.split.us.preheader
  %indvars.iv307.epil.init = phi i64 [ 0, %.lr.ph260.split.us.preheader ], [ %indvars.iv.next308.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv305.epil.init = phi i64 [ %i.en, %.lr.ph260.split.us.preheader ], [ %indvars.iv.next306.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod364 = trunc i32 %i.el to i1
  tail call void @llvm.assume(i1 %lcmp.mod364)
  %i.hz = getelementptr inbounds [136 x i8], ptr %i.x, i64 %indvars.iv305.epil.init ; 10 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.ib = insertelement <4 x i64> poison, i64 %.0243, i64 0
  %i.ic = insertelement <4 x i64> %i.ib, i64 %.0242, i64 1
  %i.id = shufflevector <2 x i64> %i.dk, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ie = shufflevector <4 x i64> %i.ic, <4 x i64> %i.id, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x i64> %i.ie, ptr %i.ia, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 80
  store i64 %.0239, ptr %i.if, align 8, !tbaa !22
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 88
  store i64 %.0238, ptr %i.ig, align 8, !tbaa !24
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  store ptr %i.ad, ptr %i.ih, align 8, !tbaa !25
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  store ptr %i.ae, ptr %i.ii, align 8, !tbaa !26
  %i.ij = add nsw i64 %indvars.iv307.epil.init, %i.eo ; 3 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !27
  store ptr %i.il, ptr %i.hz, align 8, !tbaa !29
  %i.im = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ij
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !27
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %i.in, ptr %i.io, align 8, !tbaa !30
  %i.ip = getelementptr inbounds [8 x i8], ptr %12, i64 %i.ij
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !27
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !31
  %i.is = getelementptr inbounds nuw i8, ptr %i.hz, i64 128
  store i32 %.0237, ptr %i.is, align 8, !tbaa !32
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 120
  store ptr %spec.select253, ptr %i.it, align 8, !tbaa !33
  %indvars.iv.next306.epil = add nsw i64 %indvars.iv305.epil.init, 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph260.split.us.epil.preheader
  %indvars.iv.next306.lcssa = phi i64 [ %indvars.iv.next306.1, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next306.epil, %.lr.ph260.split.us.epil.preheader ]
  %i.iu = trunc nsw i64 %indvars.iv.next306.lcssa to i32
  br label %.loopexit

.loopexit.loopexit278.unr-lcssa:                  ; preds = %.lr.ph260.split.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit278, label %.lr.ph260.split.split.us.epil.preheader

.lr.ph260.split.split.us.epil.preheader:          ; preds = %.loopexit.loopexit278.unr-lcssa, %.lr.ph260.split.split.us.preheader
  %indvars.iv298.epil.init = phi i64 [ 0, %.lr.ph260.split.split.us.preheader ], [ %indvars.iv.next299.1, %.loopexit.loopexit278.unr-lcssa ]
  %indvars.iv296.epil.init = phi i64 [ %i.en, %.lr.ph260.split.split.us.preheader ], [ %indvars.iv.next297.1, %.loopexit.loopexit278.unr-lcssa ] ; 2 uses
  %lcmp.mod360 = trunc i32 %i.el to i1
  tail call void @llvm.assume(i1 %lcmp.mod360)
  %i.iv = getelementptr inbounds [136 x i8], ptr %i.x, i64 %indvars.iv296.epil.init ; 10 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  %i.ix = insertelement <4 x i64> poison, i64 %.0243, i64 0
  %i.iy = insertelement <4 x i64> %i.ix, i64 %.0242, i64 1
  %i.iz = shufflevector <2 x i64> %i.dk, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ja = shufflevector <4 x i64> %i.iy, <4 x i64> %i.iz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x i64> %i.ja, ptr %i.iw, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  store i64 %.0239, ptr %i.jb, align 8, !tbaa !22
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 88
  store i64 %.0238, ptr %i.jc, align 8, !tbaa !24
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  store ptr %i.ad, ptr %i.jd, align 8, !tbaa !25
  %i.je = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  store ptr %i.ae, ptr %i.je, align 8, !tbaa !26
  %i.jf = add nsw i64 %indvars.iv298.epil.init, %i.eo ; 3 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %9, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !27
  store ptr %i.jh, ptr %i.iv, align 8, !tbaa !29
  %i.ji = getelementptr inbounds [8 x i8], ptr %7, i64 %i.jf
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !27
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !30
  %i.jl = getelementptr inbounds [8 x i8], ptr %12, i64 %i.jf
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !27
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !31
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iv, i64 128
  store i32 %.0237, ptr %i.jo, align 8, !tbaa !32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iv, i64 120
  store ptr %spec.select253, ptr %i.jp, align 8, !tbaa !33
  %indvars.iv.next297.epil = add nsw i64 %indvars.iv296.epil.init, 1
  br label %.loopexit.loopexit278

.loopexit.loopexit278:                            ; preds = %.loopexit.loopexit278.unr-lcssa, %.lr.ph260.split.split.us.epil.preheader
  %indvars.iv.next297.lcssa = phi i64 [ %indvars.iv.next297.1, %.loopexit.loopexit278.unr-lcssa ], [ %indvars.iv.next297.epil, %.lr.ph260.split.split.us.epil.preheader ]
  %i.jq = trunc nsw i64 %indvars.iv.next297.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.loopexit.loopexit278, %.loopexit.loopexit, %bb.n
  %i.jr = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.el, %bb.n ], [ %i.el, %.loopexit.loopexit278 ], [ %i.el, %.loopexit.loopexit ]
  %.2231 = phi i32 [ %.0229272, %..loopexit_crit_edge ], [ %.0229272, %bb.n ], [ %i.jq, %.loopexit.loopexit278 ], [ %i.iu, %.loopexit.loopexit ] ; 3 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0269, %..loopexit_crit_edge ], [ %.sroa.0.1, %bb.n ], [ %.sroa.0.1, %.loopexit.loopexit278 ], [ %.sroa.0.1, %.loopexit.loopexit ]
  %i.js = add nsw i32 %i.jr, %.0232268
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge275, label %bb.c, !llvm.loop !35

._crit_edge275:                                   ; preds = %.loopexit
  %i.jt = icmp sgt i32 %.2231, 0
  br i1 %i.jt, label %bb.o, label %._crit_edge275.thread

bb.o:                                             ; preds = %._crit_edge275
  %i.ju = zext nneg i32 %.2231 to i64
  %i.jv = tail call i32 @dgemm_batch_thread(ptr noundef nonnull %i.x, i64 noundef %i.ju) #7 ; 0 uses
  br label %._crit_edge275.thread

._crit_edge275.thread:                            ; preds = %._crit_edge.thread, %bb.o, %._crit_edge275
  %i.jw = phi ptr [ %i.x, %._crit_edge275 ], [ %i.x, %bb.o ], [ %i.z, %._crit_edge.thread ]
  tail call void @free(ptr noundef %i.jw) #7
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge275.thread, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @openblas_warning(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @dgemm_batch_thread(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dgemm_small_kernel_b0_nn(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_b0_tn(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_b0_nt(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_b0_tt(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_nn(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_tn(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_nt(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_tt(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_nn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_tn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_nt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_tt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 4, i32 28}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !12, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!23, !19, i64 80}
!23 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !21, i64 104, !19, i64 112, !21, i64 120, !5, i64 128}
!24 = !{!23, !19, i64 88}
!25 = !{!23, !21, i64 32}
!26 = !{!23, !21, i64 40}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 double", !21, i64 0}
!29 = !{!23, !21, i64 0}
!30 = !{!23, !21, i64 8}
!31 = !{!23, !21, i64 16}
!32 = !{!23, !5, i64 128}
!33 = !{!23, !21, i64 120}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
end_hunk_0
