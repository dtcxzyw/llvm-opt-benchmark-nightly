inline.NumInlined: 37317
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21InvalidInputExceptionC2IJRKlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.227", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !655
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !655
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !636, !noalias !655 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !639, !noalias !655 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #34
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !640

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !636, !noalias !655
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #34
  br label %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !655
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !655
  invoke void @_ZN6duckdb21InvalidInputExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_123InternalApproxTopKState10InitializeEm(ptr noundef nonnull align 8 dereferenceable(136) initializes((112, 128)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %1, ptr %i.a, align 8, !tbaa !96
  %i.b = mul i64 %1, 3                            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !142
  %i.d = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.b, i64 56) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = select i1 %i.e, i64 -1, i64 %i.f
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #31, !noalias !658 ; 3 uses
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %_ZN6duckdb36make_unsafe_uniq_array_uninitializedINS_12_GLOBAL__N_115ApproxTopKValueEEENS_10unique_ptrIA_T_St14default_deleteIS5_ELb0EEEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 20, i1 false), !noalias !658
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !658
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %_ZN6duckdb36make_unsafe_uniq_array_uninitializedINS_12_GLOBAL__N_115ApproxTopKValueEEENS_10unique_ptrIA_T_St14default_deleteIS5_ELb0EEEm.exit, label %bb.c

_ZN6duckdb36make_unsafe_uniq_array_uninitializedINS_12_GLOBAL__N_115ApproxTopKValueEEENS_10unique_ptrIA_T_St14default_deleteIS5_ELb0EEEm.exit: ; preds = %bb.c, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !181    ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !181
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_N6duckdb12_GLOBAL__N_115ApproxTopKValueESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N6duckdb12_GLOBAL__N_115ApproxTopKValueEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_N6duckdb12_GLOBAL__N_115ApproxTopKValueEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb36make_unsafe_uniq_array_uninitializedINS_12_GLOBAL__N_115ApproxTopKValueEEENS_10unique_ptrIA_T_St14default_deleteIS5_ELb0EEEm.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #34
  %.pre = load i64, ptr %i.c, align 8, !tbaa !142
  br label %_ZNSt10unique_ptrIA_N6duckdb12_GLOBAL__N_115ApproxTopKValueESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_N6duckdb12_GLOBAL__N_115ApproxTopKValueESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N6duckdb12_GLOBAL__N_115ApproxTopKValueEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i.i, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedINS_12_GLOBAL__N_115ApproxTopKValueEEENS_10unique_ptrIA_T_St14default_deleteIS5_ELb0EEEm.exit
  %i.p = phi i64 [ %.pre, %_ZNKSt14default_deleteIA_N6duckdb12_GLOBAL__N_115ApproxTopKValueEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i.i ], [ %i.b, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedINS_12_GLOBAL__N_115ApproxTopKValueEEENS_10unique_ptrIA_T_St14default_deleteIS5_ELb0EEEm.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp ugt i64 %i.p, 1152921504606846975
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_N6duckdb12_GLOBAL__N_115ApproxTopKValueESt14default_deleteIS3_EED2Ev.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #32
  unreachable

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_N6duckdb12_GLOBAL__N_115ApproxTopKValueESt14default_deleteIS3_EED2Ev.exit
  %.val9.i = load ptr, ptr %i.q, align 8, !tbaa !116 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val10.i = load ptr, ptr %i.s, align 8, !tbaa !661
  %i.t = ptrtoint ptr %.val10.i to i64
  %i.u = ptrtoint ptr %.val9.i to i64             ; 4 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.w, %i.p
  br i1 %i.x, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val8.i = load ptr, ptr %i.y, align 8, !tbaa !117 ; 3 uses
  %i.z = ptrtoint ptr %.val8.i to i64             ; 2 uses
  %i.aa = sub i64 %i.z, %i.u
  %i.ab = shl nuw nsw i64 %i.p, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #31 ; 7 uses
  %.not1.i.i.i.i.i = icmp eq ptr %.val9.i, %.val8.i
  br i1 %.not1.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_M_allocateEm.exit.i
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %2 = add i64 %i.z, -8
  %i.ae = sub i64 %2, %i.u                        ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 72
  %i.ah = sub i64 %i.u, %i.ad
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ac, i64 %i.ai
  %i.ak = getelementptr i8, ptr %.val9.i, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.al ; 2 uses
  %next.gep13 = getelementptr i8, ptr %.val9.i, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 8
  %wide.load14 = load <2 x i64>, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !662
  store <2 x i64> %wide.load14, ptr %i.an, align 8, !alias.scope !662
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !665

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.preheader16:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.092.i.i.i.i.i.ph = phi ptr [ %.val9.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader16 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader16 ] ; 2 uses
  %.09.val.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 8
  store i64 %.09.val.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 8, !alias.scope !662
  %i.ap = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i4 = icmp eq ptr %i.ap, %.val8.i
  br i1 %.not.i.i.i.i.i4, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !666

_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_M_allocateEm.exit.i
  %.not.i11.i = icmp eq ptr %.val9.i, null
  br i1 %.not.i11.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %.val9.i) #34
  %.pre6.pre = load i64, ptr %i.c, align 8, !tbaa !142
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %.pre6 = phi i64 [ %.pre6.pre, %bb.f ], [ %i.p, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ]
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !116
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !117
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.p
  store ptr %i.as, ptr %i.s, align 8, !tbaa !661
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE7reserveEm.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE7reserveEm.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.at = phi i64 [ %i.p, %bb.e ], [ %.pre6, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE13_M_deallocateEPS4_m.exit.i ]
  %i.au = shl i64 %i.at, 3
  %i.av = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.au) ; 5 uses
  %i.aw = add i64 %i.av, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !667
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !129 ; 2 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !130 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3                 ; 3 uses
  %i.bg = icmp ugt i64 %i.av, %i.bf
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE7reserveEm.exit
  %i.bh = sub nuw i64 %i.av, %i.bf
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef %i.bh)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE7reserveEm.exit
  %i.bi = icmp ult i64 %i.av, %i.bf
  br i1 %i.bi, label %bb.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.av ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bj
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.i
  store ptr %i.bj, ptr %i.az, align 8, !tbaa !129
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

