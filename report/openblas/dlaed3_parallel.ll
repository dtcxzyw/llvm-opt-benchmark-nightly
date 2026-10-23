Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed3_parallel?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
%union.__atomic_wide_counter = type { i64 }
%struct.blas_arg_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, i32 }

@c1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c1f = internal global double 1.000000e+00, align 8
@c0f = internal global double 0.000000e+00, align 8
@blas_cpu_number = external local_unnamed_addr global i32, align 4
@blas_quick_divide_table = external local_unnamed_addr global [0 x i32], align 4

; Function Attrs: nounwind uwtable
define noundef i32 @dlaed3_parallel(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef captures(none) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %11 to i64
  %i.c = ptrtoaddr ptr %12 to i64                 ; 2 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %14 = alloca [64 x %struct.blas_queue], align 16 ; 13 uses
  %15 = alloca %struct.blas_arg_t, align 8        ; 11 uses
  %i.i = alloca [65 x i64], align 16              ; 6 uses
  %i.j = alloca [64 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.k = load i32, ptr %5, align 4, !tbaa !8      ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !8      ; 11 uses
  %i.m = icmp slt i32 %i.l, 1                     ; 3 uses
  br i1 %i.m, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv ; 4 uses
  %i.o = tail call double @dlamc3_(ptr noundef %i.n, ptr noundef %i.n) #10
  %i.p = load double, ptr %i.n, align 8, !tbaa !10
  %i.q = fsub double %i.o, %i.p
  store double %i.q, ptr %i.n, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.r = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !46
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %num_cpu_avail.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.t = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !46
  br label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %._crit_edge, %bb.b
  %.0.i = phi i32 [ %i.t, %bb.b ], [ 1, %._crit_edge ] ; 2 uses
  %i.u = sext i32 %i.l to i64
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i64 %i.u, ptr %i.v, align 8, !tbaa !15
  store ptr %7, ptr %15, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %11, ptr %i.w, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %4, ptr %i.x, align 8, !tbaa !18
  %i.y = sext i32 %i.k to i64                     ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 88
  store i64 %i.y, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %3, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %6, ptr %i.ab, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %i.j, ptr %i.ac, align 8, !tbaa !22
  store i64 0, ptr %i.i, align 16, !tbaa !23
  br i1 %i.m, label %.thread, label %.lr.ph194

.lr.ph194:                                        ; preds = %num_cpu_avail.exit, %blas_quickdivide.exit
  %i.ad = phi i64 [ %i.at, %blas_quickdivide.exit ], [ 0, %num_cpu_avail.exit ]
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %blas_quickdivide.exit ], [ 0, %num_cpu_avail.exit ] ; 10 uses
  %.1178192 = phi i32 [ %i.be, %blas_quickdivide.exit ], [ %i.l, %num_cpu_avail.exit ] ; 2 uses
  %i.ae = add nsw i32 %.1178192, %.0.i
  %i.af = trunc nuw nsw i64 %indvars.iv220 to i32
  %i.ag = xor i32 %i.af, -1
  %i.ah = add i32 %i.ae, %i.ag                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ai = trunc i64 %indvars.iv220 to i32
  %i.aj = sub i32 %.0.i, %i.ai                    ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 2
  br i1 %i.ak, label %blas_quickdivide.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph194
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  %i.ao = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.an, i32 range(i32 -2147483648, 2147483647) %i.ah) #10, !srcloc !47
  %i.ap = extractvalue { i32, i32 } %i.ao, 0
  store volatile i32 %i.ap, ptr %i.d, align 4, !tbaa !8
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.d, align 4, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv220
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %blas_quickdivide.exit

