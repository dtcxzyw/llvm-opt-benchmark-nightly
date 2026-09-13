Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/im_instantiator?download=true
inline.NumInlined: 6408
inline.NumDeleted: 1102
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6casadi6MatrixIxE5traceERKS1_:bb.a
  %i.bv = icmp eq i64 %i.bu, %.02387
  br i1 %i.bv, label %bb.t, label %.lr.ph.1

bb.t:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.084
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !28
  %i.by = add nsw i64 %i.bx, %.183
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.t
  %.2 = phi i64 [ %i.by, %bb.t ], [ %.183, %.lr.ph ] ; 2 uses
  %i.bz = add nsw i64 %.084, 1                    ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !28
  %i.cc = icmp eq i64 %i.cb, %.02387
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.1
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bz
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !28
  %i.cf = add nsw i64 %i.ce, %.2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.1
  %.2.1 = phi i64 [ %i.cf, %bb.u ], [ %.2, %.lr.ph.1 ] ; 2 uses
  %i.cg = add nsw i64 %.084, 2                    ; 2 uses
  %.not.1 = icmp eq i64 %i.cg, %i.bj
  br i1 %.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !856

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn69 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn.pn.pn.pn.pn.pn.pn70, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn69

bb.x:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE6norm_1ERKS1_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = icmp ne ptr %i.d, %i.f
  %.not.i2 = icmp ne ptr %i.d, null
  %.not.i = and i1 %.not.i2, %i.g
  %i.h = icmp sgt i64 %i.b, 0
  %or.cond.i = and i1 %i.h, %.not.i
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.b, 1
  %i.i = icmp eq i64 %i.b, 1
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.w, %.lr.ph.i ]
  %.079.i = phi ptr [ %i.d, %.lr.ph.i.preheader.new ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.079.i, i64 8
  %i.k = load i64, ptr %.079.i, align 8, !tbaa !28
  %i.l = sitofp i64 %i.k to double
  %i.m = tail call noundef double @llvm.fabs.f64(double %i.l)
  %i.n = sitofp i64 %.011.i to double
  %i.o = fadd double %i.m, %i.n
  %i.p = fptosi double %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.079.i, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.j, align 8, !tbaa !28
  %i.s = sitofp i64 %i.r to double
  %i.t = tail call noundef double @llvm.fabs.f64(double %i.s)
  %i.u = sitofp i64 %i.p to double
  %i.v = fadd double %i.t, %i.u
  %i.w = fptosi double %i.v to i64                ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !858

_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.w, %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.q, %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.x = load i64, ptr %.079.i.epil.init, align 8, !tbaa !28
  %i.y = sitofp i64 %i.x to double
  %i.z = tail call noundef double @llvm.fabs.f64(double %i.y)
  %i.aa = sitofp i64 %.011.i.epil.init to double
  %i.ab = fadd double %i.z, %i.aa
  %i.ac = fptosi double %i.ab to i64
  br label %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit

_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit: ; preds = %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i64 [ %i.w, %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.i.epil.preheader ]
  %i.ad = sitofp i64 %.lcssa to double
  br label %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit

_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit:       ; preds = %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit, %bb.a
  %.1.i = phi double [ 0.000000e+00, %bb.a ], [ %i.ad, %_ZN6casadi13casadi_norm_1IxEET_xPKS1_.exit.loopexit ]
  tail call void @_ZN6casadi6MatrixIxEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %.1.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE6norm_2ERKS1_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.2", align 1  ; 3 uses
  %10 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity9is_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !864 ; 4 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.preheader.i, label %_ZN6casadi6MatrixIxE8norm_froERKS1_.exit

.lr.ph.i.i.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39, !noalias !864 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39, !noalias !864
  %i.i = icmp eq ptr %i.f, %i.h
  %spec.select.i.i = select i1 %i.i, ptr null, ptr %i.f ; 2 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.c, 4
  br i1 %i.j, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.new

.lr.ph.i.i.preheader.i.new:                       ; preds = %.lr.ph.i.i.preheader.i
  %unroll_iter = and i64 %i.c, 9223372036854775804
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i.new
  %.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %i.z, %.lr.ph.i.i.i ]
  %.0710.i.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i.preheader.i.new ], [ %i.w, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.k = getelementptr i8, ptr %.0710.i.i.i, i64 8
  %i.l = load i64, ptr %.0710.i.i.i, align 8, !tbaa !28, !noalias !864 ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.l
  %i.n = add nuw nsw i64 %i.m, %.012.i.i.i
  %i.o = getelementptr i8, ptr %.0710.i.i.i, i64 16
  %i.p = load i64, ptr %i.k, align 8, !tbaa !28, !noalias !864 ; 2 uses
  %i.q = mul nsw i64 %i.p, %i.p
  %i.r = add nuw nsw i64 %i.q, %i.n
  %i.s = getelementptr i8, ptr %.0710.i.i.i, i64 24
  %i.t = load i64, ptr %i.o, align 8, !tbaa !28, !noalias !864 ; 2 uses
  %i.u = mul nsw i64 %i.t, %i.t
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = getelementptr i8, ptr %.0710.i.i.i, i64 32 ; 2 uses
  %i.x = load i64, ptr %i.s, align 8, !tbaa !28, !noalias !864 ; 2 uses
  %i.y = mul nsw i64 %i.x, %i.x
  %i.z = add nuw nsw i64 %i.y, %i.v               ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.012.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader.i ], [ %i.z, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i.unr-lcssa ]
  %.0710.i.i.i.epil.init = phi ptr [ %spec.select.i.i, %.lr.ph.i.i.preheader.i ], [ %i.w, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.012.i.i.i.epil = phi i64 [ %i.ad, %.lr.ph.i.i.i.epil ], [ %.012.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.0710.i.i.i.epil = phi ptr [ %i.aa, %.lr.ph.i.i.i.epil ], [ %.0710.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.aa = getelementptr i8, ptr %.0710.i.i.i.epil, i64 8
  %i.ab = load i64, ptr %.0710.i.i.i.epil, align 8, !tbaa !28, !noalias !864 ; 2 uses
  %i.ac = mul nsw i64 %i.ab, %i.ab
  %i.ad = add nuw nsw i64 %i.ac, %.012.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !861

_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i.unr-lcssa
  %.lcssa = phi i64 [ %i.z, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i.unr-lcssa ], [ %i.ad, %.lr.ph.i.i.i.epil ]
  %i.ae = uitofp nneg i64 %.lcssa to double
  %i.af = tail call double @llvm.sqrt.f64(double %i.ae)
  %i.ag = fptosi double %i.af to i64
  %11 = uitofp nneg i64 %i.ag to double
  br label %_ZN6casadi6MatrixIxE8norm_froERKS1_.exit

_ZN6casadi6MatrixIxE8norm_froERKS1_.exit:         ; preds = %bb.b, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i
  %.0.lcssa.i.i.i = phi double [ 0.000000e+00, %bb.b ], [ %11, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.i ]
  tail call void @_ZN6casadi6MatrixIxEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %.0.lcssa.i.i.i)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.131, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.132, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !alias.scope !865
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #24
          to label %bb.r unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread: ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.l:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.m:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.n:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.am, %bb.n ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.an, %bb.o ] ; 2 uses
  %.1 = phi i1 [ true, %bb.n ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.o ] ; 2 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !48
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.m ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ay = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !48
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.l ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.bd = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !48
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 4 uses
  %.4 = phi i1 [ true, %bb.k ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !48
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.bn = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread: ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !48
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.bw = load i64, ptr %i.bo, align 8, !tbaa !48
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bx) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.4, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.4, label %bb.p, label %bb.q

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread
  %.pn.pn.pn.pn.pn.pn40.ph = phi { ptr, i32 } [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn.pn.pn.pn.pn.pn40 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn.pn.pn.pn.pn.pn40.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ah) #28
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.p
  %.pn.pn.pn.pn.pn.pn39 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn.pn.pn.pn.pn.pn40, %bb.p ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn39

bb.r:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE8norm_froERKS1_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i.preheader, label %_ZN6casadi13casadi_norm_2IxEET_xPKS1_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp eq ptr %i.e, %i.g
  %spec.select.i = select i1 %i.h, ptr null, ptr %i.e ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.i = icmp ult i64 %i.b, 4
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i ]
  %.0710.i.i = phi ptr [ %spec.select.i, %.lr.ph.i.i.preheader.new ], [ %i.v, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.j = getelementptr i8, ptr %.0710.i.i, i64 8
  %i.k = load i64, ptr %.0710.i.i, align 8, !tbaa !28 ; 2 uses
  %i.l = mul nsw i64 %i.k, %i.k
  %i.m = add nuw nsw i64 %i.l, %.012.i.i
  %i.n = getelementptr i8, ptr %.0710.i.i, i64 16
  %i.o = load i64, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.p = mul nsw i64 %i.o, %i.o
  %i.q = add nuw nsw i64 %i.p, %i.m
  %i.r = getelementptr i8, ptr %.0710.i.i, i64 24
  %i.s = load i64, ptr %i.n, align 8, !tbaa !28   ; 2 uses
  %i.t = mul nsw i64 %i.s, %i.s
  %i.u = add nuw nsw i64 %i.t, %i.q
  %i.v = getelementptr i8, ptr %.0710.i.i, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.x = mul nsw i64 %i.w, %i.w
  %i.y = add nuw nsw i64 %i.x, %i.u               ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !6

_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.y, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.unr-lcssa ]
  %.0710.i.i.epil.init = phi ptr [ %spec.select.i, %.lr.ph.i.i.preheader ], [ %i.v, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi i64 [ %i.ac, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0710.i.i.epil = phi ptr [ %i.z, %.lr.ph.i.i.epil ], [ %.0710.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.z = getelementptr i8, ptr %.0710.i.i.epil, i64 8
  %i.aa = load i64, ptr %.0710.i.i.epil, align 8, !tbaa !28 ; 2 uses
  %i.ab = mul nsw i64 %i.aa, %i.aa
  %i.ac = add nuw nsw i64 %i.ab, %.012.i.i.epil   ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !866

_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.epil, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.y, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i.unr-lcssa ], [ %i.ac, %.lr.ph.i.i.epil ]
  %i.ad = uitofp nneg i64 %.lcssa to double
  %i.ae = tail call double @llvm.sqrt.f64(double %i.ad)
  %i.af = fptosi double %i.ae to i64
  %2 = uitofp nneg i64 %i.af to double
  br label %_ZN6casadi13casadi_norm_2IxEET_xPKS1_.exit

_ZN6casadi13casadi_norm_2IxEET_xPKS1_.exit:       ; preds = %bb.a, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.a ], [ %2, %_ZN6casadi10casadi_dotIxEET_xPKS1_S3_.exit.loopexit.i ]
  tail call void @_ZN6casadi6MatrixIxEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %.0.lcssa.i.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE8norm_infERKS1_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::Matrix", align 8    ; 10 uses
  %3 = alloca %"class.casadi::Matrix", align 8    ; 11 uses
  %4 = alloca %"class.casadi::Matrix", align 8    ; 9 uses
  tail call void @_ZN6casadi6MatrixIxEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef 0.000000e+00)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %.not25 = icmp eq ptr %i.b, %i.d
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6casadi6MatrixIxED2Ev.exit21, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6casadi6MatrixIxED2Ev.exit21
  %.sroa.022.026 = phi ptr [ %i.b, %.lr.ph ], [ %i.aq, %_ZN6casadi6MatrixIxED2Ev.exit21 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.p = load i64, ptr %.sroa.022.026, align 8, !tbaa !28
  %i.q = sitofp i64 %i.p to double
  invoke void @_ZN6casadi6MatrixIxEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %4, double noundef %i.q)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi6MatrixIxE5unaryExRKS1_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %3, i64 noundef 29, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZN6casadi4fabsERKNS_6MatrixIxEE.exit unwind label %bb.o

