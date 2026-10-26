Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/grid?download=true
inline.NumInlined: 622
inline.NumDeleted: 370
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN3igl4gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE:bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !15
  %i.m = load <2 x i32>, ptr %0, align 4, !tbaa !9 ; 3 uses
  %i.n = add nsw <2 x i32> %i.m, splat (i32 -1)
  %i.o = sitofp <2 x i32> %i.n to <2 x double>
  %i.p = load i32, ptr %i.d, align 4, !tbaa !9
  %i.q = add nsw i32 %i.p, -1
  %i.r = sitofp i32 %i.q to double
  %i.s = extractelement <2 x i32> %i.m, i64 0
  %i.t = extractelement <2 x i32> %i.m, i64 1
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.lr.ph, %.preheader29
  %.sroa.14.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.sroa.14.1, %.preheader29 ]
  %.sroa.8.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.sroa.8.2, %.preheader29 ]
  %.sroa.0.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %i.ae, %.preheader29 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader29.lr.ph ], [ %indvars.iv.next, %.preheader29 ] ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv, 24
  %i.u = getelementptr i8, ptr %i.l, i64 %.idx.i.i.i ; 2 uses
  %.not = icmp sge i32 %.sroa.0.0, %i.s           ; 2 uses
  %i.v = zext i1 %.not to i32
  %spec.select = add nsw i32 %.sroa.8.0, %i.v     ; 2 uses
  %spec.select41 = select i1 %.not, i32 0, i32 %.sroa.0.0 ; 2 uses
  %.not.1 = icmp sge i32 %spec.select, %i.t       ; 2 uses
  %i.w = zext i1 %.not.1 to i32
  %.sroa.14.1 = add nuw nsw i32 %.sroa.14.0, %i.w ; 2 uses
  %.sroa.8.2 = select i1 %.not.1, i32 0, i32 %spec.select ; 2 uses
  %i.x = insertelement <2 x i32> poison, i32 %spec.select41, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %.sroa.8.2, i64 1
  %i.z = sitofp <2 x i32> %i.y to <2 x double>
  %i.aa = fdiv <2 x double> %i.z, %i.o
  store <2 x double> %i.aa, ptr %i.u, align 8, !tbaa !17
  %i.ab = uitofp nneg i32 %.sroa.14.1 to double
  %i.ac = fdiv double %i.ab, %i.r
  %i.ad = getelementptr i8, ptr %i.u, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !17
  %i.ae = add nsw i32 %spec.select41, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.preheader29, !llvm.loop !36

._crit_edge:                                      ; preds = %.preheader29, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.j) #6
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #8 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !15
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi1EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi1EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4gridIN5Eigen6MatrixIiLi3ELi1ELi0ELi3ELi1EEENS2_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = mul i32 %i.c, %i.a
  %i.g = mul i32 %i.f, %i.e
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = mul nsw i64 %i.h, 3
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.i, i64 noundef %i.h, i64 noundef 3)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 4 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader29.lr.ph, label %._crit_edge

.preheader29.lr.ph:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !24
  %.pre = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.n = add nsw i32 %.pre, -1
  %i.o = sitofp i32 %i.n to float
  %i.p = load <2 x i32>, ptr %i.b, align 4, !tbaa !9
  %i.q = load i32, ptr %i.b, align 4, !tbaa !9
  %i.r = add nsw <2 x i32> %i.p, splat (i32 -1)
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %.idx = shl i64 %i.k, 3
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.lr.ph, %.preheader29
  %.sroa.14.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.sroa.14.1, %.preheader29 ]
  %.sroa.8.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.sroa.8.2, %.preheader29 ]
  %.sroa.0.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %i.ah, %.preheader29 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader29.lr.ph ], [ %indvars.iv.next, %.preheader29 ] ; 2 uses
  %.not = icmp sge i32 %.sroa.0.0, %.pre          ; 2 uses
  %i.t = zext i1 %.not to i32
  %spec.select = add nsw i32 %.sroa.8.0, %i.t     ; 2 uses
  %spec.select41 = select i1 %.not, i32 0, i32 %.sroa.0.0 ; 2 uses
  %.not.1 = icmp sge i32 %spec.select, %i.q       ; 2 uses
  %i.u = zext i1 %.not.1 to i32
  %.sroa.14.1 = add nuw nsw i32 %.sroa.14.0, %i.u ; 2 uses
  %.sroa.8.2 = select i1 %.not.1, i32 0, i32 %spec.select ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv ; 3 uses
  %i.w = sitofp i32 %spec.select41 to float
  %i.x = fdiv float %i.w, %i.o
  store float %i.x, ptr %i.v, align 4, !tbaa !26
  %i.y = getelementptr [4 x i8], ptr %i.v, i64 %i.k
  %i.z = sitofp i32 %.sroa.8.2 to float
  %i.aa = uitofp nneg i32 %.sroa.14.1 to float
  %i.ab = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  %i.ad = fdiv <2 x float> %i.ac, %i.s            ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  store float %i.ae, ptr %i.y, align 4, !tbaa !26
  %i.af = getelementptr i8, ptr %i.v, i64 %.idx
  %i.ag = extractelement <2 x float> %i.ad, i64 1
  store float %i.ag, ptr %i.af, align 4, !tbaa !26
  %i.ah = add nsw i32 %spec.select41, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.preheader29, !llvm.loop !37