blas_quickdivide.exit:                            ; preds = %.lr.ph194, %bb.c
  %i.aq = phi i64 [ %.pre, %bb.c ], [ %i.ad, %.lr.ph194 ]
  %.0.i187 = phi i32 [ %.0..0..0..0..0..0..i, %bb.c ], [ %i.ah, %.lr.ph194 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv220
  %i.as = sext i32 %.0.i187 to i64
  %i.at = add nsw i64 %i.aq, %i.as                ; 2 uses
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 11 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next221
  store i64 %i.at, ptr %i.au, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw [168 x i8], ptr %14, i64 %indvars.iv220 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %i.ar, ptr %i.aw, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr null, ptr %i.ax, align 8, !tbaa !51
  store ptr @inner_laed4_thread, ptr %i.av, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %15, ptr %i.ay, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i32 3, ptr %i.ba, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw [168 x i8], ptr %14, i64 %indvars.iv.next221
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv220
  store i32 0, ptr %i.bd, align 4, !tbaa !8
  %i.be = sub nsw i32 %.1178192, %.0.i187         ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph194, label %iter.check, !llvm.loop !27

iter.check:                                       ; preds = %blas_quickdivide.exit
  %i.bg = trunc nuw i64 %indvars.iv.next221 to i32
  %i.bh = getelementptr [168 x i8], ptr %14, i64 %indvars.iv.next221
  %i.bi = getelementptr i8, ptr %i.bh, i64 -104
  store ptr null, ptr %i.bi, align 8, !tbaa !55
  %i.bj = call i32 @exec_blas(i64 noundef %indvars.iv.next221, ptr noundef nonnull %14) #10 ; 0 uses
  %.pre256 = load i32, ptr %13, align 4, !tbaa !8 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv220, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check270 = icmp samesign ult i64 %indvars.iv220, 31
  br i1 %min.iters.check270, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %indvars.iv.next221, 28
  %n.vec = and i64 %indvars.iv.next221, 9223372036854775776 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.pre256, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.phi271 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi272 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi273 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %wide.load = load <8 x i32>, ptr %i.bl, align 16, !tbaa !8
  %wide.load274 = load <8 x i32>, ptr %i.bm, align 16, !tbaa !8
  %wide.load275 = load <8 x i32>, ptr %i.bn, align 16, !tbaa !8
  %wide.load276 = load <8 x i32>, ptr %i.bo, align 16, !tbaa !8
  %i.bp = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load, <8 x i32> %vec.phi) ; 2 uses
  %i.bq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load274, <8 x i32> %vec.phi271) ; 2 uses
  %i.br = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load275, <8 x i32> %vec.phi272) ; 2 uses
  %i.bs = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load276, <8 x i32> %vec.phi273) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bp, <8 x i32> %i.bq)
  %rdx.minmax277 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.br)
  %rdx.minmax278 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax277, <8 x i32> %i.bs)
  %i.bu = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax278) ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv.next221, %n.vec
  br i1 %cmp.n, label %._crit_edge199, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bu, %vec.epilog.iter.check ], [ %.pre256, %vector.main.loop.iter.check ]
  %n.vec279 = and i64 %indvars.iv.next221, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert280 = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat281 = shufflevector <4 x i32> %broadcast.splatinsert280, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index282 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next285, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi283 = phi <4 x i32> [ %broadcast.splat281, %vec.epilog.ph ], [ %i.bw, %vec.epilog.vector.body ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index282
  %wide.load284 = load <4 x i32>, ptr %i.bv, align 16, !tbaa !8
  %i.bw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load284, <4 x i32> %vec.phi283) ; 2 uses
  %index.next285 = add nuw i64 %index282, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next285, %n.vec279
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.by = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bw) ; 2 uses
  %cmp.n286 = icmp eq i64 %indvars.iv.next221, %n.vec279
  br i1 %cmp.n286, label %._crit_edge199, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv223.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec279, %vec.epilog.middle.block ]
  %.ph = phi i32 [ %.pre256, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.thread:                                          ; preds = %num_cpu_avail.exit
  %.pre256265 = load i32, ptr %13, align 4, !tbaa !8
  br label %bb.d

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %vec.epilog.scalar.ph ], [ %indvars.iv223.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bz = phi i32 [ %., %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv223
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  %. = call i32 @llvm.smax.i32(i32 %i.cb, i32 %i.bz) ; 2 uses
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1
  %exitcond227.not = icmp eq i64 %indvars.iv223, %indvars.iv220
  br i1 %exitcond227.not, label %._crit_edge199, label %vec.epilog.scalar.ph, !llvm.loop !30

._crit_edge199:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %..lcssa = phi i32 [ %i.by, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %., %vec.epilog.scalar.ph ] ; 2 uses
  store i32 %..lcssa, ptr %13, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.thread, %._crit_edge199
  %.0.lcssa261267 = phi i32 [ %i.bg, %._crit_edge199 ], [ 0, %.thread ] ; 4 uses
  %i.cc = phi i32 [ %..lcssa, %._crit_edge199 ], [ %.pre256265, %.thread ]
  %.not183 = icmp eq i32 %i.cc, 0
  br i1 %.not183, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  switch i32 %i.l, label %bb.f [
    i32 2, label %.preheader189
    i32 1, label %.loopexit
  ]

.preheader189:                                    ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ce = load i32, ptr %9, align 4, !tbaa !8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %11, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %11, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8     ; 2 uses
  %i.cn = load double, ptr %4, align 8, !tbaa !10
  store double %i.cn, ptr %11, align 8, !tbaa !10
  %i.co = getelementptr i8, ptr %4, i64 8         ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !10
  store double %i.cp, ptr %i.cd, align 8, !tbaa !10
  %i.cq = load double, ptr %i.ch, align 8, !tbaa !10
  store double %i.cq, ptr %4, align 8, !tbaa !10
  %i.cr = load double, ptr %i.cm, align 8, !tbaa !10
  store double %i.cr, ptr %i.co, align 8, !tbaa !10
  %i.cs = getelementptr inbounds [8 x i8], ptr %4, i64 %i.y ; 3 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !10
  store double %i.ct, ptr %11, align 8, !tbaa !10
  %i.cu = getelementptr i8, ptr %i.cs, i64 8      ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !10
  store double %i.cv, ptr %i.cd, align 8, !tbaa !10
  %i.cw = load double, ptr %i.ch, align 8, !tbaa !10
  store double %i.cw, ptr %i.cs, align 8, !tbaa !10
  %i.cx = load double, ptr %i.cm, align 8, !tbaa !10
  store double %i.cx, ptr %i.cu, align 8, !tbaa !10
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @dcopy_(ptr noundef nonnull %0, ptr noundef %11, ptr noundef nonnull @c1, ptr noundef %12, ptr noundef nonnull @c1) #10
  %i.cy = add nsw i32 %i.k, 1
  store i32 %i.cy, ptr %i.e, align 4, !tbaa !8
  call void @dcopy_(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %i.e, ptr noundef %11, ptr noundef nonnull @c1) #10
  br i1 %i.m, label %.loopexit, label %iter.check302

iter.check302:                                    ; preds = %bb.f
  %wide.trip.count234 = zext i32 %.0.lcssa261267 to i64 ; 6 uses
  %min.iters.check288 = icmp ult i32 %.0.lcssa261267, 4
  br i1 %min.iters.check288, label %.lr.ph203.preheader, label %vector.main.loop.iter.check289

vector.main.loop.iter.check289:                   ; preds = %iter.check302
  %min.iters.check290 = icmp ult i32 %.0.lcssa261267, 16
  br i1 %min.iters.check290, label %vec.epilog.ph306, label %vector.ph291

vector.ph291:                                     ; preds = %vector.main.loop.iter.check289
  %i.cz = and i64 %wide.trip.count234, 12
  %n.vec292 = and i64 %wide.trip.count234, 4294967280 ; 4 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.ph291, %vector.body293
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next298, %vector.body293 ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph291 ], [ %vec.ind.next, %vector.body293 ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [168 x i8], ptr %14, <4 x i64> %vec.ind
  %wide.gep295 = getelementptr inbounds nuw [168 x i8], ptr %14, <4 x i64> %step.add
  %wide.gep296 = getelementptr inbounds nuw [168 x i8], ptr %14, <4 x i64> %step.add.2
  %wide.gep297 = getelementptr inbounds nuw [168 x i8], ptr %14, <4 x i64> %step.add.3
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> <ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread>, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !52
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> <ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread>, <4 x ptr> align 8 %wide.gep295, <4 x i1> splat (i1 true)), !tbaa !52
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> <ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread>, <4 x ptr> align 8 %wide.gep296, <4 x i1> splat (i1 true)), !tbaa !52
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> <ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread>, <4 x ptr> align 8 %wide.gep297, <4 x i1> splat (i1 true)), !tbaa !52
  %index.next298 = add nuw i64 %index294, 16      ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.da = icmp eq i64 %index.next298, %n.vec292
  br i1 %i.da, label %middle.block299, label %vector.body293, !llvm.loop !31