_ZN6casadi4fabsERKNS_6MatrixIxEE.exit:            ; preds = %bb.c
  %i.r = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %_ZN6casadi4fabsERKNS_6MatrixIxEE.exit
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  invoke void @_ZN6casadi6MatrixIxE13scalar_matrixExRKS1_S3_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %2, i64 noundef 35, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN6casadi4fmaxERKNS_6MatrixIxEES3_.exit unwind label %bb.p

bb.e:                                             ; preds = %.noexc
  %i.s = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext false)
          to label %.noexc11 unwind label %bb.p

.noexc11:                                         ; preds = %bb.e
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc11
  invoke void @_ZN6casadi6MatrixIxE13matrix_scalarExRKS1_S3_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %2, i64 noundef 35, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN6casadi4fmaxERKNS_6MatrixIxEES3_.exit unwind label %bb.p

bb.g:                                             ; preds = %.noexc11
  invoke void @_ZN6casadi6MatrixIxE13matrix_matrixExRKS1_S3_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %2, i64 noundef 35, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN6casadi4fmaxERKNS_6MatrixIxEES3_.exit unwind label %bb.p

_ZN6casadi4fmaxERKNS_6MatrixIxEES3_.exit:         ; preds = %bb.d, %bb.f, %bb.g
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc14 unwind label %bb.q   ; 0 uses

