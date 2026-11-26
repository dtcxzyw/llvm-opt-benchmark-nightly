Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance?download=true
inline.NumInlined: 7373
inline.NumDeleted: 3592
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv
define linkonce_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %i.a, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.b, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.d, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.e, align 8, !tbaa !51
  %i.f = load ptr, ptr %0, align 8, !tbaa !834    ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %i.f)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit unwind label %bb.c, !inline_history !5

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33, !inline_history !5
  unreachable

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 80) #32
  br label %bb.d

bb.d:                                             ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !834
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !835  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %i.k)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit5 unwind label %bb.f, !inline_history !5

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #33, !inline_history !5
  unreachable

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit5: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 80) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit5, %bb.d
  store ptr null, ptr %i.j, align 8, !tbaa !835
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !836  ; 4 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !834
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.p, align 8, !tbaa !834
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !835
  %i.u = icmp eq ptr %i.t, %0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.s, align 8, !tbaa !835
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g
  store ptr null, ptr %i.o, align 8, !tbaa !836
  ret void
}

declare void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EE(ptr noundef nonnull align 16 dereferenceable(68), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !61
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !198
  %i.i = shl nsw i64 %i.h, 1
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi2ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !199
  tail call void @free(ptr noundef %i.j) #28
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !61
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #30 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !61
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !199
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi2ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi2ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !198
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.603", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !856, !nonnull !316, !align !317 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  store ptr %i.c, ptr %i.a, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !860, !nonnull !316, !align !317 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !198  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEC2ERKSO_.exit, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i64 noundef %i.k, i64 noundef 1)
          to label %bb.b unwind label %.body.i.i.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !48 ; 8 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !49 ; 6 uses
  %.pre.i.i.i.i.i.i.i17 = ptrtoaddr ptr %.pre.i.i.i.i.i.i.i to i64
  %i.m = sdiv i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.n = shl nsw i64 %i.m, 1                      ; 7 uses
  %i.o = icmp sgt i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.p = icmp slt i64 %i.n, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEC2ERKSO_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !199  ; 5 uses
  %i.r = load i64, ptr %i.j, align 8, !tbaa !198  ; 5 uses
  %i.s = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %i.n ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = ptrtoaddr ptr %i.q to i64
  %4 = sub i64 %.pre.i.i.i.i.i.i.i17, %i.t        ; 2 uses
  %5 = add i64 %4, -1
  %diff.check = icmp ult i64 %5, 15
  %6 = shl i64 %i.r, 3
  %7 = sub i64 %6, %4
  %diff.check18 = icmp ugt i64 %7, -16
  %conflict.rdx = or i1 %diff.check, %diff.check18
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.u = and i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %n.vec = sub i64 %i.s, %i.u                     ; 2 uses
  %i.v = add i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = add i64 %i.n, %index                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.w
  %i.y = getelementptr [8 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %wide.load = load <2 x double>, ptr %i.y, align 8, !tbaa !51 ; 2 uses
  %i.z = fmul <2 x double> %wide.load, %wide.load
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.r
  %wide.load19 = load <2 x double>, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.ab = fmul <2 x double> %wide.load19, %wide.load19
  %i.ac = fadd <2 x double> %i.z, %i.ab
  %i.ad = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ac)
  store <2 x double> %i.ad, ptr %i.x, align 8, !tbaa !51
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !837

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEC2ERKSO_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %middle.block ] ; 6 uses
  %i.af = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.ah = getelementptr [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %i.aj = fmul double %i.ai, %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.ah, i64 %i.r
  %i.al = load double, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.am = fmul double %i.al, %i.al
  %i.an = fadd double %i.aj, %i.am
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = call noundef double @llvm.sqrt.f64(double %i.an)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.ag, align 8, !tbaa !51
  %i.ao = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %i.ap = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %.neg
  br i1 %i.ap, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEC2ERKSO_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !51 ; 2 uses
  %i.at = fmul double %i.as, %i.as
  %i.au = getelementptr [8 x i8], ptr %i.ar, i64 %i.r
  %i.av = load double, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %i.aw = fmul double %i.av, %i.av
  %i.ax = fadd double %i.at, %i.aw
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.ax)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !51
  %i.ay = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.ay
  %i.ba = getelementptr [8 x i8], ptr %i.q, i64 %i.ay ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = getelementptr [8 x i8], ptr %i.ba, i64 %i.r
  %i.be = load double, ptr %i.bd, align 8, !tbaa !51 ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = fadd double %i.bc, %i.bf
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = call noundef double @llvm.sqrt.f64(double %i.bg)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.az, align 8, !tbaa !51
  %i.bh = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bh, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEC2ERKSO_.exit, label %scalar.ph, !llvm.loop !838

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !199
  %i.bk = load i64, ptr %i.j, align 8, !tbaa !198
  %i.bl = getelementptr [8 x i8], ptr %i.bj, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bl, align 1, !tbaa !130 ; 2 uses
  %i.bn = fmul <2 x double> %i.bm, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bp = load <2 x double>, ptr %i.bo, align 1, !tbaa !130 ; 2 uses
  %i.bq = fmul <2 x double> %i.bp, %i.bp
  %i.br = fadd <2 x double> %i.bn, %i.bq
  %i.bs = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.br)
  store <2 x double> %i.bs, ptr %i.bi, align 16, !tbaa !130
  %i.bt = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bu = icmp slt i64 %i.bt, %i.n
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !839