declare noundef i64 @_ZN6duckdb4HashINS_8string_tEEEmT_(i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @_ZNSt13unordered_mapIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt17reference_wrapperINS1_15ApproxTopKValueEENS1_14ApproxTopKHashENS1_18ApproxTopKEqualityESaISt4pairIKS2_S5_EEE4findERS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !118
  %i.b = icmp eq i64 %.val.i, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.019.027.i = load ptr, ptr %i.c, align 8, !tbaa !119 ; 3 uses
  %.not28.i = icmp eq ptr %.sroa.019.027.i, null
  br i1 %.not28.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.val9.i = load i64, ptr %1, align 8
  %.val9.fr.i = freeze i64 %.val9.i               ; 4 uses
  %i.d = trunc i64 %.val9.fr.i to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10.i = load i64, ptr %i.e, align 8         ; 3 uses
  %i.f = inttoptr i64 %.val10.i to ptr
  %i.g = icmp ult i32 %i.d, 13
  %i.h = and i64 %.val9.fr.i, 4294967295
  br i1 %i.g, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i
  %.sroa.019.029.us.i = phi ptr [ %.sroa.019.0.us.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i ], [ %.sroa.019.027.i, %.lr.ph.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.019.029.us.i, i64 8
  %.val11.us.i = load i64, ptr %i.i, align 1
  %.not.i.i.i.i.i.us.i = icmp eq i64 %.val9.fr.i, %.val11.us.i
  br i1 %.not.i.i.i.i.i.us.i, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.j = getelementptr i8, ptr %.sroa.019.029.us.i, i64 16
  %.val12.us.i = load i64, ptr %i.j, align 1
  %i.k = icmp eq i64 %.val10.i, %.val12.us.i
  br i1 %i.k, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i: ; preds = %bb.c, %.lr.ph.split.us.i
  %.sroa.019.0.us.i = load ptr, ptr %.sroa.019.029.us.i, align 8, !tbaa !119 ; 2 uses
  %.not.us.i = icmp eq ptr %.sroa.019.0.us.i, null
  br i1 %.not.us.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %.lr.ph.split.us.i, !llvm.loop !141

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i
  %.sroa.019.029.i = phi ptr [ %.sroa.019.0.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ], [ %.sroa.019.027.i, %.lr.ph.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.019.029.i, i64 8
  %.val11.i = load i64, ptr %i.l, align 1
  %.not.i.i.i.i.i.i = icmp eq i64 %.val9.fr.i, %.val11.i
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.m = getelementptr i8, ptr %.sroa.019.029.i, i64 16
  %.val12.i = load i64, ptr %i.m, align 1         ; 2 uses
  %i.n = icmp eq i64 %.val10.i, %.val12.i
  br i1 %i.n, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = inttoptr i64 %.val12.i to ptr
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.o, i64 %i.h)
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i: ; preds = %bb.e, %.lr.ph.split.i
  %.sroa.019.0.i = load ptr, ptr %.sroa.019.029.i, align 8, !tbaa !119 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.019.0.i, null
  br i1 %.not.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %.lr.ph.split.i, !llvm.loop !141

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13.i = load i64, ptr %i.q, align 8, !tbaa !121 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load i64, ptr %i.r, align 8, !tbaa !85 ; 3 uses
  %i.s = urem i64 %.val13.i, %.val14.i            ; 3 uses
  %.val15.i = load ptr, ptr %0, align 8, !tbaa !77
  %.val17.i = load i64, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val18.i = load i64, ptr %i.t, align 8         ; 3 uses
  %.0.val2.fr.i.i.i = freeze i64 %.val17.i        ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119  ; 3 uses
  %i.x = and i64 %.0.val2.fr.i.i.i, 4294967295
  %i.y = trunc i64 %.0.val2.fr.i.i.i to i32
  %i.z = inttoptr i64 %.val18.i to ptr
  %i.aa = icmp ult i32 %i.y, 13
  %.phi.trans.insert12.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.val7.i.us.pre.i.i.i = load i64, ptr %.phi.trans.insert12.i.i.i, align 8, !tbaa !123 ; 2 uses
  br i1 %i.aa, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.g, %bb.k
end_hunk_0
begin_hunk_1_@_ZN6duckdb19ColumnDataScanStateD2Ev:bb.a
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.q, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !50
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !2204
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !2204
  br label %_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.ad, %bb.h ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.i, label %_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EED2Ev.exit, !prof !54

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30
  br label %_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EED2Ev.exit: ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIfEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2205 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2206 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !2207
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIfED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !2209
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIfED2Ev.exit

_ZN6duckdb19WindowQuantileStateIfED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIfED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIfNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1984
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIfEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !2210 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIfEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIfEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !2210

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !2210
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIfEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1984 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1984
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIfEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIfEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIfEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIfEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIfEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIfEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIfEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIfEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIfEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIfEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !2213, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2215, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2216, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2218

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !2219

_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIfEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIfEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIfEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIfEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIfEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !2213, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIfEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !2215, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !2040
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIfE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIfE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !2065
  br label %_ZN6duckdb14QuantileCursorIfE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !2063, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_1
begin_hunk_2_@_ZN6duckdb19WindowQuantileStateIfE10UpdateSkipERNS_14QuantileCursorIfEERKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEERNS_16QuantileIncludedIfEE:bb.a
_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE5resetEPS8_.exit.i18: ; preds = %bb.ah
  %i.fx = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31, !noalias !2247 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS3_EEEE, i64 16), ptr %i.fx, align 8, !tbaa !51, !noalias !2247
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  store ptr null, ptr %i.fz, align 8, !tbaa !2242, !noalias !2247
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, i8 0, i64 40, i1 false), !noalias !2247
  store i64 -3819351491825719833, ptr %i.ga, align 8, !tbaa !2243, !noalias !2247
  store ptr %i.fx, ptr %i.k, align 8, !tbaa !2206
  br label %_ZN6duckdb19WindowQuantileStateIfE11GetSkipListEb.exit21

