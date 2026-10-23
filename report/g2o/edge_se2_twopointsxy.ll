Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se2_twopointsxy?download=true
inline.NumInlined: 4782
inline.NumDeleted: 2275
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN3g2o21BaseVariableSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE20computeQuadraticFormERKNS2_IdLi4ELi4ELi0ELi4ELi4EEERKS3_:bb.a
  %i.b = alloca double, align 8                   ; 4 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.470", align 8 ; 11 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.238", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::restricted_packet_dense_assignment_kernel", align 8 ; 7 uses
  %10 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.324", align 8 ; 20 uses
  %12 = alloca %"class.Eigen::Map.227", align 8   ; 9 uses
  %13 = alloca %"class.Eigen::Product.357", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::Product.372", align 8 ; 8 uses
  %15 = alloca %"class.Eigen::Product.357", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !72  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ap = ptrtoint ptr %11 to i64
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.b

._crit_edge111:                                   ; preds = %bb.ac, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph110, %bb.ac
  %i.ax = phi ptr [ %i.g, %.lr.ph110 ], [ %i.oq, %bb.ac ] ; 2 uses
  %i.ay = phi ptr [ %i.f, %.lr.ph110 ], [ %i.or, %bb.ac ]
  %.046107 = phi i64 [ 0, %.lr.ph110 ], [ %.pre-phi, %bb.ac ] ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.046107
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !43 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 100
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !80, !range !81, !noundef !82
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %._crit_edge114, label %bb.c

._crit_edge114:                                   ; preds = %bb.b
  %.pre115 = add nuw i64 %.046107, 1
  br label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %.046107 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %.sroa.098.sroa.0.0.copyload = load ptr, ptr %i.bf, align 8 ; 12 uses
  %.sroa.098.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.sroa.098.sroa.4.0.copyload = load i64, ptr %.sroa.098.sroa.4.0..sroa_idx, align 8 ; 12 uses
  %.sroa.098.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.098.sroa.5.0.copyload = load i64, ptr %.sroa.098.sroa.5.0..sroa_idx, align 8 ; 22 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.bg = icmp sgt i64 %.sroa.098.sroa.5.0.copyload, 2305843009213693951
  br i1 %i.bg, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.c
  %i.bh = icmp sgt i64 %.sroa.098.sroa.5.0.copyload, 0
  br i1 %i.bh, label %bb.d, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit.sink.split

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.bi = and i64 %.sroa.098.sroa.5.0.copyload, 4035225266123964416
  %.not126 = icmp eq i64 %i.bi, 0
  br i1 %.not126, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i77, label %.invoke

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i77: ; preds = %bb.d
  %i.bj = shl nuw i64 %.sroa.098.sroa.5.0.copyload, 5
  %i.bk = call noalias ptr @malloc(i64 noundef %i.bj) #35 ; 8 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.invoke, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i77, %bb.d, %bb.c
  %i.bm = call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bm, align 8, !tbaa !40
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i77
  store ptr %i.bk, ptr %11, align 8, !tbaa !100
  store i64 %.sroa.098.sroa.5.0.copyload, ptr %i.i, align 8, !tbaa !101
  store i64 4, ptr %i.j, align 8, !tbaa !102
  %i.bn = load <2 x double>, ptr %1, align 16, !tbaa !62 ; 3 uses
  %i.bo = load <2 x double>, ptr %i.aq, align 16, !tbaa !62 ; 3 uses
  %i.bp = add nsw i64 %.sroa.098.sroa.5.0.copyload, -1 ; 4 uses
  %xtraiter = and i64 %.sroa.098.sroa.5.0.copyload, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new:     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.098.sroa.5.0.copyload, 5188146770730811390
  br label %bb.h

