Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_eigen?download=true
inline.NumInlined: 10301
inline.NumDeleted: 4818
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5Eigen12SparseMatrixIfLi1EiEC2ERKS1_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !39
  %i.n = load i64, ptr %i.l, align 8, !tbaa !39
  store i64 %i.n, ptr %i.a, align 8, !tbaa !39
  store i64 %i.m, ptr %i.l, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !208
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !42
  store <2 x ptr> %i.r, ptr %i.f, align 8, !tbaa !42
  store ptr %i.p, ptr %i.o, align 8, !tbaa !208
  store ptr null, ptr %i.q, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !208
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !208
  store ptr %i.v, ptr %i.s, align 8, !tbaa !208
  store ptr %i.u, ptr %i.t, align 8, !tbaa !208
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !39
  %i.z = load i64, ptr %i.x, align 8, !tbaa !39
  store i64 %i.z, ptr %i.w, align 8, !tbaa !39
  store i64 %i.y, ptr %i.x, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !39
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !39
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !39
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !39
  br label %_ZN5Eigen12SparseMatrixIfLi1EiEaSERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIfLi1EiEaSERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5Eigen12SparseMatrixIfLi1EiE14initAssignmentIS1_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #34
          to label %.noexc unwind label %bb.h, !inline_history !957

.noexc:                                           ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !195
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.noexc
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !196
  %.idx.i = shl nsw i64 %i.ah, 2
  %i.ai = add nsw i64 %.idx.i, 4                  ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !194
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !194
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.am, ptr align 4 %i.al, i64 %i.ai, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5Eigen8internal17CompressedStorageIfiEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.an) #34
          to label %_ZN5Eigen12SparseMatrixIfLi1EiEaSERKS1_.exit unwind label %bb.h, !inline_history !957 ; 0 uses

bb.g:                                             ; preds = %.noexc
  invoke void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIfLi1EiEES3_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #34
          to label %_ZN5Eigen12SparseMatrixIfLi1EiEaSERKS1_.exit unwind label %bb.h, !inline_history !957

_ZN5Eigen12SparseMatrixIfLi1EiEaSERKS1_.exit:     ; preds = %bb.c, %bb.b, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i, %bb.g
  ret void

bb.h:                                             ; preds = %bb.g, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5Eigen8internal17CompressedStorageIfiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #32
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind10make_tupleILNS_9rv_policy5valueE0EJNS_7ndarrayIJNS_5numpyEfNS_6detail5shapeIJLln1EEEEEEENS3_IJS4_iS7_EEES9_EEENS_5tupleEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::tuple") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.c = load ptr, ptr %1, align 8, !tbaa !203
  %i.d = tail call noundef ptr @_ZN8nanobind6detail14ndarray_exportEPNS0_12nb_internalsEPNS0_14ndarray_handleEiNS_9rv_policyEPNS0_12cleanup_listE(ptr noundef %i.b, ptr noundef %i.c, i32 noundef 1, i8 0, ptr noundef null) #32 ; 2 uses
  store ptr %i.d, ptr %i.a, align 16, !tbaa !22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.f = load ptr, ptr %2, align 8, !tbaa !205
  %i.g = tail call noundef ptr @_ZN8nanobind6detail14ndarray_exportEPNS0_12nb_internalsEPNS0_14ndarray_handleEiNS_9rv_policyEPNS0_12cleanup_listE(ptr noundef %i.e, ptr noundef %i.f, i32 noundef 1, i8 0, ptr noundef null) #32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !22
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.j = load ptr, ptr %3, align 8, !tbaa !205
  %i.k = tail call noundef ptr @_ZN8nanobind6detail14ndarray_exportEPNS0_12nb_internalsEPNS0_14ndarray_handleEiNS_9rv_policyEPNS0_12cleanup_listE(ptr noundef %i.i, ptr noundef %i.j, i32 noundef 1, i8 0, ptr noundef null) #32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 16, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = call noundef ptr @_ZN8nanobind6detail9tuple_newEPP7_objectm(ptr noundef nonnull %i.a, i64 noundef 3) #32 ; 2 uses
  %.not8 = icmp eq ptr %i.m, null
  br i1 %.not8, label %bb.e, label %bb.f, !prof !96

bb.e:                                             ; preds = %bb.d
  call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #36
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr %i.m, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind10make_tupleILNS_9rv_policy5valueE0EJRKlS4_EEENS_5tupleEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::tuple") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load i64, ptr %1, align 8, !tbaa !39
  %i.c = invoke ptr @PyLong_FromLong(i64 noundef %i.b) #34
          to label %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit6 unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable

_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit6: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 16, !tbaa !22
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit6
  %i.f = load i64, ptr %2, align 8, !tbaa !39
  %i.g = invoke ptr @PyLong_FromLong(i64 noundef %i.f) #34
          to label %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #35
  unreachable