_ZN6duckdb19WindowQuantileStateIfE11GetSkipListEb.exit21: ; preds = %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE5resetEPS8_.exit.i18, %bb.ah
  %i.gb = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr %i.gb, ptr %15, align 8, !tbaa !2206
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %1, ptr %i.gc, align 8, !tbaa !1984
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %3, ptr %i.gd, align 8, !tbaa !2250
  call void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateIfE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEESA_RT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %_ZN6duckdb19WindowQuantileStateIfE11GetSkipListEb.exit, %_ZN6duckdb19WindowQuantileStateIfE11GetSkipListEb.exit21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2217   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2217 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2252 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !2208   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !59
  store i64 %i.i, ptr %i.b, align 8, !tbaa !59
  %.not.i.i.not = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.not, label %bb.b, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_112ReuseIndexesEPmRKNS_6vectorINS_11FrameBoundsELb1ESaIS3_EEES7_(ptr nofree noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %.val.val = load ptr, ptr %2, align 8, !tbaa !2217 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val.val31 = load ptr, ptr %i.d, align 8, !tbaa !2217 ; 3 uses
  %.not4.i = icmp eq ptr %.val.val, %.val.val31
  br i1 %.not4.i, label %._crit_edge.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.val.val3192 = ptrtoint ptr %.val.val31 to i64
  %.val.val93 = ptrtoint ptr %.val.val to i64
  %5 = add i64 %.val.val3192, -16
  %6 = sub i64 %5, %.val.val93                    ; 2 uses
  %i.e = lshr i64 %6, 4
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %6, 48
  br i1 %min.iters.check, label %.lr.ph.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.f, 2305843009213693948      ; 3 uses
  %i.g = shl i64 %n.vec, 4
  %i.h = getelementptr i8, ptr %.val.val, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi94 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.i = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.val.val, i64 %i.i
  %i.j = getelementptr i8, ptr %.val.val, i64 %i.i
  %next.gep95 = getelementptr i8, ptr %i.j, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec96.a = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec97 = load <4 x i64>, ptr %next.gep95, align 8, !tbaa !59 ; 2 uses
  %strided.vec98 = shufflevector <4 x i64> %wide.vec97, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec99 = shufflevector <4 x i64> %wide.vec97, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.k = add <2 x i64> %strided.vec96.a, %vec.phi
  %i.l = add <2 x i64> %strided.vec99, %vec.phi94
  %i.m = sub <2 x i64> %i.k, %strided.vec         ; 2 uses
  %i.n = sub <2 x i64> %i.l, %strided.vec98       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !2253

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit, label %.lr.ph.i.preheader115

.lr.ph.i.preheader115:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.06.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  %.sroa.01.05.i.ph = phi ptr [ %.val.val, %.lr.ph.i.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader115, %.lr.ph.i
  %.06.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader115 ]
  %.sroa.01.05.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.sroa.01.05.i.ph, %.lr.ph.i.preheader115 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1993
  %i.s = load i64, ptr %.sroa.01.05.i, align 8, !tbaa !1995
  %i.t = add i64 %i.r, %.06.i
  %i.u = sub i64 %i.t, %i.s                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %.val.val31
  br i1 %.not.i, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit, label %.lr.ph.i, !llvm.loop !2254

_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit:   ; preds = %.lr.ph.i, %middle.block
  %.lcssa91 = phi i64 [ %i.p, %middle.block ], [ %i.u, %.lr.ph.i ] ; 5 uses
  %.not61 = icmp eq i64 %.lcssa91, 0
  br i1 %.not61, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2252 ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !2208   ; 3 uses
  %.not6.i = icmp eq ptr %i.x, %i.y
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 4                 ; 3 uses
  br i1 %.not6.i, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.peel, label %.lr.ph.split

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.peel: ; preds = %.lr.ph
  %exitcond68.peel.not = icmp eq i64 %.lcssa91, 1
  br i1 %exitcond68.peel.not, label %._crit_edge.thread, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.peel
  %i.ad = add i64 %.lcssa91, -1                   ; 2 uses
  %i.ae = add i64 %.lcssa91, -2
  %xtraiter = and i64 %i.ad, 7                    ; 3 uses
  %i.af = icmp ult i64 %i.ae, 7
  br i1 %i.af, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil.preheader, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader
  %unroll_iter = and i64 %i.ad, -8
  br label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new
  %.02948.us = phi i64 [ 1, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new ], [ %i.ag, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new ], [ %niter.next.7, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us ]
  %i.ag = add nuw i64 %.02948.us, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.loopexit.unr-lcssa, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us, !llvm.loop !2255

._crit_edge:                                      ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread
  %.not = icmp eq i64 %i.bb, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.j

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread
  %.02849 = phi i64 [ %i.bb, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread ], [ 0, %.lr.ph ] ; 4 uses
  %.02948 = phi i64 [ %i.bc, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02948
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !59 ; 3 uses
  %.not30 = icmp eq i64 %.02849, %.02948
  br i1 %.not30, label %.lr.ph.i33.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02849
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !59
  br label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %bb.b, %.lr.ph.split
  br label %.lr.ph.i33

bb.c:                                             ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit
  %i.ak = add nuw i64 %.0123.i, 1                 ; 2 uses
  %exitcond66.not = icmp eq i64 %i.ak, %i.ac
  br i1 %exitcond66.not, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread, label %.lr.ph.i33, !llvm.loop !2257

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader, %bb.c
  %.0123.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.lr.ph.i33.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.0123.i, ptr %i.b, align 8, !tbaa !59
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !59
  %exitcond.not = icmp eq i64 %.0123.i, %i.ac
  br i1 %exitcond.not, label %.noexc.i, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit, !prof !54

.noexc.i:                                         ; preds = %.lr.ph.i33
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.am, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.an, ptr %3, align 8, !tbaa !22
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.an, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.d ], [ true, %.noexc ] ; 2 uses
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.am
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.at) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.al) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.f ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit: ; preds = %.lr.ph.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.0123.i ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1995
  %.not.i34 = icmp ule i64 %i.aw, %i.ai
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp ult i64 %i.ai, %i.ay
end_hunk_2
begin_hunk_3_@_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_T2_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.bi, label %bb.e, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.bj = load double, ptr %i.bd, align 8, !tbaa !776
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.us
  store double %i.bj, ptr %i.bk, align 8, !tbaa !776
  %i.bl = icmp samesign ugt i64 %.01823.i.us, %1
  br i1 %i.bl, label %.lr.ph.i.us, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !2561

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.01317.i = phi i64 [ %.01823.i, %bb.f ], [ %.128, %.lr.ph.i.preheader ] ; 3 uses
  %.018.in.i = add nsw i64 %.01317.i, -1
  %.01823.i = lshr i64 %.018.in.i, 1              ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01823.i ; 2 uses
  %.val.i = load double, ptr %i.bm, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.i = load double, ptr %.val4.i.i.i, align 8, !tbaa !776
  %i.bn = fsub double %.val.i, %.val4.val.i.i.i
  %i.bo = call noundef double @llvm.fabs.f64(double %i.bn)
  store double %i.bo, ptr %i.a, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.i = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.i = load double, ptr %.val.i.i.i, align 8, !tbaa !776
  %i.bp = fsub double %3, %.val.val.i.i.i
  %i.bq = call noundef double @llvm.fabs.f64(double %i.bp)
  store double %i.bq, ptr %i.b, align 8, !tbaa !776
  %i.br = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.br, label %bb.f, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bs = load double, ptr %i.bm, align 8, !tbaa !776
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i
  store double %i.bs, ptr %i.bt, align 8, !tbaa !776
  %i.bu = icmp samesign ugt i64 %.01823.i, %1
  br i1 %i.bu, label %.lr.ph.i, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !2561