._crit_edge.i.i.i.i.i.i.i.i.i.i.unr-lcssa:        ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod154 = trunc i64 %.sroa.098.sroa.5.0.copyload to i1
  call void @llvm.assume(i1 %lcmp.mod154)
  %gep.i.i.i.i.i.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %i.bk, i64 %.09.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.br = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.epil.init, %.sroa.098.sroa.4.0.copyload
  %i.bs = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.br ; 2 uses
  %i.bt = load <2 x double>, ptr %i.bs, align 1, !tbaa !62
  %i.bu = fmul <2 x double> %i.bt, %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = load <2 x double>, ptr %i.bv, align 1, !tbaa !62
  %i.bx = fmul <2 x double> %i.bw, %i.bo
  %i.by = fadd <2 x double> %i.bu, %i.bx          ; 2 uses
  %shift147.epil = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop148.epil = fadd <2 x double> %i.by, %shift147.epil
  %i.bz = extractelement <2 x double> %foldExtExtBinop148.epil, i64 0
  store double %i.bz, ptr %gep.i.i.i.i.i.i.i.i.i.i.epil, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.unr-lcssa, %.epil.preheader
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.bk, i64 %.sroa.098.sroa.5.0.copyload ; 3 uses
  %i.ca = load <2 x double>, ptr %i.ar, align 16, !tbaa !62 ; 3 uses
  %i.cb = load <2 x double>, ptr %i.as, align 16, !tbaa !62 ; 3 uses
  %xtraiter159 = and i64 %.sroa.098.sroa.5.0.copyload, 1
  %i.cc = icmp eq i64 %i.bp, 0
  br i1 %i.cc, label %.epil.preheader158, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.new

._crit_edge.i.i.i.i.i.i.i.i.i.i.new:              ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %unroll_iter162 = and i64 %.sroa.098.sroa.5.0.copyload, 5188146770730811390
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i.new
  %.09.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.new ], [ %i.cw, %bb.e ] ; 4 uses
  %niter163 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.new ], [ %niter163.next.1, %bb.e ]
  %gep.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.1, i64 %.09.i.i.i.i.i.i.i.i.i.i.1
  %i.cd = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.1, %.sroa.098.sroa.4.0.copyload
  %i.ce = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.cd ; 2 uses
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !62
  %i.cg = fmul <2 x double> %i.cf, %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load <2 x double>, ptr %i.ch, align 1, !tbaa !62
  %i.cj = fmul <2 x double> %i.ci, %i.cb
  %i.ck = fadd <2 x double> %i.cg, %i.cj          ; 2 uses
  %shift = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ck, %shift
  %i.cl = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.cl, ptr %gep.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !47
  %i.cm = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.1, 1 ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.1.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.1, i64 %i.cm
  %i.cn = mul nsw i64 %i.cm, %.sroa.098.sroa.4.0.copyload
  %i.co = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.cn ; 2 uses
  %i.cp = load <2 x double>, ptr %i.co, align 1, !tbaa !62
  %i.cq = fmul <2 x double> %i.cp, %i.ca
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = load <2 x double>, ptr %i.cr, align 1, !tbaa !62
  %i.ct = fmul <2 x double> %i.cs, %i.cb
  %i.cu = fadd <2 x double> %i.cq, %i.ct          ; 2 uses
  %shift.1 = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x double> %i.cu, %shift.1
  %i.cv = extractelement <2 x double> %foldExtExtBinop.1, i64 0
  store double %i.cv, ptr %gep.i.i.i.i.i.i.i.i.i.i.1.1, align 8, !tbaa !47
  %i.cw = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %niter163.next.1 = add i64 %niter163, 2         ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.1.unr-lcssa, label %bb.e, !llvm.loop !334

._crit_edge.i.i.i.i.i.i.i.i.i.i.1.unr-lcssa:      ; preds = %bb.e
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.1, label %.epil.preheader158

.epil.preheader158:                               ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.1.unr-lcssa, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.1.epil.init = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.cw, %._crit_edge.i.i.i.i.i.i.i.i.i.i.1.unr-lcssa ] ; 2 uses
  %lcmp.mod161 = trunc i64 %.sroa.098.sroa.5.0.copyload to i1
  call void @llvm.assume(i1 %lcmp.mod161)
  %gep.i.i.i.i.i.i.i.i.i.i.1.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.1, i64 %.09.i.i.i.i.i.i.i.i.i.i.1.epil.init
  %i.cx = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.1.epil.init, %.sroa.098.sroa.4.0.copyload
  %i.cy = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.cx ; 2 uses
  %i.cz = load <2 x double>, ptr %i.cy, align 1, !tbaa !62
  %i.da = fmul <2 x double> %i.cz, %i.ca
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load <2 x double>, ptr %i.db, align 1, !tbaa !62
  %i.dd = fmul <2 x double> %i.dc, %i.cb
  %i.de = fadd <2 x double> %i.da, %i.dd          ; 2 uses
  %shift.epil = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.epil = fadd <2 x double> %i.de, %shift.epil
  %i.df = extractelement <2 x double> %foldExtExtBinop.epil, i64 0
  store double %i.df, ptr %gep.i.i.i.i.i.i.i.i.i.i.1.epil, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.1