._crit_edge:                                      ; preds = %.preheader29, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4gridIN5Eigen6MatrixIiLi2ELi1ELi0ELi2ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %i.d = mul nsw i32 %i.c, %i.a
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = shl nsw i64 %i.e, 1
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 2)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28   ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader29.lr.ph, label %._crit_edge

.preheader29.lr.ph:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !29
  %i.k = load <2 x i32>, ptr %0, align 4, !tbaa !9
  %i.l = load i32, ptr %0, align 4, !tbaa !9
  %i.m = add nsw <2 x i32> %i.k, splat (i32 -1)
  %i.n = sitofp <2 x i32> %i.m to <2 x double>
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.lr.ph, %.preheader29
  %indvars.iv = phi i64 [ 0, %.preheader29.lr.ph ], [ %indvars.iv.next, %.preheader29 ] ; 2 uses
  %i.o = phi i32 [ 0, %.preheader29.lr.ph ], [ %spec.select57, %.preheader29 ]
  %.sroa.0.065 = phi i32 [ 0, %.preheader29.lr.ph ], [ %i.t, %.preheader29 ] ; 2 uses
  %.not = icmp sge i32 %.sroa.0.065, %i.l         ; 2 uses
  %i.p = select i1 %.not, i32 0, i32 %.sroa.0.065 ; 2 uses
  %2 = zext i1 %.not to i32
  %spec.select57 = add nuw nsw i32 %i.o, %2       ; 2 uses
  %3 = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %4 = sitofp i32 %i.p to double
  %5 = uitofp nneg i32 %spec.select57 to double
  %6 = insertelement <2 x double> poison, double %4, i64 0
  %7 = insertelement <2 x double> %6, double %5, i64 1
  %i.q = fdiv <2 x double> %7, %i.n               ; 2 uses
  %i.r = extractelement <2 x double> %i.q, i64 0
  store double %i.r, ptr %3, align 8, !tbaa !17
  %8 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %i.s = extractelement <2 x double> %i.q, i64 1
  store double %i.s, ptr %8, align 8, !tbaa !17
  %i.t = add nsw i32 %i.p, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.preheader29, !llvm.loop !38

._crit_edge:                                      ; preds = %.preheader29, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = mul i32 %i.c, %i.a
  %i.g = mul i32 %i.f, %i.e
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = mul nsw i64 %i.h, 3
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.i, i64 noundef %i.h, i64 noundef 3)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 4 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader29.lr.ph, label %._crit_edge

