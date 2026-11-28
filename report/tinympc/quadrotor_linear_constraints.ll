Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/quadrotor_linear_constraints?download=true
inline.NumInlined: 1802
inline.NumDeleted: 937
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 40
begin_hunk_0_@main:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.q = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #16 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i
  %i.s = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i148 unwind label %bb.g

.noexc.i.i148:                                    ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body149

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i
  store ptr %i.q, ptr %7, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.u, align 8, !tbaa !26
  %i.v = load <2 x double>, ptr @Q_data, align 16, !tbaa !27
  store <2 x double> %i.v, ptr %i.q, align 16, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 16), align 16, !tbaa !27
  store <2 x double> %i.x, ptr %i.w, align 16, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.z = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 32), align 16, !tbaa !27
  store <2 x double> %i.z, ptr %i.y, align 16, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ab = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 48), align 16, !tbaa !27
  store <2 x double> %i.ab, ptr %i.aa, align 16, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ad = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 64), align 16, !tbaa !27
  store <2 x double> %i.ad, ptr %i.ac, align 16, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.af = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 80), align 16, !tbaa !27
  store <2 x double> %i.af, ptr %i.ae, align 16, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ag = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.invoke753, label %bb.i

.invoke753:                                       ; preds = %bb.h, %bb.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i349
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont754 unwind label %bb.z

.cont754:                                         ; preds = %.invoke753
  unreachable

bb.i:                                             ; preds = %bb.h
  store ptr %i.ag, ptr %8, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.aj, align 8, !tbaa !26
  %i.ak = load <2 x double>, ptr @R_data, align 16, !tbaa !27
  store <2 x double> %i.ak, ptr %i.ag, align 16, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @R_data, i64 16), align 16, !tbaa !27
  store <2 x double> %i.am, ptr %i.al, align 16, !tbaa !27
  %i.an = load i64, ptr %i.g, align 8, !tbaa !19  ; 3 uses
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.ap = mul nsw i64 %i.ao, %i.an                ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.thread, label %bb.j

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.thread: ; preds = %bb.i
  store ptr null, ptr %9, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !20
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.at = icmp ugt i64 %i.ap, 2305843009213693951
  br i1 %i.at, label %.invoke753, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.j
  %i.au = shl nuw i64 %i.ap, 3                    ; 2 uses
  %i.av = call noalias ptr @malloc(i64 noundef %i.au) #16 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.invoke753, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.av, ptr %9, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.an, ptr %i.ax, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ao, ptr %i.ay, align 8, !tbaa !20
  %i.az = load ptr, ptr %3, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.az, i64 %i.au, i1 false)
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit: ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.thread, %bb.k
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !19  ; 3 uses
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !20  ; 3 uses
  %i.bc = mul nsw i64 %i.bb, %i.ba                ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i330.thread, label %bb.l

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i330.thread: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  store ptr null, ptr %10, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ba, ptr %i.be, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !20
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit154

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %i.bg = icmp ugt i64 %i.bc, 2305843009213693951
  br i1 %i.bg, label %.invoke749, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i329

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i329: ; preds = %bb.l
  %i.bh = shl nuw i64 %i.bc, 3                    ; 2 uses
  %i.bi = call noalias ptr @malloc(i64 noundef %i.bh) #16 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.invoke749, label %bb.m

.invoke749:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i329, %bb.l
  %i.bk = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bk, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont750 unwind label %bb.aa

.cont750:                                         ; preds = %.invoke749
  unreachable

bb.m:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i329
  store ptr %i.bi, ptr %10, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ba, ptr %i.bl, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.bb, ptr %i.bm, align 8, !tbaa !20
  %i.bn = load ptr, ptr %5, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.bn, i64 %i.bh, i1 false)
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit154

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit154: ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i330.thread, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %calloc747 = call dereferenceable_or_null(96) ptr @calloc(i64 1, i64 96) ; 2 uses
  %i.bo = icmp eq ptr %calloc747, null
  br i1 %i.bo, label %bb.n, label %.sink.split.i340

bb.n:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit154
  %i.bp = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bp, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc344 unwind label %bb.o

