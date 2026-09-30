Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuNarrowPhase?download=true
inline.NumInlined: 1268
inline.NumDeleted: 521
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN16b3GpuNarrowPhase21registerCompoundShapeEP20b3AlignedObjectArrayI15b3GpuChildShapeE:bb.a
bb.b:                                             ; preds = %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 392
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !137
  %i.q = zext nneg i32 %i.d to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 6, ptr %i.s, align 4, !tbaa !309
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 212
  %i.u = load i32, ptr %i.t, align 4, !tbaa !326
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.u, ptr %i.v, align 4, !tbaa !138
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 564
  %i.y = load i32, ptr %i.x, align 4, !tbaa !327
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.y, ptr %i.z, align 4, !tbaa !138
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !326 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i32 [ %i.ab, %bb.b ], [ %i.bk, %bb.d ]
  store i32 %.lcssa, ptr %i.r, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store <2 x float> splat (float 1.000000e+30), ptr %4, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store <2 x float> <float 1.000000e+30, float 0.000000e+00>, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store <2 x float> splat (float -1.000000e+30), ptr %5, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store <2 x float> <float -1.000000e+30, float 0.000000e+00>, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i8 1, ptr %i.ag, align 8, !tbaa !464
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !331
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !465
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !466
  %i.ak = load i32, ptr %i.aa, align 4, !tbaa !326 ; 6 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i.i, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %._crit_edge
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !465
  br label %._crit_edge202

_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i.i: ; preds = %._crit_edge
  %i.am = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.an = shl nuw nsw i64 %i.am, 5
  %i.ao = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.an, i32 noundef 16)
          to label %.noexc unwind label %bb.g     ; 12 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i.i
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.split7.i.i, label %.lr.ph.i

.split7.i.i:                                      ; preds = %.noexc
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 301)
          to label %.noexc139 unwind label %bb.g

.noexc139:                                        ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10)
          to label %.lr.ph.i unwind label %bb.g

.lr.ph.i:                                         ; preds = %.noexc139, %.noexc
  %.0.i.i = phi i32 [ %i.ak, %.noexc ], [ 0, %.noexc139 ]
  store i8 1, ptr %i.ag, align 8, !tbaa !464
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !331
  store i32 %.0.i.i, ptr %i.aj, align 8, !tbaa !466
  %xtraiter = and i64 %i.am, 7                    ; 3 uses
  %i.aq = icmp ult i32 %i.ak, 8
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.am, 2147483640
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.c ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false)
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.unr-lcssa, label %bb.c, !llvm.loop !456

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !306
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %indvars.iv
  call void @_ZN20b3AlignedObjectArrayI15b3GpuChildShapeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.bh, ptr noundef nonnull align 16 dereferenceable(48) %i.bj)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load i32, ptr %i.aa, align 4, !tbaa !326 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %bb.d, label %._crit_edge, !llvm.loop !457

.loopexit.unr-lcssa:                              ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.loopexit.unr-lcssa ]
  %lcmp.mod282 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod282)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.e, !llvm.loop !458

.loopexit:                                        ; preds = %bb.e, %.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !326
  %i.bo = icmp sgt i32 %.pre, 0
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !465
  br i1 %i.bo, label %.lr.ph201, label %._crit_edge202

.lr.ph201:                                        ; preds = %.loopexit
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.h

._crit_edge202:                                   ; preds = %_ZN9b3Vector36setMaxERKS_.exit, %.loopexit.thread, %.loopexit
  %i.bu = phi ptr [ null, %.loopexit.thread ], [ %i.ao, %.loopexit ], [ %i.ft, %_ZN9b3Vector36setMaxERKS_.exit ] ; 11 uses
  %i.bv = load <2 x float>, ptr %4, align 16, !tbaa !163
  store <2 x float> %i.bv, ptr %3, align 16, !tbaa !138
  %i.bw = load float, ptr %i.ae, align 8, !tbaa !163
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.bw, ptr %i.bx, align 8, !tbaa !138
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !138
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = load <2 x float>, ptr %5, align 16, !tbaa !163
  store <2 x float> %i.ca, ptr %i.bz, align 16, !tbaa !138
  %i.cb = load float, ptr %i.af, align 8, !tbaa !163
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.cb, ptr %i.cc, align 8, !tbaa !138
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.cd, align 4, !tbaa !138
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !148
  invoke void @_ZN20b3AlignedObjectArrayI9b3SapAabbE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.cg, ptr noundef nonnull align 16 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge202
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14b3QuantizedBvhdlEPv.exit

bb.g:                                             ; preds = %.noexc139, %.split7.i.i, %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14b3QuantizedBvhdlEPv.exit

