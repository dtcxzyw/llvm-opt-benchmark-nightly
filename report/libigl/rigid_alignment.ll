Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rigid_alignment?download=true
inline.NumInlined: 13524
inline.NumDeleted: 6899
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.l, i64 %i.j)
  %i.m = sitofp i64 %.sroa.speculated.i.i.i to double
  %i.n = fmul nnan double %i.m, f0x3CB0000000000000
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i: ; preds = %bb.c, %bb.b
  %i.o = phi double [ %i.h, %bb.b ], [ %i.n, %bb.c ]
  %i.p = fmul double %i.c, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !91   ; 5 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit

.lr.ph.i:                                         ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.r, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi182 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = or disjoint i64 %index, 2                ; 2 uses
  %i.y = or disjoint i64 %index, 3                ; 2 uses
  %i.z = mul nsw i64 %index, %i.v
  %i.aa = mul nsw i64 %i.w, %i.v
  %i.ab = mul nsw i64 %i.x, %i.v
  %i.ac = mul nsw i64 %i.y, %i.v
  %i.ad = getelementptr [8 x i8], ptr %i.t, i64 %index
  %i.ae = getelementptr [8 x i8], ptr %i.t, i64 %i.w
  %i.af = getelementptr [8 x i8], ptr %i.t, i64 %i.x
  %i.ag = getelementptr [8 x i8], ptr %i.t, i64 %i.y
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.ai = getelementptr [8 x i8], ptr %i.ae, i64 %i.aa
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %i.ab
  %i.ak = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac
  %i.al = load double, ptr %i.ah, align 8, !tbaa !21
  %i.am = load double, ptr %i.ai, align 8, !tbaa !21
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !21
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !21
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ao)
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.av = fcmp ogt <2 x double> %i.at, %broadcast.splat
  %i.aw = fcmp ogt <2 x double> %i.au, %broadcast.splat
  %i.ax = zext <2 x i1> %i.av to <2 x i64>
  %i.ay = zext <2 x i1> %i.aw to <2 x i64>
  %i.az = add <2 x i64> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <2 x i64> %vec.phi182, %i.ay        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !859

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ba, %i.az
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi i64 [ %i.bl, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.078.i = phi i64 [ %i.bk, %scalar.ph ], [ %.078.i.ph, %scalar.ph.preheader ]
  %i.bd = mul nsw i64 %.09.i, %i.v
  %i.be = getelementptr [8 x i8], ptr %i.t, i64 %.09.i
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !21
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, %i.p
  %i.bj = zext i1 %i.bi to i64
  %i.bk = add nuw nsw i64 %.078.i, %i.bj          ; 2 uses
  %i.bl = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.r
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph, !llvm.loop !860

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit: ; preds = %scalar.ph, %middle.block, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge
  %i.bm = phi i64 [ %.pre, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge ], [ %i.v, %middle.block ], [ %i.v, %scalar.ph ]
  %.07.lcssa.i = phi i64 [ 0, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge ], [ %i.bc, %middle.block ], [ %i.bk, %scalar.ph ] ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !28 ; 13 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bm) ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %.sroa.speculated, %i.bs
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.bt) #24
  %i.bu = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.bu, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.bv = icmp samesign ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.bv, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.e
  %i.bx = shl nuw i64 %.sroa.speculated, 3
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bx) #25 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.g, label %.sink.split.i.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ca, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.d
  %.sink.i.i = phi ptr [ %i.by, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i, ptr %i.bq, align 8, !tbaa !19
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, %.sink.split.i.i
  store i64 %.sroa.speculated, ptr %i.br, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !109
  %.not.i.i30 = icmp eq i64 %i.bo, %i.cd
  br i1 %.not.i.i30, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.ce) #24
  %i.cf = icmp sgt i64 %i.bo, 0
  br i1 %i.cf, label %bb.i, label %.sink.split.i.i31