.noexc344:                                        ; preds = %bb.n
  unreachable

.sink.split.i340:                                 ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit154
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %calloc747, ptr %11, align 8, !tbaa !18
  store i64 12, ptr %i.br, align 8, !tbaa !19
  store i64 1, ptr %i.bq, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr %7, ptr %13, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.p unwind label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body156

bb.p:                                             ; preds = %.sink.split.i340
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr %8, ptr %15, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit158 unwind label %bb.ac

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit158: ; preds = %bb.p
  %i.bt = load double, ptr @rho_value, align 8, !tbaa !29
  %i.bu = invoke i32 @tiny_setup(ptr noundef nonnull %i.a, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %12, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %14, double noundef %i.bt, i32 noundef 12, i32 noundef 4, i32 noundef 10, i32 noundef 1)
          to label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i349 unwind label %bb.ad ; 0 uses

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i349: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit158
  %i.bv = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.bv) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.bw = load ptr, ptr %12, align 8, !tbaa !18
  call void @free(ptr noundef %i.bw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.bx = load ptr, ptr %11, align 8, !tbaa !18
  call void @free(ptr noundef %i.bx) #15
  %i.by = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.by) #15
  %i.bz = load ptr, ptr %9, align 8, !tbaa !18
  call void @free(ptr noundef %i.bz) #15
  %calloc746 = call dereferenceable_or_null(96) ptr @calloc(i64 1, i64 96) ; 6 uses
  %i.ca = icmp eq ptr %calloc746, null
  br i1 %i.ca, label %.invoke753, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i356

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i356: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i349
  %i.cb = getelementptr i8, ptr %calloc746, i64 16
  store double 1.000000e+00, ptr %i.cb, align 8, !tbaa !29
  %calloc = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %i.cc = icmp eq ptr %calloc, null
  br i1 %i.cc, label %bb.q, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i360

bb.q:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i356
  %i.cd = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cd, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc358 unwind label %bb.r

.noexc358:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body163

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i360: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i356
  store <2 x double> splat (double 1.000000e+00), ptr %calloc, align 8, !tbaa !29
  %i.cf = getelementptr i8, ptr %calloc, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.cf, align 8, !tbaa !29
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.ch = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #16 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.s, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

bb.s:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i360
  %i.cj = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cj, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc365 unwind label %bb.ah

.noexc365:                                        ; preds = %bb.s
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i360
  store ptr %i.ch, ptr %16, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.ck, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 12, ptr %i.cl, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ch, ptr noundef nonnull align 8 dereferenceable(96) %calloc746, i64 96, i1 false)
  %i.cm = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.t, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i367

bb.t:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  %i.co = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.co, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc181 unwind label %bb.ai

.noexc181:                                        ; preds = %bb.t
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i367: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  store ptr %i.cm, ptr %17, align 8, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.cp, align 8, !tbaa !26
  store i64 4613937818241073152, ptr %i.cm, align 8
  %i.cq = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.u, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i184

bb.u:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i367
  %i.cs = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cs, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.cs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc372 unwind label %bb.aj

.noexc372:                                        ; preds = %bb.u
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i184: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i367
  store ptr %i.cq, ptr %18, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.ct, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 4, ptr %i.cu, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %calloc, i64 32, i1 false)
  %i.cv = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i184
  %i.cx = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cx, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc189 unwind label %bb.ak