bb.h:                                             ; preds = %.lr.ph201, %_ZN9b3Vector36setMaxERKS_.exit
  %indvars.iv221 = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next222, %_ZN9b3Vector36setMaxERKS_.exit ] ; 3 uses
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !306
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %indvars.iv221 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !138
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !148
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !145
  %i.cs = sext i32 %i.cm to i64
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.cr, i64 %i.cs ; 6 uses
  %.sroa.0.0.copyload = load float, ptr %i.ct, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.764.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.764.0.copyload.a = load float, ptr %.sroa.764.0..sroa_idx.a, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.30.48.copyload.a = load float, ptr %.sroa.8.0..sroa_idx.a, align 16 ; 2 uses
  %.sroa.32.48..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %.sroa.32.48.copyload.a = load float, ptr %.sroa.32.48..sroa_idx.a, align 4 ; 2 uses
  %.sroa.33.48..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.sroa.9.0.copyload = load float, ptr %.sroa.33.48..sroa_idx.a, align 8 ; 2 uses
  %.sroa.33.48.copyload.a = load float, ptr %i.ck, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %.sroa.0169.0.copyload.a = load float, ptr %i.cu, align 4
  %.sroa.5170.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.5170.0.copyload = load float, ptr %.sroa.5170.0..sroa_idx.a, align 8
  %.sroa.6171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.6171.0.copyload = load float, ptr %.sroa.6171.0..sroa_idx, align 16 ; 6 uses
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  %.sroa.7172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  %.sroa.7172.0.copyload = load float, ptr %.sroa.7172.0..sroa_idx, align 4 ; 5 uses
  %9 = load <2 x float>, ptr %.sroa.5170.0..sroa_idx, align 4 ; 6 uses
  %10 = extractelement <2 x float> %9, i64 0
  %foldExtExtBinop = fmul <2 x float> %9, %9
  %11 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cv = call float @llvm.fmuladd.f32(float %.sroa.6171.0.copyload, float %.sroa.6171.0.copyload, float %11)
  %12 = extractelement <2 x float> %9, i64 1      ; 2 uses
  %i.cw = call float @llvm.fmuladd.f32(float %12, float %12, float %i.cv)
  %i.cx = call noundef float @llvm.fmuladd.f32(float %.sroa.7172.0.copyload, float %.sroa.7172.0.copyload, float %i.cw)
  %i.cy = fdiv float 2.000000e+00, %i.cx          ; 2 uses
  %i.cz = fmul float %.sroa.6171.0.copyload, %i.cy ; 2 uses
  %13 = insertelement <2 x float> poison, float %i.cy, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %9, %14                  ; 3 uses
  %i.da = fmul float %.sroa.7172.0.copyload, %i.cz ; 2 uses
  %16 = extractelement <2 x float> %15, i64 0     ; 2 uses
  %i.db = fmul float %.sroa.7172.0.copyload, %16  ; 2 uses
  %17 = extractelement <2 x float> %15, i64 1     ; 3 uses
  %i.dc = fmul float %.sroa.7172.0.copyload, %17  ; 2 uses
  %i.dd = fmul float %.sroa.6171.0.copyload, %i.cz ; 2 uses
  %i.de = fmul float %.sroa.6171.0.copyload, %16  ; 2 uses
  %i.df = fmul float %.sroa.6171.0.copyload, %17  ; 2 uses
  %i.dg = fmul float %10, %17                     ; 2 uses
  %18 = fmul <2 x float> %9, %15                  ; 3 uses
  %19 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %18)
  %i.dh = fsub float 1.000000e+00, %19            ; 2 uses
  %20 = fsub float %i.de, %i.dc                   ; 2 uses
  %i.di = fadd float %i.df, %i.db                 ; 2 uses
  %i.dj = fadd float %i.de, %i.dc                 ; 2 uses
  %21 = extractelement <2 x float> %18, i64 1
  %i.dk = fadd float %i.dd, %21
  %22 = fsub float 1.000000e+00, %i.dk            ; 2 uses
  %i.dl = fsub float %i.dg, %i.da                 ; 2 uses
  %i.dm = fsub float %i.df, %i.db                 ; 2 uses
  %23 = fadd float %i.dg, %i.da                   ; 2 uses
  %24 = extractelement <2 x float> %18, i64 0
  %i.dn = fadd float %i.dd, %24
  %25 = fsub float 1.000000e+00, %i.dn            ; 2 uses
  %26 = fsub float %.sroa.30.48.copyload.a, %.sroa.0.0.copyload
  %27 = fsub float %.sroa.32.48.copyload.a, %.sroa.5.0.copyload
  %28 = fsub float %.sroa.9.0.copyload, %.sroa.764.0.copyload.a
  %29 = fmul float %26, 5.000000e-01
  %30 = fmul float %27, 5.000000e-01
  %i.do = fmul float %28, 5.000000e-01
  %31 = fadd float %29, 0.000000e+00              ; 3 uses
  %i.dp = fadd float %30, 0.000000e+00            ; 3 uses
  %i.dq = fadd float %i.do, 0.000000e+00          ; 3 uses
  %32 = fadd float %.sroa.0.0.copyload, %.sroa.30.48.copyload.a
  %33 = fadd float %.sroa.5.0.copyload, %.sroa.32.48.copyload.a
  %34 = fadd float %.sroa.764.0.copyload.a, %.sroa.9.0.copyload
  %i.dr = fmul float %32, 5.000000e-01            ; 3 uses
  %35 = fmul float %33, 5.000000e-01              ; 3 uses
  %i.ds = fmul float %34, 5.000000e-01            ; 3 uses
  %i.dt = call noundef float @llvm.fabs.f32(float %i.dh)
  %i.du = call noundef float @llvm.fabs.f32(float %20)
  %i.dv = call noundef float @llvm.fabs.f32(float %i.di)
  %i.dw = call noundef float @llvm.fabs.f32(float %i.dj)
  %i.dx = call noundef float @llvm.fabs.f32(float %22)
  %i.dy = call noundef float @llvm.fabs.f32(float %i.dl)
  %i.dz = call noundef float @llvm.fabs.f32(float %i.dm)
  %i.ea = call noundef float @llvm.fabs.f32(float %23)
  %i.eb = call noundef float @llvm.fabs.f32(float %25)
  %i.ec = fmul float %35, %20
  %i.ed = call float @llvm.fmuladd.f32(float %i.dr, float %i.dh, float %i.ec)
  %i.ee = call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.di, float %i.ed)
  %i.ef = fmul float %35, %22
  %i.eg = call float @llvm.fmuladd.f32(float %i.dr, float %i.dj, float %i.ef)
  %i.eh = call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.dl, float %i.eg)
  %i.ei = fmul float %35, %23
  %i.ej = call float @llvm.fmuladd.f32(float %i.dr, float %i.dm, float %i.ei)
  %i.ek = call noundef float @llvm.fmuladd.f32(float %i.ds, float %25, float %i.ej)
  %i.el = fadd float %.sroa.33.48.copyload.a, %i.ee ; 2 uses
  %i.em = fadd float %.sroa.0169.0.copyload.a, %i.eh ; 2 uses
  %i.en = fadd float %.sroa.5170.0.copyload, %i.ek ; 2 uses
  %i.eo = fmul float %i.dp, %i.du
  %i.ep = call float @llvm.fmuladd.f32(float %31, float %i.dt, float %i.eo)
  %i.eq = call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.dv, float %i.ep) ; 2 uses
  %i.er = fmul float %i.dp, %i.dx
  %i.es = call float @llvm.fmuladd.f32(float %31, float %i.dw, float %i.er)
  %i.et = call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.dy, float %i.es) ; 2 uses
  %i.eu = fmul float %i.dp, %i.ea
  %i.ev = call float @llvm.fmuladd.f32(float %31, float %i.dz, float %i.eu)
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.eb, float %i.ev) ; 2 uses
  %i.ex = fsub float %i.el, %i.eq                 ; 3 uses
  %i.ey = fsub float %i.em, %i.et                 ; 3 uses
  %i.ez = fsub float %i.en, %i.ew                 ; 3 uses
  %i.fa = fadd float %i.eq, %i.el                 ; 3 uses
  %i.fb = fadd float %i.et, %i.em                 ; 3 uses
  %i.fc = fadd float %i.ew, %i.en                 ; 3 uses
  %i.fd = load float, ptr %4, align 16, !tbaa !163
  %i.fe = fcmp olt float %i.ex, %i.fd
  br i1 %i.fe, label %bb.i, label %_Z8b3SetMinIfEvRT_RKS0_.exit.i