bb.i:                                             ; preds = %bb.h
  %i.cg = icmp samesign ugt i64 %i.bo, 2305843009213693951
  br i1 %i.cg, label %bb.j, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33

bb.j:                                             ; preds = %bb.i
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33: ; preds = %bb.i
  %i.ci = shl nuw i64 %i.bo, 3
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ci) #25 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.k, label %.sink.split.i.i31

bb.k:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cl, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

.sink.split.i.i31:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33, %bb.h
  %.sink.i.i32 = phi ptr [ %i.cj, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33 ], [ null, %bb.h ]
  store ptr %.sink.i.i32, ptr %i.cb, align 8, !tbaa !103
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i31
  store i64 %i.bo, ptr %i.cc, align 8, !tbaa !109
  %i.cm = icmp slt i64 %.07.lcssa.i, %i.bo
  br i1 %i.cm, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.cn = add i64 %.07.lcssa.i, -1                ; 9 uses
  %i.co = icmp sgt i64 %.07.lcssa.i, 0
  br i1 %i.co, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.cp = sub i64 %i.bo, %.07.lcssa.i             ; 13 uses
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = icmp sgt i64 %i.cp, 1
  %i.cs = add i64 %i.cp, -1                       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.1294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.1395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cz = shl i64 %.07.lcssa.i, 3                 ; 3 uses
  %i.da = add i64 %i.cz, -8                       ; 4 uses
  %i.db = shl i64 %i.cn, 3
  %i.dc = shl i64 %i.cn, 3
  %i.dd = shl i64 %i.cn, 3
  %i.de = shl i64 %i.cn, 3
  %i.df = add i64 %i.bo, -2
  %i.dg = sub i64 %i.df, %.07.lcssa.i
  %xtraiter299 = and i64 %i.cs, 3                 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 3
  %unroll_iter = and i64 %i.cs, -4
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  %lcmp.mod302 = icmp ne i64 %xtraiter299, 0
  %min.iters.check236 = icmp ugt i64 %i.cp, 3
  %n.vec238 = and i64 %i.cp, -4                   ; 3 uses
  %cmp.n243 = icmp eq i64 %i.cp, %n.vec238
  %i.di = sub i64 %i.bo, %.07.lcssa.i
  %xtraiter303 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  %i.dj = sub i64 %.07.lcssa.i, %i.bo
  %min.iters.check221 = icmp ugt i64 %i.cp, 1
  %n.vec223 = and i64 %i.cp, -2                   ; 3 uses
  %cmp.n231 = icmp eq i64 %i.cp, %n.vec223
  %i.dk = sub i64 %.07.lcssa.i, %i.bo
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48 ] ; 5 uses
  %.0169 = phi i64 [ %i.cn, %.lr.ph ], [ %i.ot, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48 ] ; 18 uses
  %i.dl = shl i64 %indvar, 3
  %i.dm = sub i64 %i.da, %i.dl
  %i.dn = mul i64 %indvar, -8                     ; 2 uses
  %i.do = add i64 %i.da, %i.dn                    ; 2 uses
  %i.dp = shl i64 %indvar, 3
  %i.dq = sub i64 %i.da, %i.dp
  %i.dr = mul i64 %indvar, -8                     ; 2 uses
  %i.ds = add i64 %i.da, %i.dr                    ; 2 uses
  %.not = icmp eq i64 %.0169, %i.cn               ; 2 uses
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.dt = load ptr, ptr %0, align 8, !tbaa !25, !noalias !901 ; 8 uses
  %i.du = load i64, ptr %i.bp, align 8, !tbaa !16, !noalias !901 ; 7 uses
  %i.dv = mul nsw i64 %i.du, %.0169
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dv ; 11 uses
  %i.dx = add nuw nsw i64 %.0169, 1               ; 4 uses
  %i.dy = mul i64 %i.du, %i.cn
  %i.dz = getelementptr [8 x i8], ptr %i.dt, i64 %i.dy ; 10 uses
  %i.ea = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.eb = and i64 %i.ea, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.eb, 0
  %i.ec = lshr exact i64 %i.ea, 3
  %i.ed = and i64 %i.ec, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.ed, i64 %i.dx ; 13 uses
  %i.ee = sub nsw i64 %i.dx, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.ef = sdiv i64 %i.ee, 2                       ; 2 uses
  %i.eg = shl nsw i64 %i.ef, 1                    ; 2 uses
  %i.eh = add nsw i64 %i.eg, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not180 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not180, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check275 = icmp ult i64 %.0.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check275, label %.lr.ph.i.i.i.i.i.i.i.preheader293, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ei = mul i64 %i.du, %i.dm
  %i.ej = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dt, i64 %i.ei
  %scevgep269 = getelementptr i8, ptr %i.ek, i64 %i.ej
  %i.el = mul i64 %i.de, %i.du
  %i.em = getelementptr i8, ptr %i.dt, i64 %i.el
  %scevgep270 = getelementptr i8, ptr %i.em, i64 %i.ej
  %bound0271 = icmp ult ptr %i.dw, %scevgep270
  %bound1272 = icmp ult ptr %i.dz, %scevgep269
  %found.conflict273 = and i1 %bound0271, %bound1272
  br i1 %found.conflict273, label %.lr.ph.i.i.i.i.i.i.i.preheader293, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck268
  %n.vec277 = and i64 %.0.i.i.i.i.i.i.i, -4       ; 3 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index279 ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index279 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load280 = load <2 x double>, ptr %i.en, align 8, !tbaa !21, !alias.scope !902, !noalias !903
  %wide.load281 = load <2 x double>, ptr %i.ep, align 8, !tbaa !21, !alias.scope !902, !noalias !903
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %wide.load282 = load <2 x double>, ptr %i.eo, align 8, !tbaa !21, !alias.scope !903
  %wide.load283 = load <2 x double>, ptr %i.eq, align 8, !tbaa !21, !alias.scope !903
  store <2 x double> %wide.load282, ptr %i.en, align 8, !tbaa !21, !alias.scope !902, !noalias !903
  store <2 x double> %wide.load283, ptr %i.ep, align 8, !tbaa !21, !alias.scope !902, !noalias !903
  store <2 x double> %wide.load280, ptr %i.eo, align 8, !tbaa !21, !alias.scope !903
  store <2 x double> %wide.load281, ptr %i.eq, align 8, !tbaa !21, !alias.scope !903
  %index.next284 = add nuw i64 %index279, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.er, label %middle.block285, label %vector.body278, !llvm.loop !866

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec277
  br i1 %cmp.n286, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader293

