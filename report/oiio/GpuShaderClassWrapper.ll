inline.NumInlined: 928
inline.NumDeleted: 374
begin_hunk_0_@_ZNK16OpenColorIO_v2_525NullGpuShaderClassWrapper21hasClassWrapperHeaderEv:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_521GpuShaderClassWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_525NullGpuShaderClassWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEvPT_.exit.i
  %.05.i = phi ptr [ %i.l, %_ZSt8_DestroyIN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = load ptr, ptr %.05.i, align 8, !tbaa !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !21
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEvPT_.exit.i

_ZSt8_DestroyIN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEvPT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !71

_ZNSt12_Destroy_auxILb0EE9__destroyIPN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_523MetalShaderClassWrapper13FunctionParamD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !21
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !21
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE17_M_realloc_insertIJRS6_SB_SB_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !128    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #20
  unreachable

_ZNKSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 96076792050570581)
  %i.m = select i1 %i.k, i64 96076792050570581, i64 %i.l ; 4 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_M_allocateEm.exit, label %5

5:                                                ; preds = %_ZNKSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE12_M_check_lenEmPKc.exit
  %6 = mul nuw nsw i64 %i.m, 96
  %7 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #22
  br label %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE12_M_check_lenEmPKc.exit, %5
  %8 = phi ptr [ %7, %5 ], [ null, %_ZNKSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %i.o ; 5 uses
  invoke void @_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRS5_JS8_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_M_allocateEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !17
  %i.r = load ptr, ptr %2, align 8, !tbaa !10     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.t, ptr %i.a, align 8, !tbaa !43
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.noexc
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.e ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  store ptr %i.v, ptr %i.p, align 8, !tbaa !10
  %i.w = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.w, ptr %i.q, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i, %.noexc
  %i.x = phi ptr [ %i.v, %.noexc.i.i ], [ %i.q, %.noexc ] ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.y = load i8, ptr %i.r, align 1, !tbaa !21
  store i8 %i.y, ptr %i.x, align 1, !tbaa !21
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %9) #23
  br label %bb.p