.noexc14:                                         ; preds = %_ZN6casadi4fmaxERKNS_6MatrixIxEES3_.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIxSaIxEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN6casadi6MatrixIxEaSERKS1_.exit unwind label %bb.q ; 0 uses

_ZN6casadi6MatrixIxEaSERKS1_.exit:                ; preds = %.noexc14
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN6casadi6MatrixIxEaSERKS1_.exit
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i

_ZNSt6vectorIxSaIxEED2Ev.exit.i:                  ; preds = %bb.h, %_ZN6casadi6MatrixIxEaSERKS1_.exit
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6casadi6MatrixIxED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #26
  unreachable

_ZN6casadi6MatrixIxED2Ev.exit:                    ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !36  ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i16, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i17, label %bb.j

bb.j:                                             ; preds = %_ZN6casadi6MatrixIxED2Ev.exit
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i17

_ZNSt6vectorIxSaIxEED2Ev.exit.i17:                ; preds = %bb.j, %_ZN6casadi6MatrixIxED2Ev.exit
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN6casadi6MatrixIxED2Ev.exit18 unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i17
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZN6casadi6MatrixIxED2Ev.exit18:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i17
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !36  ; 3 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i19, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i20, label %bb.l

bb.l:                                             ; preds = %_ZN6casadi6MatrixIxED2Ev.exit18
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i20