.lr.ph.i.i.i.i.i.i.i.preheader293:                ; preds = %vector.memcheck268, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block285
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec277, %middle.block285 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader293
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.eu = load double, ptr %i.es, align 8, !tbaa !21
  %i.ev = load double, ptr %i.et, align 8, !tbaa !21
  store double %i.ev, ptr %i.es, align 8, !tbaa !21
  store double %i.eu, ptr %i.et, align 8, !tbaa !21
  %i.ew = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader293
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader293 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ex = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.ex, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.fa = load double, ptr %i.ey, align 8, !tbaa !21
  %i.fb = load double, ptr %i.ez, align 8, !tbaa !21
  store double %i.fb, ptr %i.ey, align 8, !tbaa !21
  store double %i.fa, ptr %i.ez, align 8, !tbaa !21
  %i.fc = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fc ; 2 uses
  %i.ff = load double, ptr %i.fd, align 8, !tbaa !21
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !21
  store double %i.fg, ptr %i.fd, align 8, !tbaa !21
  store double %i.ff, ptr %i.fe, align 8, !tbaa !21
  %i.fh = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.fh, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !867

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block285, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.fi = icmp sgt i64 %i.ee, 1
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %.not166 = icmp sgt i64 %i.eh, %.0169
  br i1 %.not166, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fj = add i64 %.0.i.i.i.i.i.i.i, %i.eg
  %i.fk = sub i64 %i.dx, %i.fj                    ; 3 uses
  %min.iters.check255 = icmp ult i64 %i.fk, 14
  br i1 %min.iters.check255, label %.lr.ph.i17.i.i.i.i.i.i.preheader292, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.fl = mul i64 %i.du, %i.do
  %i.fm = shl i64 %i.ef, 4                        ; 2 uses
  %i.fn = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.fo = getelementptr i8, ptr %i.dt, i64 %i.fl
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fm
  %scevgep246 = getelementptr i8, ptr %i.fp, i64 %i.fn
  %scevgep247 = getelementptr i8, ptr %i.dt, i64 8
  %i.fq = add i64 %i.du, 1
  %i.fr = mul i64 %i.do, %i.fq
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.fr
  %i.fs = mul i64 %i.dd, %i.du                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.dt, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fm
  %scevgep249 = getelementptr i8, ptr %i.fu, i64 %i.fn
  %i.fv = getelementptr i8, ptr %i.dt, i64 %i.cz
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.dn
  %scevgep250 = getelementptr i8, ptr %i.fw, i64 %i.fs
  %bound0251 = icmp ult ptr %scevgep246, %scevgep250
  %bound1252 = icmp ult ptr %scevgep249, %scevgep248
  %found.conflict253 = and i1 %bound0251, %bound1252
  br i1 %found.conflict253, label %.lr.ph.i17.i.i.i.i.i.i.preheader292, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck245