._crit_edge.i.i.i.i.i.i.i.i.i.i.1:                ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.1.unr-lcssa, %.epil.preheader158
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.2.idx = shl i64 %.sroa.098.sroa.5.0.copyload, 4
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.bk, i64 %invariant.gep.i.i.i.i.i.i.i.i.i.i.2.idx ; 3 uses
  %i.dg = load <2 x double>, ptr %i.at, align 16, !tbaa !62 ; 3 uses
  %i.dh = load <2 x double>, ptr %i.au, align 16, !tbaa !62 ; 3 uses
  %xtraiter165 = and i64 %.sroa.098.sroa.5.0.copyload, 1
  %i.di = icmp eq i64 %i.bp, 0
  br i1 %i.di, label %.epil.preheader164, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.1.new

._crit_edge.i.i.i.i.i.i.i.i.i.i.1.new:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.1
  %unroll_iter168 = and i64 %.sroa.098.sroa.5.0.copyload, 5188146770730811390
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i.i.i.i.i.i.1.new
  %.09.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.1.new ], [ %i.ec, %bb.f ] ; 4 uses
  %niter169 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.1.new ], [ %niter169.next.1, %bb.f ]
  %gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.2, i64 %.09.i.i.i.i.i.i.i.i.i.i.2
  %i.dj = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.2, %.sroa.098.sroa.4.0.copyload
  %i.dk = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.dj ; 2 uses
  %i.dl = load <2 x double>, ptr %i.dk, align 1, !tbaa !62
  %i.dm = fmul <2 x double> %i.dl, %i.dg
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.do = load <2 x double>, ptr %i.dn, align 1, !tbaa !62
  %i.dp = fmul <2 x double> %i.do, %i.dh
  %i.dq = fadd <2 x double> %i.dm, %i.dp          ; 2 uses
  %shift141 = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop142 = fadd <2 x double> %i.dq, %shift141
  %i.dr = extractelement <2 x double> %foldExtExtBinop142, i64 0
  store double %i.dr, ptr %gep.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !47
  %i.ds = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.2, 1 ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.2.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.2, i64 %i.ds
  %i.dt = mul nsw i64 %i.ds, %.sroa.098.sroa.4.0.copyload
  %i.du = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.dt ; 2 uses
  %i.dv = load <2 x double>, ptr %i.du, align 1, !tbaa !62
  %i.dw = fmul <2 x double> %i.dv, %i.dg
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !62
  %i.dz = fmul <2 x double> %i.dy, %i.dh
  %i.ea = fadd <2 x double> %i.dw, %i.dz          ; 2 uses
  %shift141.1 = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop142.1 = fadd <2 x double> %i.ea, %shift141.1
  %i.eb = extractelement <2 x double> %foldExtExtBinop142.1, i64 0
  store double %i.eb, ptr %gep.i.i.i.i.i.i.i.i.i.i.2.1, align 8, !tbaa !47
  %i.ec = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.2, 2 ; 2 uses
  %niter169.next.1 = add i64 %niter169, 2         ; 2 uses
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.2.unr-lcssa, label %bb.f, !llvm.loop !334

._crit_edge.i.i.i.i.i.i.i.i.i.i.2.unr-lcssa:      ; preds = %bb.f
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.2, label %.epil.preheader164