_ZNSt6vectorIxSaIxEED2Ev.exit.i20:                ; preds = %bb.l, %_ZN6casadi6MatrixIxED2Ev.exit18
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN6casadi6MatrixIxED2Ev.exit21 unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i20
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #26
  unreachable

_ZN6casadi6MatrixIxED2Ev.exit21:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.022.026, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !39
  %.not = icmp eq ptr %i.aq, %i.ar
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !867

bb.n:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %_ZN6casadi4fabsERKNS_6MatrixIxEE.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %.noexc14, %_ZN6casadi4fmaxERKNS_6MatrixIxEES3_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.au, %bb.p ]
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.at, %bb.o ]
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
end_hunk_0
begin_hunk_1_@_ZN6casadi6MatrixIxE12norm_inf_mulERKS1_S3_:bb.a
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn125, %bb.y ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn53, %bb.am ], [ %.pn53, %_ZNSt6vectorIxSaIxEED2Ev.exit109 ]
  resume { ptr, i32 } %.pn53.pn.pn

bb.an:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6casadi19casadi_norm_inf_mulIxEET_PKS1_PKxS3_S5_PS1_Px(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !28     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %5, i64 %i.h
  %i.m = getelementptr i8, ptr %i.l, i64 8        ; 5 uses
  %i.n = icmp sgt i64 %i.a, 0                     ; 2 uses
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = shl nuw i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 -1, i64 %i.o, i1 false), !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  store i64 0, ptr %5, align 8, !tbaa !28
  %i.p = icmp sgt i64 %i.h, 0                     ; 2 uses
  br i1 %i.p, label %.lr.ph162, label %.preheader145