end_hunk_0
begin_hunk_1_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11_solve_implINS1_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKT_RT0_:bb.a
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dx, %bb.j ], [ %.lcssa, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.thread.i.i.i.i.i.i.i.i.i ] ; 11 uses
  %i.dy = sub nsw i64 %.lcssa, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dz = sdiv i64 %i.dy, 2
  %i.ea = shl nsw i64 %i.dz, 1                    ; 2 uses
  %i.eb = add nsw i64 %i.ea, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ec = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check75 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.ed = sub i64 %i.di, %i.dt
  %diff.check = icmp ugt i64 %i.ed, -32
  %or.cond99 = or i1 %min.iters.check75, %diff.check
  br i1 %or.cond99, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader102, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec77 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph76
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next81, %vector.body78 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index79 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index79 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load = load <2 x double>, ptr %i.ef, align 8, !tbaa !21
  %wide.load80 = load <2 x double>, ptr %i.eg, align 8, !tbaa !21
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <2 x double> %wide.load, ptr %i.ee, align 8, !tbaa !21
  store <2 x double> %wide.load80, ptr %i.eh, align 8, !tbaa !21
  %index.next81 = add nuw i64 %index79, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next81, %n.vec77
  br i1 %i.ei, label %middle.block82, label %vector.body78, !llvm.loop !1147