.epil.preheader164:                               ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.2.unr-lcssa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.1
  %.09.i.i.i.i.i.i.i.i.i.i.2.epil.init = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.ec, %._crit_edge.i.i.i.i.i.i.i.i.i.i.2.unr-lcssa ] ; 2 uses
  %lcmp.mod167 = trunc i64 %.sroa.098.sroa.5.0.copyload to i1
  call void @llvm.assume(i1 %lcmp.mod167)
  %gep.i.i.i.i.i.i.i.i.i.i.2.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.2, i64 %.09.i.i.i.i.i.i.i.i.i.i.2.epil.init
  %i.ed = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.2.epil.init, %.sroa.098.sroa.4.0.copyload
  %i.ee = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.ed ; 2 uses
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !62
  %i.eg = fmul <2 x double> %i.ef, %i.dg
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ei = load <2 x double>, ptr %i.eh, align 1, !tbaa !62
  %i.ej = fmul <2 x double> %i.ei, %i.dh
  %i.ek = fadd <2 x double> %i.eg, %i.ej          ; 2 uses
  %shift141.epil = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop142.epil = fadd <2 x double> %i.ek, %shift141.epil
  %i.el = extractelement <2 x double> %foldExtExtBinop142.epil, i64 0
  store double %i.el, ptr %gep.i.i.i.i.i.i.i.i.i.i.2.epil, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.2

._crit_edge.i.i.i.i.i.i.i.i.i.i.2:                ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.2.unr-lcssa, %.epil.preheader164
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.3.idx = mul i64 %.sroa.098.sroa.5.0.copyload, 24
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.3 = getelementptr i8, ptr %i.bk, i64 %invariant.gep.i.i.i.i.i.i.i.i.i.i.3.idx ; 3 uses
  %i.em = load <2 x double>, ptr %i.av, align 16, !tbaa !62 ; 3 uses
  %i.en = load <2 x double>, ptr %i.aw, align 16, !tbaa !62 ; 3 uses
  %xtraiter171 = and i64 %.sroa.098.sroa.5.0.copyload, 1
  %i.eo = icmp eq i64 %i.bp, 0
  br i1 %i.eo, label %.epil.preheader170, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.2.new

._crit_edge.i.i.i.i.i.i.i.i.i.i.2.new:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.2
  %unroll_iter174 = and i64 %.sroa.098.sroa.5.0.copyload, 5188146770730811390
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i.2.new
  %.09.i.i.i.i.i.i.i.i.i.i.3 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.2.new ], [ %i.fi, %bb.g ] ; 4 uses
  %niter175 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.2.new ], [ %niter175.next.1, %bb.g ]
  %gep.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.3, i64 %.09.i.i.i.i.i.i.i.i.i.i.3
  %i.ep = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.3, %.sroa.098.sroa.4.0.copyload
  %i.eq = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.ep ; 2 uses
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !62
  %i.es = fmul <2 x double> %i.er, %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.eu = load <2 x double>, ptr %i.et, align 1, !tbaa !62
  %i.ev = fmul <2 x double> %i.eu, %i.en
  %i.ew = fadd <2 x double> %i.es, %i.ev          ; 2 uses
  %shift144 = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop145 = fadd <2 x double> %i.ew, %shift144
  %i.ex = extractelement <2 x double> %foldExtExtBinop145, i64 0
  store double %i.ex, ptr %gep.i.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !47
  %i.ey = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.3, 1 ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.3.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.3, i64 %i.ey
  %i.ez = mul nsw i64 %i.ey, %.sroa.098.sroa.4.0.copyload
  %i.fa = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.ez ; 2 uses
  %i.fb = load <2 x double>, ptr %i.fa, align 1, !tbaa !62
  %i.fc = fmul <2 x double> %i.fb, %i.em
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fe = load <2 x double>, ptr %i.fd, align 1, !tbaa !62
  %i.ff = fmul <2 x double> %i.fe, %i.en
  %i.fg = fadd <2 x double> %i.fc, %i.ff          ; 2 uses
  %shift144.1 = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop145.1 = fadd <2 x double> %i.fg, %shift144.1
  %i.fh = extractelement <2 x double> %foldExtExtBinop145.1, i64 0
  store double %i.fh, ptr %gep.i.i.i.i.i.i.i.i.i.i.3.1, align 8, !tbaa !47
  %i.fi = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.3, 2 ; 2 uses
  %niter175.next.1 = add i64 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i64 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !334