.noexc189:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i184
  store ptr %i.cv, ptr %19, align 8, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 1, ptr %i.cy, align 8, !tbaa !26
  store i64 4618441417868443648, ptr %i.cv, align 8
  %i.cz = invoke i32 @tiny_set_linear_constraints(ptr noundef %i.cg, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %16, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %17, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %18, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.x unwind label %bb.al      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.da = load ptr, ptr %19, align 8, !tbaa !25
  call void @free(ptr noundef %i.da) #15
  %i.db = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.db) #15
  %i.dc = load ptr, ptr %17, align 8, !tbaa !25
  call void @free(ptr noundef %i.dc) #15
  %i.dd = load ptr, ptr %16, align 8, !tbaa !18
  call void @free(ptr noundef %i.dd) #15
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !72 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i32 100, ptr %i.dh, align 8, !tbaa !74
  store <2 x double> splat (double 1.000000e-03), ptr %i.dg, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 0, ptr %i.di, align 8, !tbaa !75
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  store i32 0, ptr %i.dj, align 4, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i32 1, ptr %i.dk, align 8, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 44
  store i32 1, ptr %i.dl, align 4, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !79 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x double> splat (double -2.000000e+00), ptr %20, align 16, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  store double 1.000000e+00, ptr %i.dp, align 16, !tbaa !29
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  store <2 x double> splat (double 2.000000e+00), ptr %21, align 16, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store double 4.000000e+00, ptr %i.dv, align 16, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 1224
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 1232
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 40 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 1160
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 1184
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 1208
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %.sroa.5416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.6417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %.sroa.7418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32
  %.sroa.8419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 40
  %.sroa.10421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 56
  %.sroa.11422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 64
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.eh = getelementptr inbounds nuw i8, ptr %23, i64 96 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dw, i8 0, i64 72, i1 false)
  %i.en = load <2 x double>, ptr %i.dv, align 16  ; 2 uses
  %i.eo = fmul <2 x double> %i.en, splat (double 2.000000e-02)
  %i.ep = extractelement <2 x double> %i.en, i64 0
  br label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.bi
  %indvars.iv718 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next719, %bb.bi ] ; 2 uses
  br label %bb.as

bb.y:                                             ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @free(ptr noundef %calloc) #15
  call void @free(ptr noundef %calloc746) #15
  %i.eq = load ptr, ptr %8, align 8, !tbaa !25
  call void @free(ptr noundef %i.eq) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.er = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.er) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.es = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.es) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.et = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.et) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 0

bb.z:                                             ; preds = %.invoke753
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.aa:                                            ; preds = %.invoke749
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %.sink.split.i340
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.p
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit158
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.ez) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ey, %bb.ad ], [ %i.ex, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.fa = load ptr, ptr %12, align 8, !tbaa !18
  call void @free(ptr noundef %i.fa) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.ew, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %.body156

.body156:                                         ; preds = %bb.o, %bb.af
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.af ], [ %i.bs, %bb.o ]
  %i.fb = load ptr, ptr %11, align 8, !tbaa !18
  call void @free(ptr noundef %i.fb) #15
  %i.fc = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.fc) #15
  br label %bb.ag

bb.ag:                                            ; preds = %.body156, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body156 ], [ %i.ev, %bb.aa ]
  %i.fd = load ptr, ptr %9, align 8, !tbaa !18
  br label %.body163

bb.ah:                                            ; preds = %bb.s
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body177

bb.ai:                                            ; preds = %bb.t
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aj:                                            ; preds = %bb.u
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.v
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.w
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %19, align 8, !tbaa !25
  call void @free(ptr noundef %i.fj) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn88 = phi { ptr, i32 } [ %i.fi, %bb.al ], [ %i.fh, %bb.ak ]
  %i.fk = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.fk) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %bb.am ], [ %i.fg, %bb.aj ]
  %i.fl = load ptr, ptr %17, align 8, !tbaa !25
  call void @free(ptr noundef %i.fl) #15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %bb.an ], [ %i.ff, %bb.ai ]
  %i.fm = load ptr, ptr %16, align 8, !tbaa !18
  call void @free(ptr noundef %i.fm) #15
  br label %.body177

bb.ap:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.fo = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #16 ; 8 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fq = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fq, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i296 unwind label %bb.ar

.noexc.i.i296:                                    ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %22, align 8, !tbaa !25
  call void @free(ptr noundef %i.fs) #15
  br label %.body297