_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit: ; preds = %bb.f, %.lr.ph.i, %bb.e, %.lr.ph.i.us, %bb.d
  %.013.lcssa.i = phi i64 [ %.128, %bb.d ], [ %.01823.i.us, %bb.e ], [ %.01317.i.us, %.lr.ph.i.us ], [ %.01317.i, %.lr.ph.i ], [ %.01823.i, %bb.f ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i
  store double %3, ptr %i.bv, align 8, !tbaa !776
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIdEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2562 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2563 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !2564
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIdED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !2565
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIdED2Ev.exit

_ZN6duckdb19WindowQuantileStateIdED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIdED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIdNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2403
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIdEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !2566 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIdEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIdEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !2566

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !2566
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIdEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2403 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !2403
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIdEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIdEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIdEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIdEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIdEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIdEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIdEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIdEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIdEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIdEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !2569, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2571, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2572, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2573

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !2574

_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIdEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIdEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIdEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIdEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIdEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !2569, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIdEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !2571, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !2440
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIdE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIdE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !2444
  br label %_ZN6duckdb14QuantileCursorIdE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !2442, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_3
begin_hunk_4_@_ZN6duckdb9Exception25ConstructMessageRecursiveIsJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !11
  store ptr %i.k, ptr %i.h, align 8, !tbaa !22
  store i64 0, ptr %i.s, align 8, !tbaa !11
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !639
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !639
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIsEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2831 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2832 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !2833
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIsED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !2834
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIsED2Ev.exit

_ZN6duckdb19WindowQuantileStateIsED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIsED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIsNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2667
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIsEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !2835 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIsEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIsEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !2835

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !2835
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIsEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2667 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !2667
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIsEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIsEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIsEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIsEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIsEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIsEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIsEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIsEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIsEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIsEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !2838, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2840, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2841, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2843

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !2844

_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIsEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIsEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIsEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIsEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIsEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !2838, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIsEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !2840, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !2845
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIsE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIsE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !2846
  br label %_ZN6duckdb14QuantileCursorIsE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !2847, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_4
begin_hunk_5_@_ZN6duckdb9Exception25ConstructMessageRecursiveIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !11
  store ptr %i.k, ptr %i.h, align 8, !tbaa !22
  store i64 0, ptr %i.s, align 8, !tbaa !11
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !639
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !639
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIiEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3104 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3105 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !3106
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIiED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !3107
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIiED2Ev.exit

_ZN6duckdb19WindowQuantileStateIiED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIiED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIiNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2940
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIiEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !3108 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIiEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIiEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !3108

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !3108
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIiEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2940 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !2940
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIiEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIiEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIiEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIiEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIiEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIiEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIiEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIiEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIiEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIiEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3111, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3113, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !3114, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3116

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !3117

_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIiEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIiEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIiEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIiEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIiEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !3111, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIiEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !3113, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3118
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIiE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIiE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3119
  br label %_ZN6duckdb14QuantileCursorIiE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !3120, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_5
begin_hunk_6_@_ZN6duckdb19OutOfRangeExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !3370
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !3370
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIlEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3373 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3374 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !3375
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIlED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !3376
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIlED2Ev.exit

_ZN6duckdb19WindowQuantileStateIlED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIlED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIlNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3213
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIlEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !3377 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIlEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIlEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !3377

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !3377
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIlEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !3213 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !3213
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIlEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIlEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIlEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIlEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIlEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIlEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIlEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIlEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIlEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIlEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3380, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3382, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !3383, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3385

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !3386

_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIlEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIlEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIlEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIlEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIlEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !3380, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIlEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !3382, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3387
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIlE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIlE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3388
  br label %_ZN6duckdb14QuantileCursorIlE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !3389, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_6
begin_hunk_7_@_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  store i64 %i.p, ptr %i.r, align 8, !tbaa !11
  store ptr %i.i, ptr %i.f, align 8, !tbaa !22
  store i64 0, ptr %i.q, align 8, !tbaa !11
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !639
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !639
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !22 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_9hugeint_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3643 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3644 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !3645
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !3646
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_9hugeint_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3482
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_9hugeint_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !3647 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_9hugeint_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_9hugeint_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !3647

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !3647
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_9hugeint_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !3482 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !3482
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_9hugeint_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_9hugeint_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_9hugeint_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_9hugeint_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_9hugeint_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_9hugeint_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_9hugeint_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_9hugeint_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_9hugeint_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_9hugeint_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3650, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3652, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !3653, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3655

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !3656

_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !3650, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !3652, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3657
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_9hugeint_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_9hugeint_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3658
  br label %_ZN6duckdb14QuantileCursorINS_9hugeint_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !3659, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_7
begin_hunk_8_@_ZN6duckdbL17CastExceptionTextINS_10interval_tES1_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  call void @_ZdlPv(ptr noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ] ; 2 uses
  %i.dy = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.b
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  call void @_ZdlPv(ptr noundef %i.dy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.r
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.r ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ]
  %i.ea = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  call void @_ZdlPv(ptr noundef %i.ea) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb15ConvertToString9OperationINS_10interval_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, i64) local_unnamed_addr #2

