inline.NumInlined: 1105
inline.NumDeleted: 468
begin_hunk_0_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_:bb.a
  %.sroa.speculated.i.i.i44 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.b) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i44, 0
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45: ; preds = %bb.d
  %i.z = load ptr, ptr %3, align 8, !tbaa !96
  %i.aa = load ptr, ptr %1, align 8, !tbaa !96
  %i.ab = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.z, i64 noundef %.sroa.speculated.i.i.i44) #26 ; 2 uses
  %.not.i.i.i46 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i46, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45, %bb.d
  %i.ac = sub i64 %i.b, %i.l
  %spec.select7.i.i.i.i49 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i.i50 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i51 = trunc nsw i64 %.08.i.i.i.i50 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48
  %.0.i.i.i47 = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45 ], [ %.0.i6.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48 ]
  %i.ad = icmp slt i32 %.0.i.i.i47, 0
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52
  %.sroa.speculated.i.i.i53 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i53, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54: ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8, !tbaa !96
  %i.ag = load ptr, ptr %2, align 8, !tbaa !96
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i53) #26 ; 2 uses
  %.not.i.i.i55 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i55, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54, %bb.e
  %i.ai = sub i64 %i.d, %i.l
  %spec.select7.i.i.i.i58 = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i59 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i58, i64 2147483647)
  %.0.i6.i.i.i60 = trunc nsw i64 %.08.i.i.i.i59 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57
  %.0.i.i.i56 = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54 ], [ %.0.i6.i.i.i60, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57 ]
  %i.aj = icmp slt i32 %.0.i.i.i56, 0
  %.66 = select i1 %i.aj, ptr %3, ptr %2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34
  %.sink = phi ptr [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52 ], [ %.66, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61 ], [ %., %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !96     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !121  ; 5 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !121  ; 4 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.g, 0
  %.not38 = icmp eq i64 %i.m, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42:         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = add nuw nsw i64 %i.m, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.p, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.o, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43:         ; preds = %bb.f
  %i.q = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.q, i1 false)
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !96
  %.pre51 = load i64, ptr %i.l, align 8, !tbaa !121
  store i64 %.pre51, ptr %i.f, align 8, !tbaa !121
  store i64 0, ptr %i.l, align 8, !tbaa !121
  store i8 0, ptr %.pre52, align 1, !tbaa !70
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44:         ; preds = %bb.e
  %i.r = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.r, i1 false)
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !96
  %.pre = load i64, ptr %i.f, align 8, !tbaa !121
  store i64 %.pre, ptr %i.l, align 8, !tbaa !121
  store i64 0, ptr %i.f, align 8, !tbaa !121
  store i8 0, ptr %.pre50, align 1, !tbaa !70
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45:         ; preds = %bb.c
  %i.s = load i64, ptr %i.j, align 8, !tbaa !70
  %i.t = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.t, i1 false)
  store ptr %i.i, ptr %0, align 8, !tbaa !96
  store ptr %i.j, ptr %1, align 8, !tbaa !96
  store i64 %i.s, ptr %i.d, align 8, !tbaa !70
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.u = load i64, ptr %i.d, align 8, !tbaa !70
  %i.v = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !121  ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  store ptr %i.c, ptr %1, align 8, !tbaa !96
  store ptr %i.d, ptr %0, align 8, !tbaa !96
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  store ptr %i.v, ptr %0, align 8, !tbaa !96
  store ptr %i.c, ptr %1, align 8, !tbaa !96
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !70
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47
  store i64 %i.u, ptr %i.w, align 8, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !121
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !121
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !121
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43, %bb.a, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit19, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.020 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.020, %1
  br i1 %i.b, label %.loopexit19, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.022 = phi ptr [ %.sroa.0.020, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.q ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn21, i64 40 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !121  ; 5 uses
  %i.j = load i64, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.j, i64 %i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !96
  %i.m = load ptr, ptr %.sroa.0.022, align 8, !tbaa !96
  %i.n = call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.o = sub i64 %i.i, %i.j
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.p, label %bb.c, label %bb.p

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.d, ptr %2, align 8, !tbaa !120
  %i.q = load ptr, ptr %.sroa.0.022, align 8, !tbaa !96 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pn21, i64 48 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.u, i1 false)
  %.pre = load i64, ptr %i.h, align 8, !tbaa !121
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  store ptr %i.q, ptr %2, align 8, !tbaa !96
  %i.v = load i64, ptr %i.r, align 8, !tbaa !70
  store i64 %i.v, ptr %i.d, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %3 = phi i64 [ %.pre, %bb.d ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  store i64 %3, ptr %i.e, align 8, !tbaa !121
  store ptr %i.r, ptr %.sroa.0.022, align 8, !tbaa !96
  store i64 0, ptr %i.h, align 8, !tbaa !121
  store i8 0, ptr %i.r, align 8, !tbaa !70
  %i.w = ptrtoint ptr %.sroa.0.022 to i64
  %i.x = sub i64 %i.w, %i.f
  %i.y = ashr exact i64 %i.x, 5                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn21, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.022, %.lr.ph.i.i.i.i.i.preheader ] ; 6 uses
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 6 uses
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !96 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ai, label %bb.e, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !121 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  switch i64 %i.ak, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !70
  store i8 %i.am, ptr %i.ad, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !121 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !121
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !70
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !96
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !121
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !121
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !70
  store i64 %i.au, ptr %i.ae, align 8, !tbaa !70
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !70
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !96
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !121
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !121
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !70
  store i64 %i.az, ptr %i.ae, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !96
  store i64 %i.av, ptr %i.ah, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.ba = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.ad, %bb.h ], [ %i.ah, %bb.i ]
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.bb, align 8, !tbaa !121
  store i8 0, ptr %i.ba, align 1, !tbaa !70
  %i.bc = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bd = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !236

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !96    ; 6 uses
  %i.bf = icmp eq ptr %i.be, %i.g
  %i.bg = load ptr, ptr %2, align 8, !tbaa !96    ; 6 uses
  %i.bh = icmp eq ptr %i.bg, %i.d                 ; 2 uses
  %.pre25 = load i64, ptr %i.e, align 8, !tbaa !121 ; 5 uses
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7: ; preds = %.loopexit
  br i1 %i.bh, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.loopexit
  br i1 %i.bh, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  %i.bi = icmp ult i64 %.pre25, 16
  call void @llvm.assume(i1 %i.bi)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.k, !prof !71