_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.j, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit, %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit6
  %i.k = call noundef ptr @_ZN8nanobind6detail9tuple_newEPP7_objectm(ptr noundef nonnull %i.a, i64 noundef 2) #32 ; 2 uses
  %.not5 = icmp eq ptr %i.k, null
  br i1 %.not5, label %bb.f, label %bb.g, !prof !96

bb.f:                                             ; preds = %bb.e
  call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #36
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr %i.k, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail13import_cachedEPNS0_12nb_internalsEPNS0_12import_cacheE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef i32 @_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIiiEENS0_15redux_evaluatorINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEELi3ELi0EE3runISB_EEiRKSC_RKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(19) %2) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !68   ; 7 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !199
  %i.c = ptrtoint ptr %.val to i64                ; 2 uses
  %i.d = and i64 %i.c, 3
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %i.c, 2
  %i.f = sub nsw i64 0, %i.e
  %i.g = and i64 %i.f, 3
  %i.h = tail call i64 @llvm.smin.i64(i64 %i.g, i64 %i.b)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 8 uses
  %i.i = sub nsw i64 %i.b, %.0.i.i.i.i            ; 5 uses
  %i.j = sdiv i64 %i.i, 8
  %i.k = shl nsw i64 %i.j, 3                      ; 2 uses
  %i.l = sdiv i64 %i.i, 4
  %i.m = shl nsw i64 %i.l, 2                      ; 2 uses
  %i.n = add nsw i64 %i.k, %.0.i.i.i.i            ; 2 uses
  %i.o = add nsw i64 %i.m, %.0.i.i.i.i            ; 2 uses
  %.off = add i64 %i.i, 3
  %.not = icmp ult i64 %.off, 7
  %i.p = load ptr, ptr %0, align 8, !tbaa !201    ; 8 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit
  %i.q = getelementptr [4 x i8], ptr %i.p, i64 %.0.i.i.i.i ; 2 uses
  %i.r = load <2 x i64>, ptr %i.q, align 1, !tbaa !25 ; 2 uses
  %i.s = icmp sgt i64 %i.i, 7
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.q, i64 16
  %i.u = load <4 x i32>, ptr %i.t, align 1, !tbaa !25 ; 2 uses
  %i.v = bitcast <2 x i64> %i.r to <4 x i32>      ; 2 uses
  %i.w = icmp samesign ugt i64 %i.i, 15
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %.05777 = add nsw i64 %.0.i.i.i.i, 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.lcssa = phi <4 x i32> [ %i.u, %bb.d ], [ %i.ah, %.lr.ph ]
  %.sroa.067.0.lcssa = phi <4 x i32> [ %i.v, %bb.d ], [ %i.ad, %.lr.ph ]
  %i.x = add <4 x i32> %.sroa.067.0.lcssa, %.lcssa ; 2 uses
  %i.y = bitcast <4 x i32> %i.x to <2 x i64>
  %i.z = icmp sgt i64 %i.m, %i.k
  br i1 %i.z, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05780 = phi i64 [ %.057, %.lr.ph ], [ %.05777, %.lr.ph.preheader ] ; 3 uses
  %.057.in79 = phi i64 [ %.05780, %.lr.ph ], [ %.0.i.i.i.i, %.lr.ph.preheader ]
  %.sroa.067.078 = phi <4 x i32> [ %i.ad, %.lr.ph ], [ %i.v, %.lr.ph.preheader ]
  %i.aa = phi <4 x i32> [ %i.ah, %.lr.ph ], [ %i.u, %.lr.ph.preheader ]
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.p, i64 %.05780
  %i.ac = load <4 x i32>, ptr %i.ab, align 1, !tbaa !25
  %i.ad = add <4 x i32> %i.ac, %.sroa.067.078     ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.p, i64 %.057.in79
  %i.af = getelementptr i8, ptr %i.ae, i64 48
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !25
  %i.ah = add <4 x i32> %i.ag, %i.aa              ; 2 uses
  %.057 = add nsw i64 %.05780, 8                  ; 2 uses
  %i.ai = icmp slt i64 %.057, %i.n
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !958

bb.e:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.n
  %i.ak = load <4 x i32>, ptr %i.aj, align 1, !tbaa !25
  %i.al = add <4 x i32> %i.ak, %i.x
  %i.am = bitcast <4 x i32> %i.al to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %.sroa.067.2 = phi <2 x i64> [ %i.r, %bb.c ], [ %i.am, %bb.e ], [ %i.y, %._crit_edge ]
  %i.an = bitcast <2 x i64> %.sroa.067.2 to <4 x i32>
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.an) ; 2 uses
  %i.ap = icmp sgt i64 %.0.i.i.i.i, 0
  br i1 %i.ap, label %.lr.ph85, label %.preheader

