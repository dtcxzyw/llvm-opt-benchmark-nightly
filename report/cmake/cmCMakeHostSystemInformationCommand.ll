Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCMakeHostSystemInformationCommand?download=true
inline.NumInlined: 1891
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.k, align 1, !tbaa !21
  store i8 %i.q, ptr %i.h, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.k, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load i64, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !26
  %i.t = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !21
  %.pre.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.k, ptr %.0811.i.i.i.i.i, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  store i64 %i.x, ptr %i.v, align 8, !tbaa !26
  %i.y = load i64, ptr %i.l, align 8, !tbaa !21
  store i64 %i.y, ptr %i.i, align 8, !tbaa !21
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.z = load i64, ptr %i.i, align 8, !tbaa !21
  store ptr %i.k, ptr %.0811.i.i.i.i.i, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !21
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !21
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.h, ptr %.0910.i.i.i.i.i, align 8, !tbaa !20
  store i64 %i.z, ptr %i.l, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.l, ptr %.0910.i.i.i.i.i, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i, %bb.d
  %i.ae = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.h, %bb.h ], [ %i.l, %bb.i ], [ %i.k, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !26
  store i8 0, ptr %i.ae, align 1, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.ai = add nsw i64 %.013.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit, !llvm.loop !424

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %.pre15 = ptrtoint ptr %.pre to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit: ; preds = %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit_crit_edge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit, %bb.c
  %.pre-phi16 = phi i64 [ %.pre14, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit_crit_edge ], [ %.pre15, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit ], [ %i.c, %bb.c ]
  %.pre-phi = phi i64 [ %.pre14, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit_crit_edge ], [ %i.d, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit ], [ %i.d, %bb.c ]
  %i.ak = phi ptr [ %2, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit_crit_edge ], [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit ], [ %i.b, %bb.c ] ; 2 uses
  %i.al = sub i64 %.pre-phi16, %.pre-phi
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al ; 3 uses
  %.not.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.am, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit ] ; 3 uses
  %i.an = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %.lr.ph.i.i.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !21
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.ak
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  store ptr %i.am, ptr %i.a, align 8, !tbaa !24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusE3$_0EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISE_SaISE_EEEEEEbT_"(ptr nonnull %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN5cmsys11SystemTools15GetFilenameNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp ult i64 %i.b, 11
  %.pre3.i = load ptr, ptr %1, align 8, !tbaa !20 ; 2 uses
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %.pre3.i, align 1, !tbaa !21
  %i.e = invoke i32 @cmsysString_isdigit(i8 noundef signext %i.d)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.e, 0
  %.pre2.i = load ptr, ptr %1, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.pre2.i, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !21
  %i.h = invoke i32 @cmsysString_isdigit(i8 noundef signext %i.g)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not7.i = icmp eq i32 %i.h, 0
  %.pre1.i = load ptr, ptr %1, align 8, !tbaa !20 ; 2 uses
  br i1 %.not7.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = invoke i32 @cmsysString_isdigit(i8 noundef signext %i.j)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not8.i = icmp eq i32 %i.k, 0
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !20  ; 3 uses
  br i1 %.not8.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.pre.i, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21
  %i.n = icmp ne i8 %i.m, 45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.a
  %i.o = phi ptr [ %.pre.i, %bb.g ], [ %.pre1.i, %bb.e ], [ %.pre2.i, %bb.c ], [ %.pre3.i, %bb.a ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.p = phi i1 [ true, %bb.g ], [ true, %bb.e ], [ true, %bb.c ], [ true, %bb.a ], [ %i.n, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !21
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.t) #26
  br label %"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit"

bb.j:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.j
  %i.y = load i64, ptr %i.w, align 8, !tbaa !21
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.u

"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit": ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i1 %i.p
}