bb.i:                                             ; preds = %bb.h
  store float %i.ex, ptr %4, align 16, !tbaa !163
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i

_Z8b3SetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.i, %bb.h
  %i.ff = load float, ptr %i.bq, align 4, !tbaa !163
  %i.fg = fcmp olt float %i.ey, %i.ff
  br i1 %i.fg, label %bb.j, label %_Z8b3SetMinIfEvRT_RKS0_.exit5.i

bb.j:                                             ; preds = %_Z8b3SetMinIfEvRT_RKS0_.exit.i
  store float %i.ey, ptr %i.bq, align 4, !tbaa !163
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit5.i

_Z8b3SetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.j, %_Z8b3SetMinIfEvRT_RKS0_.exit.i
  %i.fh = load float, ptr %i.ae, align 8, !tbaa !163
  %i.fi = fcmp olt float %i.ez, %i.fh
  br i1 %i.fi, label %bb.k, label %_Z8b3SetMinIfEvRT_RKS0_.exit6.i

bb.k:                                             ; preds = %_Z8b3SetMinIfEvRT_RKS0_.exit5.i
  store float %i.ez, ptr %i.ae, align 8, !tbaa !163
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit6.i

_Z8b3SetMinIfEvRT_RKS0_.exit6.i:                  ; preds = %bb.k, %_Z8b3SetMinIfEvRT_RKS0_.exit5.i
  %i.fj = load float, ptr %i.br, align 4, !tbaa !163
  %i.fk = fcmp ogt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.l, label %_ZN9b3Vector36setMinERKS_.exit