middle.block82:                                   ; preds = %vector.body78
  %cmp.n83 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec77
  br i1 %cmp.n83, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader102

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader102: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block82
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec77, %middle.block82 ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader102, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader102 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader102 ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.el = load double, ptr %i.ek, align 8, !tbaa !21
  store double %i.el, ptr %i.ej, align 8, !tbaa !21
  %i.em = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1148

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader102
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader102 ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.en = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.er = load double, ptr %i.eq, align 8, !tbaa !21
  store double %i.er, ptr %i.ep, align 8, !tbaa !21
  %i.es = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.es
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.es
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !21
  store double %i.ev, ptr %i.et, align 8, !tbaa !21
  %i.ew = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ew
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !21
  store double %i.ez, ptr %i.ex, align 8, !tbaa !21
  %i.fa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.fa
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !21
  store double %i.fd, ptr %i.fb, align 8, !tbaa !21
  %i.fe = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fe, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1149

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block82, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ff = icmp sgt i64 %i.dy, 1
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fg = icmp slt i64 %i.eb, %.lcssa
  br i1 %i.fg, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ea
  %i.fi = sub i64 %.lcssa, %i.fh                  ; 3 uses
  %min.iters.check88 = icmp ult i64 %i.fi, 8
  %i.fj = sub i64 %i.di, %i.dt
  %diff.check86 = icmp ugt i64 %i.fj, -32
  %or.cond100 = or i1 %min.iters.check88, %diff.check86
  br i1 %or.cond100, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader101, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec90 = and i64 %i.fi, -4                    ; 3 uses
  %i.fk = add i64 %i.eb, %n.vec90
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next95, %vector.body91 ] ; 2 uses
  %i.fl = add i64 %i.eb, %index92                 ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.fl ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load93 = load <2 x double>, ptr %i.fn, align 8, !tbaa !21
  %wide.load94 = load <2 x double>, ptr %i.fo, align 8, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <2 x double> %wide.load93, ptr %i.fm, align 8, !tbaa !21
  store <2 x double> %wide.load94, ptr %i.fp, align 8, !tbaa !21
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %i.fq = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.fq, label %middle.block96, label %vector.body91, !llvm.loop !1150

middle.block96:                                   ; preds = %vector.body91
  %cmp.n97 = icmp eq i64 %i.fi, %n.vec90
  br i1 %cmp.n97, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader101

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader101: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block96
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.eb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fk, %middle.block96 ] ; 4 uses
  %i.fr = sub i64 %.lcssa, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter106 = and i64 %i.fr, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader101, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fv, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader101 ] ; 3 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader101 ]
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !21
  store double %i.fu, ptr %i.fs, align 8, !tbaa !21
  %i.fv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1151

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader101
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader101 ], [ %i.fv, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.fw = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lcssa
  %i.fx = icmp ugt i64 %i.fw, -4
  br i1 %i.fx, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !21
  store double %i.ga, ptr %i.fy, align 8, !tbaa !21
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !21
  store double %i.ge, ptr %i.gc, align 8, !tbaa !21
  %i.gf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.gf
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.gf
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !21
  store double %i.gi, ptr %i.gg, align 8, !tbaa !21
  %i.gj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.gj
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.gj
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !21
  store double %i.gm, ptr %i.gk, align 8, !tbaa !21
  %i.gn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gn, %.lcssa
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1152

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !30
  store <2 x double> %i.gq, ptr %i.go, align 16, !tbaa !30
  %i.gr = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gs = icmp slt i64 %i.gr, %i.eb
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1153

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block96, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  invoke void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit unwind label %bb.n

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.gt = load i64, ptr %i.cf, align 8, !tbaa !28 ; 2 uses
  %i.gu = icmp slt i64 %.lcssa, %i.gt
  %.pre64 = load i64, ptr %i.dl, align 8, !tbaa !18 ; 2 uses
  br i1 %i.gu, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.gv = sub nuw nsw i64 %i.gt, %.lcssa          ; 5 uses
  %i.gw = sub nsw i64 %.pre64, %i.gv
  %i.gx = load ptr, ptr %2, align 8, !tbaa !19, !noalias !1165
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.gw ; 4 uses
  %i.gz = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.ha = and i64 %i.gz, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.hb = lshr exact i64 %i.gz, 3
  %i.hc = and i64 %i.hb, 1
  %i.hd = call i64 @llvm.smin.i64(i64 %i.hc, i64 %i.gv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hd, %bb.l ], [ %i.gv, %bb.k ] ; 8 uses
  %i.he = sub i64 %i.gv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.hf = sdiv i64 %i.he, 2                       ; 2 uses
  %i.hg = shl nsw i64 %i.hf, 1                    ; 2 uses
  %i.hh = add i64 %i.hg, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hi = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hj = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gy, i8 0, i64 %i.hj, i1 false), !tbaa !21
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hk = icmp sgt i64 %i.he, 1
  br i1 %i.hk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hl = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.gy, i64 %i.hl
  %i.hm = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.hh, i64 %i.hm)
  %i.hn = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ho = add i64 %smax.i, %i.hn
  %i.hp = shl i64 %i.ho, 3
  %i.hq = and i64 %i.hp, -16
  %i.hr = add i64 %i.hq, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.hr, i1 false), !tbaa !30
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hs = icmp slt i64 %i.hh, %i.gv
  br i1 %i.hs, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ht = shl i64 %i.hf, 4
  %i.hu = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.hv = getelementptr i8, ptr %i.gy, i64 %i.ht
  %scevgep1.i = getelementptr i8, ptr %i.hv, i64 %i.hu
  %i.hw = sub i64 %i.he, %i.hg
  %i.hx = shl nuw i64 %i.hw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.hx, i1 false), !tbaa !21
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit._crit_edge unwind label %bb.o

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit._crit_edge: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.pre = load i64, ptr %i.dl, align 8, !tbaa !18
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.split.i.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.s