bb.f:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !16
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bt, %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %8, %bb.f ] ; 11 uses
  %.0911.i.i.i = phi ptr [ %i.bs, %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !153, !noalias !156
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !10, !alias.scope !156, !noalias !153 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16, !alias.scope !156, !noalias !153 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !158
  br label %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !10, !alias.scope !153, !noalias !156
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !21, !alias.scope !156, !noalias !153
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !21, !alias.scope !153, !noalias !156
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !156, !noalias !153
  br label %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i

_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.an = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !16, !alias.scope !153, !noalias !156
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !10, !alias.scope !156, !noalias !153
  store i64 0, ptr %i.ao, align 8, !tbaa !16, !alias.scope !156, !noalias !153
  store i8 0, ptr %i.ag, align 8, !tbaa !21, !alias.scope !156, !noalias !153
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !17, !alias.scope !153, !noalias !156
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !10, !alias.scope !156, !noalias !153 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16, !alias.scope !156, !noalias !153 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !158
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !10, !alias.scope !153, !noalias !156
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !21, !alias.scope !156, !noalias !153
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !21, !alias.scope !153, !noalias !156
  %.phi.trans.insert7.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre8.i.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i.i, align 8, !tbaa !16, !alias.scope !156, !noalias !153
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i

_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.h
  %i.bb = phi i64 [ %.pre8.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.h ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !16, !alias.scope !153, !noalias !156
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !10, !alias.scope !156, !noalias !153
  store i64 0, ptr %i.bc, align 8, !tbaa !16, !alias.scope !156, !noalias !153
  store i8 0, ptr %i.au, align 8, !tbaa !21, !alias.scope !156, !noalias !153
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !17, !alias.scope !153, !noalias !156
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !10, !alias.scope !156, !noalias !153 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !16, !alias.scope !156, !noalias !153 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false), !alias.scope !158
  br label %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !10, !alias.scope !153, !noalias !156
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !21, !alias.scope !156, !noalias !153
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !21, !alias.scope !153, !noalias !156
  %.phi.trans.insert9.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %.pre10.i.i.i.i = load i64, ptr %.phi.trans.insert9.i.i.i.i, align 8, !tbaa !16, !alias.scope !156, !noalias !153
  br label %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.bp = phi i64 [ %i.bl, %bb.i ], [ %.pre10.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !16, !alias.scope !153, !noalias !156
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !10, !alias.scope !156, !noalias !153
  store i64 0, ptr %i.bq, align 8, !tbaa !16, !alias.scope !156, !noalias !153
  store i8 0, ptr %i.bi, align 8, !tbaa !21, !alias.scope !156, !noalias !153
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !159

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %8, %bb.f ], [ %i.bt, %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit46, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i43
  %.012.i.i.i30 = phi ptr [ %i.dk, %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i43 ], [ %i.bu, %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 11 uses
  %.0911.i.i.i31 = phi ptr [ %i.dj, %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i43 ], [ %1, %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.bv, ptr %.012.i.i.i30, align 8, !tbaa !17, !alias.scope !160, !noalias !163
  %i.bw = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !10, !alias.scope !163, !noalias !160 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i32

bb.j:                                             ; preds = %.lr.ph.i.i.i29
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !16, !alias.scope !163, !noalias !160 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i64 %i.cc, i1 false), !alias.scope !165
  br label %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.bw, ptr %.012.i.i.i30, align 8, !tbaa !10, !alias.scope !160, !noalias !163
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !21, !alias.scope !163, !noalias !160
  store i64 %i.cd, ptr %i.bv, align 8, !tbaa !21, !alias.scope !160, !noalias !163
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !16, !alias.scope !163, !noalias !160
  br label %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i35

_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i32, %bb.j
  %i.ce = phi i64 [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i32 ], [ %i.ca, %bb.j ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !16, !alias.scope !160, !noalias !163
  store ptr %i.bx, ptr %.0911.i.i.i31, align 8, !tbaa !10, !alias.scope !163, !noalias !160
  store i64 0, ptr %i.cf, align 8, !tbaa !16, !alias.scope !163, !noalias !160
  store i8 0, ptr %i.bx, align 8, !tbaa !21, !alias.scope !163, !noalias !160
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 48 ; 3 uses
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !17, !alias.scope !160, !noalias !163
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !10, !alias.scope !163, !noalias !160 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 48 ; 5 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i36

bb.k:                                             ; preds = %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i35
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !16, !alias.scope !163, !noalias !160 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i64 %i.co, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cj, ptr noundef nonnull align 8 dereferenceable(1) %i.cl, i64 %i.cq, i1 false), !alias.scope !165
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i36: ; preds = %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i.i.i.i35
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !10, !alias.scope !160, !noalias !163
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !21, !alias.scope !163, !noalias !160
  store i64 %i.cr, ptr %i.cj, align 8, !tbaa !21, !alias.scope !160, !noalias !163
  %.phi.trans.insert7.i.i.i.i37 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40
  %.pre8.i.i.i.i38 = load i64, ptr %.phi.trans.insert7.i.i.i.i37, align 8, !tbaa !16, !alias.scope !163, !noalias !160
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i39

_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i36, %bb.k
  %i.cs = phi i64 [ %.pre8.i.i.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i36 ], [ %i.co, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 40
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !16, !alias.scope !160, !noalias !163
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !10, !alias.scope !163, !noalias !160
  store i64 0, ptr %i.ct, align 8, !tbaa !16, !alias.scope !163, !noalias !160
  store i8 0, ptr %i.cl, align 8, !tbaa !21, !alias.scope !163, !noalias !160
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 64 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 80 ; 3 uses
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !17, !alias.scope !160, !noalias !163
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !10, !alias.scope !163, !noalias !160 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 80 ; 5 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i40

bb.l:                                             ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i39
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 72
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !16, !alias.scope !163, !noalias !160 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.dc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i64 %i.de, i1 false), !alias.scope !165
  br label %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i40: ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2EOS6_.exit.i.i.i.i.i.i39
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !10, !alias.scope !160, !noalias !163
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !21, !alias.scope !163, !noalias !160
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !21, !alias.scope !160, !noalias !163
  %.phi.trans.insert9.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 72
  %.pre10.i.i.i.i42 = load i64, ptr %.phi.trans.insert9.i.i.i.i41, align 8, !tbaa !16, !alias.scope !163, !noalias !160
  br label %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i43

_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i40, %bb.l
  %i.dg = phi i64 [ %i.dc, %bb.l ], [ %.pre10.i.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i40 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 72
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 72
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !16, !alias.scope !160, !noalias !163
  store ptr %i.cz, ptr %i.cw, align 8, !tbaa !10, !alias.scope !163, !noalias !160
  store i64 0, ptr %i.dh, align 8, !tbaa !16, !alias.scope !163, !noalias !160
  store i8 0, ptr %i.cz, align 8, !tbaa !21, !alias.scope !163, !noalias !160
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 96 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 96 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.dj, %i.c
  br i1 %.not.i.i.i44, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit46, label %.lr.ph.i.i.i29, !llvm.loop !159

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit46: ; preds = %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i43, %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i45 = phi ptr [ %i.bu, %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.dk, %_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i43 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i47 = icmp eq ptr %i.d, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit46
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !132
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.do) #21
  br label %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit46, %bb.m
  store ptr %8, ptr %0, align 8, !tbaa !128
  store ptr %.0.lcssa.i.i.i45, ptr %i.b, align 8, !tbaa !130
  %i.dp = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.m
  store ptr %i.dp, ptr %i.dl, align 8, !tbaa !132
  ret void

bb.n:                                             ; preds = %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EESaIS7_EE11_M_allocateEm.exit
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.p:                                             ; preds = %bb.e, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %i.z, %bb.e ]
  %i.ds = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.dt = call ptr @__cxa_begin_catch(ptr %i.ds) #23 ; 0 uses
  %10 = mul nuw nsw i64 %i.m, 96
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %10) #21
  invoke void @__cxa_rethrow() #20
          to label %bb.s unwind label %bb.o

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.dr

bb.r:                                             ; preds = %bb.o
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #25
  unreachable

bb.s:                                             ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRS5_JS8_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = load ptr, ptr %2, align 8, !tbaa !10     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.f, ptr %i.b, align 8, !tbaa !43
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %i.i = load i64, ptr %i.b, align 8, !tbaa !43
  store i64 %i.i, ptr %i.c, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !21
  store i8 %i.k, ptr %i.j, align 1, !tbaa !21
  br label %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit

_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = load ptr, ptr %0, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !17
  %i.r = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.t, ptr %i.a, align 8, !tbaa !43
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.v, ptr %i.p, align 8, !tbaa !10
  %i.w = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.w, ptr %i.q, align 8, !tbaa !21
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.r, align 1, !tbaa !21
  store i8 %i.y, ptr %i.x, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !16
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %.noexc.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !21
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #21
  br label %_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.ad
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRS6_SB_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !126    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #20
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRS6_SB_EEEvRS8_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRS6_SB_EEEvRS8_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRS6_SB_EEEvRS8_PT_DpOT0_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRS6_SB_EEEvRS8_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRS6_SB_EEEvRS8_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !166, !noalias !169
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !10, !alias.scope !169, !noalias !166 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16, !alias.scope !169, !noalias !166 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !171
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !10, !alias.scope !166, !noalias !169
  %i.z = load i64, ptr %i.t, align 8, !tbaa !21, !alias.scope !169, !noalias !166
  store i64 %i.z, ptr %i.r, align 8, !tbaa !21, !alias.scope !166, !noalias !169
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
end_hunk_0
