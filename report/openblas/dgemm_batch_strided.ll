Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemm_batch_strided?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"memory alloc failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"DGEMM_BATCH_STRIDED \00", align 1
@gemm_small_kernel_b0 = internal unnamed_addr constant [8 x i64] [i64 ptrtoint (ptr @dgemm_small_kernel_b0_nn to i64), i64 ptrtoint (ptr @dgemm_small_kernel_b0_tn to i64), i64 0, i64 0, i64 ptrtoint (ptr @dgemm_small_kernel_b0_nt to i64), i64 ptrtoint (ptr @dgemm_small_kernel_b0_tt to i64), i64 0, i64 0], align 16
@gemm_small_kernel = internal unnamed_addr constant [8 x i64] [i64 ptrtoint (ptr @dgemm_small_kernel_nn to i64), i64 ptrtoint (ptr @dgemm_small_kernel_tn to i64), i64 0, i64 0, i64 ptrtoint (ptr @dgemm_small_kernel_nt to i64), i64 ptrtoint (ptr @dgemm_small_kernel_tt to i64), i64 0, i64 0], align 16
@gemm = internal unnamed_addr constant [16 x ptr] [ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nt, ptr @dgemm_tt, ptr @dgemm_nt, ptr @dgemm_tt, ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nt, ptr @dgemm_tt, ptr @dgemm_nt, ptr @dgemm_tt], align 16

; Function Attrs: nounwind uwtable
define void @dgemm_batch_strided_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr noundef %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef readonly captures(none) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 12 uses
  %i.b = alloca double, align 8                   ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !8       ; 3 uses
  %i.f = load i32, ptr %16, align 4, !tbaa !9     ; 10 uses
  %i.g = load i32, ptr %8, align 4, !tbaa !9      ; 2 uses
  %i.h = load i32, ptr %11, align 4, !tbaa !9     ; 2 uses
  %i.i = load i32, ptr %15, align 4, !tbaa !9     ; 2 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !9      ; 6 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !9      ; 5 uses
  %i.l = load i32, ptr %4, align 4, !tbaa !9      ; 4 uses
  %i.m = load i32, ptr %7, align 4, !tbaa !9      ; 2 uses
  %i.n = load i32, ptr %10, align 4, !tbaa !9
  %i.o = load i32, ptr %14, align 4, !tbaa !9     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.p = load double, ptr %5, align 8, !tbaa !10
  store double %i.p, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.q = load double, ptr %12, align 8, !tbaa !10 ; 2 uses
  store double %i.q, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.r = sext i32 %i.f to i64                     ; 2 uses
  %i.s = mul nsw i64 %i.r, 136
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #7 ; 13 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.v = icmp sgt i32 %i.f, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader
  %i.w = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.x = insertelement <4 x i32> %i.w, i32 %i.k, i64 1
  %i.y = insertelement <4 x i32> %i.x, i32 %i.l, i64 2
  %i.z = insertelement <4 x i32> %i.y, i32 %i.m, i64 3 ; 3 uses
  %i.aa = sext <4 x i32> %i.z to <4 x i64>        ; 3 uses
  %i.ab = sext <4 x i32> %i.z to <4 x i64>        ; 3 uses
  %i.ac = sext <4 x i32> %i.z to <4 x i64>        ; 3 uses
  %i.ad = sext i32 %i.j to i64
  %i.ae = sext i32 %i.k to i64
  %i.af = sext i32 %i.l to i64                    ; 2 uses
  %i.ag = sext i32 %i.m to i64
  %i.ah = sext i32 %i.n to i64                    ; 10 uses
  %i.ai = sext i32 %i.o to i64                    ; 9 uses
  %i.aj = icmp ne i8 %i.e, 78                     ; 2 uses
  %spec.select = sext i1 %i.aj to i32
  %i.ak = icmp ne i8 %i.e, 84
  %i.al = icmp ne i8 %i.e, 67
  %.not145 = and i1 %i.al, %i.ak                  ; 2 uses
  %.2130 = select i1 %.not145, i32 %spec.select, i32 1 ; 2 uses
  %i.am = icmp ne i8 %i.d, 78                     ; 2 uses
  %.0125 = sext i1 %i.am to i32
  %i.an = icmp ne i8 %i.d, 84
  %i.ao = icmp ne i8 %i.d, 67
  %.not142 = and i1 %i.ao, %i.an                  ; 2 uses
  %.2127 = select i1 %.not142, i32 %.0125, i32 1  ; 2 uses
  %i.ap = and i32 %.2130, 1
  %.not = icmp eq i32 %i.ap, 0
  %.0124 = select i1 %.not, i64 %i.ad, i64 %i.af
  %i.aq = and i32 %.2127, 1
  %.not137 = icmp eq i32 %i.aq, 0
  %.0123 = select i1 %.not137, i64 %i.af, i64 %i.ae
  %i.ar = icmp slt i32 %i.o, %i.j
  %spec.store.select = select i1 %i.ar, i32 13, i32 -1
  %i.as = icmp sgt i64 %.0123, %i.ah
  %spec.store.select2 = select i1 %i.as, i32 10, i32 %spec.store.select
  %i.at = icmp sgt i64 %.0124, %i.ag
  %spec.store.select3 = select i1 %i.at, i32 8, i32 %spec.store.select2
  %i.au = icmp slt i32 %i.l, 0
  %spec.store.select4 = select i1 %i.au, i32 5, i32 %spec.store.select3
  %i.av = icmp slt i32 %i.k, 0
  %spec.store.select5 = select i1 %i.av, i32 4, i32 %spec.store.select4
  %i.aw = icmp slt i32 %i.j, 0
  %spec.store.select6 = select i1 %i.aw, i32 3, i32 %spec.store.select5
  %i.ax = and i1 %i.am, %.not142
  %spec.store.select7 = select i1 %i.ax, i32 2, i32 %spec.store.select6
  %i.ay = and i1 %i.aj, %.not145
  %spec.store.select8 = select i1 %i.ay, i32 1, i32 %spec.store.select7 ; 2 uses
  %i.az = icmp sgt i32 %spec.store.select8, -1
  %i.ba = sitofp i32 %i.j to double
  %i.bb = sitofp i32 %i.k to double
  %i.bc = fmul nnan double %i.ba, %i.bb
  %i.bd = sitofp i32 %i.l to double
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = fcmp ugt double %i.be, 1.000000e+06
  %i.bg = fcmp oeq double %i.q, 0.000000e+00
  %i.bh = shl nsw i32 %.2127, 2
  %i.bi = or i32 %i.bh, %.2130
  %i.bj = sext i32 %i.bi to i64                   ; 3 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr @gemm_small_kernel, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr @gemm_small_kernel_b0, i64 %i.bj
  %i.bm = getelementptr inbounds [8 x i8], ptr @gemm, i64 %i.bj
  br i1 %i.az, label %bb.f, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bn = icmp eq i32 %i.j, 0
  %i.bo = icmp eq i32 %i.k, 0
  %or.cond = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond, label %.loopexit, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.bf, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !12 ; 3 uses
  %i.bq = sext i32 %i.g to i64                    ; 3 uses
  %i.br = sext i32 %i.h to i64                    ; 3 uses
  %i.bs = sext i32 %i.i to i64                    ; 3 uses
  %wide.trip.count167 = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter184 = and i64 %wide.trip.count167, 1
  %i.bt = icmp eq i32 %i.f, 1
  br i1 %i.bt, label %.epil.preheader183, label %.lr.ph.split.split.split.us.new