bb.o:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit._crit_edge, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.ib = phi i64 [ %.pre, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit._crit_edge ], [ %.pre64, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit ]
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !118 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ib, %i.ie
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.ie, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i unwind label %bb.r

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.q, %bb.p
  invoke void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit unwind label %bb.r

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  %i.if = load ptr, ptr %6, align 8, !tbaa !19
  call void @free(ptr noundef %i.if) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit.thread, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  ret void

bb.r:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, %bb.q
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.n, %bb.m
  %.pn27.pn = phi { ptr, i32 } [ %i.hy, %bb.m ], [ %i.hz, %bb.n ], [ %i.ig, %bb.r ], [ %i.ia, %bb.o ]
  %i.ih = load ptr, ptr %6, align 8, !tbaa !19
  call void @free(ptr noundef %i.ih) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn27.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load double, ptr %i.c, align 8, !tbaa !86
  %i.e = tail call noundef double @llvm.fabs.f64(double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.g = load i8, ptr %i.f, align 1, !tbaa !87, !range !88, !noundef !89
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load double, ptr %i.i, align 8, !tbaa !90
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.b, i64 %i.l)
  %i.m = sitofp i64 %.sroa.speculated.i.i.i.i to double
  %i.n = fmul nnan double %i.m, f0x3CB0000000000000
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.o = phi double [ %i.j, %bb.b ], [ %i.n, %bb.c ]
  %i.p = fmul double %i.e, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !91   ; 5 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.thread

.lr.ph.i.i:                                       ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 5 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.r, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi128 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = or disjoint i64 %index, 2                ; 2 uses
  %i.y = or disjoint i64 %index, 3                ; 2 uses
  %i.z = mul nsw i64 %index, %i.v
  %i.aa = mul nsw i64 %i.w, %i.v
  %i.ab = mul nsw i64 %i.x, %i.v
  %i.ac = mul nsw i64 %i.y, %i.v
  %i.ad = getelementptr [8 x i8], ptr %i.t, i64 %index
  %i.ae = getelementptr [8 x i8], ptr %i.t, i64 %i.w
  %i.af = getelementptr [8 x i8], ptr %i.t, i64 %i.x
  %i.ag = getelementptr [8 x i8], ptr %i.t, i64 %i.y
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.ai = getelementptr [8 x i8], ptr %i.ae, i64 %i.aa
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %i.ab
  %i.ak = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac
  %i.al = load double, ptr %i.ah, align 8, !tbaa !21
  %i.am = load double, ptr %i.ai, align 8, !tbaa !21
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !21
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !21
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ao)
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.av = fcmp ogt <2 x double> %i.at, %broadcast.splat
  %i.aw = fcmp ogt <2 x double> %i.au, %broadcast.splat
end_hunk_1