bb.as:                                            ; preds = %.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 5 uses
  %i.ft = add nuw nsw i64 %indvars.iv, %indvars.iv718
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = uitofp nneg i32 %i.fu to double
  %i.fw = fdiv double %i.fv, 4.900000e+01         ; 10 uses
  %i.fx = fsub double 1.000000e+00, %i.fw         ; 9 uses
  %i.fy = load ptr, ptr %i.dy, align 8, !tbaa !18, !noalias !80 ; 3 uses
  %i.fz = ptrtoaddr ptr %i.fy to i64              ; 2 uses
  %i.ga = load i64, ptr %i.dz, align 8, !tbaa !19, !noalias !80 ; 11 uses
  %i.gb = mul nsw i64 %i.ga, %indvars.iv
  %.not.i.i.i.i.i299 = icmp eq ptr %i.fy, null
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gb ; 10 uses
  %i.gd = select i1 %.not.i.i.i.i.i299, ptr null, ptr %i.gc
  %.sroa.3.16.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fx, i64 0
  %.sroa.1122.48.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.ge = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gf = and i64 %i.ge, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.gg = lshr exact i64 %i.ge, 3
  %i.gh = and i64 %i.gg, 1
  %i.gi = call i64 @llvm.smin.i64(i64 %i.gh, i64 %i.ga)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gi, %bb.at ], [ %i.ga, %bb.as ] ; 11 uses
  %i.gj = sub nsw i64 %i.ga, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gk = sdiv i64 %i.gj, 2
  %i.gl = shl nsw i64 %i.gk, 1                    ; 2 uses
  %i.gm = add nsw i64 %i.gl, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.gn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check763 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check763, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader784, label %vector.memcheck764

vector.memcheck764:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.go = shl nuw nsw i64 %indvars.iv, 3
  %i.gp = mul i64 %i.ga, %i.go
  %i.gq = add i64 %i.gp, %i.fz
  %i.gr = sub i64 %i.b, %i.gq
  %diff.check765 = icmp ugt i64 %i.gr, -32
  br i1 %diff.check765, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader784, label %vector.ph766

vector.ph766:                                     ; preds = %vector.memcheck764
  %n.vec767 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert768 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat769 = shufflevector <2 x double> %broadcast.splatinsert768, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert770 = insertelement <2 x double> poison, double %i.fw, i64 0
  %broadcast.splat771 = shufflevector <2 x double> %broadcast.splatinsert770, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body772

vector.body772:                                   ; preds = %vector.body772, %vector.ph766
  %index773 = phi i64 [ 0, %vector.ph766 ], [ %index.next778, %vector.body772 ] ; 4 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index773 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %index773 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load774 = load <2 x double>, ptr %i.gt, align 16, !tbaa !29
  %wide.load775 = load <2 x double>, ptr %i.gu, align 16, !tbaa !29
  %i.gv = fmul <2 x double> %broadcast.splat769, %wide.load774
  %i.gw = fmul <2 x double> %broadcast.splat769, %wide.load775
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %index773 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %wide.load776 = load <2 x double>, ptr %i.gx, align 16, !tbaa !29
  %wide.load777 = load <2 x double>, ptr %i.gy, align 16, !tbaa !29
  %i.gz = fmul <2 x double> %broadcast.splat771, %wide.load776
  %i.ha = fmul <2 x double> %broadcast.splat771, %wide.load777
  %i.hb = fadd <2 x double> %i.gv, %i.gz
  %i.hc = fadd <2 x double> %i.gw, %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <2 x double> %i.hb, ptr %i.gs, align 8, !tbaa !29
  store <2 x double> %i.hc, ptr %i.hd, align 8, !tbaa !29
  %index.next778 = add nuw i64 %index773, 4       ; 2 uses
  %i.he = icmp eq i64 %index.next778, %n.vec767
  br i1 %i.he, label %middle.block779, label %vector.body772, !llvm.loop !58