bb.l:                                             ; preds = %_Z8b3SetMinIfEvRT_RKS0_.exit6.i
  store float 0.000000e+00, ptr %i.br, align 4, !tbaa !163
  br label %_ZN9b3Vector36setMinERKS_.exit

_ZN9b3Vector36setMinERKS_.exit:                   ; preds = %bb.l, %_Z8b3SetMinIfEvRT_RKS0_.exit6.i
  %i.fl = load float, ptr %5, align 16, !tbaa !163
  %i.fm = fcmp olt float %i.fl, %i.fa
  br i1 %i.fm, label %bb.m, label %_Z8b3SetMaxIfEvRT_RKS0_.exit.i

bb.m:                                             ; preds = %_ZN9b3Vector36setMinERKS_.exit
  store float %i.fa, ptr %5, align 16, !tbaa !163
  br label %_Z8b3SetMaxIfEvRT_RKS0_.exit.i

_Z8b3SetMaxIfEvRT_RKS0_.exit.i:                   ; preds = %bb.m, %_ZN9b3Vector36setMinERKS_.exit
  %i.fn = load float, ptr %i.bs, align 4, !tbaa !163
  %i.fo = fcmp olt float %i.fn, %i.fb
  br i1 %i.fo, label %bb.n, label %_Z8b3SetMaxIfEvRT_RKS0_.exit5.i

bb.n:                                             ; preds = %_Z8b3SetMaxIfEvRT_RKS0_.exit.i
  store float %i.fb, ptr %i.bs, align 4, !tbaa !163
  br label %_Z8b3SetMaxIfEvRT_RKS0_.exit5.i

_Z8b3SetMaxIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.n, %_Z8b3SetMaxIfEvRT_RKS0_.exit.i
  %i.fp = load float, ptr %i.af, align 8, !tbaa !163
  %i.fq = fcmp olt float %i.fp, %i.fc
  br i1 %i.fq, label %bb.o, label %_Z8b3SetMaxIfEvRT_RKS0_.exit6.i

bb.o:                                             ; preds = %_Z8b3SetMaxIfEvRT_RKS0_.exit5.i
  store float %i.fc, ptr %i.af, align 8, !tbaa !163
  br label %_Z8b3SetMaxIfEvRT_RKS0_.exit6.i

_Z8b3SetMaxIfEvRT_RKS0_.exit6.i:                  ; preds = %bb.o, %_Z8b3SetMaxIfEvRT_RKS0_.exit5.i
  %i.fr = load float, ptr %i.bt, align 4, !tbaa !163
  %i.fs = fcmp olt float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.p, label %_ZN9b3Vector36setMaxERKS_.exit

bb.p:                                             ; preds = %_Z8b3SetMaxIfEvRT_RKS0_.exit6.i
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !163
  br label %_ZN9b3Vector36setMaxERKS_.exit

_ZN9b3Vector36setMaxERKS_.exit:                   ; preds = %bb.p, %_Z8b3SetMaxIfEvRT_RKS0_.exit6.i
  %i.ft = load ptr, ptr %i.ah, align 8, !tbaa !331 ; 2 uses
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %indvars.iv221 ; 8 uses
  store float %i.ex, ptr %i.fu, align 16, !tbaa !138
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store float %i.ey, ptr %i.fv, align 4, !tbaa !138
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store float %i.ez, ptr %i.fw, align 8, !tbaa !138
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store float 0.000000e+00, ptr %i.fx, align 4, !tbaa !138
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store float %i.fa, ptr %i.fy, align 16, !tbaa !138
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  store float %i.fb, ptr %i.fz, align 4, !tbaa !138
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store float %i.fc, ptr %i.ga, align 8, !tbaa !138
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 28
  store float 0.000000e+00, ptr %i.gb, align 4, !tbaa !138
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.gc = load i32, ptr %i.aa, align 4, !tbaa !326
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp slt i64 %indvars.iv.next222, %i.gd
  br i1 %i.ge, label %bb.h, label %._crit_edge202, !llvm.loop !459

bb.q:                                             ; preds = %._crit_edge202
  %i.gf = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef 256, i32 noundef 16)
          to label %_ZN14b3QuantizedBvhnwEm.exit unwind label %bb.t ; 19 uses

_ZN14b3QuantizedBvhnwEm.exit:                     ; preds = %bb.q
  invoke void @_ZN14b3QuantizedBvhC1Ev(ptr noundef nonnull align 16 dereferenceable(252) %i.gf)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZN14b3QuantizedBvhnwEm.exit
  invoke void @_ZN14b3QuantizedBvh21setQuantizationValuesERK9b3Vector3S2_f(ptr noundef nonnull align 16 dereferenceable(252) %i.gf, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, float noundef 1.000000e+00)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 144
  %i.gh = load i32, ptr %i.aa, align 4, !tbaa !326 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 52
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 12
  %wide.trip.count = zext nneg i32 %i.gh to i64
  br label %bb.x