declare void @_ZN5cmsys11SystemTools15GetFilenameNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare i32 @cmsysString_isdigit(i8 noundef signext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph83

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEET_SK_SK_T0_.exit"
  %i.h = icmp eq i64 %i.cx, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph83, !llvm.loop !425

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa79 = phi i64 [ %i.d, %.lr.ph ], [ %i.dl, %bb.b ] ; 2 uses
  %.lcssa77 = phi i64 [ %i.c, %.lr.ph ], [ %i.dk, %bb.b ]
  %storemerge34.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.i = add nsw i64 %.lcssa79, -2
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.o = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  store ptr %i.q, ptr %i.o, align 8, !tbaa !20
  store i64 0, ptr %i.s, align 8, !tbaa !26
  store i8 0, ptr %i.q, align 8, !tbaa !21
  store ptr %i.m, ptr %6, align 8, !tbaa !27
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  store i64 %i.w, ptr %i.k, align 8, !tbaa !21
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !26 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !20
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !26
  store i8 0, ptr %i.q, align 8, !tbaa !21
  store ptr %i.m, ptr %6, align 8, !tbaa !27
  %i.x = icmp eq ptr %i.p, %i.k
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.y = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.p, ptr %6, align 8, !tbaa !20
  store i64 %i.w, ptr %i.m, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.aa = phi i64 [ %i.y, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.aa, ptr %i.n, align 8, !tbaa !26
  store ptr %i.k, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %i.l, align 8, !tbaa !26
  store i8 0, ptr %i.k, align 8, !tbaa !21
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa79, ptr noundef align 8 %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ab = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !21
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.af = add nsw i64 %.010.i.i.i, -1
  %i.ag = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.k
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !21
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_RT0_.exit.i.i", label %bb.c, !llvm.loop !426

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.m, align 8, !tbaa !21
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i
  %i.ap = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.k
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !21
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_RT0_.exit.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %7 = icmp sgt i64 %.lcssa77, 32
  br i1 %7, label %.lr.ph.i9.i.preheader, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_T0_.exit"

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_RT0_.exit.i.i"
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.az, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_RT0_.exit" ], [ %storemerge34.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.at, ptr %3, align 8, !tbaa !27
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i9.i
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !26 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.ba, ptr %3, align 8, !tbaa !20
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !21
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !21
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.bi = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.be, %bb.g ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.bi, ptr %i.au, align 8, !tbaa !26
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !20
  store i64 0, ptr %i.bj, align 8, !tbaa !26
  store i8 0, ptr %i.bb, align 8, !tbaa !21
  %i.bk = load ptr, ptr %0, align 8, !tbaa !20    ; 5 uses
  %i.bl = icmp eq ptr %i.bk, %i.av
  br i1 %i.bl, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !26 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %.not21.i.i = icmp eq ptr %0, %i.az
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.i, !prof !77

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bm, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !21
  store i8 %i.bo, ptr %i.bb, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bp
  store i8 0, ptr %i.bq, align 1, !tbaa !21
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.bk, ptr %i.az, align 8, !tbaa !20
  %i.br = load i64, ptr %i.aw, align 8, !tbaa !26
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !26
  %i.bs = load i64, ptr %i.av, align 8, !tbaa !21
  store i64 %i.bs, ptr %i.bb, align 8, !tbaa !21
  store ptr %i.av, ptr %0, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h
  %i.bt = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bk, %bb.h ], [ %i.av, %bb.l ]
  store i64 0, ptr %i.aw, align 8, !tbaa !26
  store i8 0, ptr %i.bt, align 1, !tbaa !21
  %i.bu = ptrtoint ptr %i.az to i64
  %i.bv = sub i64 %i.bu, %i.a                     ; 2 uses
  %i.bw = ashr exact i64 %i.bv, 5
  store ptr %i.ax, ptr %4, align 8, !tbaa !27
  %i.bx = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.at
  br i1 %i.by, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bz = load i64, ptr %i.au, align 8, !tbaa !26 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.bx, ptr %4, align 8, !tbaa !20
  %i.cc = load i64, ptr %i.at, align 8, !tbaa !21
  store i64 %i.cc, ptr %i.ax, align 8, !tbaa !21
  %.pre5.i = load i64, ptr %i.au, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.m
  %i.cd = phi i64 [ %i.bz, %bb.m ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.cd, ptr %i.ay, align 8, !tbaa !26
  store ptr %i.at, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %i.au, align 8, !tbaa !26
  store i8 0, ptr %i.at, align 8, !tbaa !21
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bw, ptr noundef align 8 %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.ce = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ax
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.cg = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.at
  br i1 %i.cj, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ck = load i64, ptr %i.at, align 8, !tbaa !21
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #26
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_RT0_.exit"

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ax
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.o
  %i.cp = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  %i.cr = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.at
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.ct = load i64, ptr %i.at, align 8, !tbaa !21
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_RT0_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cv = icmp sgt i64 %i.bv, 32
  br i1 %i.cv, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_T0_.exit", !llvm.loop !427

.lr.ph83:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3482 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03581 = phi i64 [ %i.cx, %bb.b ], [ %2, %.lr.ph ]
  %i.cw = phi i64 [ %i.dl, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cx = add nsw i64 %.03581, -1                 ; 3 uses
  %i.cy = lshr i64 %i.cw, 1
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %storemerge3482, i64 -32 ; 4 uses
  %i.db = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.cz)
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph83
  %i.dc = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  br i1 %i.dc, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_SK_T0_.exit.i", label %.sink.split.i.i

bb.q:                                             ; preds = %.lr.ph83
  %i.dd = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  br i1 %i.dd, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_SK_T0_.exit.i", label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p
  %.sink29.i.i = phi ptr [ %i.f, %bb.p ], [ %i.cz, %bb.q ] ; 2 uses
  %i.de = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"(ptr noundef nonnull align 8 dereferenceable(32) %.sink29.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  %.26.i.i = select i1 %i.de, ptr %i.da, ptr %.sink29.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_SK_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_SK_T0_.exit.i": ; preds = %.sink.split.i.i, %bb.q, %bb.p
  %.sink.i.i = phi ptr [ %i.cz, %bb.p ], [ %i.f, %bb.q ], [ %.26.i.i, %.sink.split.i.i ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_SK_T0_.exit.i"
  %.sroa.010.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_SK_T0_.exit.i" ], [ %i.dg, %bb.u ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3482, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_SK_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.u ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.r ], [ %i.dg, %bb.s ] ; 8 uses
  %i.df = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 32 ; 2 uses
  br i1 %i.df, label %bb.s, label %.preheader.i.i, !llvm.loop !428

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.s ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.dh = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i)
  br i1 %i.dh, label %.preheader.i.i, label %bb.t, !llvm.loop !429

bb.t:                                             ; preds = %.preheader.i.i
  %i.di = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.di, label %bb.u, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEET_SK_SK_T0_.exit"

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i) #27
  br label %bb.r, !llvm.loop !430

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEET_SK_SK_T0_.exit": ; preds = %bb.t
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge3482, i64 noundef %i.cx)
  %i.dj = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dk = sub i64 %i.dj, %i.a                     ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 5                 ; 3 uses
  %i.dm = icmp sgt i64 %i.dl, 16
  br i1 %i.dm, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_T0_.exit", !llvm.loop !425

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEET_SK_SK_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_SK_RT0_.exit", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_SK_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_121GetOSReleaseVariablesER17cmExecutionStatusE3$_1EEEvT_T0_SL_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.050 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.050, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g
  %i.i = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatusENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 5 uses
  %i.j = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.k = getelementptr inbounds [32 x i8], ptr %0, i64 %.050 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !20   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.q, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.q, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %.not21.i = icmp eq i64 %spec.select, %.050
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !77

