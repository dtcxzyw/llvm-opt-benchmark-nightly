Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/discrete_distribution_test?download=true
inline.NumInlined: 5881
inline.NumDeleted: 1846
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052621discrete_distributionIaEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_S8_:bb.a
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ak ], [ %eh.lpad-body97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %eh.lpad-body97, %.body96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %.body77

.body77:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i73, %_ZN7testing7MessageD2Ev.exit5.i81, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.dc, %_ZN7testing7MessageD2Ev.exit5.i73 ], [ %i.fb, %bb.aj ], [ %i.do, %_ZN7testing7MessageD2Ev.exit5.i81 ] ; 2 uses
  %i.fj = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %.body77
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !52
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i20, %_ZN7testing7MessageD2Ev.exit5.i40, %bb.ah, %_ZN7testing7MessageD2Ev.exit5.i62, %_ZN7testing7MessageD2Ev.exit6.i52, %_ZN7testing7MessageD2Ev.exit6.i30, %_ZN7testing7MessageD2Ev.exit6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.h, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.x, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.aj, %_ZN7testing7MessageD2Ev.exit5.i20 ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30 ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40 ], [ %i.cb, %_ZN7testing7MessageD2Ev.exit6.i52 ], [ %i.ez, %bb.ah ], [ %i.cn, %_ZN7testing7MessageD2Ev.exit5.i62 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = load ptr, ptr %1, align 8, !tbaa !68     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.i = load ptr, ptr %0, align 8, !tbaa !68     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, !prof !144

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !210

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.c, align 8, !tbaa !137
  store double %i.r, ptr %i.o, align 8, !tbaa !137
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #23
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !69
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !210

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load double, ptr %i.c, align 8, !tbaa !137
  store double %i.ae, ptr %i.i, align 8, !tbaa !137
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !210

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !68
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !70 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !68
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !70
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load double, ptr %i.c, align 8, !tbaa !137
  store double %i.ah, ptr %i.i, align 8, !tbaa !137
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !210

bb.r:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !137
  store double %i.ap, ptr %i.ai, align 8, !tbaa !137
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !70
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIdmESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !87     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = load ptr, ptr %0, align 8, !tbaa !87     ; 9 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i, !prof !144

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !87       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %3 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.w) #23
  br label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.x, ptr %i.h, align 8, !tbaa !88
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !181  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.g, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ad = load double, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !183
  store double %i.ad, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !183
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !184
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1153

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i.prol ]
  %i.ak = icmp ult i64 %i.g, 4
  br i1 %i.ak, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.al = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !183
  store double %i.al, ptr %.0811.i.i.i.i.i, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !184
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !184
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !183
  store double %i.ar, ptr %i.aq, align 8, !tbaa !183
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !184
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store i64 %i.at, ptr %i.au, align 8, !tbaa !184
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.ax = load double, ptr %i.av, align 8, !tbaa !183
  store double %i.ax, ptr %i.aw, align 8, !tbaa !183
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !184
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !184
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !183
  store double %i.bd, ptr %i.bc, align 8, !tbaa !183
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !184
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !184
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.bj = add nsw i64 %.012.i.i.i.i.i, -4
  %i.bk = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !1154

bb.h:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.bm = ashr exact i64 %i.ab, 4                 ; 5 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %xtraiter44 = and i64 %i.bm, 3                  ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i26.prol
  %.012.i.i.i.i.i27.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i26.prol ], [ %i.bm, %.lr.ph.i.i.i.i.i26.preheader ]
  %.0811.i.i.i.i.i28.prol = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i26.prol ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %.0910.i.i.i.i.i29.prol = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i26.prol ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i26.preheader ]
  %i.bo = load double, ptr %.0910.i.i.i.i.i29.prol, align 8, !tbaa !183
  store double %i.bo, ptr %.0811.i.i.i.i.i28.prol, align 8, !tbaa !183
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !184
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !184
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 16 ; 2 uses
  %i.bu = add nsw i64 %.012.i.i.i.i.i27.prol, -1  ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !1155

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bu, %.lr.ph.i.i.i.i.i26.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i26.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i26.prol ]
  %i.bv = icmp ult i64 %i.bm, 4
  br i1 %i.bv, label %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %i.bw = load double, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !183
  store double %i.bw, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !183
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !184
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !184
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !183
  store double %i.cc, ptr %i.cb, align 8, !tbaa !183
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !184
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 24
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !184
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !183
  store double %i.ci, ptr %i.ch, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !184
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 40
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !184
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 48
  %i.co = load double, ptr %i.cm, align 8, !tbaa !183
  store double %i.co, ptr %i.cn, align 8, !tbaa !183
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 56
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !184
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 56
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !184
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 64
  %i.cu = add nsw i64 %.012.i.i.i.i.i27, -4
  %i.cv = icmp sgt i64 %.012.i.i.i.i.i27, 4
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit, !llvm.loop !1156

_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bl, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i ], [ %i.bl, %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.cw, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1157

_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !87
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.cy = phi ptr [ %2, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit ], [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.f
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !181
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_152DiscreteDistributionTypeTest_ParamSerializeTest_TestIhEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_152DiscreteDistributionTypeTest_ParamSerializeTest_TestIhEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