.lr.ph.split.split.split.us.new:                  ; preds = %.lr.ph.split.split.split.us
  %unroll_iter187 = and i64 %wide.trip.count167, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.split.split.us.new
  %indvars.iv164 = phi i64 [ 0, %.lr.ph.split.split.split.us.new ], [ %indvars.iv.next165.1, %bb.b ] ; 6 uses
  %niter188 = phi i64 [ 0, %.lr.ph.split.split.split.us.new ], [ %niter188.next.1, %bb.b ]
  %i.bu = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %indvars.iv164 ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store <4 x i64> %i.aa, ptr %i.bv, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  store i64 %i.ah, ptr %i.bw, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  store i64 %i.ai, ptr %i.bx, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %i.a, ptr %i.by, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %i.b, ptr %i.bz, align 8, !tbaa !20
  %i.ca = mul nsw i64 %indvars.iv164, %i.bq
  %i.cb = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ca
  store ptr %i.cb, ptr %i.bu, align 8, !tbaa !21
  %i.cc = mul nsw i64 %indvars.iv164, %i.br
  %i.cd = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !22
  %i.cf = mul nsw i64 %indvars.iv164, %i.bs
  %i.cg = getelementptr inbounds [8 x i8], ptr %13, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  store i32 3, ptr %i.ci, align 8, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 120
  store ptr %i.bp, ptr %i.cj, align 8, !tbaa !25
  %indvars.iv.next165 = or disjoint i64 %indvars.iv164, 1 ; 4 uses
  %i.ck = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %indvars.iv.next165 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store <4 x i64> %i.aa, ptr %i.cl, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  store i64 %i.ah, ptr %i.cm, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 88
  store i64 %i.ai, ptr %i.cn, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store ptr %i.a, ptr %i.co, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store ptr %i.b, ptr %i.cp, align 8, !tbaa !20
  %i.cq = mul nsw i64 %indvars.iv.next165, %i.bq
  %i.cr = getelementptr inbounds [8 x i8], ptr %6, i64 %i.cq
  store ptr %i.cr, ptr %i.ck, align 8, !tbaa !21
  %i.cs = mul nsw i64 %indvars.iv.next165, %i.br
  %i.ct = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !22
  %i.cv = mul nsw i64 %indvars.iv.next165, %i.bs
  %i.cw = getelementptr inbounds [8 x i8], ptr %13, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 128
  store i32 3, ptr %i.cy, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  store ptr %i.bp, ptr %i.cz, align 8, !tbaa !25
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %niter188.next.1 = add i64 %niter188, 2         ; 2 uses
  %niter188.ncmp.1 = icmp eq i64 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !26

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.da = sext i32 %i.g to i64                    ; 6 uses
  %i.db = sext i32 %i.h to i64                    ; 6 uses
  %i.dc = sext i32 %i.i to i64                    ; 6 uses
  %wide.trip.count162 = zext nneg i32 %i.f to i64 ; 4 uses
  br i1 %i.bg, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split
  %i.dd = load i64, ptr %i.bl, align 8, !tbaa !14
  %i.de = inttoptr i64 %i.dd to ptr               ; 3 uses
  %xtraiter178 = and i64 %wide.trip.count162, 1
  %i.df = icmp eq i32 %i.f, 1
  br i1 %i.df, label %.epil.preheader177, label %.lr.ph.split.split.split.split.us.new