common.resume:                                    ; preds = %bb.e, %.body.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %.body.i.i.i.i.i.i ], [ %i.fl, %bb.e ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i:                                ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !49
  call void @free(ptr noundef %i.bw) #28
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEC2ERKSO_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !49
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !862
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ca = load ptr, ptr %i.h, align 8, !tbaa !860, !nonnull !316, !align !317
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !198 ; 4 uses
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !293
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !198
  %.not.i = icmp eq i64 %i.ce, %i.cc
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEC2ERKSO_.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.cc, i64 noundef 2)
          to label %thread-pre-split unwind label %bb.e

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i64, ptr %i.cd, align 8, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEC2ERKSO_.exit
  %i.cf = phi i64 [ %.pr, %thread-pre-split ], [ %i.cc, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEC2ERKSO_.exit ] ; 15 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !199   ; 8 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64              ; 3 uses
  %i.ci = icmp sgt i64 %i.cf, 0
  br i1 %i.ci, label %.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit

.split.i:                                         ; preds = %bb.d
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !864 ; 8 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64              ; 2 uses
  %i.cl = load i64, ptr %i.f, align 8, !tbaa !859 ; 2 uses
  %i.cm = load ptr, ptr %i.bx, align 8, !tbaa !866 ; 13 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64              ; 2 uses
  %min.iters.check25 = icmp eq i64 %i.cf, 1
  br i1 %min.iters.check25, label %scalar.ph24.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %.split.i
  %i.co = sub i64 %i.cn, %i.ch
  %diff.check27 = icmp ugt i64 %i.co, -16
  %i.cp = sub i64 %i.ck, %i.ch
  %diff.check28 = icmp ugt i64 %i.cp, -16
  %conflict.rdx29 = or i1 %diff.check27, %diff.check28
  br i1 %conflict.rdx29, label %scalar.ph24.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %vector.memcheck26
  %n.vec31 = and i64 %i.cf, 9223372036854775806   ; 3 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next36, %vector.body32 ] ; 4 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cg, i64 %index33
  %i.cr = getelementptr [8 x i8], ptr %i.cj, i64 %index33
  %i.cs = getelementptr [8 x i8], ptr %i.cm, i64 %index33
  %wide.load34 = load <2 x double>, ptr %i.cs, align 8, !tbaa !51
  %wide.load35 = load <2 x double>, ptr %i.cr, align 8, !tbaa !51
  %i.ct = fdiv <2 x double> %wide.load35, %wide.load34
  store <2 x double> %i.ct, ptr %i.cq, align 8, !tbaa !51
  %index.next36 = add nuw i64 %index33, 2         ; 2 uses
  %i.cu = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.cu, label %middle.block37, label %vector.body32, !llvm.loop !840

middle.block37:                                   ; preds = %vector.body32
  %cmp.n38 = icmp eq i64 %i.cf, %n.vec31
  br i1 %cmp.n38, label %._crit_edge.i, label %scalar.ph24.preheader

scalar.ph24.preheader:                            ; preds = %vector.memcheck26, %.split.i, %middle.block37
  %.09.i.ph = phi i64 [ 0, %vector.memcheck26 ], [ 0, %.split.i ], [ %n.vec31, %middle.block37 ] ; 4 uses
  %i.cv = sub nsw i64 %i.cf, %.09.i.ph
  %xtraiter60 = and i64 %i.cv, 3                  ; 2 uses
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %scalar.ph24.prol.loopexit, label %scalar.ph24.prol

scalar.ph24.prol:                                 ; preds = %scalar.ph24.preheader, %scalar.ph24.prol
  %.09.i.prol = phi i64 [ %i.da, %scalar.ph24.prol ], [ %.09.i.ph, %scalar.ph24.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph24.prol ], [ 0, %scalar.ph24.preheader ]
  %gep.i.prol = getelementptr [8 x i8], ptr %i.cg, i64 %.09.i.prol
  %gep11.i.prol = getelementptr [8 x i8], ptr %i.cj, i64 %.09.i.prol
  %i.cw = getelementptr [8 x i8], ptr %i.cm, i64 %.09.i.prol
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !51
  %i.cy = load double, ptr %gep11.i.prol, align 8, !tbaa !51
  %i.cz = fdiv double %i.cy, %i.cx
  store double %i.cz, ptr %gep.i.prol, align 8, !tbaa !51
  %i.da = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter60
end_hunk_0