middle.block779:                                  ; preds = %vector.body772
  %cmp.n780 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec767
  br i1 %cmp.n780, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader784

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader784:        ; preds = %vector.memcheck764, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block779
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck764 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec767, %middle.block779 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader784
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.hh = load double, ptr %i.hg, align 16, !tbaa !29
  %i.hi = fmul double %i.fx, %i.hh
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.hk = load double, ptr %i.hj, align 16, !tbaa !29
  %i.hl = fmul double %i.fw, %i.hk
  %i.hm = fadd double %i.hi, %i.hl
  store double %i.hm, ptr %i.hf, align 8, !tbaa !29
  %i.hn = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader784
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader784 ], [ %i.hn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ho = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %.neg
  br i1 %i.ho, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !29
  %i.hs = fmul double %i.fx, %i.hr
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !29
  %i.hv = fmul double %i.fw, %i.hu
  %i.hw = fadd double %i.hs, %i.hv
  store double %i.hw, ptr %i.hp, align 8, !tbaa !29
  %i.hx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %i.hx
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !29
  %i.ib = fmul double %i.fx, %i.ia
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.hx
  %i.id = load double, ptr %i.ic, align 8, !tbaa !29
  %i.ie = fmul double %i.fw, %i.id
  %i.if = fadd double %i.ib, %i.ie
  store double %i.if, ptr %i.hy, align 8, !tbaa !29
  %i.ig = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store i64 3, ptr %i.pf, align 8, !tbaa !91
  %i.pg = load ptr, ptr %i.eb, align 8, !tbaa !18
  %i.ph = getelementptr i8, ptr %i.pg, i64 16
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !29
  %i.pj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.pi)
          to label %_ZNSolsEd.exit320.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEd.exit320.2:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.1
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pj, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.2: ; preds = %_ZNSolsEd.exit320.2
  %i.pl = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.pm = getelementptr i8, ptr %i.pl, i64 -24
  %i.pn = load i64, ptr %i.pm, align 8
  %i.po = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store i64 3, ptr %i.pp, align 8, !tbaa !91
  %i.pq = load ptr, ptr %i.eb, align 8, !tbaa !18
  %i.pr = getelementptr i8, ptr %i.pq, i64 24
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !29
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.ps)
          to label %_ZNSolsEd.exit320.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEd.exit320.3:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.2
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pt, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.3: ; preds = %_ZNSolsEd.exit320.3
  %i.pv = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.pw = getelementptr i8, ptr %i.pv, i64 -24
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 240
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i380 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i380, label %.invoke751, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i381

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc388, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i383, %.noexc386, %bb.bd, %.noexc378, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc376, %bb.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316.2, %_ZNSolsEPFRSoS_E.exit, %bb.ay, %bb.ax, %bb.aw, %.lr.ph85.i.i.i.i.i, %bb.av, %_ZNSolsEd.exit320.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.2, %_ZNSolsEd.exit320.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.1, %_ZNSolsEd.exit320.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312.preheader.preheader, %_ZNSolsEd.exit320, %_ZNSolsEd.exit314.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316.1, %_ZNSolsEd.exit314.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310.preheader.preheader, %_ZNSolsEd.exit314, %.invoke751
  %lpad.loopexit.split-lp785 = landingpad { ptr, i32 }
          cleanup
  br label %.body297

_ZNSolsEPFRSoS_E.exit318:                         ; preds = %.noexc388
  %i.qb = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !106
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !110
  %.not = icmp eq i32 %i.qe, 0
  br i1 %.not, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %_ZNSolsEPFRSoS_E.exit318
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.qf = load ptr, ptr %i.eb, align 8, !tbaa !18, !noalias !111
  %i.qg = load i64, ptr %i.ed, align 8, !tbaa !19, !noalias !111 ; 2 uses
  store ptr %i.ec, ptr %i.eg, align 8
  store ptr %20, ptr %.sroa.5416.0..sroa_idx, align 8
  store ptr %i.ee, ptr %.sroa.6417.0..sroa_idx, align 8
  store ptr %i.qf, ptr %.sroa.7418.0..sroa_idx, align 8
  store i64 %i.qg, ptr %.sroa.8419.0..sroa_idx, align 8
  store ptr %i.eb, ptr %.sroa.10421.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11422.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.qg, ptr %.sroa.13.0..sroa_idx, align 8
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !112, !alias.scope !113
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  invoke void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi12ELi1ELi0ELi12ELi1EEELi0EEELi7ENS_10DenseShapeES7_ddEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(81) %i.eg)
          to label %.noexc324 unwind label %bb.bg