.lr.ph.split.split.split.split.us.new:            ; preds = %.lr.ph.split.split.split.split.us
  %unroll_iter181 = and i64 %wide.trip.count162, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.split.split.split.us.new
  %indvars.iv159 = phi i64 [ 0, %.lr.ph.split.split.split.split.us.new ], [ %indvars.iv.next160.1, %bb.c ] ; 6 uses
  %niter182 = phi i64 [ 0, %.lr.ph.split.split.split.split.us.new ], [ %niter182.next.1, %bb.c ]
  %i.dg = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %indvars.iv159 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  store <4 x i64> %i.ab, ptr %i.dh, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  store i64 %i.ah, ptr %i.di, align 8, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  store i64 %i.ai, ptr %i.dj, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.a, ptr %i.dk, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr %i.b, ptr %i.dl, align 8, !tbaa !20
  %i.dm = mul nsw i64 %indvars.iv159, %i.da
  %i.dn = getelementptr inbounds [8 x i8], ptr %6, i64 %i.dm
  store ptr %i.dn, ptr %i.dg, align 8, !tbaa !21
  %i.do = mul nsw i64 %indvars.iv159, %i.db
  %i.dp = getelementptr inbounds [8 x i8], ptr %9, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !22
  %i.dr = mul nsw i64 %indvars.iv159, %i.dc
  %i.ds = getelementptr inbounds [8 x i8], ptr %13, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !23
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  store i32 196611, ptr %i.du, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  store ptr %i.de, ptr %i.dv, align 8, !tbaa !25
  %indvars.iv.next160 = or disjoint i64 %indvars.iv159, 1 ; 4 uses
  %i.dw = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %indvars.iv.next160 ; 10 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store <4 x i64> %i.ab, ptr %i.dx, align 8, !tbaa !14
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  store i64 %i.ah, ptr %i.dy, align 8, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  store i64 %i.ai, ptr %i.dz, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %i.a, ptr %i.ea, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store ptr %i.b, ptr %i.eb, align 8, !tbaa !20
  %i.ec = mul nsw i64 %indvars.iv.next160, %i.da
  %i.ed = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ec
  store ptr %i.ed, ptr %i.dw, align 8, !tbaa !21
  %i.ee = mul nsw i64 %indvars.iv.next160, %i.db
  %i.ef = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !22
  %i.eh = mul nsw i64 %indvars.iv.next160, %i.dc
  %i.ei = getelementptr inbounds [8 x i8], ptr %13, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  store i32 196611, ptr %i.ek, align 8, !tbaa !24
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 120
  store ptr %i.de, ptr %i.el, align 8, !tbaa !25
  %indvars.iv.next160.1 = add nuw nsw i64 %indvars.iv159, 2 ; 2 uses
  %niter182.next.1 = add i64 %niter182, 2         ; 2 uses
  %niter182.ncmp.1 = icmp eq i64 %niter182.next.1, %unroll_iter181
  br i1 %niter182.ncmp.1, label %.loopexit.loopexit174.unr-lcssa, label %bb.c, !llvm.loop !26

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  %i.em = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.en = inttoptr i64 %i.em to ptr               ; 3 uses
  %xtraiter = and i64 %wide.trip.count162, 1
  %i.eo = icmp eq i32 %i.f, 1
  br i1 %i.eo, label %.epil.preheader, label %.lr.ph.split.split.split.split.new