bb.k:                                             ; preds = %bb.j
  switch i64 %.pre25, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !70
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bg, i64 %.pre25, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !121 ; 2 uses
  store i64 %i.bk, ptr %i.c, align 8, !tbaa !121
  %i.bl = load ptr, ptr %0, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1, !tbaa !70
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  store ptr %i.bg, ptr %0, align 8, !tbaa !96
  store i64 %.pre25, ptr %i.c, align 8, !tbaa !121
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !70
  store i64 %i.bn, ptr %i.g, align 8, !tbaa !70
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !70
  store ptr %i.bg, ptr %0, align 8, !tbaa !96
  store i64 %.pre25, ptr %i.c, align 8, !tbaa !121
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !70
  store i64 %i.bp, ptr %i.g, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.be, ptr %2, align 8, !tbaa !96
  store i64 %i.bo, ptr %i.d, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.d, ptr %2, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bq = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.be, %bb.n ], [ %i.d, %bb.o ], [ %i.bg, %bb.j ]
  store i64 0, ptr %i.e, align 8, !tbaa !121
  store i8 0, ptr %i.bq, align 1, !tbaa !70
  %i.br = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !70
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.q

bb.p:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.022)
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 32 ; 2 uses
  %i.bv = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.bv, label %.loopexit19, label %bb.b, !llvm.loop !237

.loopexit19:                                      ; preds = %bb.q, %.preheader, %bb.a
  ret void
}
end_hunk_0