.preheader145:                                    ; preds = %._crit_edge156, %._crit_edge
  br i1 %i.n, label %.lr.ph166.preheader, label %._crit_edge167

.lr.ph162:                                        ; preds = %._crit_edge, %._crit_edge156
  %.0129160 = phi i64 [ %i.aq, %._crit_edge156 ], [ 0, %._crit_edge ]
  %.1139159 = phi i64 [ %i.s, %._crit_edge156 ], [ 0, %._crit_edge ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.1139159
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = add nuw nsw i64 %.1139159, 1             ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %i.v = icmp slt i64 %i.r, %i.u
  br i1 %i.v, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %.lr.ph162, %._crit_edge151
  %i.w = phi i64 [ %i.an, %._crit_edge151 ], [ %i.u, %.lr.ph162 ]
  %.0123153 = phi i64 [ %.1124.lcssa, %._crit_edge151 ], [ 0, %.lr.ph162 ] ; 2 uses
  %.0135152 = phi i64 [ %i.ao, %._crit_edge151 ], [ %i.r, %.lr.ph162 ] ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.0135152
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.ad = icmp slt i64 %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %.lr.ph155, %bb.c
  %i.ae = phi i64 [ %i.ak, %bb.c ], [ %i.ac, %.lr.ph155 ]
  %.1124148 = phi i64 [ %.2125, %bb.c ], [ %.0123153, %.lr.ph155 ] ; 2 uses
  %.0133147 = phi i64 [ %i.al, %bb.c ], [ %i.aa, %.lr.ph155 ] ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.0133147
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !28
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28
  %.not = icmp eq i64 %i.ai, %.1139159
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph150
  store i64 %.1139159, ptr %i.ah, align 8, !tbaa !28
  %i.aj = add nsw i64 %.1124148, 1
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph150
  %i.ak = phi i64 [ %.pre, %bb.b ], [ %i.ae, %.lr.ph150 ] ; 2 uses
  %.2125 = phi i64 [ %i.aj, %bb.b ], [ %.1124148, %.lr.ph150 ] ; 2 uses
  %i.al = add nsw i64 %.0133147, 1                ; 2 uses
  %i.am = icmp slt i64 %i.al, %i.ak
  br i1 %i.am, label %.lr.ph150, label %._crit_edge151.loopexit, !llvm.loop !1444

._crit_edge151.loopexit:                          ; preds = %bb.c
  %.pre202 = load i64, ptr %i.t, align 8, !tbaa !28
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge151.loopexit, %.lr.ph155
  %i.an = phi i64 [ %i.w, %.lr.ph155 ], [ %.pre202, %._crit_edge151.loopexit ] ; 2 uses
  %.1124.lcssa = phi i64 [ %.0123153, %.lr.ph155 ], [ %.2125, %._crit_edge151.loopexit ] ; 2 uses
  %i.ao = add nsw i64 %.0135152, 1                ; 2 uses
  %i.ap = icmp slt i64 %i.ao, %i.an
  br i1 %i.ap, label %.lr.ph155, label %._crit_edge156, !llvm.loop !1445

._crit_edge156:                                   ; preds = %._crit_edge151, %.lr.ph162
  %.0123.lcssa = phi i64 [ 0, %.lr.ph162 ], [ %.1124.lcssa, %._crit_edge151 ]
  %i.aq = add nsw i64 %.0123.lcssa, %.0129160     ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.s
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !28
  %exitcond.not = icmp eq i64 %i.s, %i.h
  br i1 %exitcond.not, label %.preheader145, label %.lr.ph162, !llvm.loop !1446

.lr.ph166.preheader:                              ; preds = %.preheader145
  %i.as = shl nuw i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 -1, i64 %i.as, i1 false), !tbaa !28
  %i.at = shl nuw i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %i.at, i1 false), !tbaa !28
  br label %._crit_edge167