middle.block299:                                  ; preds = %vector.body293
  %cmp.n300 = icmp eq i64 %n.vec292, %wide.trip.count234
  br i1 %cmp.n300, label %._crit_edge204, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block299
  %min.epilog.iters.check305 = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check305, label %.lr.ph203.preheader, label %vec.epilog.ph306, !prof !57

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check289, %vec.epilog.iter.check304
  %vec.epilog.resume.val301 = phi i64 [ %n.vec292, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check289 ] ; 2 uses
  %n.vec307 = and i64 %wide.trip.count234, 4294967292 ; 3 uses
  %broadcast.splatinsert308 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val301, i64 0
  %broadcast.splat309 = shufflevector <4 x i64> %broadcast.splatinsert308, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat309, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body310

vec.epilog.vector.body310:                        ; preds = %vec.epilog.vector.body310, %vec.epilog.ph306
  %index311 = phi i64 [ %vec.epilog.resume.val301, %vec.epilog.ph306 ], [ %index.next314, %vec.epilog.vector.body310 ]
  %vec.ind312 = phi <4 x i64> [ %induction, %vec.epilog.ph306 ], [ %vec.ind.next315, %vec.epilog.vector.body310 ] ; 2 uses
  %wide.gep313 = getelementptr inbounds nuw [168 x i8], ptr %14, <4 x i64> %vec.ind312
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> <ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread, ptr @inner_wloop_thread>, <4 x ptr> align 8 %wide.gep313, <4 x i1> splat (i1 true)), !tbaa !52
  %index.next314 = add nuw i64 %index311, 4       ; 2 uses
  %vec.ind.next315 = add nuw nsw <4 x i64> %vec.ind312, splat (i64 4)
  %i.db = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.db, label %vec.epilog.middle.block316, label %vec.epilog.vector.body310, !llvm.loop !32