.noexc324:                                        ; preds = %bb.be
  invoke void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi0EEELi7ENS_10DenseShapeES8_ddEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6417.0..sroa_idx)
          to label %bb.bf unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc324
  %i.qh = landingpad { ptr, i32 }
          cleanup
  %i.qi = load ptr, ptr %i.em, align 8, !tbaa !25
  call void @free(ptr noundef %i.qi) #15
  br label %.body325

bb.bf:                                            ; preds = %.noexc324
  %i.qj = load ptr, ptr %i.eh, align 8, !tbaa !117, !nonnull !43, !align !44
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !25 ; 7 uses
  store ptr %i.qk, ptr %i.ek, align 8, !tbaa !46
  %i.ql = load ptr, ptr %i.ei, align 8, !tbaa !119 ; 6 uses
  %i.qm = load <2 x double>, ptr %i.ql, align 16, !tbaa !27
  %i.qn = load ptr, ptr %i.ej, align 8, !tbaa !119 ; 6 uses
  %i.qo = load <2 x double>, ptr %i.qn, align 16, !tbaa !27
  %i.qp = fadd <2 x double> %i.qm, %i.qo
  %i.qq = load <2 x double>, ptr %i.qk, align 16, !tbaa !27
  %i.qr = fadd <2 x double> %i.qp, %i.qq
  store <2 x double> %i.qr, ptr %20, align 16, !tbaa !27
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qt = load <2 x double>, ptr %i.qs, align 16, !tbaa !27
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qv = load <2 x double>, ptr %i.qu, align 16, !tbaa !27
  %i.qw = fadd <2 x double> %i.qt, %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qy = load <2 x double>, ptr %i.qx, align 16, !tbaa !27
  %i.qz = fadd <2 x double> %i.qw, %i.qy
  store <2 x double> %i.qz, ptr %i.dp, align 16, !tbaa !27
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.rb = load <2 x double>, ptr %i.ra, align 16, !tbaa !27
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %i.rd = load <2 x double>, ptr %i.rc, align 16, !tbaa !27
  %i.re = fadd <2 x double> %i.rb, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.rg = load <2 x double>, ptr %i.rf, align 16, !tbaa !27
  %i.rh = fadd <2 x double> %i.re, %i.rg
  store <2 x double> %i.rh, ptr %i.dr, align 16, !tbaa !27
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ql, i64 48
  %i.rj = load <2 x double>, ptr %i.ri, align 16, !tbaa !27
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qn, i64 48
  %i.rl = load <2 x double>, ptr %i.rk, align 16, !tbaa !27
  %i.rm = fadd <2 x double> %i.rj, %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qk, i64 48
  %i.ro = load <2 x double>, ptr %i.rn, align 16, !tbaa !27
  %i.rp = fadd <2 x double> %i.rm, %i.ro
  store <2 x double> %i.rp, ptr %i.ds, align 16, !tbaa !27
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ql, i64 64
  %i.rr = load <2 x double>, ptr %i.rq, align 16, !tbaa !27
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qn, i64 64
  %i.rt = load <2 x double>, ptr %i.rs, align 16, !tbaa !27
  %i.ru = fadd <2 x double> %i.rr, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.rw = load <2 x double>, ptr %i.rv, align 16, !tbaa !27
  %i.rx = fadd <2 x double> %i.ru, %i.rw
  store <2 x double> %i.rx, ptr %i.dt, align 16, !tbaa !27
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ql, i64 80
  %i.rz = load <2 x double>, ptr %i.ry, align 16, !tbaa !27
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qn, i64 80
  %i.sb = load <2 x double>, ptr %i.sa, align 16, !tbaa !27
  %i.sc = fadd <2 x double> %i.rz, %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qk, i64 80
  %i.se = load <2 x double>, ptr %i.sd, align 16, !tbaa !27
  %i.sf = fadd <2 x double> %i.sc, %i.se
  store <2 x double> %i.sf, ptr %i.du, align 16, !tbaa !27
  %i.sg = load ptr, ptr %i.el, align 8, !tbaa !25
  call void @free(ptr noundef %i.sg) #15
  %i.sh = load ptr, ptr %i.em, align 8, !tbaa !25
  call void @free(ptr noundef %i.sh) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %.body325