.preheader:                                       ; preds = %.lr.ph85, %bb.f
  %.075.lcssa = phi i32 [ %i.ao, %bb.f ], [ %i.at, %.lr.ph85 ] ; 2 uses
  %i.aq = icmp slt i64 %i.o, %i.b
  br i1 %i.aq, label %.lr.ph89, label %.loopexit

.lr.ph85:                                         ; preds = %bb.f, %.lr.ph85
  %.05683 = phi i64 [ %i.au, %.lr.ph85 ], [ 0, %bb.f ] ; 2 uses
  %.07582 = phi i32 [ %i.at, %.lr.ph85 ], [ %i.ao, %bb.f ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.05683
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.at = add nsw i32 %i.as, %.07582              ; 2 uses
  %i.au = add nuw nsw i64 %.05683, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %.0.i.i.i.i
  br i1 %exitcond.not, label %.preheader, label %.lr.ph85, !llvm.loop !959

.lr.ph89:                                         ; preds = %.preheader, %.lr.ph89
  %.05588 = phi i64 [ %i.ay, %.lr.ph89 ], [ %i.o, %.preheader ] ; 2 uses
  %.187 = phi i32 [ %i.ax, %.lr.ph89 ], [ %.075.lcssa, %.preheader ]
  %i.av = getelementptr inbounds [4 x i8], ptr %i.p, i64 %.05588
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !41
  %i.ax = add nsw i32 %i.aw, %.187                ; 2 uses
  %i.ay = add nsw i64 %.05588, 1                  ; 2 uses
  %i.az = icmp slt i64 %i.ay, %i.b
  br i1 %i.az, label %.lr.ph89, label %.loopexit, !llvm.loop !960

bb.g:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !41  ; 2 uses
  %i.bb = icmp sgt i64 %i.b, 1
  br i1 %i.bb, label %.lr.ph94, label %.loopexit

.lr.ph94:                                         ; preds = %bb.g, %.lr.ph94
  %.092 = phi i64 [ %i.bf, %.lr.ph94 ], [ 1, %bb.g ] ; 2 uses
  %.291 = phi i32 [ %i.be, %.lr.ph94 ], [ %i.ba, %bb.g ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.092
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !41
  %i.be = add nsw i32 %i.bd, %.291                ; 2 uses
  %i.bf = add nuw nsw i64 %.092, 1                ; 2 uses
  %exitcond102.not = icmp eq i64 %i.bf, %i.b
  br i1 %exitcond102.not, label %.loopexit, label %.lr.ph94, !llvm.loop !961

.loopexit:                                        ; preds = %.lr.ph89, %.lr.ph94, %.preheader, %bb.g
  %.3 = phi i32 [ %i.be, %.lr.ph94 ], [ %i.ba, %bb.g ], [ %.075.lcssa, %.preheader ], [ %i.ax, %.lr.ph89 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN5Eigen8internal17CompressedStorageIfiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN5Eigen12SparseMatrixIfLi1EiE14initAssignmentIS1_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  tail call void @_ZN5Eigen12SparseMatrixIfLi1EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.b, i64 noundef %i.d) #34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.f) #32
  store ptr null, ptr %i.e, align 8, !tbaa !195
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN5Eigen8internal17CompressedStorageIfiEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !209
  tail call void @_ZN5Eigen8internal17CompressedStorageIfiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, double noundef 0.000000e+00) #34
  %i.c = load i64, ptr %i.a, align 8, !tbaa !209
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !209  ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, label %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit: ; preds = %bb.b
  %.idx = shl nsw i64 %i.f, 2
  %i.h = load ptr, ptr %1, align 8, !tbaa !57
  %i.i = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.h, i64 %.idx, i1 false)
  %.pre = load i64, ptr %i.e, align 8, !tbaa !209 ; 2 uses
  %i.j = icmp eq i64 %.pre, 0
  br i1 %i.j, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit
  %.idx7 = shl nsw i64 %.pre, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !206
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !206
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr align 4 %i.l, i64 %.idx7, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit: ; preds = %bb.b, %bb.c, %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN5Eigen12SparseMatrixIfLi1EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %.not = icmp ne i64 %i.d, %1
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194
  tail call void @free(ptr noundef %i.g) #32
  %i.h = shl i64 %1, 2
  %i.i = add i64 %i.h, 4
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #39 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !194
  %.not6 = icmp eq ptr %i.j, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %1, ptr %i.c, align 8, !tbaa !196
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !195  ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #32
  store ptr null, ptr %i.l, align 8, !tbaa !195
  %.pre = load i64, ptr %i.c, align 8, !tbaa !196
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i64 [ %.pre, %bb.f ], [ %1, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !194
  %i.q = shl i64 %i.n, 2
  %i.r = add i64 %i.q, 4
end_hunk_0