declare noundef i64 @_ZNK6duckdb11timestamp_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { i64, i64 } @_ZN6duckdb8Interval9FromMicroEl(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_6date_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3933 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3934 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !3935
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_6date_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !3936
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_6date_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_6date_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_6date_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_6date_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3754
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_6date_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !3937 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_6date_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_6date_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !3937

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !3937
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_6date_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !3754 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !3754
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_6date_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_6date_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_6date_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_6date_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_6date_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_6date_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_6date_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_6date_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_6date_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_6date_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3940, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3942, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !3943, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3944

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !3945

_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !3940, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !3942, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3793
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_6date_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_6date_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3798
  br label %_ZN6duckdb14QuantileCursorINS_6date_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !3796, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_8
begin_hunk_9_@_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_:bb.a
  %spec.select.i.i.i.i = select i1 %i.af, i1 %i.ag, i1 false
  br label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit

bb.f:                                             ; preds = %bb.a
  %i.ah = sdiv i64 %i.i, 86400000000              ; 2 uses
  %.neg.i.i.i.i.i4 = mul nsw i64 %i.ah, -86400000000
  %i.ai = add i64 %.neg.i.i.i.i.i4, %i.i
  %i.aj = ashr i64 %i.h, 32
  %i.ak = add nsw i64 %i.ah, %i.aj                ; 2 uses
  %i.al = sdiv i64 %i.ak, 30                      ; 2 uses
  %.neg16.i.i.i.i.i5 = mul nsw i64 %i.al, -30
  %i.am = add nsw i64 %.neg16.i.i.i.i.i5, %i.ak   ; 2 uses
  %sext = shl i64 %i.h, 32
  %i.an = ashr exact i64 %sext, 32
  %i.ao = add nsw i64 %i.al, %i.an                ; 2 uses
  %i.ap = sdiv i64 %i.d, 86400000000              ; 2 uses
  %.neg.i8.i.i.i.i6 = mul nsw i64 %i.ap, -86400000000
  %i.aq = add i64 %.neg.i8.i.i.i.i6, %i.d
  %i.ar = ashr i64 %i.c, 32
  %i.as = add nsw i64 %i.ap, %i.ar                ; 2 uses
  %i.at = sdiv i64 %i.as, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i7 = mul nsw i64 %i.at, -30
  %i.au = add nsw i64 %.neg16.i9.i.i.i.i7, %i.as  ; 2 uses
  %sext26 = shl i64 %i.c, 32
  %i.av = ashr exact i64 %sext26, 32
  %i.aw = add nsw i64 %i.at, %i.av                ; 2 uses
  %i.ax = icmp sgt i64 %i.ao, %i.aw
  br i1 %i.ax, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp slt i64 %i.ao, %i.aw
  br i1 %i.ay, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = icmp sgt i64 %i.am, %i.au
  br i1 %i.az, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp sge i64 %i.am, %i.au
  %i.bb = icmp sgt i64 %i.ai, %i.aq
  %spec.select.i.i.i.i8 = select i1 %i.ba, i1 %i.bb, i1 false
  br label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bc = phi i1 [ true, %bb.d ], [ %spec.select.i.i.i.i, %bb.e ], [ true, %bb.b ], [ false, %bb.c ], [ %spec.select.i.i.i.i8, %bb.i ], [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  ret i1 %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_11timestamp_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4202 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4203 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !4204
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !4205
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_11timestamp_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4039
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_11timestamp_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !4206 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_11timestamp_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_11timestamp_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !4206

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !4206
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_11timestamp_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !4039 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !4039
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_11timestamp_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_11timestamp_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_11timestamp_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_11timestamp_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_11timestamp_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_11timestamp_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_11timestamp_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_11timestamp_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_11timestamp_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_11timestamp_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !4209, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4211, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !4212, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !4213

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !4214

_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !4209, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !4211, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !4076
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_11timestamp_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_11timestamp_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !4080
  br label %_ZN6duckdb14QuantileCursorINS_11timestamp_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !4078, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_9
begin_hunk_10_@_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_:bb.a
  %spec.select.i.i.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit

bb.p:                                             ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES2_EclERKS2_.exit12
  %i.bb = sdiv i64 %i.ac, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i13 = mul nsw i64 %i.bb, -86400000000
  %i.bc = add i64 %.neg.i.i.i.i.i13, %i.ac
  %i.bd = ashr i64 %i.ab, 32
  %i.be = add nsw i64 %i.bb, %i.bd                ; 2 uses
  %i.bf = sdiv i64 %i.be, 30                      ; 2 uses
  %.neg16.i.i.i.i.i14 = mul nsw i64 %i.bf, -30
  %i.bg = add nsw i64 %.neg16.i.i.i.i.i14, %i.be  ; 2 uses
  %sext = shl i64 %i.ab, 32
  %i.bh = ashr exact i64 %sext, 32
  %i.bi = add nsw i64 %i.bf, %i.bh                ; 2 uses
  %i.bj = sdiv i64 %i.o, 86400000000              ; 2 uses
  %.neg.i8.i.i.i.i15 = mul nsw i64 %i.bj, -86400000000
  %i.bk = add i64 %.neg.i8.i.i.i.i15, %i.o
  %i.bl = ashr i64 %i.n, 32
  %i.bm = add nsw i64 %i.bj, %i.bl                ; 2 uses
  %i.bn = sdiv i64 %i.bm, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i16 = mul nsw i64 %i.bn, -30
  %i.bo = add nsw i64 %.neg16.i9.i.i.i.i16, %i.bm ; 2 uses
  %sext16 = shl i64 %i.n, 32
  %i.bp = ashr exact i64 %sext16, 32
  %i.bq = add nsw i64 %i.bn, %i.bp                ; 2 uses
  %i.br = icmp sgt i64 %i.bi, %i.bq
  br i1 %i.br, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = icmp slt i64 %i.bi, %i.bq
  br i1 %i.bs, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = icmp sgt i64 %i.bg, %i.bo
  br i1 %i.bt, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = icmp sge i64 %i.bg, %i.bo
  %i.bv = icmp sgt i64 %i.bc, %i.bk
  %spec.select.i.i.i.i17 = select i1 %i.bu, i1 %i.bv, i1 false
  br label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.bw = phi i1 [ true, %bb.n ], [ %spec.select.i.i.i.i, %bb.o ], [ true, %bb.l ], [ false, %bb.m ], [ %spec.select.i.i.i.i17, %bb.s ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ]
  ret i1 %i.bw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_7dtime_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4467 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4468 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !4469
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_7dtime_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !4470
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_7dtime_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_7dtime_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_7dtime_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_7dtime_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4308
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_7dtime_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !4471 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_7dtime_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_7dtime_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !4471

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !4471
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_7dtime_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !4308 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !4308
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_7dtime_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_7dtime_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_7dtime_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_7dtime_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_7dtime_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_7dtime_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_7dtime_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_7dtime_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_7dtime_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_7dtime_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !4474, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4476, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !4477, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !4479

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !4480

_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !4474, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !4476, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !4481
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_7dtime_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_7dtime_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !4482
  br label %_ZN6duckdb14QuantileCursorINS_7dtime_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !4483, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_10
begin_hunk_11_@_ZN6duckdb17AggregateExecutor7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEENS_23QuantileScalarOperationILb1ES3_EEEEvRNS_6VectorERNS_18AggregateInputDataEm:bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit
  %.06 = phi i64 [ %i.l, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8368 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8355 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i: ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.g) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.h) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8357 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIaEEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.j)
  br label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !8375 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #34
  br label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit

_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i, %bb.c
  %i.l = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8438
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIaEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8439 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8442 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !8444
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIaED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !8445
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIaED2Ev.exit

_ZN6duckdb19WindowQuantileStateIaED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIaED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIaNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8355
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !8446 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIaEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIaEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !8446

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !8446
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIaEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !8355 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8355
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIaEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIaEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIaEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIaEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !8449, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8451, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !8452, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !8454

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !8455

_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIaEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dn, %_ZN6duckdb16QuantileIncludedIaEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIaEclERKm.exit
  %.255 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIaEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.do, %_ZN6duckdb16QuantileIncludedIaEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !8449, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIaEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !8451, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !8456
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIaE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIaE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !8457
  br label %_ZN6duckdb14QuantileCursorIaE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !8458, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_11
begin_hunk_12_@_ZN6duckdb17AggregateExecutor7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEENS_23QuantileScalarOperationILb1ES4_EEEEvRNS_6VectorERNS_18AggregateInputDataEm:bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit
  %.06 = phi i64 [ %i.l, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8698 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8685 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i: ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.g) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.h) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8687 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_10interval_tEEEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.j)
  br label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !8705 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #34
  br label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit

_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, %bb.c
  %i.l = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8738
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_10interval_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8739 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8742 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !8744
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_10interval_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !8745
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_10interval_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_10interval_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_10interval_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8685
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !8746 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_10interval_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_10interval_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !8746

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !8746
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_10interval_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !8685 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8685
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_10interval_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_10interval_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_10interval_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_10interval_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !8749, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8751, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !8752, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !8754

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !8755

_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !8749, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !8751, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !8756
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_10interval_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_10interval_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !8757
  br label %_ZN6duckdb14QuantileCursorINS_10interval_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !8758, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_12
begin_hunk_13_@_ZN6duckdb17AggregateExecutor7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEENS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRNS_6VectorERNS_18AggregateInputDataEm:bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit
  %.06 = phi i64 [ %i.l, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8856 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8843 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i: ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.g) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.h) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8845 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_8string_tEEEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.j)
  br label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !8896 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #34
  br label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit

_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, %bb.c
  %i.l = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8920
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_8string_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8921 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8924 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !8926
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_8string_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !8927
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_8string_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_8string_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_8string_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8843
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !8928 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_8string_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_8string_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !8928

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !8928
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_8string_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !8843 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8843
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_8string_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_8string_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_8string_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_8string_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !8931, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8933, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !8934, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %7 = add i64 %i.p, -16
  %8 = sub i64 %7, %i.q                           ; 2 uses
  %i.r = lshr i64 %8, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !8936

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !8937

_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !8931, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !8933, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !8938
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_8string_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_8string_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !8939
  br label %_ZN6duckdb14QuantileCursorINS_8string_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !8940, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_13