bb.c:                                             ; preds = %bb.b
  switch i64 %i.s, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.o, align 1, !tbaa !21
  store i8 %i.u, ptr %i.l, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.v = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !26
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !21
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !21
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !21
  store ptr %i.o, ptr %i.k, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !21
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !20
  store i64 %i.ac, ptr %i.p, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %i.j, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ag = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.l, %bb.f ], [ %i.p, %bb.g ], [ %i.o, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !26
  store i8 0, ptr %i.ag, align 1, !tbaa !21
  %i.ai = icmp slt i64 %spec.select, %i.b
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !431

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %i.aj = and i64 %2, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.al = add nsw i64 %2, -2
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp eq i64 %.0.lcssa, %i.am
  br i1 %i.an, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ao = shl nsw i64 %.0.lcssa, 1
  %i.ap = or disjoint i64 %i.ao, 1                ; 3 uses
  %i.aq = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ap ; 9 uses
  %i.ar = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !20 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  %i.ax = icmp eq ptr %i.av, %i.aw                ; 2 uses
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.i
  br i1 %i.ax, label %bb.j, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.i
  br i1 %i.ax, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !26 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %.not21.i28 = icmp eq i64 %i.ap, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.k, !prof !77

bb.k:                                             ; preds = %bb.j
  switch i64 %i.az, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bb = load i8, ptr %i.av, align 1, !tbaa !21
  store i8 %i.bb, ptr %i.as, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.av, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !26 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !26
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !21
  %.pre.i30 = load ptr, ptr %i.aq, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

.thread.i32:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bi = load <2 x i64>, ptr %i.bh, align 8, !tbaa !21
  store <2 x i64> %i.bi, ptr %i.bg, align 8, !tbaa !21
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25
  %i.bj = load i64, ptr %i.at, align 8, !tbaa !21
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !tbaa !21
  store <2 x i64> %i.bm, ptr %i.bl, align 8, !tbaa !21
  %.not.i27 = icmp eq ptr %i.as, null
  br i1 %.not.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !20
  store i64 %i.bj, ptr %i.aw, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26, %.thread.i32
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29, %bb.n, %bb.o
  %i.bn = phi ptr [ %.pre.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29 ], [ %i.as, %bb.n ], [ %i.aw, %bb.o ], [ %i.av, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !26
end_hunk_0