bb.h:                                             ; preds = %bb.h, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.gc, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %bb.h ]
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bk, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %i.fj = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, %.sroa.098.sroa.4.0.copyload
  %i.fk = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.fj ; 2 uses
  %i.fl = load <2 x double>, ptr %i.fk, align 1, !tbaa !62
  %i.fm = fmul <2 x double> %i.fl, %i.bn
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fo = load <2 x double>, ptr %i.fn, align 1, !tbaa !62
  %i.fp = fmul <2 x double> %i.fo, %i.bo
  %i.fq = fadd <2 x double> %i.fm, %i.fp          ; 2 uses
  %shift147 = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop148 = fadd <2 x double> %i.fq, %shift147
  %i.fr = extractelement <2 x double> %foldExtExtBinop148, i64 0
  store double %i.fr, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !47
  %i.fs = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.1156 = getelementptr [8 x i8], ptr %i.bk, i64 %i.fs
  %i.ft = mul nsw i64 %i.fs, %.sroa.098.sroa.4.0.copyload
  %i.fu = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.ft ; 2 uses
  %i.fv = load <2 x double>, ptr %i.fu, align 1, !tbaa !62
  %i.fw = fmul <2 x double> %i.fv, %i.bn
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fy = load <2 x double>, ptr %i.fx, align 1, !tbaa !62
  %i.fz = fmul <2 x double> %i.fy, %i.bo
  %i.ga = fadd <2 x double> %i.fw, %i.fz          ; 2 uses
  %shift147.1 = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop148.1 = fadd <2 x double> %i.ga, %shift147.1
  %i.gb = extractelement <2 x double> %foldExtExtBinop148.1, i64 0
  store double %i.gb, ptr %gep.i.i.i.i.i.i.i.i.i.i.1156, align 8, !tbaa !47
  %i.gc = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %bb.h, !llvm.loop !334