.lr.ph.split.split.split.split.new:               ; preds = %.lr.ph.split.split.split.split
  %unroll_iter = and i64 %wide.trip.count162, 2147483646
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @openblas_warning(i32 noundef 0, ptr noundef nonnull @.str) #6
  br label %bb.g

bb.e:                                             ; preds = %bb.e, %.lr.ph.split.split.split.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split.split.new ], [ %indvars.iv.next.1, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.split.new ], [ %niter.next.1, %bb.e ]
  %i.ep = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %indvars.iv ; 10 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  store <4 x i64> %i.ac, ptr %i.eq, align 8, !tbaa !14
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 80
  store i64 %i.ah, ptr %i.er, align 8, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 88
  store i64 %i.ai, ptr %i.es, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store ptr %i.a, ptr %i.et, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  store ptr %i.b, ptr %i.eu, align 8, !tbaa !20
  %i.ev = mul nsw i64 %indvars.iv, %i.da
  %i.ew = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ev
  store ptr %i.ew, ptr %i.ep, align 8, !tbaa !21
  %i.ex = mul nsw i64 %indvars.iv, %i.db
  %i.ey = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !22
  %i.fa = mul nsw i64 %indvars.iv, %i.dc
  %i.fb = getelementptr inbounds [8 x i8], ptr %13, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !23
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 128
  store i32 65539, ptr %i.fd, align 8, !tbaa !24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 120
  store ptr %i.en, ptr %i.fe, align 8, !tbaa !25
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ff = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %indvars.iv.next ; 10 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  store <4 x i64> %i.ac, ptr %i.fg, align 8, !tbaa !14
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 80
  store i64 %i.ah, ptr %i.fh, align 8, !tbaa !16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 88
  store i64 %i.ai, ptr %i.fi, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store ptr %i.a, ptr %i.fj, align 8, !tbaa !19
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store ptr %i.b, ptr %i.fk, align 8, !tbaa !20
  %i.fl = mul nsw i64 %indvars.iv.next, %i.da
  %i.fm = getelementptr inbounds [8 x i8], ptr %6, i64 %i.fl
  store ptr %i.fm, ptr %i.ff, align 8, !tbaa !21
  %i.fn = mul nsw i64 %indvars.iv.next, %i.db
  %i.fo = getelementptr inbounds [8 x i8], ptr %9, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !22
  %i.fq = mul nsw i64 %indvars.iv.next, %i.dc
  %i.fr = getelementptr inbounds [8 x i8], ptr %13, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !23
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 128
  store i32 65539, ptr %i.ft, align 8, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ff, i64 120
  store ptr %i.en, ptr %i.fu, align 8, !tbaa !25
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit175.unr-lcssa, label %bb.e, !llvm.loop !26

bb.f:                                             ; preds = %.lr.ph
  store i32 %spec.store.select8, ptr %i.c, align 4
  %i.fv = call i32 @xerbla_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.c, i32 noundef 21) #6 ; 0 uses
  call void @free(ptr noundef nonnull %i.t) #6
  br label %bb.g

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %.loopexit, label %.epil.preheader183

.epil.preheader183:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.split.split.us
  %indvars.iv164.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.us ], [ %indvars.iv.next165.1, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod186 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod186)
  %i.fw = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %indvars.iv164.epil.init ; 10 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store <4 x i64> %i.aa, ptr %i.fx, align 8, !tbaa !14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 80
  store i64 %i.ah, ptr %i.fy, align 8, !tbaa !16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 88
  store i64 %i.ai, ptr %i.fz, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr %i.a, ptr %i.ga, align 8, !tbaa !19
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  store ptr %i.b, ptr %i.gb, align 8, !tbaa !20
  %i.gc = mul nsw i64 %indvars.iv164.epil.init, %i.bq
  %i.gd = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gc
  store ptr %i.gd, ptr %i.fw, align 8, !tbaa !21
  %i.ge = mul nsw i64 %indvars.iv164.epil.init, %i.br
  %i.gf = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !22
  %i.gh = mul nsw i64 %indvars.iv164.epil.init, %i.bs
  %i.gi = getelementptr inbounds [8 x i8], ptr %13, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !23
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  store i32 3, ptr %i.gk, align 8, !tbaa !24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fw, i64 120
  store ptr %i.bp, ptr %i.gl, align 8, !tbaa !25
  br label %.loopexit