.body325:                                         ; preds = %bb.bg, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn120 = phi { ptr, i32 } [ %i.qh, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.si, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %.body297

bb.bh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit318
  %i.sj = load <2 x double>, ptr %20, align 16, !tbaa !27
  %i.sk = fmul <2 x double> %i.sj, splat (double f0x3FEF5C28F5C28F5C)
  %i.sl = fadd <2 x double> %i.sk, splat (double 4.000000e-02)
  store <2 x double> %i.sl, ptr %20, align 16, !tbaa !27
  %i.sm = load <2 x double>, ptr %i.dp, align 16, !tbaa !27
  %i.sn = fmul <2 x double> %i.sm, splat (double f0x3FEF5C28F5C28F5C)
  %i.so = fadd <2 x double> %i.sn, %i.eo
  store <2 x double> %i.so, ptr %i.dp, align 16, !tbaa !27
  %i.sp = load <2 x double>, ptr %i.dr, align 16, !tbaa !27
  %i.sq = fmul <2 x double> %i.sp, splat (double f0x3FEF5C28F5C28F5C)
  %i.sr = fadd <2 x double> %i.sq, zeroinitializer
  store <2 x double> %i.sr, ptr %i.dr, align 16, !tbaa !27
  %i.ss = load <2 x double>, ptr %i.ds, align 16, !tbaa !27
  %i.st = fmul <2 x double> %i.ss, splat (double f0x3FEF5C28F5C28F5C)
  %i.su = fadd <2 x double> %i.st, zeroinitializer
  store <2 x double> %i.su, ptr %i.ds, align 16, !tbaa !27
  %i.sv = load <2 x double>, ptr %i.dt, align 16, !tbaa !27
  %i.sw = fmul <2 x double> %i.sv, splat (double f0x3FEF5C28F5C28F5C)
  %i.sx = fadd <2 x double> %i.sw, zeroinitializer
  store <2 x double> %i.sx, ptr %i.dt, align 16, !tbaa !27
  %i.sy = load <2 x double>, ptr %i.du, align 16, !tbaa !27
  %i.sz = fmul <2 x double> %i.sy, splat (double f0x3FEF5C28F5C28F5C)
  %i.ta = load <2 x double>, ptr %i.dx, align 16, !tbaa !27
  %i.tb = fmul <2 x double> %i.ta, splat (double 2.000000e-02)
  %i.tc = fadd <2 x double> %i.sz, %i.tb
  store <2 x double> %i.tc, ptr %i.du, align 16, !tbaa !27
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 1 ; 2 uses
  %exitcond721.not = icmp eq i64 %indvars.iv.next719, 40
  br i1 %exitcond721.not, label %bb.y, label %.preheader, !llvm.loop !69

.body297:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar, %bb.az, %.body325
  %.pn125.pn.pn.pn = phi { ptr, i32 } [ %.pn120, %.body325 ], [ %i.fr, %bb.ar ], [ %i.mg, %bb.az ], [ %lpad.loopexit.split-lp785, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %.body177

.body177:                                         ; preds = %bb.ah, %bb.ao, %.body297
  %.pn125.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn, %.body297 ], [ %.pn88.pn.pn, %bb.ao ], [ %i.fe, %bb.ah ]
  call void @free(ptr noundef %calloc) #15
  br label %.body163

.body163:                                         ; preds = %.body177, %bb.r, %bb.ag
  %calloc746.sink = phi ptr [ %i.fd, %bb.ag ], [ %calloc746, %bb.r ], [ %calloc746, %.body177 ]
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ag ], [ %i.ce, %bb.r ], [ %.pn125.pn.pn.pn.pn.pn, %.body177 ]
  call void @free(ptr noundef %calloc746.sink) #15
  br label %.body152

.body152:                                         ; preds = %bb.z, %.body163
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body163 ], [ %i.eu, %bb.z ]
  %i.td = load ptr, ptr %8, align 8, !tbaa !25
  call void @free(ptr noundef %i.td) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.body149