common.resume:                                    ; preds = %bb.ab, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.gd, %bb.i ], [ %.pn53.pn.pn.pn.pn, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.invoke
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = load ptr, ptr %11, align 8, !tbaa !100
  call void @free(ptr noundef %i.ge) #29
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit.sink.split: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %.sroa.098.sroa.5.0.copyload, ptr %i.i, align 8, !tbaa !101
  store i64 4, ptr %i.j, align 8, !tbaa !102
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit, label %.epil.preheader170

.epil.preheader170:                               ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.2
  %.09.i.i.i.i.i.i.i.i.i.i.3.epil.init = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.fi, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod173 = trunc i64 %.sroa.098.sroa.5.0.copyload to i1
  call void @llvm.assume(i1 %lcmp.mod173)
  %gep.i.i.i.i.i.i.i.i.i.i.3.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.3, i64 %.09.i.i.i.i.i.i.i.i.i.i.3.epil.init
  %i.gf = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.3.epil.init, %.sroa.098.sroa.4.0.copyload
  %i.gg = getelementptr inbounds [8 x i8], ptr %.sroa.098.sroa.0.0.copyload, i64 %i.gf ; 2 uses
  %i.gh = load <2 x double>, ptr %i.gg, align 1, !tbaa !62
  %i.gi = fmul <2 x double> %i.gh, %i.em
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gk = load <2 x double>, ptr %i.gj, align 1, !tbaa !62
  %i.gl = fmul <2 x double> %i.gk, %i.en
  %i.gm = fadd <2 x double> %i.gi, %i.gl          ; 2 uses
  %shift144.epil = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop145.epil = fadd <2 x double> %i.gm, %shift144.epil
  %i.gn = extractelement <2 x double> %foldExtExtBinop145.epil, i64 0
  store double %i.gn, ptr %gep.i.i.i.i.i.i.i.i.i.i.3.epil, align 8, !tbaa !47
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %.epil.preheader170, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit.sink.split
  %i.go = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !93 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.gq = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = invoke noundef ptr %i.gs(ptr noundef nonnull align 8 dereferenceable(128) %i.ba)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi4ELi4ELi0ELi4ELi4EEELi0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.gu = sext i32 %i.gp to i64                   ; 3 uses
  store ptr %i.gt, ptr %12, align 8, !tbaa !86
  store i64 %i.gu, ptr %i.k, align 8, !tbaa !94
  store i64 %i.gu, ptr %i.l, align 8, !tbaa !94
  %i.gv = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 96
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = invoke noundef ptr %i.gx(ptr noundef nonnull align 8 dereferenceable(128) %i.ba)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store ptr %11, ptr %13, align 8, !tbaa !356, !alias.scope !357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.m, ptr noundef nonnull align 8 dereferenceable(26) %i.bf, i64 24, i1 false)
  %i.gz = load i64, ptr %i.n, align 8, !tbaa !94  ; 2 uses
  %i.ha = load i64, ptr %i.k, align 8, !tbaa !94  ; 2 uses
  %i.hb = add nsw i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %i.l, align 8, !tbaa !94
  %i.hd = add nsw i64 %i.hb, %i.hc
  %i.he = icmp slt i64 %i.hd, 20
  %i.hf = icmp sgt i64 %i.gz, 0
  %or.cond.i.i.i.i = and i1 %i.hf, %i.he
  br i1 %or.cond.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(26) %i.m, i64 24, i1 false)
  store ptr %11, ptr %7, align 8, !tbaa !356
  %i.hg = load ptr, ptr %11, align 8, !tbaa !100
  %i.hh = load i64, ptr %i.i, align 8, !tbaa !101
  store ptr %i.hg, ptr %i.p, align 8, !tbaa !358
  store i64 %i.hh, ptr %i.q, align 8, !tbaa !105
  %i.hi = load ptr, ptr %i.o, align 8, !tbaa !86
  store ptr %i.hi, ptr %i.r, align 8, !tbaa !108
  %i.hj = load i64, ptr %i.t, align 8, !tbaa !94
  store i64 %i.hj, ptr %i.s, align 8, !tbaa !94
  %i.hk = load i64, ptr %i.j, align 8, !tbaa !102
  store i64 %i.hk, ptr %i.u, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.hl = load ptr, ptr %12, align 8, !tbaa !86
  store ptr %i.hl, ptr %8, align 8, !tbaa !108
  store i64 %i.ha, ptr %i.v, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr %8, ptr %9, align 8, !tbaa !359
  store ptr %7, ptr %i.w, align 8, !tbaa !360
  store ptr %10, ptr %i.x, align 8, !tbaa !361
  store ptr %12, ptr %i.y, align 8, !tbaa !362
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !47
  invoke void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEENS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS3_RKS7_RKd(ptr noundef nonnull align 8 dereferenceable(26) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(26) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %bb.p

.noexc59:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %bb.n

bb.n:                                             ; preds = %.noexc, %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %.sroa.090.sroa.0.0.copyload = load ptr, ptr %i.bf, align 8
  %.sroa.090.sroa.5.0.copyload = load i64, ptr %.sroa.098.sroa.4.0..sroa_idx, align 8
  %i.hm = icmp sgt i32 %i.gp, 0
  br i1 %i.hm, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi4ELi1ELi0ELi4ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.05.i.i.i.i.i.i.i.i ; 2 uses
  %i.ho = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %.sroa.090.sroa.5.0.copyload
  %i.hp = getelementptr inbounds [8 x i8], ptr %.sroa.090.sroa.0.0.copyload, i64 %i.ho ; 2 uses
  %i.hq = load <2 x double>, ptr %i.hp, align 1, !tbaa !62
  %i.hr = load <2 x double>, ptr %2, align 16, !tbaa !62
  %i.hs = fmul <2 x double> %i.hq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hu = load <2 x double>, ptr %i.ht, align 1, !tbaa !62
  %i.hv = load <2 x double>, ptr %i.z, align 16, !tbaa !62
  %i.hw = fmul <2 x double> %i.hu, %i.hv
  %i.hx = fadd <2 x double> %i.hs, %i.hw          ; 2 uses
  %shift150 = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop151 = fadd <2 x double> %i.hx, %shift150
  %i.hy = extractelement <2 x double> %foldExtExtBinop151, i64 0
  %i.hz = load double, ptr %i.hn, align 8, !tbaa !47
  %i.ia = fadd double %i.hz, %i.hy
  store double %i.ia, ptr %i.hn, align 8, !tbaa !47
  %i.ib = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ib, %i.gu
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi4ELi1ELi0ELi4ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !337

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi4ELi1ELi0ELi4ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.n
  %.0105 = add nuw i64 %.046107, 1                ; 3 uses
  %i.ic = load ptr, ptr %i.e, align 16, !tbaa !72
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 3
  %i.ii = icmp ult i64 %.0105, %i.ih
  br i1 %i.ii, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi4ELi1ELi0ELi4ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.ij = trunc i64 %.046107 to i32
  br label %bb.q
end_hunk_0