._crit_edge167:                                   ; preds = %.preheader145, %.lr.ph166.preheader
  store i64 0, ptr %5, align 8, !tbaa !28
  br i1 %i.p, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %._crit_edge167, %._crit_edge188
  %.0126193 = phi i64 [ %.1127.lcssa, %._crit_edge188 ], [ 0, %._crit_edge167 ] ; 3 uses
  %.1130192 = phi i64 [ %.2131.lcssa, %._crit_edge188 ], [ 0, %._crit_edge167 ] ; 3 uses
  %.4191 = phi i64 [ %i.aw, %._crit_edge188 ], [ 0, %._crit_edge167 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.4191
  %i.av = load i64, ptr %i.au, align 8, !tbaa !28 ; 2 uses
  %i.aw = add nuw nsw i64 %.4191, 1               ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !28 ; 2 uses
  %i.az = icmp slt i64 %i.av, %i.ay
  br i1 %i.az, label %.lr.ph180, label %._crit_edge188

.preheader:                                       ; preds = %._crit_edge173
  %i.ba = icmp sgt i64 %.1.lcssa, 0
  br i1 %i.ba, label %.lr.ph187, label %._crit_edge188

.lr.ph180:                                        ; preds = %.lr.ph195, %._crit_edge173
  %.0178 = phi i64 [ %.1.lcssa, %._crit_edge173 ], [ 0, %.lr.ph195 ] ; 2 uses
  %.0120177 = phi i64 [ %.1121.lcssa, %._crit_edge173 ], [ -2, %.lr.ph195 ] ; 2 uses
  %.1136176 = phi i64 [ %i.bx, %._crit_edge173 ], [ %i.av, %.lr.ph195 ] ; 3 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.1136176
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !28
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %.1136176
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !28
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bc ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !28 ; 2 uses
  %i.bj = icmp slt i64 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %.lr.ph180, %bb.e
  %.1170 = phi i64 [ %.2, %bb.e ], [ %.0178, %.lr.ph180 ] ; 2 uses
  %.1121169 = phi i64 [ %.2122, %bb.e ], [ %.0120177, %.lr.ph180 ] ; 2 uses
  %.1134168 = phi i64 [ %i.bw, %bb.e ], [ %i.bg, %.lr.ph180 ] ; 3 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.1134168
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !28 ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %.1134168
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !28
  %i.bo = mul nsw i64 %i.bn, %i.be
  %i.bp = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bl ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !28
  %i.br = add nsw i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !28
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bl ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !28
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph172
  store i64 %.1121169, ptr %i.bs, align 8, !tbaa !28
  %i.bv = add nsw i64 %.1170, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph172
  %.2122 = phi i64 [ %i.bl, %bb.d ], [ %.1121169, %.lr.ph172 ] ; 2 uses
  %.2 = phi i64 [ %i.bv, %bb.d ], [ %.1170, %.lr.ph172 ] ; 2 uses
  %i.bw = add nsw i64 %.1134168, 1                ; 2 uses
  %exitcond198.not = icmp eq i64 %i.bw, %i.bi
  br i1 %exitcond198.not, label %._crit_edge173, label %.lr.ph172, !llvm.loop !1447

._crit_edge173:                                   ; preds = %bb.e, %.lr.ph180
  %.1121.lcssa = phi i64 [ %.0120177, %.lr.ph180 ], [ %.2122, %bb.e ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0178, %.lr.ph180 ], [ %.2, %bb.e ] ; 3 uses
  %i.bx = add nsw i64 %.1136176, 1                ; 2 uses
  %exitcond199.not = icmp eq i64 %i.bx, %i.ay
  br i1 %exitcond199.not, label %.preheader, label %.lr.ph180, !llvm.loop !1448

.lr.ph187:                                        ; preds = %.preheader, %bb.g
  %.3186 = phi i64 [ %i.cj, %bb.g ], [ %.1121.lcssa, %.preheader ] ; 2 uses
  %.1127185 = phi i64 [ %.2128, %bb.g ], [ %.0126193, %.preheader ] ; 2 uses
  %.2131184 = phi i64 [ %.3132, %bb.g ], [ %.1130192, %.preheader ] ; 2 uses
  %.2137183 = phi i64 [ %i.ck, %bb.g ], [ 0, %.preheader ]
  %i.by = getelementptr inbounds [8 x i8], ptr %4, i64 %.3186 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !28 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph187
  %i.cb = sitofp i64 %i.bz to double
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.cb)
  %i.cd = fptosi double %i.cc to i64
  %i.ce = sitofp nsz i64 %.1127185 to double
  %6 = uitofp nsz nneg i64 %i.cd to double
  %i.cf = tail call nsz noundef double @llvm.maxnum.f64(double %i.ce, double %6)
  %i.cg = fptosi double %i.cf to i64
  %i.ch = add nsw i64 %.2131184, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph187
  %.3132 = phi i64 [ %.2131184, %.lr.ph187 ], [ %i.ch, %bb.f ] ; 2 uses
  %.2128 = phi i64 [ %.1127185, %.lr.ph187 ], [ %i.cg, %bb.f ] ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.3186 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !28
  store i64 -1, ptr %i.ci, align 8, !tbaa !28
  store i64 0, ptr %i.by, align 8, !tbaa !28
  %i.ck = add nuw nsw i64 %.2137183, 1            ; 2 uses
  %exitcond200.not = icmp eq i64 %i.ck, %.1.lcssa
  br i1 %exitcond200.not, label %._crit_edge188, label %.lr.ph187, !llvm.loop !1449