.body149:                                         ; preds = %bb.g, %.body152
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body152 ], [ %i.t, %bb.g ]
  %i.te = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.te) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.tf = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.tf) #15
  br label %bb.bj

bb.bj:                                            ; preds = %.body149, %.body
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body149 ], [ %i.o, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.tg = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.tg) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare i32 @tiny_setup(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), double noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tiny_set_linear_constraints(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(16), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(16)) local_unnamed_addr #2

declare i32 @tiny_set_x0(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(16)) local_unnamed_addr #2

declare i32 @tiny_solve(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.f) #15
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !19
  store i64 %3, ptr %i.c, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi12ELi12ELi1ELi12ELi12EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 290 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq i64 %i.c, 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not8.i = icmp eq i64 %i.e, 12
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %.preheader.lr.ph.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul nsw i64 %i.e, %i.c
  %.not.i.i = icmp eq i64 %i.f, 144
  br i1 %.not.i.i, label %.preheader.lr.ph.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.g) #15
  %i.h = tail call noalias dereferenceable_or_null(1152) ptr @malloc(i64 noundef 1152) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %.sink.split.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i.i:                                  ; preds = %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !18
  br label %.preheader.lr.ph.i.thread

.preheader.lr.ph.i.thread:                        ; preds = %bb.b, %.sink.split.i.i
  store i64 12, ptr %i.b, align 8, !tbaa !19
  store i64 12, ptr %i.d, align 8, !tbaa !20
  br label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %bb.a, %.preheader.lr.ph.i.thread
  %i.k = load ptr, ptr %0, align 8, !tbaa !18     ; 218 uses
  %i.l = getelementptr i8, ptr %i.k, i64 96
  %i.m = getelementptr i8, ptr %i.a, i64 1064
  %bound0 = icmp ult ptr %i.k, %i.m
  %bound1 = icmp ult ptr %i.a, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader.lr.ph.split.i
  %i.n = getelementptr i8, ptr %i.a, i64 96
  %i.o = load double, ptr %i.a, align 8, !tbaa !29, !alias.scope !156
  %i.p = load double, ptr %i.n, align 8, !tbaa !29, !alias.scope !156
  %i.q = insertelement <2 x double> poison, double %i.o, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.p, i64 1
  store <2 x double> %i.r, ptr %i.k, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = getelementptr i8, ptr %i.a, i64 192
  %i.u = getelementptr i8, ptr %i.a, i64 288
  %i.v = load double, ptr %i.t, align 8, !tbaa !29, !alias.scope !156
  %i.w = load double, ptr %i.u, align 8, !tbaa !29, !alias.scope !156
  %i.x = insertelement <2 x double> poison, double %i.v, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  store <2 x double> %i.y, ptr %i.s, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.z = getelementptr i8, ptr %i.k, i64 32
  %i.aa = getelementptr i8, ptr %i.a, i64 384
  %i.ab = getelementptr i8, ptr %i.a, i64 480
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !29, !alias.scope !156
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !29, !alias.scope !156
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.ag = getelementptr i8, ptr %i.k, i64 48
  %i.ah = getelementptr i8, ptr %i.a, i64 576
  %i.ai = getelementptr i8, ptr %i.a, i64 672
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !29, !alias.scope !156
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !29, !alias.scope !156
  %i.al = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  store <2 x double> %i.am, ptr %i.ag, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.an = getelementptr i8, ptr %i.k, i64 64
  %i.ao = getelementptr i8, ptr %i.a, i64 768
  %i.ap = getelementptr i8, ptr %i.a, i64 864
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !29, !alias.scope !156
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !29, !alias.scope !156
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  store <2 x double> %i.at, ptr %i.an, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.au = getelementptr i8, ptr %i.k, i64 80
  %i.av = getelementptr i8, ptr %i.a, i64 960
  %i.aw = getelementptr i8, ptr %i.a, i64 1056
  %i.ax = load double, ptr %i.av, align 8, !tbaa !29, !alias.scope !156
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !29, !alias.scope !156
  %i.az = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1
  store <2 x double> %i.ba, ptr %i.au, align 8, !tbaa !29, !alias.scope !157, !noalias !156
end_hunk_1