.preheader29.lr.ph:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !24
  %.pre = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.n = add nsw i32 %.pre, -1
  %i.o = sitofp i32 %i.n to float
  %i.p = load <2 x i32>, ptr %i.b, align 4, !tbaa !9
  %i.q = load i32, ptr %i.b, align 4, !tbaa !9
  %i.r = add nsw <2 x i32> %i.p, splat (i32 -1)
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %.idx = shl i64 %i.k, 3
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.lr.ph, %.preheader29
  %.sroa.14.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.sroa.14.1, %.preheader29 ]
  %.sroa.8.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.sroa.8.2, %.preheader29 ]
  %.sroa.0.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %i.ah, %.preheader29 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader29.lr.ph ], [ %indvars.iv.next, %.preheader29 ] ; 2 uses
  %.not = icmp sge i32 %.sroa.0.0, %.pre          ; 2 uses
  %i.t = zext i1 %.not to i32
  %spec.select = add nsw i32 %.sroa.8.0, %i.t     ; 2 uses
  %spec.select41 = select i1 %.not, i32 0, i32 %.sroa.0.0 ; 2 uses
  %.not.1 = icmp sge i32 %spec.select, %i.q       ; 2 uses
  %i.u = zext i1 %.not.1 to i32
  %.sroa.14.1 = add nuw nsw i32 %.sroa.14.0, %i.u ; 2 uses
  %.sroa.8.2 = select i1 %.not.1, i32 0, i32 %spec.select ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv ; 3 uses
  %i.w = sitofp i32 %spec.select41 to float
  %i.x = fdiv float %i.w, %i.o
  store float %i.x, ptr %i.v, align 4, !tbaa !26
  %i.y = getelementptr [4 x i8], ptr %i.v, i64 %i.k
  %i.z = sitofp i32 %.sroa.8.2 to float
  %i.aa = uitofp nneg i32 %.sroa.14.1 to float
  %i.ab = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  %i.ad = fdiv <2 x float> %i.ac, %i.s            ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  store float %i.ae, ptr %i.y, align 4, !tbaa !26
  %i.af = getelementptr i8, ptr %i.v, i64 %.idx
  %i.ag = extractelement <2 x float> %i.ad, i64 1
  store float %i.ag, ptr %i.af, align 4, !tbaa !26
  %i.ah = add nsw i32 %spec.select41, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.preheader29, !llvm.loop !39

._crit_edge:                                      ; preds = %.preheader29, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4gridIN5Eigen6MatrixIiLi3ELi1ELi0ELi3ELi1EEENS2_IfLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = mul i32 %i.c, %i.a
  %i.g = mul i32 %i.f, %i.e
  %i.h = sext i32 %i.g to i64
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.h, i64 noundef 3)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31   ; 4 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader29.lr.ph, label %._crit_edge

.preheader29.lr.ph:                               ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !32
  %.pre = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.m = add nsw i32 %.pre, -1
  %i.n = sitofp i32 %i.m to float
  %i.o = load <2 x i32>, ptr %i.b, align 4, !tbaa !9
  %i.p = load i32, ptr %i.b, align 4, !tbaa !9
  %i.q = add nsw <2 x i32> %i.o, splat (i32 -1)
  %i.r = sitofp <2 x i32> %i.q to <2 x float>
  %.idx = shl i64 %i.j, 3
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.lr.ph, %.preheader29
  %.sroa.14.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.sroa.14.1, %.preheader29 ]
  %.sroa.8.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.sroa.8.2, %.preheader29 ]
  %.sroa.0.0 = phi i32 [ 0, %.preheader29.lr.ph ], [ %i.ag, %.preheader29 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader29.lr.ph ], [ %indvars.iv.next, %.preheader29 ] ; 2 uses
  %.not = icmp sge i32 %.sroa.0.0, %.pre          ; 2 uses
  %i.s = zext i1 %.not to i32
  %spec.select = add nsw i32 %.sroa.8.0, %i.s     ; 2 uses
  %spec.select41 = select i1 %.not, i32 0, i32 %.sroa.0.0 ; 2 uses
  %.not.1 = icmp sge i32 %spec.select, %i.p       ; 2 uses
  %i.t = zext i1 %.not.1 to i32
  %.sroa.14.1 = add nuw nsw i32 %.sroa.14.0, %i.t ; 2 uses
  %.sroa.8.2 = select i1 %.not.1, i32 0, i32 %spec.select ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.v = sitofp i32 %spec.select41 to float
  %i.w = fdiv float %i.v, %i.n
  store float %i.w, ptr %i.u, align 4, !tbaa !26
  %i.x = getelementptr [4 x i8], ptr %i.u, i64 %i.j
  %i.y = sitofp i32 %.sroa.8.2 to float
  %i.z = uitofp nneg i32 %.sroa.14.1 to float
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.z, i64 1
  %i.ac = fdiv <2 x float> %i.ab, %i.r            ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  store float %i.ad, ptr %i.x, align 4, !tbaa !26
  %i.ae = getelementptr i8, ptr %i.u, i64 %.idx
  %i.af = extractelement <2 x float> %i.ac, i64 1
  store float %i.af, ptr %i.ae, align 4, !tbaa !26
  %i.ag = add nsw i32 %spec.select41, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.preheader29, !llvm.loop !40

._crit_edge:                                      ; preds = %.preheader29, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.j) #6
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #8 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !32
  br label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi0EE6resizeElll.exit
end_hunk_0
