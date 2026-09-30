Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/filenameoption?download=true
inline.NumInlined: 1042
inline.NumDeleted: 569
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !74
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #28
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 3 uses
  %.not.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #27, !inline_history !7
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !117  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.n, %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit ] ; 3 uses
  %i.q = load ptr, ptr %.05.i.i.i, align 8, !tbaa !78 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !74
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !118
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  tail call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !225
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !73   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !225
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS_14FileNameOptionEEERKNS_14OptionTemplateIS6_T_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !228
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %6 = lshr i64 %i.j, 6
  %7 = and i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i32, ptr %.in, align 4, !tbaa !73
  invoke void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11createStoreEPSt6vectorIS6_SaIS6_EEPS6_Pii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %i.b, ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.k)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !229
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.o = and i64 %i.n, 512
  %.not41 = icmp eq i64 %i.o, 0
  br i1 %.not41, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !230
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !231
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %.thread39, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.22)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %.thread36

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %3, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS_14FileNameOptionEEERKNS_14OptionTemplateIS6_T_EENS_13FlagsTemplateINS_10OptionFlagEEE, ptr %i.u, align 8, !tbaa !82
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.23, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 396, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !73
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.t, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #26
          to label %bb.r unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit

bb.j:                                             ; preds = %bb.p, %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.thread:                                          ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread36:                                        ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.k:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.l, label %bb.q

.sink.split:                                      ; preds = %.thread, %.thread36
  %.pn.pn35.ph = phi { ptr, i32 } [ %i.y, %.thread36 ], [ %i.x, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k
  %.pn.pn35 = phi { ptr, i32 } [ %i.z, %bb.k ], [ %.pn.pn35.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.t) #27
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.aa = or i64 %i.n, 2
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !230 ; 2 uses
  %.not27 = icmp eq ptr %i.ac, null
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15setDefaultValueERKS6_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !231 ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %.thread39, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20setDefaultValueIfSetERKS6_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.thread39 unwind label %bb.j

.thread39:                                        ; preds = %bb.d, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn35, %bb.l ], [ %i.z, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #27
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !84  ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i: ; preds = %bb.q
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #27, !inline_history !7
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i, %bb.q, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn.pn.pn, %bb.q ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #27
  call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.r:                                             ; preds = %bb.h
  unreachable
}

declare void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98), ptr noundef nonnull align 8 dereferenceable(48), i64) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11createStoreEPSt6vectorIS6_SaIS6_EEPS6_Pii(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %7 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %8 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %9 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %10 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %11 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %.not = icmp eq ptr %2, null
  %.not29 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %4, null
  %or.cond = and i1 %.not29, %i.a
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11createStoreEPSt6vectorIS6_SaIS6_EEPS6_PiiENKUlvE_clEv, ptr noundef nonnull @.str.23, i32 noundef 429) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx22OptionValueStoreVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.b, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !124
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  br i1 %.not29, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !125  ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68   ; 3 uses
  %i.i = and i64 %i.h, 32
  %.not61 = icmp eq i64 %i.i, 0
  br i1 %.not61, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @.str.24)
          to label %bb.i unwind label %.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.j unwind label %.thread47

end_hunk_0