vec.epilog.middle.block316:                       ; preds = %vec.epilog.vector.body310
  %cmp.n317 = icmp eq i64 %n.vec307, %wide.trip.count234
  br i1 %cmp.n317, label %._crit_edge204, label %.lr.ph203.preheader

.lr.ph203.preheader:                              ; preds = %iter.check302, %vec.epilog.iter.check304, %vec.epilog.middle.block316
  %indvars.iv231.ph = phi i64 [ 0, %iter.check302 ], [ %n.vec292, %vec.epilog.iter.check304 ], [ %n.vec307, %vec.epilog.middle.block316 ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %.lr.ph203
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %.lr.ph203 ], [ %indvars.iv231.ph, %.lr.ph203.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [168 x i8], ptr %14, i64 %indvars.iv231
  store ptr @inner_wloop_thread, ptr %i.dc, align 8, !tbaa !52
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %._crit_edge204, label %.lr.ph203, !llvm.loop !33

._crit_edge204:                                   ; preds = %.lr.ph203, %vec.epilog.middle.block316, %middle.block299
  %i.dd = zext nneg i32 %.0.lcssa261267 to i64
  %i.de = call i32 @exec_blas(i64 noundef %i.dd, ptr noundef nonnull %14) #10 ; 0 uses
  %wide.trip.count239 = zext nneg i32 %i.l to i64 ; 11 uses
  %min.iters.check320 = icmp ult i32 %i.l, 4
  br i1 %min.iters.check320, label %.lr.ph207.preheader367, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge204
  %i.df = shl nuw nsw i64 %wide.trip.count239, 3  ; 2 uses
  %i.dg = getelementptr i8, ptr %11, i64 %i.df
  %i.dh = getelementptr i8, ptr %12, i64 %i.df
  %bound0 = icmp ult ptr %11, %i.dh
  %bound1 = icmp ult ptr %12, %i.dg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph207.preheader367, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck
  %n.vec322 = and i64 %wide.trip.count239, 2147483644 ; 3 uses
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next327, %vector.body323 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index324 ; 2 uses
  %wide.load325 = load <4 x double>, ptr %i.di, align 8, !tbaa !10, !alias.scope !58, !noalias !59
  %i.dj = fneg nsz <4 x double> %wide.load325
  %i.dk = call nsz <4 x double> @llvm.maxnum.v4f64(<4 x double> %i.dj, <4 x double> zeroinitializer)
  %i.dl = call <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.dk) ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index324
  %wide.load326 = load <4 x double>, ptr %i.dm, align 8, !tbaa !10, !alias.scope !59
  %i.dn = fcmp olt <4 x double> %wide.load326, zeroinitializer
  %i.do = fneg <4 x double> %i.dl
  %i.dp = select <4 x i1> %i.dn, <4 x double> %i.do, <4 x double> %i.dl
  store <4 x double> %i.dp, ptr %i.di, align 8, !tbaa !10, !alias.scope !58, !noalias !59
  %index.next327 = add nuw i64 %index324, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next327, %n.vec322
  br i1 %i.dq, label %middle.block328, label %vector.body323, !llvm.loop !37

middle.block328:                                  ; preds = %vector.body323
end_hunk_0