._crit_edge206:                                   ; preds = %bb.y, %bb.s
  invoke void @_ZN14b3QuantizedBvh13buildInternalEv(ptr noundef nonnull align 16 dereferenceable(252) %i.gf)
          to label %bb.aa unwind label %bb.w

bb.t:                                             ; preds = %bb.q, %bb.r
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14b3QuantizedBvhdlEPv.exit

bb.u:                                             ; preds = %_ZN14b3QuantizedBvhnwEm.exit
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.gf)
          to label %_ZN14b3QuantizedBvhdlEPv.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #19
  unreachable

bb.w:                                             ; preds = %._crit_edge206
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14b3QuantizedBvhdlEPv.exit

bb.x:                                             ; preds = %.lr.ph205, %bb.y
  %indvars.iv224 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next225, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %indvars.iv224 ; 4 uses
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.sroa.6167.0.copyload = load float, ptr %.sroa.6167.0..sroa_idx, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %.sroa.0.0.copyload160 = load float, ptr %i.gv, align 16
  %.sroa.5.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %i.gw = load <2 x float>, ptr %i.gu, align 16
  %i.gx = load <2 x float>, ptr %i.gj, align 16, !tbaa !138 ; 2 uses
  %i.gy = load <2 x float>, ptr %i.gl, align 16, !tbaa !138 ; 2 uses
  %i.gz = extractelement <2 x float> %i.gx, i64 0
  %i.ha = fsub float %.sroa.0.0.copyload160, %i.gz
  %i.hb = extractelement <2 x float> %i.gy, i64 0
  %i.hc = fmul float %i.ha, %i.hb
  %i.hd = insertelement <4 x float> poison, float %.sroa.6167.0.copyload, i64 2
  %i.he = insertelement <4 x float> %i.hd, float %i.hc, i64 3
  %i.hf = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hh = shufflevector <2 x float> %i.gx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hi = insertelement <4 x float> %i.hh, float -1.000000e+00, i64 3
  %i.hj = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hk = insertelement <4 x float> %i.hj, float 1.000000e+00, i64 3
  %i.hl = load <2 x float>, ptr %.sroa.5.0..sroa_idx161, align 4
  %i.hm = load <2 x float>, ptr %i.gk, align 4, !tbaa !138 ; 2 uses
  %i.hn = load <2 x float>, ptr %i.gm, align 4, !tbaa !138 ; 2 uses
  %i.ho = fsub <2 x float> %i.hl, %i.hm
  %i.hp = fmul <2 x float> %i.ho, %i.hn
  %i.hq = shufflevector <2 x float> %i.hm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hr = shufflevector <4 x float> %i.hi, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hs = fsub <4 x float> %i.hg, %i.hr
  %i.ht = shufflevector <2 x float> %i.hn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hu = shufflevector <4 x float> %i.hk, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hv = fmul <4 x float> %i.hs, %i.hu
  %i.hw = fptoui <4 x float> %i.hv to <4 x i16>   ; 2 uses
  %i.hx = and <4 x i16> %i.hw, <i16 -2, i16 -2, i16 -2, i16 poison>
  %i.hy = or <4 x i16> %i.hw, <i16 poison, i16 poison, i16 poison, i16 1>
  %i.hz = shufflevector <4 x i16> %i.hx, <4 x i16> %i.hy, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ia = fadd <2 x float> %i.hp, splat (float 1.000000e+00)
  %i.ib = fptoui <2 x float> %i.ia to <2 x i16>
  %i.ic = or <2 x i16> %i.ib, splat (i16 1)
  store <4 x i16> %i.hz, ptr %7, align 16, !tbaa !468
end_hunk_0
begin_hunk_1_@_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoED2Ev:bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !219
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !613 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI16b3BvhSubtreeInfoE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !363  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !112
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !219
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoED2Ev.exit unwind label %bb.c, !inline_history !614 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19, !inline_history !615
  unreachable

_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoED2Ev.exit:  ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeED2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI18b3QuantizedBvhNodeE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !112
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !219
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !616 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI18b3QuantizedBvhNodeE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !112
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !219
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeED2Ev.exit unwind label %bb.c, !inline_history !617 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19, !inline_history !618
  unreachable

_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI9b3BvhInfoED2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI9b3BvhInfoE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !112
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !219
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !619 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI9b3BvhInfoED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI9b3BvhInfoE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !112
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI9b3BvhInfoED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !219
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI9b3BvhInfoED2Ev.exit unwind label %bb.c, !inline_history !620 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19, !inline_history !621
  unreachable