._crit_edge188:                                   ; preds = %bb.g, %.lr.ph195, %.preheader
  %.2131.lcssa = phi i64 [ %.1130192, %.preheader ], [ %.1130192, %.lr.ph195 ], [ %.3132, %bb.g ] ; 2 uses
  %.1127.lcssa = phi i64 [ %.0126193, %.preheader ], [ %.0126193, %.lr.ph195 ], [ %.2128, %bb.g ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aw
  store i64 %.2131.lcssa, ptr %i.cl, align 8, !tbaa !28
  %exitcond201.not = icmp eq i64 %i.aw, %i.h
  br i1 %exitcond201.not, label %._crit_edge196, label %.lr.ph195, !llvm.loop !1450

._crit_edge196:                                   ; preds = %._crit_edge188, %._crit_edge167
  %.0126.lcssa = phi i64 [ 0, %._crit_edge167 ], [ %.1127.lcssa, %._crit_edge188 ]
  ret i64 %.0126.lcssa
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE7diagcatERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  %3 = alloca %"class.std::vector.50", align 8    ; 13 uses
  %4 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE9push_backERKS1_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN6casadi8Sparsity7diagcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.n

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE9push_backERKS1_.exit
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE9push_backERKS1_.exit ]
  %.026 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.026 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  invoke void @_ZNSt6vectorIxSaIxEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEvNS4_IPxS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.r, ptr %i.k, ptr %i.m)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %1, align 8, !tbaa !89
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %.026
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !127  ; 4 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !128
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !32
  store ptr %i.x, ptr %i.v, align 8, !tbaa !32
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.e, align 8, !tbaa !127
  br label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN6casadi8SparsityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE9push_backERKS1_.exit unwind label %bb.g

_ZNSt6vectorIN6casadi8SparsityESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.e
  %i.aa = add nuw nsw i64 %.026, 1                ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ac = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 40
  %i.ah = icmp ult i64 %i.aa, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !1451

bb.f:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %._crit_edge
  invoke void @_ZN6casadi6MatrixIxEC1ERKNS_8SparsityERKSt6vectorIxSaIxEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.am = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i ], [ %i.am, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 2 uses
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i)
          to label %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #26
  unreachable

_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.ao
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.am, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #27
  br label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi8SparsityESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ay = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !38
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.n:                                             ; preds = %._crit_edge
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit22
end_hunk_1