.loopexit.loopexit174.unr-lcssa:                  ; preds = %bb.c
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.loopexit, label %.epil.preheader177

.epil.preheader177:                               ; preds = %.loopexit.loopexit174.unr-lcssa, %.lr.ph.split.split.split.split.us
  %indvars.iv159.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.split.us ], [ %indvars.iv.next160.1, %.loopexit.loopexit174.unr-lcssa ] ; 4 uses
  %lcmp.mod180 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod180)
  %i.gm = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %indvars.iv159.epil.init ; 10 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  store <4 x i64> %i.ab, ptr %i.gn, align 8, !tbaa !14
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 80
  store i64 %i.ah, ptr %i.go, align 8, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 88
  store i64 %i.ai, ptr %i.gp, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store ptr %i.a, ptr %i.gq, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  store ptr %i.b, ptr %i.gr, align 8, !tbaa !20
  %i.gs = mul nsw i64 %indvars.iv159.epil.init, %i.da
  %i.gt = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gs
  store ptr %i.gt, ptr %i.gm, align 8, !tbaa !21
  %i.gu = mul nsw i64 %indvars.iv159.epil.init, %i.db
  %i.gv = getelementptr inbounds [8 x i8], ptr %9, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !22
  %i.gx = mul nsw i64 %indvars.iv159.epil.init, %i.dc
  %i.gy = getelementptr inbounds [8 x i8], ptr %13, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !23
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 128
  store i32 196611, ptr %i.ha, align 8, !tbaa !24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  store ptr %i.de, ptr %i.hb, align 8, !tbaa !25
  br label %.loopexit

.loopexit.loopexit175.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit175.unr-lcssa, %.lr.ph.split.split.split.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.split ], [ %indvars.iv.next.1, %.loopexit.loopexit175.unr-lcssa ] ; 4 uses
  %lcmp.mod176 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod176)
  %i.hc = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %indvars.iv.epil.init ; 10 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  store <4 x i64> %i.ac, ptr %i.hd, align 8, !tbaa !14
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  store i64 %i.ah, ptr %i.he, align 8, !tbaa !16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 88
  store i64 %i.ai, ptr %i.hf, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr %i.a, ptr %i.hg, align 8, !tbaa !19
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  store ptr %i.b, ptr %i.hh, align 8, !tbaa !20
  %i.hi = mul nsw i64 %indvars.iv.epil.init, %i.da
  %i.hj = getelementptr inbounds [8 x i8], ptr %6, i64 %i.hi
  store ptr %i.hj, ptr %i.hc, align 8, !tbaa !21
  %i.hk = mul nsw i64 %indvars.iv.epil.init, %i.db
  %i.hl = getelementptr inbounds [8 x i8], ptr %9, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !22
  %i.hn = mul nsw i64 %indvars.iv.epil.init, %i.dc
  %i.ho = getelementptr inbounds [8 x i8], ptr %13, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !23
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  store i32 65539, ptr %i.hq, align 8, !tbaa !24
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hc, i64 120
  store ptr %i.en, ptr %i.hr, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit175.unr-lcssa, %.epil.preheader177, %.loopexit.loopexit174.unr-lcssa, %.epil.preheader183, %.loopexit.loopexit.unr-lcssa, %.lr.ph.split
  %i.hs = call i32 @dgemm_batch_thread(ptr noundef nonnull %i.t, i64 noundef %i.r) #6 ; 0 uses
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %.preheader, %.loopexit
  call void @free(ptr noundef nonnull %i.t) #6
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.split, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !15, i64 80}
!17 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !13, i64 104, !15, i64 112, !13, i64 120, !5, i64 128}
!18 = !{!17, !15, i64 88}
!19 = !{!17, !13, i64 32}
!20 = !{!17, !13, i64 40}
!21 = !{!17, !13, i64 0}
!22 = !{!17, !13, i64 8}
!23 = !{!17, !13, i64 16}
!24 = !{!17, !5, i64 128}
!25 = !{!17, !13, i64 120}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
end_hunk_0