_ZN13b3OpenCLArrayI9b3BvhInfoED2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI6b3AabbED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI6b3AabbE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !358  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !112
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI6b3AabbED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !219
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI6b3AabbED2Ev.exit unwind label %bb.c, !inline_history !18 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19, !inline_history !359
  unreachable

_ZN13b3OpenCLArrayI6b3AabbED2Ev.exit:             ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}
!llvm.errno.tbaa = !{!30}

!0 = distinct !{!0, !111}
!1 = distinct !{!1, !111}
!2 = distinct !{!2, !111}
!3 = distinct !{!3, !111}
!4 = distinct !{!4, !111}
!5 = distinct !{!5, !111}
!6 = distinct !{!6, !111}
!7 = distinct !{!7, !111}
!8 = distinct !{!8, !111}
!9 = distinct !{null}
!10 = distinct !{null, null}
!11 = distinct !{null, null}
!12 = distinct !{null}
!13 = distinct !{null, null}
!14 = distinct !{null, null}
!15 = distinct !{!15, !111}
!16 = distinct !{!16, !111}
!17 = distinct !{!17, !111}
!18 = distinct !{ptr @_ZN13b3OpenCLArrayI6b3AabbED2Ev, null}
!19 = distinct !{ptr @_ZN13b3OpenCLArrayI6b3Int4ED2Ev, null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!"omnipotent char", !26, i64 0}
!28 = !{!"int", !27, i64 0}
!29 = !{!"__libc_errno", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"vtable pointer", !26, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"any pointer", !27, i64 0}
!34 = !{!"p1 _ZTS28b3GpuNarrowPhaseInternalData", !33, i64 0}
!35 = !{!"p1 _ZTS11_cl_context", !33, i64 0}
!36 = !{!"p1 _ZTS13_cl_device_id", !33, i64 0}
!37 = !{!"p1 _ZTS17_cl_command_queue", !33, i64 0}
!38 = !{!"_ZTS16b3GpuNarrowPhase", !34, i64 8, !28, i64 16, !28, i64 20, !28, i64 24, !35, i64 32, !36, i64 40, !37, i64 48}
!39 = !{!38, !34, i64 8}
!40 = !{!38, !28, i64 20}
!41 = !{!38, !28, i64 24}
!42 = !{!38, !35, i64 32}
!43 = !{!38, !37, i64 48}
!44 = !{!28, !28, i64 0}
!45 = !{!"p1 _ZTS20b3AlignedObjectArrayIP15b3ConvexUtilityE", !33, i64 0}
!46 = !{!"_ZTS18b3AlignedAllocatorI22b3ConvexPolyhedronDataLj16EE"}
!47 = !{!"p1 _ZTS22b3ConvexPolyhedronData", !33, i64 0}
!48 = !{!"bool", !27, i64 0}
!49 = !{!"_ZTS20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE", !46, i64 0, !28, i64 4, !28, i64 8, !47, i64 16, !48, i64 24}
!50 = !{!"_ZTS18b3AlignedAllocatorI9b3Vector3Lj16EE"}
!51 = !{!"p1 _ZTS9b3Vector3", !33, i64 0}
!52 = !{!"_ZTS20b3AlignedObjectArrayI9b3Vector3E", !50, i64 0, !28, i64 4, !28, i64 8, !51, i64 16, !48, i64 24}
!53 = !{!"_ZTS18b3AlignedAllocatorIiLj16EE"}
!54 = !{!"p1 int", !33, i64 0}
!55 = !{!"_ZTS20b3AlignedObjectArrayIiE", !53, i64 0, !28, i64 4, !28, i64 8, !54, i64 16, !48, i64 24}
!56 = !{!"p1 _ZTS13b3OpenCLArrayI22b3ConvexPolyhedronDataE", !33, i64 0}
!57 = !{!"p1 _ZTS13b3OpenCLArrayI9b3Vector3E", !33, i64 0}
!58 = !{!"p1 _ZTS13b3OpenCLArrayIiE", !33, i64 0}
!59 = !{!"p1 _ZTS13b3OpenCLArrayI6b3Int4E", !33, i64 0}
!60 = !{!"_ZTS18b3AlignedAllocatorI15b3GpuChildShapeLj16EE"}
!61 = !{!"p1 _ZTS15b3GpuChildShape", !33, i64 0}
!62 = !{!"_ZTS20b3AlignedObjectArrayI15b3GpuChildShapeE", !60, i64 0, !28, i64 4, !28, i64 8, !61, i64 16, !48, i64 24}
!63 = !{!"p1 _ZTS13b3OpenCLArrayI15b3GpuChildShapeE", !33, i64 0}
!64 = !{!"_ZTS18b3AlignedAllocatorI9b3GpuFaceLj16EE"}
!65 = !{!"p1 _ZTS9b3GpuFace", !33, i64 0}
!66 = !{!"_ZTS20b3AlignedObjectArrayI9b3GpuFaceE", !64, i64 0, !28, i64 4, !28, i64 8, !65, i64 16, !48, i64 24}
!67 = !{!"p1 _ZTS13b3OpenCLArrayI9b3GpuFaceE", !33, i64 0}
!68 = !{!"p1 _ZTS15GpuSatCollision", !33, i64 0}
!69 = !{!"p1 _ZTS20b3AlignedObjectArrayI10b3Contact4E", !33, i64 0}
!70 = !{!"p1 _ZTS20b3AlignedObjectArrayI15b3RigidBodyDataE", !33, i64 0}
!71 = !{!"p1 _ZTS13b3OpenCLArrayI15b3RigidBodyDataE", !33, i64 0}
!72 = !{!"p1 _ZTS20b3AlignedObjectArrayI13b3InertiaDataE", !33, i64 0}
!73 = !{!"p1 _ZTS13b3OpenCLArrayI13b3InertiaDataE", !33, i64 0}
!74 = !{!"_ZTS18b3AlignedAllocatorI12b3CollidableLj16EE"}
!75 = !{!"p1 _ZTS12b3Collidable", !33, i64 0}
!76 = !{!"_ZTS20b3AlignedObjectArrayI12b3CollidableE", !74, i64 0, !28, i64 4, !28, i64 8, !75, i64 16, !48, i64 24}
!77 = !{!"p1 _ZTS13b3OpenCLArrayI12b3CollidableE", !33, i64 0}
!78 = !{!"p1 _ZTS13b3OpenCLArrayI9b3SapAabbE", !33, i64 0}
!79 = !{!"p1 _ZTS20b3AlignedObjectArrayI9b3SapAabbE", !33, i64 0}
!80 = !{!"_ZTS18b3AlignedAllocatorIP14b3OptimizedBvhLj16EE"}
!81 = !{!"any p2 pointer", !33, i64 0}
!82 = !{!"p2 _ZTS14b3OptimizedBvh", !81, i64 0}
!83 = !{!"_ZTS20b3AlignedObjectArrayIP14b3OptimizedBvhE", !80, i64 0, !28, i64 4, !28, i64 8, !82, i64 16, !48, i64 24}
!84 = !{!"_ZTS18b3AlignedAllocatorIP26b3TriangleIndexVertexArrayLj16EE"}
!85 = !{!"p2 _ZTS26b3TriangleIndexVertexArray", !81, i64 0}
!86 = !{!"_ZTS20b3AlignedObjectArrayIP26b3TriangleIndexVertexArrayE", !84, i64 0, !28, i64 4, !28, i64 8, !85, i64 16, !48, i64 24}
!87 = !{!"_ZTS18b3AlignedAllocatorI18b3QuantizedBvhNodeLj16EE"}
!88 = !{!"p1 _ZTS18b3QuantizedBvhNode", !33, i64 0}
!89 = !{!"_ZTS20b3AlignedObjectArrayI18b3QuantizedBvhNodeE", !87, i64 0, !28, i64 4, !28, i64 8, !88, i64 16, !48, i64 24}
!90 = !{!"_ZTS18b3AlignedAllocatorI16b3BvhSubtreeInfoLj16EE"}
!91 = !{!"p1 _ZTS16b3BvhSubtreeInfo", !33, i64 0}
!92 = !{!"_ZTS20b3AlignedObjectArrayI16b3BvhSubtreeInfoE", !90, i64 0, !28, i64 4, !28, i64 8, !91, i64 16, !48, i64 24}
!93 = !{!"_ZTS18b3AlignedAllocatorI9b3BvhInfoLj16EE"}
!94 = !{!"p1 _ZTS9b3BvhInfo", !33, i64 0}
!95 = !{!"_ZTS20b3AlignedObjectArrayI9b3BvhInfoE", !93, i64 0, !28, i64 4, !28, i64 8, !94, i64 16, !48, i64 24}
!96 = !{!"p1 _ZTS13b3OpenCLArrayI9b3BvhInfoE", !33, i64 0}
!97 = !{!"p1 _ZTS13b3OpenCLArrayI18b3QuantizedBvhNodeE", !33, i64 0}
!98 = !{!"p1 _ZTS13b3OpenCLArrayI16b3BvhSubtreeInfoE", !33, i64 0}
!99 = !{!"_ZTS8b3Config", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44}
!100 = !{!"_ZTS28b3GpuNarrowPhaseInternalData", !45, i64 0, !49, i64 8, !52, i64 40, !52, i64 72, !55, i64 104, !56, i64 136, !57, i64 144, !57, i64 152, !58, i64 160, !57, i64 168, !59, i64 176, !57, i64 184, !57, i64 192, !57, i64 200, !62, i64 208, !63, i64 240, !66, i64 248, !67, i64 280, !68, i64 288, !59, i64 296, !27, i64 304, !28, i64 320, !69, i64 328, !70, i64 336, !71, i64 344, !72, i64 352, !73, i64 360, !28, i64 368, !28, i64 372, !76, i64 376, !77, i64 408, !78, i64 416, !79, i64 424, !83, i64 432, !86, i64 464, !89, i64 496, !92, i64 528, !95, i64 560, !96, i64 592, !97, i64 600, !98, i64 608, !99, i64 616}
!101 = !{!100, !68, i64 288}
!102 = !{!100, !59, i64 296}
!103 = !{!"_ZTS18b3AlignedAllocatorI10b3Contact4Lj16EE"}
!104 = !{!"p1 _ZTS10b3Contact4", !33, i64 0}
!105 = !{!"_ZTS20b3AlignedObjectArrayI10b3Contact4E", !103, i64 0, !28, i64 4, !28, i64 8, !104, i64 16, !48, i64 24}
!106 = !{!105, !48, i64 24}
!107 = !{!105, !104, i64 16}
!108 = !{!105, !28, i64 4}
!109 = !{!105, !28, i64 8}
!110 = !{!100, !69, i64 328}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{i8 0, i8 2}
!113 = !{}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{!"_ZTS18b3AlignedAllocatorI15b3RigidBodyDataLj16EE"}
!116 = !{!"p1 _ZTS15b3RigidBodyData", !33, i64 0}
!117 = !{!"_ZTS20b3AlignedObjectArrayI15b3RigidBodyDataE", !115, i64 0, !28, i64 4, !28, i64 8, !116, i64 16, !48, i64 24}
!118 = !{!117, !48, i64 24}
!119 = !{!117, !116, i64 16}
!120 = !{!117, !28, i64 4}
!121 = !{!117, !28, i64 8}
!122 = !{!100, !70, i64 336}
!123 = !{!"_ZTS18b3AlignedAllocatorI13b3InertiaDataLj16EE"}
!124 = !{!"p1 _ZTS13b3InertiaData", !33, i64 0}
!125 = !{!"_ZTS20b3AlignedObjectArrayI13b3InertiaDataE", !123, i64 0, !28, i64 4, !28, i64 8, !124, i64 16, !48, i64 24}
!126 = !{!125, !48, i64 24}
!127 = !{!125, !124, i64 16}
!128 = !{!125, !28, i64 4}
!129 = !{!125, !28, i64 8}
!130 = !{!100, !72, i64 352}
!131 = !{!"p1 _ZTS13b3OpenCLArrayI10b3Contact4E", !33, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!100, !73, i64 360}
!134 = !{!100, !77, i64 408}
!135 = !{!76, !28, i64 8}
!136 = !{!76, !28, i64 4}
!137 = !{!76, !75, i64 16}
!138 = !{!27, !27, i64 0}
!139 = !{i64 0, i64 4, !138, i64 4, i64 4, !138, i64 8, i64 4, !44, i64 12, i64 4, !138}
!140 = !{!76, !48, i64 24}
!141 = !{!"_ZTS18b3AlignedAllocatorI9b3SapAabbLj16EE"}
!142 = !{!"p1 _ZTS9b3SapAabb", !33, i64 0}
!143 = !{!"_ZTS20b3AlignedObjectArrayI9b3SapAabbE", !141, i64 0, !28, i64 4, !28, i64 8, !142, i64 16, !48, i64 24}
!144 = !{!143, !48, i64 24}
!145 = !{!143, !142, i64 16}
!146 = !{!143, !28, i64 4}
!147 = !{!143, !28, i64 8}
!148 = !{!100, !79, i64 424}
!149 = !{!100, !78, i64 416}
!150 = !{!100, !71, i64 344}
!151 = !{!100, !67, i64 280}
!152 = !{!66, !28, i64 8}
!153 = !{!66, !28, i64 4}
!154 = !{!66, !65, i64 16}
!155 = !{i64 0, i64 16, !138, i64 16, i64 4, !44, i64 20, i64 4, !44, i64 24, i64 4, !44, i64 28, i64 4, !44}
!156 = !{!66, !48, i64 24}
!157 = !{!100, !63, i64 240}
!158 = !{!100, !56, i64 136}
!159 = !{!49, !28, i64 8}
!160 = !{!49, !28, i64 4}
!161 = !{!49, !47, i64 16}
!162 = !{!"float", !27, i64 0}
!163 = !{!162, !162, i64 0}
!164 = !{i64 0, i64 16, !138, i64 16, i64 16, !138, i64 32, i64 16, !138, i64 48, i64 16, !138, i64 64, i64 4, !163, i64 68, i64 4, !44, i64 72, i64 4, !44, i64 76, i64 4, !44, i64 80, i64 4, !44, i64 84, i64 4, !44, i64 88, i64 4, !44, i64 92, i64 4, !44}
!165 = !{!49, !48, i64 24}
!166 = !{!100, !57, i64 144}
end_hunk_1
