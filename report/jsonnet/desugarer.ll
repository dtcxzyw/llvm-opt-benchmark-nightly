Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/desugarer?download=true
inline.NumInlined: 3682
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN7jsonnet8internal9Desugarer4makeINS0_5ErrorEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTEEEEPT_DpOT0_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 136) #26
  resume { ptr, i32 } %i.d

_ZN7jsonnet8internal9Allocator4makeINS0_5ErrorEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTEEEEPT_DpOT0_.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ErrorE, i64 16), ptr %i.b, align 8, !tbaa !107
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.c, ptr %i.e, align 8, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.b, ptr %i.h, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f) #28
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !84
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer4makeINS0_11ConditionalEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTERKS9_SD_SF_SD_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #27 ; 4 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !70
  %i.d = load ptr, ptr %5, align 8, !tbaa !70
  %i.e = load ptr, ptr %7, align 8, !tbaa !70
  invoke void @_ZN7jsonnet8internal11ConditionalC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_SC_SA_SC_(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.e)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTERKS9_SD_SF_SD_EEEPT_DpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 200) #26
  resume { ptr, i32 } %i.f

_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTERKS9_SD_SF_SD_EEEPT_DpOT0_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.b, ptr %i.i, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g) #28
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !84
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !84
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %11) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #27 ; 4 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !155
  %i.d = load i8, ptr %5, align 1, !tbaa !156, !range !98, !noundef !99
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load ptr, ptr %6, align 8, !tbaa !158
  invoke void @_ZN7jsonnet8internal5IndexC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_bSC_SA_SC_SA_SC_SA_(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %i.e, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 272) #26
  resume { ptr, i32 } %i.g

_ZN7jsonnet8internal9Allocator4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.i = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.b, ptr %i.j, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h) #28
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !84
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !84
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer3stdEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !65, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %i.d = select i1 %i.c, ptr @.str.114, ptr @.str.115
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !55
  %wcslen.i.i = select i1 %i.c, i64 3, i64 4      ; 2 uses
  %.idx.i = shl nuw nsw i64 %wcslen.i.i, 2        ; 3 uses
  br i1 %i.c, label %._crit_edge.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  %i.f = add nuw nsw i64 %.idx.i, 4
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !51
  store i64 4, ptr %i.e, align 8, !tbaa !44
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i
  %.pre8.i.i = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i ], [ %i.e, %bb.a ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre8.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.d, i64 %.idx.i, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %wcslen.i.i, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %.pre8.i.i, i64 %.idx.i
  store i32 0, ptr %i.i, align 4, !tbaa !54
  %i.j = load ptr, ptr %0, align 8, !tbaa !64
  %i.k = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit unwind label %bb.d

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit: ; preds = %._crit_edge.i.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc6 unwind label %bb.d    ; 6 uses

.noexc6:                                          ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc6
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 136) #26
  br label %.body

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i: ; preds = %.noexc6
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.m, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr %i.k, ptr %i.o, align 8, !tbaa !122
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.m, ptr %i.r, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #28
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !84
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !84
  %i.v = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.e, align 8, !tbaa !44
  %i.y = shl i64 %i.x, 2
  %i.z = add i64 %i.y, 4
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret ptr %i.m

bb.d:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i, %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit, %._crit_edge.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %i.n, %bb.b ]
  %i.ab = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.e
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i8: ; preds = %.body
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !44
  %i.ae = shl i64 %i.ad, 2
  %i.af = add i64 %i.ae, 4
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit10: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8ArgParamC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = sdiv exact i64 %i.h, 40
  %i.i = icmp ugt i64 %3, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = load ptr, ptr %2, align 8, !tbaa !209
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc4
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %.body

bb.e:                                             ; preds = %.noexc4
  store ptr %i.q, ptr %i.l, align 8, !tbaa !35
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #28
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !43 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i2, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.pr.i17 = load ptr, ptr %i.ab, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7jsonnet8internal9Desugarer10makeObjectEPNS0_6ObjectEj:bb.a

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit97: ; preds = %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit95, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.gk = load ptr, ptr %7, align 8, !tbaa !223   ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit99, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit97
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !227
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #26
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit99

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit99: ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit97, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer23makeObjectComprehensionEPNS0_19ObjectComprehensionEj(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::vector.83", align 8    ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  %5 = alloca %"struct.jsonnet::internal::ObjectField", align 8 ; 7 uses
  %6 = alloca %"class.std::vector.142", align 8   ; 10 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %8 = alloca %"class.std::vector.102", align 8   ; 11 uses
  %9 = alloca %"class.std::vector.89", align 8    ; 13 uses
  %10 = alloca [1 x %"struct.jsonnet::internal::Array::Element"], align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %12 = alloca %"struct.jsonnet::internal::Local::Bind", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %._crit_edge.i.i, label %.split

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @_ZN7jsonnet8internal9Desugarer13desugarFieldsEPNS0_3ASTERSt6vectorINS0_11ObjectFieldESaIS5_EEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.142") align 8 %6, ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %2)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i86

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !55
  store i32 36, ptr %i.g, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !54
  %i.j = load ptr, ptr %0, align 8, !tbaa !64
  %i.k = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit unwind label %bb.c

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit: ; preds = %._crit_edge.i.i
  %i.l = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.g
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  %i.n = load i64, ptr %i.g, align 8, !tbaa !44
  %i.o = shl i64 %i.n, 2
  %i.p = add i64 %i.o, 4
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.q = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.r = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27 ; 5 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %i.r, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 28, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit162, %bb.d, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit81, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.b ], [ %.pn68.pn.pn.pn.pn.pn, %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit162 ], [ %i.ah, %bb.d ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit81 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 128) #26
  br label %common.resume

_ZN7jsonnet8internal9Desugarer4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal4SelfE, i64 16), ptr %i.r, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.u = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.r, ptr %i.v, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t) #28
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !84
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !84
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN7jsonnet8internal11ObjectField5LocalERKSt6vectorINS0_13FodderElementESaIS3_EES7_PKNS0_10IdentifierES7_PNS0_3ASTES7_(ptr dead_on_unwind nonnull writable sret(%"struct.jsonnet::internal::ObjectField") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
  %i.aa = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(288) %5)
          to label %.split48 unwind label %bb.d   ; 0 uses

.split48:                                         ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit
  call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN7jsonnet8internal9Desugarer13desugarFieldsEPNS0_3ASTERSt6vectorINS0_11ObjectFieldESaIS5_EEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.142") align 8 %6, ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i32 noundef 0)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i86

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.g
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i79: ; preds = %bb.c
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !44
  %i.af = shl i64 %i.ae, 2
  %i.ag = add i64 %i.af, 4
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit81: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume

bb.d:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i86: ; preds = %.split, %.split48
  %i.ai = phi ptr [ %i.f, %.split ], [ %i.z, %.split48 ]
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !213 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !229
  store ptr %i.an, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ap = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #27
          to label %.noexc89 unwind label %bb.o   ; 3 uses

.noexc89:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i86
  store ptr %i.ap, ptr %7, align 8, !tbaa !51
  store i64 4, ptr %i.ao, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) @.str.124, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.aq, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.ar, align 4, !tbaa !54
  %i.as = load ptr, ptr %0, align 8, !tbaa !64
  %i.at = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit92 unwind label %bb.p ; 3 uses

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit92: ; preds = %.noexc89
  %i.au = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ao
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit92
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.ax = shl i64 %i.aw, 2
  %i.ay = add i64 %i.ax, 4
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit95: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit92, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.az = load ptr, ptr %0, align 8, !tbaa !64
  %i.ba = invoke noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_13LiteralNumberEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERA4_KcEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %i.az, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 1 dereferenceable(4) @.str.100)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_13LiteralNumberEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERA4_KcEEEPT_DpOT0_.exit unwind label %bb.q

_ZN7jsonnet8internal9Desugarer4makeINS0_13LiteralNumberEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERA4_KcEEEPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr %i.al, ptr %10, align 8, !tbaa !231
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7jsonnet8internalL2EFE, i64 8), align 8, !tbaa !35 ; 3 uses
  %i.bd = load ptr, ptr @_ZN7jsonnet8internalL2EFE, align 8, !tbaa !34 ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i.i.i.i.i, label %.noexc98, label %bb.e

bb.e:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_13LiteralNumberEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERA4_KcEEEPT_DpOT0_.exit
  %14 = sdiv exact i64 %i.bg, 40
  %i.bh = icmp ugt i64 %14, 230584300921369395
  br i1 %i.bh, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, !prof !190

.noexc.i.i.i:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc97 unwind label %bb.r

.noexc97:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #27
          to label %.noexc98 unwind label %bb.r

.noexc98:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN7jsonnet8internal9Desugarer4makeINS0_13LiteralNumberEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERA4_KcEEEPT_DpOT0_.exit
  %i.bj = phi ptr [ null, %_ZN7jsonnet8internal9Desugarer4makeINS0_13LiteralNumberEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERA4_KcEEEPT_DpOT0_.exit ], [ %i.bi, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.bj, ptr %i.bb, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !47
  %i.bn = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bd, ptr %i.bc, ptr noundef %i.bj)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc98
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #26
  br label %.body

bb.h:                                             ; preds = %.noexc98
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE11_M_allocateEm.exit.i.i unwind label %bb.i ; 3 uses

_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.bu, ptr %9, align 8, !tbaa !233
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !234
  %i.by = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN7jsonnet8internal5Array7ElementEPS3_ET0_T_S8_S7_(ptr noundef nonnull %10, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bu)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE11_M_allocateEm.exit.i.i, %bb.h
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %9, align 8, !tbaa !233   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i5.i, label %.body99, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !234
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #26
  br label %.body99

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE11_M_allocateEm.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.by, ptr %i.cg, align 8, !tbaa !235
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !34 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ci, %i.ck
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.db, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i ], [ %i.ci, %bb.k ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !38 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.cm, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.cp = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !44
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cv = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.cm, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !46
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i: ; preds = %bb.l, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i101 = icmp eq ptr %i.db, %i.ck
  br i1 %.not.i.i.i.i101, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ch, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.k
  %i.dc = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ci, %bb.k ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i1.i.i, label %_ZN7jsonnet8internal5Array7ElementD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #26
  br label %_ZN7jsonnet8internal5Array7ElementD2Ev.exit

_ZN7jsonnet8internal5Array7ElementD2Ev.exit:      ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !151 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !151 ; 2 uses
  %.not229 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not229, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7jsonnet8internal5Array7ElementD2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dv = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dx = getelementptr i8, ptr %i.dv, i64 -24
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ee = getelementptr i8, ptr %i.ec, i64 -24
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 128
  br label %bb.s

._crit_edge:                                      ; preds = %bb.ay, %_ZN7jsonnet8internal5Array7ElementD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ei = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.ej = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #27
          to label %.noexc102 unwind label %bb.bl ; 4 uses

.noexc102:                                        ; preds = %._crit_edge
  invoke void @_ZN7jsonnet8internal5ArrayC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EERKS5_INS1_7ElementESaISB_EEbSA_(ptr noundef nonnull align 8 dereferenceable(184) %i.ej, ptr noundef nonnull align 8 dereferenceable(64) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_5ArrayEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_7ElementESaISC_EEbSB_EEEPT_DpOT0_.exit.i unwind label %bb.n

bb.n:                                             ; preds = %.noexc102
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef 184) #26
  br label %.body103

_ZN7jsonnet8internal9Allocator4makeINS0_5ArrayEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_7ElementESaISC_EEbSB_EEEPT_DpOT0_.exit.i: ; preds = %.noexc102
  %i.el = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
end_hunk_1
begin_hunk_2_@_ZN7jsonnet8internal9Desugarer23makeObjectComprehensionEPNS0_19ObjectComprehensionEj:bb.a
.noexc151:                                        ; preds = %bb.be
  invoke void @_ZN7jsonnet8internal5IndexC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_bSC_SA_SC_SA_SC_SA_(ptr noundef nonnull align 8 dereferenceable(272) %i.jy, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.jo, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, i1 noundef zeroext false, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bRPNS0_3ASTESC_DnSC_DnSC_EEEPT_DpOT0_.exit.i unwind label %bb.bf

bb.bf:                                            ; preds = %.noexc151
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef 272) #26
  br label %.body103

_ZN7jsonnet8internal9Allocator4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bRPNS0_3ASTESC_DnSC_DnSC_EEEPT_DpOT0_.exit.i: ; preds = %.noexc151
  %i.ka = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.bg unwind label %bb.bp     ; 2 uses

bb.bg:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bRPNS0_3ASTESC_DnSC_DnSC_EEEPT_DpOT0_.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 96
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store ptr %i.jy, ptr %i.kc, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 8 dereferenceable(24) %i.kb) #28
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 112 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !84
  %i.kf = add i64 %i.ke, 1
  store i64 %i.kf, ptr %i.kd, align 8, !tbaa !84
  %i.kg = load ptr, ptr %0, align 8, !tbaa !64
  %i.kh = invoke noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %i.kg, ptr noundef nonnull align 8 dereferenceable(64) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_.exit unwind label %bb.bq

_ZN7jsonnet8internal9Desugarer4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_.exit: ; preds = %bb.bg
  %i.ki = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.kj = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %.noexc156 unwind label %bb.bq ; 4 uses

.noexc156:                                        ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_.exit
  %i.kk = load ptr, ptr %i.d, align 8, !tbaa !70
  invoke void @_ZN7jsonnet8internal25ObjectComprehensionSimpleC2ERKNS0_13LocationRangeEPNS0_3ASTES6_PKNS0_10IdentifierES6_(ptr noundef nonnull align 8 dereferenceable(160) %i.kj, ptr noundef nonnull align 8 dereferenceable(64) %i.eh, ptr noundef nonnull %i.jy, ptr noundef %i.kh, ptr noundef %i.at, ptr noundef %i.kk)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_25ObjectComprehensionSimpleEJRNS0_13LocationRangeEPNS0_5IndexEPNS0_5LocalERPKNS0_10IdentifierERPNS0_3ASTEEEEPT_DpOT0_.exit.i unwind label %bb.bh

bb.bh:                                            ; preds = %.noexc156
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef 160) #26
  br label %.body103

_ZN7jsonnet8internal9Allocator4makeINS0_25ObjectComprehensionSimpleEJRNS0_13LocationRangeEPNS0_5IndexEPNS0_5LocalERPKNS0_10IdentifierERPNS0_3ASTEEEEPT_DpOT0_.exit.i: ; preds = %.noexc156
  %i.km = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.bi unwind label %bb.bq     ; 2 uses

bb.bi:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_25ObjectComprehensionSimpleEJRNS0_13LocationRangeEPNS0_5IndexEPNS0_5LocalERPKNS0_10IdentifierERPNS0_3ASTEEEEPT_DpOT0_.exit.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 96
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store ptr %i.kj, ptr %i.ko, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull align 8 dereferenceable(24) %i.kn) #28
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 112 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !84
  %i.kr = add i64 %i.kq, 1
  store i64 %i.kr, ptr %i.kp, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ks = load ptr, ptr %8, align 8, !tbaa !127   ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !128 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ks, %i.ku
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bi, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i ], [ %i.ks, %bb.bi ] ; 2 uses
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i) #28
  %i.kv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kv, %i.ku
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !127
  br label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.bi
  %i.kw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ks, %bb.bi ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i
  %i.kx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !129
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.lb) #26
  br label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.lc = load ptr, ptr %6, align 8, !tbaa !223   ; 3 uses
  %.not.i.i.i160 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i160, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !227
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #26
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret ptr %i.kj

bb.bl:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ArrayEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_7ElementESaISC_EEbSB_EEEPT_DpOT0_.exit.i, %._crit_edge
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.bm:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_18ArrayComprehensionEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_5ArrayESB_bRS6_INS0_17ComprehensionSpecESaISE_EESB_EEEPT_DpOT0_.exit.i, %bb.az
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.bn:                                            ; preds = %bb.bb
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.bo:                                            ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i145, %bb.bc
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.bp:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bRPNS0_3ASTESC_DnSC_DnSC_EEEPT_DpOT0_.exit.i, %bb.be
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.bq:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_25ObjectComprehensionSimpleEJRNS0_13LocationRangeEPNS0_5IndexEPNS0_5LocalERPKNS0_10IdentifierERPNS0_3ASTEEEEPT_DpOT0_.exit.i, %_ZN7jsonnet8internal9Desugarer4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_.exit, %bb.bg
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.body103

.body103:                                         ; preds = %bb.bd, %bb.bo, %bb.bq, %bb.bh, %bb.bp, %bb.bf, %bb.n, %bb.bl, %bb.ba, %bb.bm, %bb.bn
  %.pn59.pn.pn = phi { ptr, i32 } [ %i.jg, %bb.ba ], [ %i.lk, %bb.bn ], [ %i.ek, %bb.n ], [ %i.li, %bb.bl ], [ %i.lj, %bb.bm ], [ %i.jp, %bb.bd ], [ %i.ll, %bb.bo ], [ %i.jz, %bb.bf ], [ %i.lm, %bb.bp ], [ %i.ln, %bb.bq ], [ %i.kl, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.br

bb.br:                                            ; preds = %.body103, %bb.ax
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %bb.ax ], [ %.pn59.pn.pn, %.body103 ]
  call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #28
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.body
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %bb.br ], [ %.pn55, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bt

bb.bt:                                            ; preds = %bb.q, %bb.bs, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit108
  %.pn68.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit108 ], [ %.pn68.pn.pn.pn, %bb.bs ], [ %i.et, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.lo = load ptr, ptr %6, align 8, !tbaa !223   ; 3 uses
  %.not.i.i.i161 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit162, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !227
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lt) #26
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit162

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit162: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPKv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6BinaryC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_NS0_8BinaryOpESC_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5, ptr noundef %6) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6BinaryE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.a, align 8, !tbaa !159
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %7 = sdiv exact i64 %i.h, 40
  %i.i = icmp ugt i64 %7, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = load ptr, ptr %4, align 8, !tbaa !209
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %5, ptr %i.x, align 8, !tbaa !153
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %6, ptr %i.y, align 8, !tbaa !160
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3ASTE, i64 16), ptr %0, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !66
  %i.d = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.f, ptr %i.a, align 8, !tbaa !68
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !43
  %i.i = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.i, ptr %i.c, align 8, !tbaa !44
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !44
  store i8 %i.k, ptr %i.j, align 1, !tbaa !44
  br label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit

_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !67
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %i.r, align 8, !tbaa !411
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.d

bb.d:                                             ; preds = %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  %4 = sdiv exact i64 %i.y, 40
  %i.z = icmp ugt i64 %4, 230584300921369395
  br i1 %i.z, label %.noexc.i.i5, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i5:                                      ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i5
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  %i.ab = phi ptr [ null, %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit ], [ %i.aa, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !47
  %i.af = load ptr, ptr %3, align 8, !tbaa !209
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !209
  %i.ah = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.af, ptr %i.ag, ptr noundef %i.ab)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc6
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #26
  br label %.body

bb.g:                                             ; preds = %.noexc6
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i5
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.ai, %bb.f ], [ %i.ai, %bb.e ]
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.c
  br i1 %i.ar, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.body
  %i.as = load i64, ptr %i.c, align 8, !tbaa !44
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6BinaryD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6BinaryE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6BinaryD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6BinaryE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26, !inline_history !412
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN7jsonnet8internal13UStringStreamlsIiEERS1_T_:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !237, !noalias !421 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !421 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !238, !noalias !421 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !43, !alias.scope !421 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.c, align 8, !tbaa !44, !alias.scope !421
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %.not16 = icmp samesign eq i64 %i.w, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i64, ptr %i.y, align 8, !tbaa !52
  %.pre18 = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre19 = load ptr, ptr %3, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aa = phi ptr [ %.pre19, %._crit_edge.loopexit ], [ %i.v, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !44
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !107
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !107
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !107
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ak, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !44
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ak, align 8, !tbaa !107
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #28
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !107
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !107
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !243
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ay) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %0

bb.f:                                             ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %i.ba = phi ptr [ %.pre18, %.lr.ph ], [ %i.bk, %bb.i ] ; 2 uses
  %i.bb = phi i64 [ %.pre, %.lr.ph ], [ %i.be, %bb.i ] ; 4 uses
  %.sroa.013.017 = phi ptr [ %i.v, %.lr.ph ], [ %i.bn, %bb.i ] ; 2 uses
  %i.bc = load i8, ptr %.sroa.013.017, align 1, !tbaa !44
  %i.bd = sext i8 %i.bc to i32
  %i.be = add i64 %i.bb, 1                        ; 4 uses
  %i.bf = icmp eq ptr %i.ba, %i.z
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.g
  %i.bg = icmp ult i64 %i.bb, 4
  call void @llvm.assume(i1 %i.bg)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bh = load i64, ptr %i.z, align 8, !tbaa !44
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i
  %i.bi = phi i64 [ %i.bh, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i ]
  %i.bj = icmp ugt i64 %i.be, %i.bi
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %i.bk = phi ptr [ %.pre.i, %.noexc ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bb
  store i32 %i.bd, ptr %i.bl, align 4, !tbaa !54
  store i64 %i.be, ptr %i.y, align 8, !tbaa !52
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.be
  store i32 0, ptr %i.bm, align 4, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.x
  br i1 %.not, label %._crit_edge.loopexit, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.c
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.j
  %i.br = load i64, ptr %i.c, align 8, !tbaa !44
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.f ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer9singletonEPNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.89", align 8    ; 10 uses
  %3 = alloca [1 x %"struct.jsonnet::internal::Array::Element"], align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %1, ptr %3, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7jsonnet8internalL2EFE, i64 8), align 8, !tbaa !35 ; 3 uses
  %i.d = load ptr, ptr @_ZN7jsonnet8internalL2EFE, align 8, !tbaa !34 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = sdiv exact i64 %i.g, 40
  %i.h = icmp ugt i64 %4, 230584300921369395
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, !prof !190

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.d, ptr %i.c, ptr noundef %i.j)
          to label %_ZN7jsonnet8internal5Array7ElementC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS6_EE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.g) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.n, %bb.e ], [ %i.n, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN7jsonnet8internal5Array7ElementC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS6_EE.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.m, ptr %i.o, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.p = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %_ZN7jsonnet8internal5Array7ElementC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS6_EE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZN7jsonnet8internal5Array7ElementC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS6_EE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.p, ptr %2, align 8, !tbaa !233
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !234
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN7jsonnet8internal5Array7ElementEPS3_ET0_T_S8_S7_(ptr noundef nonnull %3, ptr noundef nonnull %i.r, ptr noundef nonnull %i.p)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE11_M_allocateEm.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 32) #26
  br label %.body

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE11_M_allocateEm.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !235
  %i.x = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.y = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #27
          to label %.noexc unwind label %bb.l     ; 4 uses

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN7jsonnet8internal5ArrayC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EERKS5_INS1_7ElementESaISB_EEbSA_(ptr noundef nonnull align 8 dereferenceable(184) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_5ArrayEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EES6_INS3_7ElementESaISC_EEbSB_EEEPT_DpOT0_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 184) #26
  br label %.body10

_ZN7jsonnet8internal9Allocator4makeINS0_5ArrayEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EES6_INS3_7ElementESaISC_EEbSB_EEEPT_DpOT0_.exit.i: ; preds = %.noexc
  %i.aa = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.i unwind label %bb.l       ; 2 uses

bb.i:                                             ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ArrayEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EES6_INS3_7ElementESaISC_EEbSB_EEEPT_DpOT0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !84
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !84
  call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i ], [ %i.ah, %bb.i ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.au = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.ba, %i.aj
  br i1 %.not.i.i.i.i13, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ag, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.i
  %i.bb = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ah, %bb.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i, label %_ZN7jsonnet8internal5Array7ElementD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #26
  br label %_ZN7jsonnet8internal5Array7ElementD2Ev.exit

_ZN7jsonnet8internal5Array7ElementD2Ev.exit:      ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %i.y

bb.l:                                             ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ArrayEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EES6_INS3_7ElementESaISC_EEbSB_EEEPT_DpOT0_.exit.i, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body10

.body10:                                          ; preds = %bb.h, %bb.l
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.bh, %bb.l ], [ %i.z, %bb.h ]
  call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  br label %.body

.body:                                            ; preds = %.thread, %bb.f, %.body10
  %.pn = phi { ptr, i32 } [ %eh.lpad-body11, %.body10 ], [ %i.q, %.thread ], [ %i.v, %bb.f ]
  call void @_ZN7jsonnet8internal5Array7ElementD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8ArgParamC2ERKSt6vectorINS0_13FodderElementESaIS3_EEPKNS0_10IdentifierES7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %4, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = load ptr, ptr %1, align 8, !tbaa !209
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !209
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.v, align 8, !tbaa !244
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i5, label %.noexc10, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %5 = sdiv exact i64 %i.ad, 40
  %i.ae = icmp ugt i64 %5, 230584300921369395
  br i1 %i.ae, label %.noexc.i.i9, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i6, !prof !190

.noexc.i.i9:                                      ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i9
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i6: ; preds = %bb.f
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #27
          to label %.noexc10 unwind label %bb.j

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i6, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.af, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i6 ] ; 4 uses
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !47
  %i.ak = load ptr, ptr %3, align 8, !tbaa !209
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ak, ptr %i.al, ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc10
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i7, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #26
  br label %.body

bb.i:                                             ; preds = %.noexc10
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !35
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i6, %.noexc.i.i9
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.an, %bb.h ], [ %i.an, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #28
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal9Desugarer10singleBindEPKNS0_10IdentifierEPNS0_3ASTE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.102") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.83", align 8    ; 10 uses
  %5 = alloca [1 x %"struct.jsonnet::internal::Local::Bind"], align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !424
  invoke void @_ZN7jsonnet8internal5Local4BindC2ERKSt6vectorINS0_13FodderElementESaIS4_EEPKNS0_10IdentifierES8_PNS0_3ASTEbS8_RKS3_INS0_8ArgParamESaISE_EEbS8_S8_(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %3, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !130, !noalias !424 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104, !noalias !424 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.a, %bb.b ] ; 2 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i.i) #28
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !130, !noalias !424
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.e = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i1.i.i, label %_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105, !noalias !424
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE.exit

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.m, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !424
  br label %common.resume

_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 176
  invoke void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE19_M_range_initializeIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5, ptr noundef nonnull %i.l)
          to label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EEC2ESt16initializer_listIS3_ERKS4_.exit.preheader unwind label %bb.e

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EEC2ESt16initializer_listIS3_ERKS4_.exit.preheader: ; preds = %_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE.exit
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.e:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !127    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #26
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer5errorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 5, ptr %i.a, align 4, !tbaa !72
  %i.b = load ptr, ptr %0, align 8, !tbaa !64
  %i.c = call noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_13LiteralStringEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEENS3_9TokenKindERA1_KcSO_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @.str.113, ptr noundef nonnull align 1 dereferenceable(1) @.str.113) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.f = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27 ; 6 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer5errorEPNS0_3ASTE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 136) #26
  resume { ptr, i32 } %i.g

_ZN7jsonnet8internal9Desugarer5errorEPNS0_3ASTE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ErrorE, i64 16), ptr %i.f, align 8, !tbaa !107
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %i.c, ptr %i.h, align 8, !tbaa !206
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.j = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.f, ptr %i.k, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #28
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !84
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !84
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !235  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN7jsonnet8internal13LiteralNumberD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal13LiteralNumberD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal13LiteralNumberE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7jsonnet8internal13LiteralNumberD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !44
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26, !inline_history !425
  br label %_ZN7jsonnet8internal13LiteralNumberD2Ev.exit

_ZN7jsonnet8internal13LiteralNumberD2Ev.exit:     ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(168) %0) #28, !inline_history !425
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #26
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !51     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !44
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.p = icmp samesign ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = shl nuw nsw i64 %.0, 2
  %i.r = add nuw nsw i64 %i.q, 4
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27 ; 5 uses
  switch i64 %1, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit
  %i.t = load i32, ptr %i.g, align 4, !tbaa !54
  store i32 %i.t, ptr %i.s, align 4, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit
  %i.u = shl i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.g, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit, %bb.g, %bb.f
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.h, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %3, align 4, !tbaa !54
  store i32 %i.y, ptr %i.x, align 4, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26

bb.j:                                             ; preds = %bb.h
  %i.z = shl i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr nonnull align 4 %3, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %4 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27

bb.m:                                             ; preds = %bb.k
  %i.af = shl i64 %i.d, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27
  %i.ag = icmp ult i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !44
  %i.ai = shl i64 %i.ah, 2
  %i.aj = add i64 %i.ai, 4
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.aj) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !51
  store i64 %.0, ptr %i.h, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ApplyC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_RKS5_INS0_8ArgParamESaISD_EEbSA_SA_b(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext %9) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %6 to i8
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ApplyE, i64 16), ptr %0, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.b, align 8, !tbaa !427
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %.noexc17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %10 = sdiv exact i64 %i.i, 40
  %i.j = icmp ugt i64 %10, 230584300921369395
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #27
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  %i.p = load ptr, ptr %4, align 8, !tbaa !209
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !209
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc17
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #26
  br label %.body

bb.e:                                             ; preds = %.noexc17
  store ptr %i.r, ptr %i.m, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.a, ptr %i.z, align 8, !tbaa !428
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i18, label %.noexc24, label %bb.g

bb.g:                                             ; preds = %bb.f
  %11 = sdiv exact i64 %i.ag, 40
  %i.ah = icmp ugt i64 %11, 230584300921369395
  br i1 %i.ah, label %.noexc.i.i22, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i19, !prof !190

.noexc.i.i22:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc23 unwind label %bb.q

.noexc23:                                         ; preds = %.noexc.i.i22
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i19: ; preds = %bb.g
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc24 unwind label %bb.q

.noexc24:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i19, %bb.f
  %i.aj = phi ptr [ null, %bb.f ], [ %i.ai, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i19 ] ; 4 uses
  store ptr %i.aj, ptr %i.aa, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !47
  %i.an = load ptr, ptr %7, align 8, !tbaa !209
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !209
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.an, ptr %i.ao, ptr noundef %i.aj)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc24
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i20, label %.body25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !47
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #26
  br label %.body25

bb.j:                                             ; preds = %.noexc24
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 2 uses
  %i.az = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i28 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i28, label %.noexc34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %12 = sdiv exact i64 %i.bc, 40
  %i.bd = icmp ugt i64 %12, 230584300921369395
  br i1 %i.bd, label %.noexc.i.i32, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i29, !prof !190

.noexc.i.i32:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %.noexc.i.i32
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i29: ; preds = %bb.k
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #27
          to label %.noexc34 unwind label %bb.r

.noexc34:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i29, %bb.j
  %i.bf = phi ptr [ null, %bb.j ], [ %i.be, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i29 ] ; 4 uses
  store ptr %i.bf, ptr %i.aw, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !47
  %i.bj = load ptr, ptr %8, align 8, !tbaa !209
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !209
  %i.bl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bj, ptr %i.bk, ptr noundef %i.bf)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.noexc34
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i30, label %.body35, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #26
  br label %.body35

bb.n:                                             ; preds = %.noexc34
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !35
  %i.bs = zext i1 %9 to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.bs, ptr %i.bt, align 8, !tbaa !429
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i19, %.noexc.i.i22
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body25

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i29, %.noexc.i.i32
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body35

.body35:                                          ; preds = %bb.l, %bb.m, %bb.r
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.bx, %bb.r ], [ %i.bm, %bb.m ], [ %i.bm, %bb.l ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #28
  br label %.body25

.body25:                                          ; preds = %bb.q, %bb.i, %bb.h, %.body35
  %.pn = phi { ptr, i32 } [ %eh.lpad-body36, %.body35 ], [ %i.bw, %bb.q ], [ %i.aq, %bb.i ], [ %i.aq, %bb.h ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #28
  br label %bb.s

bb.s:                                             ; preds = %.body25, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body25 ], [ %i.bv, %bb.p ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #28
  br label %.body

.body:                                            ; preds = %bb.o, %bb.d, %bb.c, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.bu, %bb.o ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !130    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 88
  %i.g = icmp ugt i64 %2, 104811045873349725
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal8ArgParamEE8allocateEmPKv.exit.i.i.i, !prof !190

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal8ArgParamEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal8ArgParamEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal8ArgParamEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !130
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !105
  %i.m = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal8ArgParamESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal8ArgParamESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !430

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #28 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i.i.i.i) #28
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #25
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal8ArgParamESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !104
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !130    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !105
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ApplyD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ApplyE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !43 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i2, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.pr.i17 = load ptr, ptr %i.ab, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !130 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i22 = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i.i.i22, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, %.lr.ph.i.i.i23
  %.05.i.i.i24 = phi ptr [ %i.bg, %.lr.ph.i.i.i23 ], [ %i.bd, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 2 uses
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i24) #28
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 88 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.bg, %i.bf
  br i1 %.not.i.i.i25, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i23, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i23
  %.pr.i26 = load ptr, ptr %i.bc, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21
  %i.bh = phi ptr [ %.pr.i26, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 3 uses
  %.not.i.i1.i27 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i27, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !105
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #26
  br label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i28 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not4.i.i.i28, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i45, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i41
  %.05.i.i.i30 = phi ptr [ %i.ch, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i41 ], [ %i.bo, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i31 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not4.i.i.i.i.i.i.i.i31, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i.i32:                         ; preds = %.lr.ph.i.i.i29, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i35
  %.05.i.i.i.i.i.i.i.i33 = phi ptr [ %i.ca, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i35 ], [ %i.bs, %.lr.ph.i.i.i29 ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i.i.i.i.i.i33, align 8, !tbaa !43 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i33, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i.i.i.i.i.i32
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !44
  %i.bz = add i64 %i.by, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i35

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i34
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i33, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i36 = icmp eq ptr %i.ca, %i.bu
  br i1 %.not.i.i.i.i.i.i.i.i36, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i37, label %.lr.ph.i.i.i.i.i.i.i.i32, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i37: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i35
  %.pr.i.i.i.i.i.i38 = load ptr, ptr %i.br, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i39

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i39: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i37, %.lr.ph.i.i.i29
  %i.cb = phi ptr [ %.pr.i.i.i.i.i.i38, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i37 ], [ %i.bs, %.lr.ph.i.i.i29 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i40 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i1.i.i.i.i.i.i40, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i41, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i39
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !46
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i41

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i41: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i39
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 40 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.ch, %i.bq
  br i1 %.not.i.i.i42, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i43, label %.lr.ph.i.i.i29, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i43: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i41
  %.pr.i44 = load ptr, ptr %i.bn, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i45

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i45: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i43, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit
  %i.ci = phi ptr [ %.pr.i44, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i43 ], [ %i.bo, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i46 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i46, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i45
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i45, %bb.h
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ApplyD0Ev(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal5ApplyD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = load ptr, ptr %1, align 8, !tbaa !209
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !209
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !244
  store ptr %i.x, ptr %i.v, align 8, !tbaa !244
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i9, label %.noexc14, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %3 = sdiv exact i64 %i.af, 40
  %i.ag = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ag, label %.noexc.i.i13, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, !prof !190

.noexc.i.i13:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i13
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10: ; preds = %bb.f
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27
          to label %.noexc14 unwind label %bb.n

.noexc14:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10 ] ; 4 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !47
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !209
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !209
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.am, ptr %i.an, ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc14
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i11, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #26
  br label %.body

bb.i:                                             ; preds = %.noexc14
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !208
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !208
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !34 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %.not.i.i.i.i16 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i16, label %.noexc22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sdiv exact i64 %i.bf, 40
  %i.bg = icmp ugt i64 %4, 230584300921369395
  br i1 %i.bg, label %.noexc.i.i20, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, !prof !190

.noexc.i.i20:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %.noexc.i.i20
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17: ; preds = %bb.j
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #27
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, %bb.i
  %i.bi = phi ptr [ null, %bb.i ], [ %i.bh, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17 ] ; 4 uses
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !47
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !209
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !209
  %i.bo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bm, ptr %i.bn, ptr noundef %i.bi)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc22
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i18, label %.body23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #26
  br label %.body23

bb.m:                                             ; preds = %.noexc22
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !35
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, %.noexc.i.i13
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, %.noexc.i.i20
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %bb.k, %bb.l, %bb.o
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %i.bp, %bb.l ], [ %i.bp, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #28
  br label %.body

.body:                                            ; preds = %bb.n, %bb.h, %bb.g, %.body23
  %.pn = phi { ptr, i32 } [ %eh.lpad-body24, %.body23 ], [ %i.bv, %bb.n ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5Array7ElementD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ArrayC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EERKS5_INS1_7ElementESaISB_EEbSA_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ArrayE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !235  ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !233    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.noexc9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !233
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !235
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !234
  %i.n = load ptr, ptr %3, align 8, !tbaa !149
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Array7ElementESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.n, ptr %i.o, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc9
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !233  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #26
  br label %.body

bb.e:                                             ; preds = %.noexc9
  store ptr %i.p, ptr %i.k, align 8, !tbaa !235
  %i.w = zext i1 %4 to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.w, ptr %i.x, align 8, !tbaa !435
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i10, label %.noexc14, label %bb.f

bb.f:                                             ; preds = %bb.e
  %6 = sdiv exact i64 %i.ae, 40
  %i.af = icmp ugt i64 %6, 230584300921369395
  br i1 %i.af, label %.noexc.i.i12, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i12:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc13 unwind label %bb.k

.noexc13:                                         ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #27
          to label %.noexc14 unwind label %bb.k

.noexc14:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.e
  %i.ah = phi ptr [ null, %bb.e ], [ %i.ag, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !47
  %i.al = load ptr, ptr %5, align 8, !tbaa !209
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !209
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.al, ptr %i.am, ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc14
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i11, label %.body15, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #26
  br label %.body15

bb.i:                                             ; preds = %.noexc14
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !35
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %bb.g, %bb.h, %bb.k
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.ao, %bb.h ], [ %i.ao, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #28
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.body15
  %.pn = phi { ptr, i32 } [ %eh.lpad-body16, %.body15 ], [ %i.au, %bb.j ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ArrayE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #28
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ArrayE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26, !inline_history !436
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26, !inline_history !436
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN7jsonnet8internal5ArrayD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26, !inline_history !436
  br label %_ZN7jsonnet8internal5ArrayD2Ev.exit

_ZN7jsonnet8internal5ArrayD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #28, !inline_history !436
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(184) %0) #28, !inline_history !436
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Array7ElementESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.023 = phi ptr [ %i.aa, %bb.e ], [ %2, %bb.a ] ; 7 uses
  %.sroa.09.022 = phi ptr [ %i.z, %bb.e ], [ %0, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.sroa.09.022, align 8, !tbaa !231
  store ptr %i.a, ptr %.023, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %3 = sdiv exact i64 %i.i, 40
  %i.j = icmp ugt i64 %3, 230584300921369395
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !190

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #27
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.k, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.023, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !209
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #26
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.023, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !437

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ab = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.023)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.aa, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal5Array7ElementEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i
  %.05.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i
  %i.v = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i

_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal5Array7ElementEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !10

_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal5Array7ElementEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN7jsonnet8internal5Array7ElementEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not23 = icmp eq ptr %0, %1
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.025 = phi ptr [ %i.aa, %bb.e ], [ %2, %bb.a ] ; 7 uses
  %.01224 = phi ptr [ %i.z, %bb.e ], [ %0, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.01224, align 8, !tbaa !231
  store ptr %i.a, ptr %.025, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %.025, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01224, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01224, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %3 = sdiv exact i64 %i.i, 40
  %i.j = icmp ugt i64 %3, 230584300921369395
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !190

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #27
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.k, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %.025, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.025, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !209
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc13
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.025, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #26
  br label %.body

bb.e:                                             ; preds = %.noexc13
  store ptr %i.r, ptr %i.m, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %.01224, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.025, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !438

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ab = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.025)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.aa, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ConditionalC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_SC_SA_SC_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %7) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal11ConditionalE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.a, align 8, !tbaa !439
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %8 = sdiv exact i64 %i.h, 40
  %i.i = icmp ugt i64 %8, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27
          to label %.noexc11 unwind label %bb.j

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = load ptr, ptr %4, align 8, !tbaa !209
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc11
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %.body

bb.e:                                             ; preds = %.noexc11
  store ptr %i.q, ptr %i.l, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %5, ptr %i.x, align 8, !tbaa !440
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 2 uses
  %i.ab = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i12 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i12, label %.noexc18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %9 = sdiv exact i64 %i.ae, 40
  %i.af = icmp ugt i64 %9, 230584300921369395
  br i1 %i.af, label %.noexc.i.i16, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i13, !prof !190

.noexc.i.i16:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc17 unwind label %bb.k

.noexc17:                                         ; preds = %.noexc.i.i16
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i13: ; preds = %bb.f
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #27
          to label %.noexc18 unwind label %bb.k

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i13, %bb.e
  %i.ah = phi ptr [ null, %bb.e ], [ %i.ag, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i13 ] ; 4 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !47
  %i.al = load ptr, ptr %6, align 8, !tbaa !209
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !209
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.al, ptr %i.am, ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc18
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i14, label %.body19, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #26
  br label %.body19

bb.i:                                             ; preds = %.noexc18
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %7, ptr %i.au, align 8, !tbaa !163
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i13, %.noexc.i.i16
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %bb.g, %bb.h, %bb.k
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ao, %bb.h ], [ %i.ao, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #28
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.body19
  %.pn = phi { ptr, i32 } [ %eh.lpad-body20, %.body19 ], [ %i.av, %bb.j ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ConditionalD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal11ConditionalE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !43 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i2, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.pr.i17 = load ptr, ptr %i.ab, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, %bb.e
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ConditionalD0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal11ConditionalD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EES6_INS3_4BindESaISC_EEPNS0_11ConditionalEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27 ; 8 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !124
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 23, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5LocalE, i64 16), ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(160) %i.a) #28
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.b, ptr %i.e, align 8, !tbaa !249
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.a, ptr %i.h, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !84
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.d, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 176
  %i.g = icmp ugt i64 %2, 52405522936674862
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal5Local4BindEE8allocateEmPKv.exit.i.i.i, !prof !190

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal5Local4BindEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal5Local4BindEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal5Local4BindEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !129
  %i.m = load ptr, ptr %1, align 8, !tbaa !173    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Local4BindESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7jsonnet8internal5Local4BindC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Local4BindESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !441

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #28 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i.i.i.i) #28
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #25
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Local4BindESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !128
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !127    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5LocalE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i) #28
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !127
  br label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26
  br label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i, %bb.b
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5LocalD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5LocalE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i.i) #28, !inline_history !442
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !127
  br label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.f = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i.i, label %_ZN7jsonnet8internal5LocalD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26, !inline_history !442
  br label %_ZN7jsonnet8internal5LocalD2Ev.exit

_ZN7jsonnet8internal5LocalD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(160) %0) #28, !inline_history !442
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5Local4BindC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = load ptr, ptr %1, align 8, !tbaa !209
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !209
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !250
  store ptr %i.x, ptr %i.v, align 8, !tbaa !250
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i19 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i19, label %.noexc24, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %3 = sdiv exact i64 %i.af, 40
  %i.ag = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ag, label %.noexc.i.i23, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20, !prof !190

.noexc.i.i23:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20: ; preds = %bb.f
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27
          to label %.noexc24 unwind label %bb.w

.noexc24:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20 ] ; 4 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !47
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !209
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !209
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.am, ptr %i.an, ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc24
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i21, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #26
  br label %.body

bb.i:                                             ; preds = %.noexc24
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.av, ptr noundef nonnull align 8 dereferenceable(9) %i.aw, i64 9, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %.not.i.i.i.i26 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i.i.i26, label %.noexc32, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sdiv exact i64 %i.be, 40
  %i.bf = icmp ugt i64 %4, 230584300921369395
  br i1 %i.bf, label %.noexc.i.i30, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, !prof !190

.noexc.i.i30:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc31 unwind label %bb.x

.noexc31:                                         ; preds = %.noexc.i.i30
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27: ; preds = %bb.j
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #27
          to label %.noexc32 unwind label %bb.x

.noexc32:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, %bb.i
  %i.bh = phi ptr [ null, %bb.i ], [ %i.bg, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27 ] ; 4 uses
  store ptr %i.bh, ptr %i.ax, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !47
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !209
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !209
  %i.bn = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bl, ptr %i.bm, ptr noundef %i.bh)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc32
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i28, label %.body33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !47
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #26
  br label %.body33

bb.m:                                             ; preds = %.noexc32
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !251, !range !98, !noundef !99
  store i8 %i.by, ptr %i.bw, align 8, !tbaa !251
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !35 ; 2 uses
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !34 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i36 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i.i.i36, label %.noexc42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %5 = sdiv exact i64 %i.cg, 40
  %i.ch = icmp ugt i64 %5, 230584300921369395
  br i1 %i.ch, label %.noexc.i.i40, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37, !prof !190

.noexc.i.i40:                                     ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc41 unwind label %bb.z

.noexc41:                                         ; preds = %.noexc.i.i40
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37: ; preds = %bb.o
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #27
          to label %.noexc42 unwind label %bb.z

.noexc42:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37, %bb.n
  %i.cj = phi ptr [ null, %bb.n ], [ %i.ci, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37 ] ; 4 uses
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !34
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !47
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !209
  %i.co = load ptr, ptr %i.cb, align 8, !tbaa !209
  %i.cp = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.cn, ptr %i.co, ptr noundef %i.cj)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %.noexc42
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %i.bz, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i38, label %.body43, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !47
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #26
  br label %.body43

bb.r:                                             ; preds = %.noexc42
  store ptr %i.cp, ptr %i.ck, align 8, !tbaa !35
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !35 ; 2 uses
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !34 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i46 = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i.i.i.i46, label %.noexc52, label %bb.s

bb.s:                                             ; preds = %bb.r
  %6 = sdiv exact i64 %i.dd, 40
  %i.de = icmp ugt i64 %6, 230584300921369395
  br i1 %i.de, label %.noexc.i.i50, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47, !prof !190

.noexc.i.i50:                                     ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc51 unwind label %bb.aa

.noexc51:                                         ; preds = %.noexc.i.i50
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47: ; preds = %bb.s
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #27
          to label %.noexc52 unwind label %bb.aa

.noexc52:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47, %bb.r
  %i.dg = phi ptr [ null, %bb.r ], [ %i.df, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47 ] ; 4 uses
  store ptr %i.dg, ptr %i.cw, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !47
  %i.dk = load ptr, ptr %i.cx, align 8, !tbaa !209
  %i.dl = load ptr, ptr %i.cy, align 8, !tbaa !209
  %i.dm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.dk, ptr %i.dl, ptr noundef %i.dg)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %.noexc52
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i48, label %.body53, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !47
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #26
  br label %.body53

bb.v:                                             ; preds = %.noexc52
  store ptr %i.dm, ptr %i.dh, align 8, !tbaa !35
  ret void

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20, %.noexc.i.i23
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, %.noexc.i.i30
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.y:                                             ; preds = %bb.m
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37, %.noexc.i.i40
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.aa:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47, %.noexc.i.i50
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %bb.t, %bb.u, %bb.aa
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.dx, %bb.aa ], [ %i.dn, %bb.u ], [ %i.dn, %bb.t ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bz) #28
  br label %.body43

.body43:                                          ; preds = %bb.z, %bb.q, %bb.p, %.body53
  %.pn = phi { ptr, i32 } [ %eh.lpad-body54, %.body53 ], [ %i.dw, %bb.z ], [ %i.cq, %bb.q ], [ %i.cq, %bb.p ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bu) #28
  br label %bb.ab

bb.ab:                                            ; preds = %.body43, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body43 ], [ %i.dv, %bb.y ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ax) #28
  br label %.body33

.body33:                                          ; preds = %bb.x, %bb.l, %bb.k, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %i.du, %bb.x ], [ %i.bo, %bb.l ], [ %i.bo, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #28
  br label %.body

.body:                                            ; preds = %bb.w, %bb.h, %bb.g, %.body33
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body33 ], [ %i.dt, %bb.w ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5Local4BindC2ERKSt6vectorINS0_13FodderElementESaIS4_EEPKNS0_10IdentifierES8_PNS0_3ASTEbS8_RKS3_INS0_8ArgParamESaISE_EEbS8_S8_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %8 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %11 = sdiv exact i64 %i.g, 40
  %i.h = icmp ugt i64 %11, 230584300921369395
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !47
  %i.n = load ptr, ptr %1, align 8, !tbaa !209
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.n, ptr %i.o, ptr noundef %i.j)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.k, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.w, align 8, !tbaa !250
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i20 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i20, label %.noexc25, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %12 = sdiv exact i64 %i.ad, 40
  %i.ae = icmp ugt i64 %12, 230584300921369395
  br i1 %i.ae, label %.noexc.i.i24, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21, !prof !190

.noexc.i.i24:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i.i24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21: ; preds = %bb.f
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #27
          to label %.noexc25 unwind label %bb.w

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.af, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21 ] ; 4 uses
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !47
  %i.ak = load ptr, ptr %3, align 8, !tbaa !209
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ak, ptr %i.al, ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc25
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i22, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #26
  br label %.body

bb.i:                                             ; preds = %.noexc25
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !35
  %i.at = zext i1 %5 to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.au, align 8, !tbaa !179
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.at, ptr %i.av, align 8, !tbaa !178
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 2 uses
  %i.az = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i27 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i27, label %.noexc33, label %bb.j

bb.j:                                             ; preds = %bb.i
  %13 = sdiv exact i64 %i.bc, 40
  %i.bd = icmp ugt i64 %13, 230584300921369395
  br i1 %i.bd, label %.noexc.i.i31, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28, !prof !190

.noexc.i.i31:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc32 unwind label %bb.x

.noexc32:                                         ; preds = %.noexc.i.i31
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28: ; preds = %bb.j
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #27
          to label %.noexc33 unwind label %bb.x

.noexc33:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28, %bb.i
  %i.bf = phi ptr [ null, %bb.i ], [ %i.be, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28 ] ; 4 uses
  store ptr %i.bf, ptr %i.aw, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !47
  %i.bj = load ptr, ptr %6, align 8, !tbaa !209
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !209
  %i.bl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bj, ptr %i.bk, ptr noundef %i.bf)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc33
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i29, label %.body34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #26
  br label %.body34

bb.m:                                             ; preds = %.noexc33
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.a, ptr %i.bt, align 8, !tbaa !251
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %i.bx = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  %.not.i.i.i.i37 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i37, label %.noexc43, label %bb.o

bb.o:                                             ; preds = %bb.n
  %14 = sdiv exact i64 %i.ca, 40
  %i.cb = icmp ugt i64 %14, 230584300921369395
  br i1 %i.cb, label %.noexc.i.i41, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i38, !prof !190

.noexc.i.i41:                                     ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc42 unwind label %bb.z

.noexc42:                                         ; preds = %.noexc.i.i41
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i38: ; preds = %bb.o
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #27
          to label %.noexc43 unwind label %bb.z

.noexc43:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i38, %bb.n
  %i.cd = phi ptr [ null, %bb.n ], [ %i.cc, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i38 ] ; 4 uses
  store ptr %i.cd, ptr %i.bu, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !47
  %i.ch = load ptr, ptr %9, align 8, !tbaa !209
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !209
  %i.cj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ch, ptr %i.ci, ptr noundef %i.cd)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %.noexc43
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i39, label %.body44, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #26
  br label %.body44

bb.r:                                             ; preds = %.noexc43
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !35
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !35 ; 2 uses
  %i.ct = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i47 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i.i.i47, label %.noexc53, label %bb.s

bb.s:                                             ; preds = %bb.r
  %15 = sdiv exact i64 %i.cw, 40
  %i.cx = icmp ugt i64 %15, 230584300921369395
  br i1 %i.cx, label %.noexc.i.i51, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i48, !prof !190

.noexc.i.i51:                                     ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc52 unwind label %bb.aa

.noexc52:                                         ; preds = %.noexc.i.i51
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i48: ; preds = %bb.s
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #27
          to label %.noexc53 unwind label %bb.aa

.noexc53:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i48, %bb.r
  %i.cz = phi ptr [ null, %bb.r ], [ %i.cy, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i48 ] ; 4 uses
  store ptr %i.cz, ptr %i.cq, align 8, !tbaa !34
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !35
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !47
  %i.dd = load ptr, ptr %10, align 8, !tbaa !209
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !209
  %i.df = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.dd, ptr %i.de, ptr noundef %i.cz)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %.noexc53
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i49, label %.body54, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !47
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #26
  br label %.body54

bb.v:                                             ; preds = %.noexc53
  store ptr %i.df, ptr %i.da, align 8, !tbaa !35
  ret void

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21, %.noexc.i.i24
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28, %.noexc.i.i31
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.y:                                             ; preds = %bb.m
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i38, %.noexc.i.i41
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.aa:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i48, %.noexc.i.i51
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %bb.t, %bb.u, %bb.aa
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.dq, %bb.aa ], [ %i.dg, %bb.u ], [ %i.dg, %bb.t ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bu) #28
  br label %.body44

.body44:                                          ; preds = %bb.z, %bb.q, %bb.p, %.body54
  %.pn = phi { ptr, i32 } [ %eh.lpad-body55, %.body54 ], [ %i.dp, %bb.z ], [ %i.ck, %bb.q ], [ %i.ck, %bb.p ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bs) #28
  br label %bb.ab

bb.ab:                                            ; preds = %.body44, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body44 ], [ %i.do, %bb.y ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #28
  br label %.body34

.body34:                                          ; preds = %bb.x, %bb.l, %bb.k, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %i.dn, %bb.x ], [ %i.bm, %bb.l ], [ %i.bm, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #28
  br label %.body

.body:                                            ; preds = %bb.w, %bb.h, %bb.g, %.body34
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body34 ], [ %i.dm, %bb.w ], [ %i.an, %bb.h ], [ %i.an, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8FunctionC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EESA_RKS5_INS0_8ArgParamESaISB_EEbSA_PNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %7) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %5 to i8
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 13, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal8FunctionE, i64 16), ptr %0, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %8 = sdiv exact i64 %i.h, 40
  %i.i = icmp ugt i64 %8, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27
          to label %.noexc13 unwind label %bb.k

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = load ptr, ptr %3, align 8, !tbaa !209
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc13
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %.body

bb.e:                                             ; preds = %.noexc13
  store ptr %i.q, ptr %i.l, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.a, ptr %i.y, align 8, !tbaa !444
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i14, label %.noexc20, label %bb.g

bb.g:                                             ; preds = %bb.f
  %9 = sdiv exact i64 %i.af, 40
  %i.ag = icmp ugt i64 %9, 230584300921369395
  br i1 %i.ag, label %.noexc.i.i18, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15, !prof !190

.noexc.i.i18:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc19 unwind label %bb.m

.noexc19:                                         ; preds = %.noexc.i.i18
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15: ; preds = %bb.g
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27
          to label %.noexc20 unwind label %bb.m

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15, %bb.f
  %i.ai = phi ptr [ null, %bb.f ], [ %i.ah, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15 ] ; 4 uses
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !47
  %i.am = load ptr, ptr %6, align 8, !tbaa !209
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !209
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.am, ptr %i.an, ptr noundef %i.ai)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc20
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i16, label %.body21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #26
  br label %.body21

bb.j:                                             ; preds = %.noexc20
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %7, ptr %i.av, align 8, !tbaa !445
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15, %.noexc.i.i18
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body21

.body21:                                          ; preds = %bb.h, %bb.i, %bb.m
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.ap, %bb.i ], [ %i.ap, %bb.h ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #28
  br label %bb.n

bb.n:                                             ; preds = %.body21, %bb.l
  %.pn = phi { ptr, i32 } [ %eh.lpad-body22, %.body21 ], [ %i.ax, %bb.l ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #28
  br label %.body

.body:                                            ; preds = %bb.k, %bb.d, %bb.c, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.aw, %bb.k ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal8FunctionE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !130 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.af, %.lr.ph.i.i.i2 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i3) #28
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 88 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %i.ab, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !105
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #26
  br label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20
  %.05.i.i.i9 = phi ptr [ %i.bg, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit ] ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN7jsonnet8internal9Desugarer7stdFuncERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPNS0_3ASTE:bb.a
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #28
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !84
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN7jsonnet8internal8ArgParamC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.o = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27
          to label %.noexc16 unwind label %.body17.thread ; 4 uses

.noexc16:                                         ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit
  store ptr %i.o, ptr %3, align 8, !tbaa !130
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !105
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !104
  %i.s = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #27
          to label %.noexc unwind label %bb.j     ; 4 uses

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i: ; preds = %.noexc16
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #28 ; 0 uses
  invoke void @__cxa_rethrow() #29
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25
  unreachable

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i
  unreachable

.body17.thread:                                   ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 88) #26
  br label %.body

.noexc:                                           ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  invoke void @_ZN7jsonnet8internal5ApplyC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_RKS5_INS0_8ArgParamESaISD_EEbSA_SA_b(ptr noundef nonnull align 8 dereferenceable(241) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, i1 noundef zeroext true)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_5IndexESB_S6_INS0_8ArgParamESaISE_EEbSB_SB_bEEEPT_DpOT0_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 248) #26
  br label %.body11

_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_5IndexESB_S6_INS0_8ArgParamESaISE_EEbSB_SB_bEEEPT_DpOT0_.exit.i: ; preds = %.noexc
  %i.ac = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_5IndexESB_S6_INS0_8ArgParamESaISE_EEbSB_SB_bEEEPT_DpOT0_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.t, ptr %i.ae, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #28
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !84
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !84
  %i.ai = load ptr, ptr %3, align 8, !tbaa !130   ; 3 uses
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.ai, %bb.h ] ; 2 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ai, %bb.h ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #26
  br label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, %bb.i
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %i.t

bb.j:                                             ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_5IndexESB_S6_INS0_8ArgParamESaISE_EEbSB_SB_bEEEPT_DpOT0_.exit.i, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.g, %bb.j
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ab, %bb.g ]
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  br label %.body

.body:                                            ; preds = %.body17.thread, %bb.f, %.body11
  %.pn = phi { ptr, i32 } [ %eh.lpad-body12, %.body11 ], [ %i.aa, %.body17.thread ], [ %i.x, %bb.f ]
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EES6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27 ; 8 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !70
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 23, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5LocalE, i64 16), ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(160) %i.a) #28
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.b, ptr %i.e, align 8, !tbaa !249
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.a, ptr %i.h, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !84
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.d, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5IndexC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_bSC_SA_SC_SA_SC_SA_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %11) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 17, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5IndexE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.a, align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %12 = sdiv exact i64 %i.h, 40
  %i.i = icmp ugt i64 %12, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27
          to label %.noexc19 unwind label %bb.r

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = load ptr, ptr %4, align 8, !tbaa !209
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc19
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %.body

bb.e:                                             ; preds = %.noexc19
  store ptr %i.q, ptr %i.l, align 8, !tbaa !35
  %i.x = zext i1 %5 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %i.x, ptr %i.y, align 8, !tbaa !165
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %6, ptr %i.z, align 8, !tbaa !166
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i20 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i20, label %.noexc26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %13 = sdiv exact i64 %i.ag, 40
  %i.ah = icmp ugt i64 %13, 230584300921369395
  br i1 %i.ah, label %.noexc.i.i24, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21, !prof !190

.noexc.i.i24:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc25 unwind label %bb.s

.noexc25:                                         ; preds = %.noexc.i.i24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21: ; preds = %bb.f
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc26 unwind label %bb.s

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21, %bb.e
  %i.aj = phi ptr [ null, %bb.e ], [ %i.ai, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21 ] ; 4 uses
  store ptr %i.aj, ptr %i.aa, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !47
  %i.an = load ptr, ptr %7, align 8, !tbaa !209
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !209
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.an, ptr %i.ao, ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc26
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i22, label %.body27, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !47
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #26
  br label %.body27

bb.i:                                             ; preds = %.noexc26
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %8, ptr %i.aw, align 8, !tbaa !167
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.ba = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %.not.i.i.i.i30 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i30, label %.noexc36, label %bb.j

bb.j:                                             ; preds = %bb.i
  %14 = sdiv exact i64 %i.bd, 40
  %i.be = icmp ugt i64 %14, 230584300921369395
  br i1 %i.be, label %.noexc.i.i34, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i31, !prof !190

.noexc.i.i34:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc35 unwind label %bb.t

.noexc35:                                         ; preds = %.noexc.i.i34
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i31: ; preds = %bb.j
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #27
          to label %.noexc36 unwind label %bb.t

.noexc36:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i31, %bb.i
  %i.bg = phi ptr [ null, %bb.i ], [ %i.bf, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i31 ] ; 4 uses
  store ptr %i.bg, ptr %i.ax, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !47
  %i.bk = load ptr, ptr %9, align 8, !tbaa !209
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !209
  %i.bm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bk, ptr %i.bl, ptr noundef %i.bg)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc36
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i32, label %.body37, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !47
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #26
  br label %.body37

bb.m:                                             ; preds = %.noexc36
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %10, ptr %i.bt, align 8, !tbaa !168
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %i.bx = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  %.not.i.i.i.i40 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i40, label %.noexc46, label %bb.n

bb.n:                                             ; preds = %bb.m
  %15 = sdiv exact i64 %i.ca, 40
  %i.cb = icmp ugt i64 %15, 230584300921369395
  br i1 %i.cb, label %.noexc.i.i44, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i41, !prof !190

.noexc.i.i44:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc45 unwind label %bb.u

.noexc45:                                         ; preds = %.noexc.i.i44
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i41: ; preds = %bb.n
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #27
          to label %.noexc46 unwind label %bb.u

.noexc46:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i41, %bb.m
  %i.cd = phi ptr [ null, %bb.m ], [ %i.cc, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i41 ] ; 4 uses
  store ptr %i.cd, ptr %i.bu, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !47
  %i.ch = load ptr, ptr %11, align 8, !tbaa !209
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !209
  %i.cj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ch, ptr %i.ci, ptr noundef %i.cd)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %.noexc46
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i42, label %.body47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #26
  br label %.body47

bb.q:                                             ; preds = %.noexc46
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !35
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr null, ptr %i.cq, align 8, !tbaa !172
  ret void

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i21, %.noexc.i.i24
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body27

bb.t:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i31, %.noexc.i.i34
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body37

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i41, %.noexc.i.i44
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.body47:                                          ; preds = %bb.o, %bb.p, %bb.u
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.cu, %bb.u ], [ %i.ck, %bb.p ], [ %i.ck, %bb.o ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ax) #28
  br label %.body37

.body37:                                          ; preds = %bb.t, %bb.l, %bb.k, %.body47
  %.pn = phi { ptr, i32 } [ %eh.lpad-body48, %.body47 ], [ %i.ct, %bb.t ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #28
  br label %.body27

.body27:                                          ; preds = %bb.s, %bb.h, %bb.g, %.body37
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body37 ], [ %i.cs, %bb.s ], [ %i.aq, %bb.h ], [ %i.aq, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #28
  br label %.body

.body:                                            ; preds = %bb.r, %bb.d, %bb.c, %.body27
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body27 ], [ %i.cr, %bb.r ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5IndexE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !43 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
end_hunk_5
begin_hunk_6_@_ZN7jsonnet8internal5IndexD2Ev:bb.a
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i2, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.pr.i17 = load ptr, ptr %i.ab, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i22 = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i.i.i22, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35
  %.05.i.i.i24 = phi ptr [ %i.bw, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35 ], [ %i.bd, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !38 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not4.i.i.i.i.i.i.i.i25, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i26:                         ; preds = %.lr.ph.i.i.i23, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29
  %.05.i.i.i.i.i.i.i.i27 = phi ptr [ %i.bp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29 ], [ %i.bh, %.lr.ph.i.i.i23 ] ; 3 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i.i.i.i.i27, align 8, !tbaa !43 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i27, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !44
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i27, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.bp, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i26, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29
  %.pr.i.i.i.i.i.i32 = load ptr, ptr %i.bg, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, %.lr.ph.i.i.i23
  %i.bq = phi ptr [ %.pr.i.i.i.i.i.i32, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31 ], [ %i.bh, %.lr.ph.i.i.i23 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i34 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i.i.i.i.i.i34, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35: ; preds = %bb.f, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 40 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bw, %i.bf
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, label %.lr.ph.i.i.i23, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35
  %.pr.i38 = load ptr, ptr %i.bc, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21
  %i.bx = phi ptr [ %.pr.i38, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37 ], [ %i.bd, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 3 uses
  %.not.i.i1.i40 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i40, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !34 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i43 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i43, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60, label %.lr.ph.i.i.i44

.lr.ph.i.i.i44:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56
  %.05.i.i.i45 = phi ptr [ %i.cx, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56 ], [ %i.ce, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42 ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !38 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not4.i.i.i.i.i.i.i.i46, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i.i47

.lr.ph.i.i.i.i.i.i.i.i47:                         ; preds = %.lr.ph.i.i.i44, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50
  %.05.i.i.i.i.i.i.i.i48 = phi ptr [ %i.cq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50 ], [ %i.ci, %.lr.ph.i.i.i44 ] ; 3 uses
  %i.cl = load ptr, ptr %.05.i.i.i.i.i.i.i.i48, align 8, !tbaa !43 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i48, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i49: ; preds = %.lr.ph.i.i.i.i.i.i.i.i47
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !44
  %i.cp = add i64 %i.co, 1
  tail call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50: ; preds = %.lr.ph.i.i.i.i.i.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i49
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i48, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.cq, %i.ck
  br i1 %.not.i.i.i.i.i.i.i.i51, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i52, label %.lr.ph.i.i.i.i.i.i.i.i47, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i52: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50
  %.pr.i.i.i.i.i.i53 = load ptr, ptr %i.ch, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i52, %.lr.ph.i.i.i44
  %i.cr = phi ptr [ %.pr.i.i.i.i.i.i53, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i52 ], [ %i.ci, %.lr.ph.i.i.i44 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i55 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i1.i.i.i.i.i.i55, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56: ; preds = %bb.h, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 40 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.cx, %i.cg
  br i1 %.not.i.i.i57, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i58, label %.lr.ph.i.i.i44, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i58: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56
  %.pr.i59 = load ptr, ptr %i.cd, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i58, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42
  %i.cy = phi ptr [ %.pr.i59, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i58 ], [ %i.ce, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42 ] ; 3 uses
  %.not.i.i1.i61 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i1.i61, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit63, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !47
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit63

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit63: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60, %bb.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5IndexD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE19_M_range_initializeIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %3 = sdiv exact i64 %i.c, 176
  %i.d = icmp ugt i64 %3, 52405522936674862
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE17_S_check_init_lenEmRKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE17_S_check_init_lenEmRKS4_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  store ptr null, ptr %0, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !129
  br label %_ZSt22__uninitialized_copy_aIPKN7jsonnet8internal5Local4BindEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 5 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !127
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !129
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.k, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.01215.i.i.i.i = phi ptr [ %i.j, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  invoke void @_ZN7jsonnet8internal5Local4BindC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 176 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN7jsonnet8internal5Local4BindEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !446

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.g, %.016.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i.i.i.i) #28
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %.016.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIPKN7jsonnet8internal5Local4BindEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE11_M_allocateEm.exit.thread ], [ %i.k, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_13LiteralStringEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEENS3_9TokenKindERA1_KcSO_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27 ; 4 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !66
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.f, ptr %i.b, align 8, !tbaa !68
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %7, align 8, !tbaa !43
  %i.i = load i64, ptr %i.b, align 8, !tbaa !68
  store i64 %i.i, ptr %i.e, align 8, !tbaa !44
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %5, align 1, !tbaa !44
  store i8 %i.k, ptr %i.j, align 1, !tbaa !44
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %5, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !67
  %i.n = load ptr, ptr %7, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !66
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.q, ptr %i.a, align 8, !tbaa !68
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.d
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.j   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.s, ptr %8, align 8, !tbaa !43
  %i.t = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.t, ptr %i.p, align 8, !tbaa !44
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %bb.d
  %i.u = phi ptr [ %i.s, %.noexc17 ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %i.q, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i15
  %i.v = load i8, ptr %6, align 1, !tbaa !44
  store i8 %i.v, ptr %i.u, align 1, !tbaa !44
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %6, i64 %i.q, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i15
  %i.w = load i64, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !67
  %i.y = load ptr, ptr %8, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN7jsonnet8internal13LiteralStringC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEENS1_9TokenKindERKNSC_IcSD_IcESaIcEEESO_(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !44
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ae = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.e
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !44
  %i.ah = add i64 %i.ag, 1
end_hunk_6
begin_hunk_7_@_ZN7jsonnet8internal13LiteralStringC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEENS1_9TokenKindERKNSC_IcSD_IcESaIcEEESO_:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !66
  %i.af = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !68
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i17, label %._crit_edge.i.i16

.noexc.i17:                                       ; preds = %bb.h
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %bb.n   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i17
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !43
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !44
  br label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %.noexc18, %bb.h
  %i.al = phi ptr [ %i.aj, %.noexc18 ], [ %i.ae, %bb.h ] ; 2 uses
  switch i64 %i.ah, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i16
  %i.am = load i8, ptr %i.af, align 1, !tbaa !44
  store i8 %i.am, ptr %i.al, align 1, !tbaa !44
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i16
  %i.an = load i64, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !67
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i, %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

bb.m:                                             ; preds = %.noexc.i14
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %.noexc.i17
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !43  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.q
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !44
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.at, %bb.n ] ; 2 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.d
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !44
  %i.bb = shl i64 %i.ba, 2
  %i.bc = add i64 %i.bb, 4
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal13LiteralStringD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal13LiteralStringE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !44
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !44
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !44
  %i.r = shl i64 %i.q, 2
  %i.s = add i64 %i.r, 4
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal13LiteralStringD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal13LiteralStringE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !44
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26, !inline_history !447
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !44
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26, !inline_history !447
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN7jsonnet8internal13LiteralStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !44
  %i.r = shl i64 %i.q, 2
  %i.s = add i64 %i.r, 4
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.s) #26, !inline_history !447
  br label %_ZN7jsonnet8internal13LiteralStringD2Ev.exit

_ZN7jsonnet8internal13LiteralStringD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(232) %0) #28, !inline_history !447
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE19_M_range_initializeIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %3 = sdiv exact i64 %i.c, 88
  %i.d = icmp ugt i64 %3, 104811045873349725
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  store ptr null, ptr %0, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !105
  br label %_ZSt22__uninitialized_copy_aIPKN7jsonnet8internal8ArgParamEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 5 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !105
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.k, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.01215.i.i.i.i = phi ptr [ %i.j, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 88 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN7jsonnet8internal8ArgParamEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !448

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.g, %.016.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i.i.i.i) #28
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %.016.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIPKN7jsonnet8internal8ArgParamEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE11_M_allocateEm.exit.thread ], [ %i.k, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer7stdFuncERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPNS0_3ASTESE_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::vector.83", align 8    ; 11 uses
  %6 = alloca [2 x %"struct.jsonnet::internal::ArgParam"], align 8 ; 11 uses
  %i.b = tail call noundef ptr @_ZN7jsonnet8internal9Desugarer3stdEv(ptr noundef nonnull align 8 dereferenceable(9) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 5, ptr %i.a, align 4, !tbaa !72
  %i.c = load ptr, ptr %0, align 8, !tbaa !64
  %i.d = call noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_13LiteralStringEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEENS3_9TokenKindERA1_KcSO_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @.str.113, ptr noundef nonnull align 1 dereferenceable(1) @.str.113)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.e = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.f = call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #27 ; 4 uses
  invoke void @_ZN7jsonnet8internal5IndexC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_bSC_SA_SC_SA_SC_SA_(ptr noundef nonnull align 8 dereferenceable(272) %i.f, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, i1 noundef zeroext false, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit unwind label %bb.b

common.resume:                                    ; preds = %.loopexit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn.pn, %.loopexit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 272) #26
  br label %common.resume

_ZN7jsonnet8internal9Desugarer4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.i = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.f, ptr %i.j, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h) #28
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !84
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN7jsonnet8internal8ArgParamC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.c:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  invoke void @_ZN7jsonnet8internal8ArgParamC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.d unwind label %.loopexit.loopexit28

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.p = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %.noexc18 unwind label %.body19.thread ; 7 uses

.noexc18:                                         ; preds = %bb.d
  store ptr %i.p, ptr %5, align 8, !tbaa !130
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !105
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %6)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread34

.thread34:                                        ; preds = %.noexc18
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %i.t) #28 ; 0 uses
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc18
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %i.o)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !104
  %i.y = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.z = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #27
          to label %.noexc unwind label %bb.l     ; 4 uses

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = call ptr @__cxa_begin_catch(ptr %i.ab) #28 ; 0 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.p) #28
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread34
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i
  unreachable

.body19.thread:                                   ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.cb = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !209
  store <2 x ptr> %i.cb, ptr %i.bz, align 8, !tbaa !209
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !47
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i ], [ %i.p, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i ], [ %i.c, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 288 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit ], [ %i.cg, %.lr.ph.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 288 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cj, %.lr.ph.i.i.i17 ], [ %i.ch, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ci, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i18, ptr noundef %.0911.i.i.i19, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 288 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 288 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ci, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !14

_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ch, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.cj, %.lr.ph.i.i.i17 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !264
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cn) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !260
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !261
  %i.co = getelementptr inbounds nuw [288 x i8], ptr %i.p, i64 %i.l
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !264
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !216
  store i32 %i.a, ptr %0, align 8, !tbaa !216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !209
  store <2 x ptr> %i.d, ptr %i.b, align 8, !tbaa !209
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  store ptr %i.g, ptr %i.e, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !209
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !209
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  store ptr %i.m, ptr %i.k, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !209
  store <2 x ptr> %i.p, ptr %i.n, align 8, !tbaa !209
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  store ptr %i.s, ptr %i.q, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !209
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !209
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  store ptr %i.y, ptr %i.w, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !66
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !67 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !43
  %i.al = load i64, ptr %i.af, align 8, !tbaa !44
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !44
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit

_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit:    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = phi i64 [ %i.ai, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !67
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !43
  store i64 0, ptr %i.an, align 8, !tbaa !67
  store i8 0, ptr %i.af, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !147
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !147
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !105
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !272, !range !98, !noundef !99
  store i8 %i.az, ptr %i.ax, align 8, !tbaa !272
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !209
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !209
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !209
  store <2 x ptr> %i.bk, ptr %i.bi, align 8, !tbaa !209
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  tail call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %1) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ObjectFieldC2ENS1_4KindERKSt6vectorINS0_13FodderElementESaIS4_EES8_S8_S8_NS1_4HideEbbPNS0_3ASTEPKNS0_10IdentifierERKNS0_13LocationRangeERKS3_INS0_8ArgParamESaISI_EEbS8_SB_SB_S8_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext %13, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef %15, ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(24) %17) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = zext i1 %7 to i8
  %i.c = zext i1 %8 to i8
  %i.d = zext i1 %13 to i8
  store i32 %1, ptr %0, align 8, !tbaa !216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %18 = sdiv exact i64 %i.k, 40
  %i.l = icmp ugt i64 %18, 230584300921369395
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %i.e, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !47
  %i.r = load ptr, ptr %2, align 8, !tbaa !209
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !209
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.r, ptr %i.s, ptr noundef %i.n)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body ], [ %i.u, %bb.e ], [ %i.u, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.t, ptr %i.o, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i31 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i31, label %.noexc36, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %19 = sdiv exact i64 %i.ag, 40
  %i.ah = icmp ugt i64 %19, 230584300921369395
  br i1 %i.ah, label %.noexc.i.i35, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i32, !prof !190

.noexc.i.i35:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %.noexc.i.i35
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i32: ; preds = %bb.f
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc36 unwind label %bb.ad

.noexc36:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i32, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.aj = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ai, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i32 ] ; 4 uses
  store ptr %i.aj, ptr %i.aa, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !47
  %i.an = load ptr, ptr %3, align 8, !tbaa !209
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !209
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.an, ptr %i.ao, ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc36
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i33, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !47
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #26
  br label %.body

bb.i:                                             ; preds = %.noexc36
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 2 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i38 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i38, label %.noexc44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %20 = sdiv exact i64 %i.bc, 40
  %i.bd = icmp ugt i64 %20, 230584300921369395
  br i1 %i.bd, label %.noexc.i.i42, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i39, !prof !190

.noexc.i.i42:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc43 unwind label %bb.ae

.noexc43:                                         ; preds = %.noexc.i.i42
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i39: ; preds = %bb.j
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #27
          to label %.noexc44 unwind label %bb.ae

.noexc44:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i39, %bb.i
  %i.bf = phi ptr [ null, %bb.i ], [ %i.be, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i39 ] ; 4 uses
  store ptr %i.bf, ptr %i.aw, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !47
  %i.bj = load ptr, ptr %4, align 8, !tbaa !209
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !209
  %i.bl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bj, ptr %i.bk, ptr noundef %i.bf)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc44
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i40, label %.body45, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #26
  br label %.body45

bb.m:                                             ; preds = %.noexc44
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !35 ; 2 uses
  %i.bv = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %.not.i.i.i.i48 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.i48, label %.noexc54, label %bb.n

bb.n:                                             ; preds = %bb.m
  %21 = sdiv exact i64 %i.by, 40
  %i.bz = icmp ugt i64 %21, 230584300921369395
  br i1 %i.bz, label %.noexc.i.i52, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i49, !prof !190

.noexc.i.i52:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc53 unwind label %bb.af

.noexc53:                                         ; preds = %.noexc.i.i52
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i49: ; preds = %bb.n
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #27
          to label %.noexc54 unwind label %bb.af

.noexc54:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i49, %bb.m
  %i.cb = phi ptr [ null, %bb.m ], [ %i.ca, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i49 ] ; 4 uses
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !47
  %i.cf = load ptr, ptr %5, align 8, !tbaa !209
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !209
  %i.ch = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.cf, ptr %i.cg, ptr noundef %i.cb)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %.noexc54
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i50, label %.body55, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !47
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cn) #26
  br label %.body55

bb.q:                                             ; preds = %.noexc54
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %6, ptr %i.co, align 8, !tbaa !460
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %i.b, ptr %i.cp, align 4, !tbaa !266
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 %i.c, ptr %i.cq, align 1, !tbaa !262
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %9, ptr %i.cr, align 8, !tbaa !228
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %10, ptr %i.cs, align 8, !tbaa !263
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !66
  %i.cv = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !68
  %i.cy = icmp ugt i64 %i.cx, 15
  br i1 %i.cy, label %.noexc.i.i58, label %._crit_edge.i.i.i

.noexc.i.i58:                                     ; preds = %bb.q
  %i.cz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc59 unwind label %bb.ag  ; 2 uses

.noexc59:                                         ; preds = %.noexc.i.i58
  store ptr %i.cz, ptr %i.ct, align 8, !tbaa !43
  %i.da = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !44
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc59, %bb.q
  %i.db = phi ptr [ %i.cz, %.noexc59 ], [ %i.cu, %bb.q ] ; 2 uses
  switch i64 %i.cx, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.dc = load i8, ptr %i.cv, align 1, !tbaa !44
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !44
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.cv, i64 %i.cx, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !67
  %i.df = load ptr, ptr %i.ct, align 8, !tbaa !43
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd
  store i8 0, ptr %i.dg, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 32, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.u unwind label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.d, ptr %i.dk, align 8, !tbaa !272
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !35 ; 2 uses
  %i.do = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i60 = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i.i.i.i60, label %.noexc66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %22 = sdiv exact i64 %i.dr, 40
  %i.ds = icmp ugt i64 %22, 230584300921369395
  br i1 %i.ds, label %.noexc.i.i64, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i61, !prof !190

.noexc.i.i64:                                     ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc65 unwind label %bb.ai

.noexc65:                                         ; preds = %.noexc.i.i64
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i61: ; preds = %bb.v
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #27
          to label %.noexc66 unwind label %bb.ai

.noexc66:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i61, %bb.u
  %i.du = phi ptr [ null, %bb.u ], [ %i.dt, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i61 ] ; 4 uses
  store ptr %i.du, ptr %i.dl, align 8, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !35
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dr
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !47
  %i.dy = load ptr, ptr %14, align 8, !tbaa !209
  %i.dz = load ptr, ptr %i.dm, align 8, !tbaa !209
  %i.ea = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.dy, ptr %i.dz, ptr noundef %i.du)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %.noexc66
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %i.dl, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i62, label %.body67, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !47
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #26
  br label %.body67

bb.y:                                             ; preds = %.noexc66
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !35
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %15, ptr %i.eh, align 8, !tbaa !229
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %16, ptr %i.ei, align 8, !tbaa !258
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !35 ; 2 uses
  %i.em = load ptr, ptr %17, align 8, !tbaa !34   ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %i.el, %i.em
  br i1 %.not.i.i.i.i70, label %.noexc76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %23 = sdiv exact i64 %i.ep, 40
  %i.eq = icmp ugt i64 %23, 230584300921369395
  br i1 %i.eq, label %.noexc.i.i74, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i71, !prof !190

.noexc.i.i74:                                     ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc75 unwind label %bb.aj

.noexc75:                                         ; preds = %.noexc.i.i74
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i71: ; preds = %bb.z
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #27
          to label %.noexc76 unwind label %bb.aj

.noexc76:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i71, %bb.y
  %i.es = phi ptr [ null, %bb.y ], [ %i.er, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i71 ] ; 4 uses
  store ptr %i.es, ptr %i.ej, align 8, !tbaa !34
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !47
  %i.ew = load ptr, ptr %17, align 8, !tbaa !209
  %i.ex = load ptr, ptr %i.ek, align 8, !tbaa !209
  %i.ey = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ew, ptr %i.ex, ptr noundef %i.es)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %.noexc76
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %i.ej, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i72, label %.body77, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !47
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #26
  br label %.body77

bb.ac:                                            ; preds = %.noexc76
  store ptr %i.ey, ptr %i.et, align 8, !tbaa !35
  ret void

bb.ad:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i32, %.noexc.i.i35
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i39, %.noexc.i.i42
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i49, %.noexc.i.i52
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body55

bb.ag:                                            ; preds = %.noexc.i.i58
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

bb.ah:                                            ; preds = %bb.t
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ai:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i61, %.noexc.i.i64
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body67

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i71, %.noexc.i.i74
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.body77:                                          ; preds = %bb.aa, %bb.ab, %bb.aj
  %eh.lpad-body78 = phi { ptr, i32 } [ %i.fl, %bb.aj ], [ %i.ez, %bb.ab ], [ %i.ez, %bb.aa ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dl) #28
  br label %.body67

.body67:                                          ; preds = %bb.ai, %bb.x, %bb.w, %.body77
  %.pn = phi { ptr, i32 } [ %eh.lpad-body78, %.body77 ], [ %i.fk, %bb.ai ], [ %i.eb, %bb.x ], [ %i.eb, %bb.w ]
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dj) #28
  br label %bb.ak

bb.ak:                                            ; preds = %.body67, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body67 ], [ %i.fj, %bb.ah ] ; 2 uses
  %i.fm = load ptr, ptr %i.ct, align 8, !tbaa !43 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.cu
  br i1 %i.fn, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.fo = load i64, ptr %i.cu, align 8, !tbaa !44
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #26
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ag
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.ag ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.pn, %bb.ak ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bs) #28
  br label %.body55

.body55:                                          ; preds = %bb.af, %bb.p, %bb.o, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit ], [ %i.fh, %bb.af ], [ %i.ci, %bb.p ], [ %i.ci, %bb.o ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #28
  br label %.body45

.body45:                                          ; preds = %bb.ae, %bb.l, %bb.k, %.body55
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body55 ], [ %i.fg, %bb.ae ], [ %i.bm, %bb.l ], [ %i.bm, %bb.k ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #28
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.h, %bb.g, %.body45
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body45 ], [ %i.ff, %bb.ad ], [ %i.aq, %bb.h ], [ %i.aq, %bb.g ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !260    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 288
  %i.g = icmp ugt i64 %2, 32025597350190193
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal11ObjectFieldEE8allocateEmPKv.exit.i.i.i, !prof !190

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal11ObjectFieldEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal11ObjectFieldEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal11ObjectFieldEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !260
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !261
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !264
  %i.m = load ptr, ptr %1, align 8, !tbaa !213    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal11ObjectFieldESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7jsonnet8internal11ObjectFieldC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(288) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 288 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal11ObjectFieldESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !461

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #28 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %.05.i.i.i.i.i.i) #28
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #25
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal11ObjectFieldESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !261
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !260    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !264
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

declare void @_ZN7jsonnet8internal12CompilerPass4exprERPNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %.05.i.i) #28
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 288 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !13

_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !260
  br label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal14LiteralBooleanD0Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ObjectFieldC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !216
  store i32 %i.b, ptr %0, align 8, !tbaa !216
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.j, 40
  %i.k = icmp ugt i64 %2, 230584300921369395
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !47
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !209
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !209
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.q, ptr %i.r, ptr noundef %i.m)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body ], [ %i.t, %bb.e ], [ %i.t, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.s, ptr %i.n, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i26 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i26, label %.noexc31, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %3 = sdiv exact i64 %i.ag, 40
  %i.ah = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ah, label %.noexc.i.i30, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, !prof !190

.noexc.i.i30:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %.noexc.i.i30
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27: ; preds = %bb.f
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc31 unwind label %bb.ad

.noexc31:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.aj = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ai, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27 ] ; 4 uses
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !47
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !209
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !209
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.an, ptr %i.ao, ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc31
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i28, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !47
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #26
  br label %.body

bb.i:                                             ; preds = %.noexc31
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !34 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i33 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i33, label %.noexc39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sdiv exact i64 %i.bd, 40
  %i.be = icmp ugt i64 %4, 230584300921369395
  br i1 %i.be, label %.noexc.i.i37, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34, !prof !190

.noexc.i.i37:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc38 unwind label %bb.ae

.noexc38:                                         ; preds = %.noexc.i.i37
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34: ; preds = %bb.j
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #27
          to label %.noexc39 unwind label %bb.ae

.noexc39:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34, %bb.i
  %i.bg = phi ptr [ null, %bb.i ], [ %i.bf, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34 ] ; 4 uses
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !47
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !209
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !209
  %i.bm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bk, ptr %i.bl, ptr noundef %i.bg)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc39
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i35, label %.body40, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !47
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #26
  br label %.body40

bb.m:                                             ; preds = %.noexc39
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %.not.i.i.i.i43 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i43, label %.noexc49, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = sdiv exact i64 %i.ca, 40
  %i.cb = icmp ugt i64 %5, 230584300921369395
  br i1 %i.cb, label %.noexc.i.i47, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44, !prof !190

.noexc.i.i47:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc48 unwind label %bb.af

.noexc48:                                         ; preds = %.noexc.i.i47
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44: ; preds = %bb.n
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #27
          to label %.noexc49 unwind label %bb.af

.noexc49:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44, %bb.m
  %i.cd = phi ptr [ null, %bb.m ], [ %i.cc, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44 ] ; 4 uses
  store ptr %i.cd, ptr %i.bt, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !47
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !209
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !209
  %i.cj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ch, ptr %i.ci, ptr noundef %i.cd)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %.noexc49
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i45, label %.body50, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #26
  br label %.body50

bb.q:                                             ; preds = %.noexc49
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !35
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !66
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !43 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !68
  %i.cy = icmp ugt i64 %i.cx, 15
  br i1 %i.cy, label %.noexc.i.i53, label %._crit_edge.i.i.i

.noexc.i.i53:                                     ; preds = %bb.q
  %i.cz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc54 unwind label %bb.ag  ; 2 uses

.noexc54:                                         ; preds = %.noexc.i.i53
  store ptr %i.cz, ptr %i.cs, align 8, !tbaa !43
  %i.da = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !44
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc54, %bb.q
  %i.db = phi ptr [ %i.cz, %.noexc54 ], [ %i.cu, %bb.q ] ; 2 uses
  switch i64 %i.cx, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.dc = load i8, ptr %i.cv, align 1, !tbaa !44
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !44
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.cv, i64 %i.cx, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !67
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !43
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd
  store i8 0, ptr %i.dg, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 32, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %bb.u unwind label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !272, !range !98, !noundef !99
  store i8 %i.dn, ptr %i.dl, align 8, !tbaa !272
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !35 ; 2 uses
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !34 ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  %.not.i.i.i.i55 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i.i.i.i55, label %.noexc61, label %bb.v

bb.v:                                             ; preds = %bb.u
  %6 = sdiv exact i64 %i.dv, 40
  %i.dw = icmp ugt i64 %6, 230584300921369395
  br i1 %i.dw, label %.noexc.i.i59, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56, !prof !190

.noexc.i.i59:                                     ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc60 unwind label %bb.ai

.noexc60:                                         ; preds = %.noexc.i.i59
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56: ; preds = %bb.v
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #27
          to label %.noexc61 unwind label %bb.ai

.noexc61:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56, %bb.u
  %i.dy = phi ptr [ null, %bb.u ], [ %i.dx, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56 ] ; 4 uses
  store ptr %i.dy, ptr %i.do, align 8, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !47
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !209
  %i.ed = load ptr, ptr %i.dq, align 8, !tbaa !209
  %i.ee = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ec, ptr %i.ed, ptr noundef %i.dy)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %.noexc61
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %i.do, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i57, label %.body62, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !47
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #26
  br label %.body62

bb.y:                                             ; preds = %.noexc61
  store ptr %i.ee, ptr %i.dz, align 8, !tbaa !35
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !35 ; 2 uses
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !34 ; 2 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i8 0, i64 24, i1 false)
  %.not.i.i.i.i65 = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i.i.i65, label %.noexc71, label %bb.z

bb.z:                                             ; preds = %bb.y
  %7 = sdiv exact i64 %i.eu, 40
  %i.ev = icmp ugt i64 %7, 230584300921369395
  br i1 %i.ev, label %.noexc.i.i69, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66, !prof !190

.noexc.i.i69:                                     ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc70 unwind label %bb.aj

.noexc70:                                         ; preds = %.noexc.i.i69
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66: ; preds = %bb.z
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #27
          to label %.noexc71 unwind label %bb.aj

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66, %bb.y
  %i.ex = phi ptr [ null, %bb.y ], [ %i.ew, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66 ] ; 4 uses
  store ptr %i.ex, ptr %i.en, align 8, !tbaa !34
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eu
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !47
  %i.fb = load ptr, ptr %i.eo, align 8, !tbaa !209
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !209
  %i.fd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.fb, ptr %i.fc, ptr noundef %i.ex)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %.noexc71
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %i.en, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i67, label %.body72, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !47
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fj) #26
  br label %.body72

bb.ac:                                            ; preds = %.noexc71
  store ptr %i.fd, ptr %i.ey, align 8, !tbaa !35
  ret void

bb.ad:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, %.noexc.i.i30
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34, %.noexc.i.i37
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44, %.noexc.i.i47
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.ag:                                            ; preds = %.noexc.i.i53
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

bb.ah:                                            ; preds = %bb.t
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ai:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56, %.noexc.i.i59
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body62

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66, %.noexc.i.i69
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body72

.body72:                                          ; preds = %bb.aa, %bb.ab, %bb.aj
  %eh.lpad-body73 = phi { ptr, i32 } [ %i.fq, %bb.aj ], [ %i.fe, %bb.ab ], [ %i.fe, %bb.aa ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.do) #28
  br label %.body62

.body62:                                          ; preds = %bb.ai, %bb.x, %bb.w, %.body72
  %.pn = phi { ptr, i32 } [ %eh.lpad-body73, %.body72 ], [ %i.fp, %bb.ai ], [ %i.ef, %bb.x ], [ %i.ef, %bb.w ]
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dj) #28
  br label %bb.ak

bb.ak:                                            ; preds = %.body62, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body62 ], [ %i.fo, %bb.ah ] ; 2 uses
  %i.fr = load ptr, ptr %i.cs, align 8, !tbaa !43 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.cu
  br i1 %i.fs, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.ft = load i64, ptr %i.cu, align 8, !tbaa !44
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #26
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ag
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fn, %bb.ag ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.pn, %bb.ak ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bt) #28
  br label %.body50

.body50:                                          ; preds = %bb.af, %bb.p, %bb.o, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit ], [ %i.fm, %bb.af ], [ %i.ck, %bb.p ], [ %i.ck, %bb.o ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #28
  br label %.body40

.body40:                                          ; preds = %bb.ae, %bb.l, %bb.k, %.body50
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body50 ], [ %i.fl, %bb.ae ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #28
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.h, %bb.g, %.body40
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body40 ], [ %i.fk, %bb.ad ], [ %i.aq, %bb.h ], [ %i.aq, %bb.g ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(288) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !260    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775584
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
  unreachable

_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 288                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 32025597350190193)
  %i.l = select i1 %i.j, i64 32025597350190193, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 288                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN7jsonnet8internal11ObjectFieldC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(288) %i.q, ptr noundef nonnull align 8 dereferenceable(288) %2)
          to label %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 288 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 288 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i28, ptr noundef %.0911.i.i.i29, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 288 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 288 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !14

_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !264
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !260
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !261
end_hunk_8
begin_hunk_9_@_ZN7jsonnet8internal13UStringStreamlsIjEERS1_T_:bb.a
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEj.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !238, !noalias !491 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !43, !alias.scope !491 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !44, !alias.scope !491
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #26
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %i.x = load i64, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %.not16 = icmp samesign eq i64 %i.x, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i64, ptr %i.z, align 8, !tbaa !52
  %.pre18 = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre19 = load ptr, ptr %3, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = phi ptr [ %.pre19, %._crit_edge.loopexit ], [ %i.w, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !44
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !107
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !107
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #28
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !107
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !107
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !243
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.az) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %0

bb.e:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %i.bb = phi ptr [ %.pre18, %.lr.ph ], [ %i.bl, %bb.h ] ; 2 uses
  %i.bc = phi i64 [ %.pre, %.lr.ph ], [ %i.bf, %bb.h ] ; 4 uses
  %.sroa.013.017 = phi ptr [ %i.w, %.lr.ph ], [ %i.bo, %bb.h ] ; 2 uses
  %i.bd = load i8, ptr %.sroa.013.017, align 1, !tbaa !44
  %i.be = sext i8 %i.bd to i32
  %i.bf = add i64 %i.bc, 1                        ; 4 uses
  %i.bg = icmp eq ptr %i.bb, %i.aa
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  %i.bh = icmp ult i64 %i.bc, 4
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.bi = load i64, ptr %i.aa, align 8, !tbaa !44
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i ]
  %i.bk = icmp ugt i64 %i.bf, %i.bj
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %i.bl = phi ptr [ %.pre.i, %.noexc ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bc
  store i32 %i.be, ptr %i.bm, align 4, !tbaa !54
  store i64 %i.bf, ptr %i.z, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bf
  store i32 0, ptr %i.bn, align 4, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.y
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.d
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.i
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !44
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.e ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN7jsonnet8internal12CompilerPass9visitExprERPNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal7InSuperC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_SA_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 18, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal7InSuperE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.a, align 8, !tbaa !493
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = sdiv exact i64 %i.h, 40
  %i.i = icmp ugt i64 %6, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = load ptr, ptr %4, align 8, !tbaa !209
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc9
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %.body

bb.e:                                             ; preds = %.noexc9
  store ptr %i.q, ptr %i.l, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i10, label %.noexc16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %7 = sdiv exact i64 %i.ad, 40
  %i.ae = icmp ugt i64 %7, 230584300921369395
  br i1 %i.ae, label %.noexc.i.i14, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, !prof !190

.noexc.i.i14:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc15 unwind label %bb.k

.noexc15:                                         ; preds = %.noexc.i.i14
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11: ; preds = %bb.f
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #27
          to label %.noexc16 unwind label %bb.k

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %bb.e
  %i.ag = phi ptr [ null, %bb.e ], [ %i.af, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11 ] ; 4 uses
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !47
  %i.ak = load ptr, ptr %5, align 8, !tbaa !209
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ak, ptr %i.al, ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc16
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i12, label %.body17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #26
  br label %.body17

bb.i:                                             ; preds = %.noexc16
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !35
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %.noexc.i.i14
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.g, %bb.h, %bb.k
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.an, %bb.h ], [ %i.an, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #28
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.body17
  %.pn = phi { ptr, i32 } [ %eh.lpad-body18, %.body17 ], [ %i.at, %bb.j ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal7InSuperD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal7InSuperE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !43 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i2, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.pr.i17 = load ptr, ptr %i.ab, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, %bb.e
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal7InSuperD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal7InSuperD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal10SuperIndexC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EESA_PNS0_3ASTESA_PKNS0_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 29, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal10SuperIndexE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %7 = sdiv exact i64 %i.g, 40
  %i.h = icmp ugt i64 %7, 230584300921369395
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
          to label %.noexc10 unwind label %bb.j

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !47
  %i.n = load ptr, ptr %3, align 8, !tbaa !209
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.n, ptr %i.o, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc10
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #26
  br label %.body

bb.e:                                             ; preds = %.noexc10
  store ptr %i.p, ptr %i.k, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %4, ptr %i.w, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i11, label %.noexc17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %8 = sdiv exact i64 %i.ad, 40
  %i.ae = icmp ugt i64 %8, 230584300921369395
  br i1 %i.ae, label %.noexc.i.i15, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12, !prof !190

.noexc.i.i15:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc16 unwind label %bb.k

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12: ; preds = %bb.f
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #27
          to label %.noexc17 unwind label %bb.k

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12, %bb.e
  %i.ag = phi ptr [ null, %bb.e ], [ %i.af, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12 ] ; 4 uses
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !47
  %i.ak = load ptr, ptr %5, align 8, !tbaa !209
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ak, ptr %i.al, ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc17
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i13, label %.body18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #26
  br label %.body18

bb.i:                                             ; preds = %.noexc17
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %6, ptr %i.at, align 8, !tbaa !183
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12, %.noexc.i.i15
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %bb.g, %bb.h, %bb.k
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.an, %bb.h ], [ %i.an, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #28
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.body18
  %.pn = phi { ptr, i32 } [ %eh.lpad-body19, %.body18 ], [ %i.au, %bb.j ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal10SuperIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal10SuperIndexE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !43 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i2, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.pr.i17 = load ptr, ptr %i.ab, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, %bb.e
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal10SuperIndexD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal10SuperIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal15DesugaredObjectC2ERKNS0_13LocationRangeERKNSt7__cxx114listIPNS0_3ASTESaIS8_EEERKSt6vectorINS1_5FieldESaISE_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !34     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.a, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !44
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal15DesugaredObjectE, i64 16), ptr %0, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !210
  store ptr %i.aa, ptr %i.aa, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !211
  %i.ad = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ad, %2
  br i1 %.not4.i.i, label %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.ak, %.noexc.i ], [ %i.ad, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 2 uses
  %i.ae = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !70
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #28
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !84
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !84
  %i.ak = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i, !llvm.loop !494

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.am, %i.aa
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %bb.e, %.lr.ph.i.i.i9
  %.09.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i9 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = load ptr, ptr %.09.i.i.i, align 8, !tbaa !96 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #26
  %.not.i.i.i10 = icmp eq ptr %i.an, %i.aa
  br i1 %.not.i.i.i10, label %.body, label %.lr.ph.i.i.i9, !llvm.loop !9

_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit: ; preds = %.noexc.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !92 ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !93    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i.i.i, label %.noexc11, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit
  %5 = sdiv exact i64 %i.au, 24
  %i.av = icmp ugt i64 %5, 384307168202282325
  br i1 %i.av, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #27
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit
  %i.ax = phi ptr [ null, %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit ], [ %i.aw, %_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ax, ptr %i.ao, align 8, !tbaa !93
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !89
  %i.bb = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !78 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc11, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.ax, %.noexc11 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc11 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !495

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc11
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %.noexc11 ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !92
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bh, %i.aa
  br i1 %.not8.i.i, label %.body, label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %bb.h, %.lr.ph.i.i12
  %.09.i.i = phi ptr [ %i.bi, %.lr.ph.i.i12 ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bi = load ptr, ptr %.09.i.i, align 8, !tbaa !96 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #26
  %.not.i.i13 = icmp eq ptr %i.bi, %i.aa
  br i1 %.not.i.i13, label %.body, label %.lr.ph.i.i12, !llvm.loop !9

.body:                                            ; preds = %.lr.ph.i.i.i9, %.lr.ph.i.i12, %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.al, %bb.e ], [ %i.bg, %bb.h ], [ %i.bg, %.lr.ph.i.i12 ], [ %i.al, %.lr.ph.i.i.i9 ]
  call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bf, %bb.g ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal15DesugaredObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal15DesugaredObjectE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.i, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit ] ; 2 uses
  %i.j = load ptr, ptr %.09.i.i, align 8, !tbaa !96 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #26
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !9

_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal15DesugaredObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal15DesugaredObjectE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26, !inline_history !496
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not8.i.i.i, label %_ZN7jsonnet8internal15DesugaredObjectD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.i, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.09.i.i.i, align 8, !tbaa !96 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #26, !inline_history !496
  %.not.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i, label %_ZN7jsonnet8internal15DesugaredObjectD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !9

_ZN7jsonnet8internal15DesugaredObjectD2Ev.exit:   ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(176) %0) #28, !inline_history !496
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !209
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  store ptr %i.h, ptr %i.f, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %1, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !274
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !274
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !209
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !209
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.p, ptr noundef nonnull align 8 dereferenceable(9) %i.q, i64 9, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !209
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !209
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  store ptr %i.w, ptr %i.u, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !147
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !105
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !251, !range !98, !noundef !99
  store i8 %i.af, ptr %i.ad, align 8, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !209
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !105, !alias.scope !505, !noalias !504
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !105, !alias.scope !504, !noalias !505
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false), !alias.scope !505, !noalias !504
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !251, !range !98, !alias.scope !505, !noalias !504, !noundef !99
  store i8 %i.cg, ptr %i.ce, align 8, !tbaa !251, !alias.scope !504, !noalias !505
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128 ; 2 uses
  %i.cj = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !209, !alias.scope !505, !noalias !504
  store <2 x ptr> %i.cj, ptr %i.ch, align 8, !tbaa !209, !alias.scope !504, !noalias !505
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !47, !alias.scope !505, !noalias !504
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !47, !alias.scope !504, !noalias !505
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false), !alias.scope !505, !noalias !504
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.cp = load <2 x ptr>, ptr %i.co, align 8, !tbaa !209, !alias.scope !505, !noalias !504
  store <2 x ptr> %i.cp, ptr %i.cn, align 8, !tbaa !209, !alias.scope !504, !noalias !505
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 168
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 168
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !47, !alias.scope !505, !noalias !504
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !47, !alias.scope !504, !noalias !505
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false), !alias.scope !505, !noalias !504
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0911.i.i.i) #28, !noalias !504
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !500

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.cu, %.lr.ph.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 176 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.el, %.lr.ph.i.i.i17 ], [ %i.cv, %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 15 uses
  %.0911.i.i.i19 = phi ptr [ %i.ek, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.cw = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !209, !alias.scope !508, !noalias !507
  store <2 x ptr> %i.cw, ptr %.012.i.i.i18, align 8, !tbaa !209, !alias.scope !507, !noalias !508
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !47, !alias.scope !508, !noalias !507
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !47, !alias.scope !507, !noalias !508
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !508, !noalias !507
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.dd = load <2 x ptr>, ptr %i.db, align 8, !tbaa !274, !alias.scope !508, !noalias !507
  store <2 x ptr> %i.dd, ptr %i.da, align 8, !tbaa !274, !alias.scope !507, !noalias !508
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.dg = load <2 x ptr>, ptr %i.df, align 8, !tbaa !209, !alias.scope !508, !noalias !507
  store <2 x ptr> %i.dg, ptr %i.de, align 8, !tbaa !209, !alias.scope !507, !noalias !508
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false), !alias.scope !508, !noalias !507
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dh, ptr noundef nonnull align 8 dereferenceable(9) %i.di, i64 9, i1 false), !alias.scope !509
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %i.dk, align 8, !tbaa !209, !alias.scope !508, !noalias !507
  store <2 x ptr> %i.dl, ptr %i.dj, align 8, !tbaa !209, !alias.scope !507, !noalias !508
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 88
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !47, !alias.scope !508, !noalias !507
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !47, !alias.scope !507, !noalias !508
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false), !alias.scope !508, !noalias !507
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 96
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 96 ; 2 uses
  %i.dr = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !147, !alias.scope !508, !noalias !507
  store <2 x ptr> %i.dr, ptr %i.dp, align 8, !tbaa !147, !alias.scope !507, !noalias !508
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 112
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 112
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !105, !alias.scope !508, !noalias !507
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !105, !alias.scope !507, !noalias !508
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false), !alias.scope !508, !noalias !507
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 120
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 120
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !251, !range !98, !alias.scope !508, !noalias !507, !noundef !99
  store i8 %i.dx, ptr %i.dv, align 8, !tbaa !251, !alias.scope !507, !noalias !508
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 128
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 128 ; 2 uses
  %i.ea = load <2 x ptr>, ptr %i.dz, align 8, !tbaa !209, !alias.scope !508, !noalias !507
  store <2 x ptr> %i.ea, ptr %i.dy, align 8, !tbaa !209, !alias.scope !507, !noalias !508
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 144
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 144
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !47, !alias.scope !508, !noalias !507
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !47, !alias.scope !507, !noalias !508
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i8 0, i64 24, i1 false), !alias.scope !508, !noalias !507
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 152
  %i.ef = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 152 ; 2 uses
  %i.eg = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !209, !alias.scope !508, !noalias !507
  store <2 x ptr> %i.eg, ptr %i.ee, align 8, !tbaa !209, !alias.scope !507, !noalias !508
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 168
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 168
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !47, !alias.scope !508, !noalias !507
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !47, !alias.scope !507, !noalias !508
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false), !alias.scope !508, !noalias !507
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0911.i.i.i19) #28, !noalias !507
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 176 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 176 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ek, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !500

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.cv, %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.el, %.lr.ph.i.i.i17 ]
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !129
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ep) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !127
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !128
  %i.eq = getelementptr inbounds nuw [176 x i8], ptr %i.p, i64 %i.l
  store ptr %i.eq, ptr %i.em, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27 ; 8 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !70
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 23, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5LocalE, i64 16), ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(160) %i.a) #28
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.b, ptr %i.e, align 8, !tbaa !249
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.a, ptr %i.h, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !84
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.d, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12emplace_backIJPNS1_3VarERKS_INS1_13FodderElementESaIS9_EEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !155
  store ptr %i.e, ptr %i.b, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = sdiv exact i64 %i.l, 40
  %i.m = icmp ugt i64 %3, 230584300921369395
  br i1 %i.m, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, !prof !190

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.o = phi ptr [ null, %bb.b ], [ %i.n, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.o, ptr %i.f, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !47
  %i.s = load ptr, ptr %2, align 8, !tbaa !209
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.s, ptr %i.t, ptr noundef %i.o)
          to label %_ZN7jsonnet8internal5Array7ElementC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS6_EE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit.i.i

_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.v

_ZN7jsonnet8internal5Array7ElementC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS6_EE.exit: ; preds = %bb.d
  store ptr %i.u, ptr %i.p, align 8, !tbaa !35
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !235
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE17_M_realloc_insertIJPNS1_3VarERKS_INS1_13FodderElementESaIS9_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !149
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7jsonnet8internal5Array7ElementC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS6_EE.exit
  %i.ad = phi ptr [ %.pre, %bb.g ], [ %i.ac, %_ZN7jsonnet8internal5Array7ElementC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS6_EE.exit ]
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -32
  ret ptr %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE17_M_realloc_insertIJPNS1_3VarERKS_INS1_13FodderElementESaIS9_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !233    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
  unreachable

_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !155
  store ptr %i.r, ptr %i.q, align 8, !tbaa !231
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !34     ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit
  %4 = sdiv exact i64 %i.y, 40
  %i.z = icmp ugt i64 %4, 230584300921369395
  br i1 %i.z, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, !prof !190

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
          to label %.noexc27 unwind label %bb.h

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ null, %_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !47
  %i.af = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.v, ptr %i.u, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc27
  %i.ag = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #26
  br label %bb.j

bb.f:                                             ; preds = %.noexc27
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !35
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !274, !alias.scope !518, !noalias !517
  store <2 x ptr> %i.an, ptr %.012.i.i.i, align 8, !tbaa !274, !alias.scope !517, !noalias !518
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !209, !alias.scope !518, !noalias !517
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !209, !alias.scope !517, !noalias !518
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !518, !noalias !517
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !513

_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.as, %.lr.ph.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.ba, %.lr.ph.i.i.i29 ], [ %i.at, %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i31 = phi ptr [ %i.az, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.av = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !274, !alias.scope !520, !noalias !519
  store <2 x ptr> %i.av, ptr %.012.i.i.i30, align 8, !tbaa !274, !alias.scope !519, !noalias !520
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !209, !alias.scope !520, !noalias !519
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !209, !alias.scope !519, !noalias !520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !alias.scope !520, !noalias !519
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !513

_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.at, %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ba, %.lr.ph.i.i.i29 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !234
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !233
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !235
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !234
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.h ], [ %i.ag, %bb.e ], [ %i.ag, %bb.d ]
  %i.bi = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #29
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bh

bb.l:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #25
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal18ArrayComprehensionC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_bRKS5_INS0_17ComprehensionSpecESaISD_EESA_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal18ArrayComprehensionE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.a, align 8, !tbaa !202
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %8 = sdiv exact i64 %i.h, 40
  %i.i = icmp ugt i64 %8, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27
          to label %.noexc13 unwind label %bb.k

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = load ptr, ptr %4, align 8, !tbaa !209
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc13
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %.body

bb.e:                                             ; preds = %.noexc13
  store ptr %i.q, ptr %i.l, align 8, !tbaa !35
  %i.x = zext i1 %5 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %i.x, ptr %i.y, align 8, !tbaa !521
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  invoke void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i14, label %.noexc20, label %bb.g

bb.g:                                             ; preds = %bb.f
  %9 = sdiv exact i64 %i.ag, 40
  %i.ah = icmp ugt i64 %9, 230584300921369395
  br i1 %i.ah, label %.noexc.i.i18, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15, !prof !190

.noexc.i.i18:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc19 unwind label %bb.m

.noexc19:                                         ; preds = %.noexc.i.i18
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15: ; preds = %bb.g
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc20 unwind label %bb.m

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15, %bb.f
  %i.aj = phi ptr [ null, %bb.f ], [ %i.ai, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15 ] ; 4 uses
  store ptr %i.aj, ptr %i.aa, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !47
  %i.an = load ptr, ptr %7, align 8, !tbaa !209
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !209
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.an, ptr %i.ao, ptr noundef %i.aj)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc20
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i16, label %.body21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !47
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #26
  br label %.body21

bb.j:                                             ; preds = %.noexc20
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !35
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i15, %.noexc.i.i18
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body21

.body21:                                          ; preds = %bb.h, %bb.i, %bb.m
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.aq, %bb.i ], [ %i.aq, %bb.h ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #28
  br label %bb.n

bb.n:                                             ; preds = %.body21, %bb.l
  %.pn = phi { ptr, i32 } [ %eh.lpad-body22, %.body21 ], [ %i.ax, %bb.l ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #28
  br label %.body

.body:                                            ; preds = %bb.k, %bb.d, %bb.c, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.aw, %bb.k ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !194    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 96
  %i.g = icmp ugt i64 %2, 96076792050570581
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal17ComprehensionSpecEE8allocateEmPKv.exit.i.i.i, !prof !190

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal17ComprehensionSpecEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal17ComprehensionSpecEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal17ComprehensionSpecEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !193
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !275
  %i.m = load ptr, ptr %1, align 8, !tbaa !151    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal17ComprehensionSpecESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7jsonnet8internal17ComprehensionSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal17ComprehensionSpecESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !522

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #28 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i.i.i.i.i) #28
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #25
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal17ComprehensionSpecESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !193
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !194    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !275
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !194    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i) #28
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !15

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !194
  br label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !275
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal18ArrayComprehensionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal18ArrayComprehensionE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !194 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !193 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.af, %.lr.ph.i.i.i2 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i.i3) #28
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 96 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !15

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %i.ab, align 8, !tbaa !194
  br label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !275
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #26
  br label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20
  %.05.i.i.i9 = phi ptr [ %i.bg, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i.i.i.i.i.i10, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18, label %.lr.ph.i.i.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i.i.i11:                         ; preds = %.lr.ph.i.i.i8, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14
  %.05.i.i.i.i.i.i.i.i12 = phi ptr [ %i.az, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14 ], [ %i.ar, %.lr.ph.i.i.i8 ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i.i.i.i12, align 8, !tbaa !43 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i12, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i.i.i.i.i.i.i.i11
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !44
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i.i.i.i.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i12, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i.i11, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14
  %.pr.i.i.i.i.i.i17 = load ptr, ptr %i.aq, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16, %.lr.ph.i.i.i8
  %i.ba = phi ptr [ %.pr.i.i.i.i.i.i17, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16 ], [ %i.ar, %.lr.ph.i.i.i8 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i19 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i.i.i.i.i.i19, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 40 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bg, %i.ap
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22, label %.lr.ph.i.i.i8, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20
  %.pr.i23 = load ptr, ptr %i.am, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit
  %i.bh = phi ptr [ %.pr.i23, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i25 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i25, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24, %bb.f
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal18ArrayComprehensionD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal18ArrayComprehensionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal17ComprehensionSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !197
  store i32 %i.a, ptr %0, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.i, 40
  %i.j = icmp ugt i64 %2, 230584300921369395
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !209
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.r, ptr %i.m, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i10, label %.noexc15, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %3 = sdiv exact i64 %i.af, 40
  %i.ag = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ag, label %.noexc.i.i14, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, !prof !190

.noexc.i.i14:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i14
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11: ; preds = %bb.f
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27
          to label %.noexc15 unwind label %bb.n

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11 ] ; 4 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !47
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !209
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !209
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.am, ptr %i.an, ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc15
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i12, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #26
  br label %.body

bb.i:                                             ; preds = %.noexc15
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !204
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !204
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !34 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %.not.i.i.i.i17 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i17, label %.noexc23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sdiv exact i64 %i.bf, 40
  %i.bg = icmp ugt i64 %4, 230584300921369395
  br i1 %i.bg, label %.noexc.i.i21, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, !prof !190

.noexc.i.i21:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %.noexc.i.i21
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18: ; preds = %bb.j
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #27
          to label %.noexc23 unwind label %bb.o

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, %bb.i
  %i.bi = phi ptr [ null, %bb.i ], [ %i.bh, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18 ] ; 4 uses
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !47
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !209
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !209
  %i.bo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bm, ptr %i.bn, ptr noundef %i.bi)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc23
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i19, label %.body24, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #26
  br label %.body24

bb.m:                                             ; preds = %.noexc23
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !203
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !203
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %.noexc.i.i14
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, %.noexc.i.i21
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %bb.k, %bb.l, %bb.o
  %eh.lpad-body25 = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.bp, %bb.l ], [ %i.bp, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #28
  br label %.body

.body:                                            ; preds = %bb.n, %bb.h, %bb.g, %.body24
  %.pn = phi { ptr, i32 } [ %eh.lpad-body25, %.body24 ], [ %i.by, %bb.n ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #28
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !43 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
end_hunk_10
begin_hunk_11_@_ZSt16__do_uninit_copyIPKN7jsonnet8internal13FodderElementEPS2_ET0_T_S7_S6_:bb.a

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #25
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE17_M_realloc_insertIJRKS_INS1_13FodderElementESaIS6_EEPKNS1_10IdentifierESA_RPNS1_3ASTESA_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !130    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
  unreachable

_ZNKSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 88                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 104811045873349725)
  %i.l = select i1 %i.j, i64 104811045873349725, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 88                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %3, align 8, !tbaa !101
  %i.s = load ptr, ptr %5, align 8, !tbaa !70
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKSt6vectorINS0_13FodderElementESaIS3_EEPKNS0_10IdentifierES7_PNS0_3ASTES7_(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRKSt6vectorINS1_13FodderElementESaIS7_EEPKNS1_10IdentifierESB_RPNS1_3ASTESB_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRKSt6vectorINS1_13FodderElementESaIS7_EEPKNS1_10IdentifierESB_RPNS1_3ASTESB_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRKSt6vectorINS1_13FodderElementESaIS7_EEPKNS1_10IdentifierESB_RPNS1_3ASTESB_EEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRKSt6vectorINS1_13FodderElementESaIS7_EEPKNS1_10IdentifierESB_RPNS1_3ASTESB_EEEvRS3_PT_DpOT0_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRKSt6vectorINS1_13FodderElementESaIS7_EEPKNS1_10IdentifierESB_RPNS1_3ASTESB_EEEvRS3_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.t = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !209, !alias.scope !547, !noalias !546
  store <2 x ptr> %i.t, ptr %.012.i.i.i, align 8, !tbaa !209, !alias.scope !546, !noalias !547
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47, !alias.scope !547, !noalias !546
  store ptr %i.w, ptr %i.u, align 8, !tbaa !47, !alias.scope !546, !noalias !547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !547, !noalias !546
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !tbaa !274, !alias.scope !547, !noalias !546
  store <2 x ptr> %i.aa, ptr %i.x, align 8, !tbaa !274, !alias.scope !546, !noalias !547
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !209, !alias.scope !547, !noalias !546
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !209, !alias.scope !546, !noalias !547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !alias.scope !547, !noalias !546
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !274, !alias.scope !547, !noalias !546
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !274, !alias.scope !546, !noalias !547
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !209, !alias.scope !547, !noalias !546
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !209, !alias.scope !546, !noalias !547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false), !alias.scope !547, !noalias !546
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.0911.i.i.i) #28, !noalias !546
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !542

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRKSt6vectorINS1_13FodderElementESaIS7_EEPKNS1_10IdentifierESB_RPNS1_3ASTESB_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRKSt6vectorINS1_13FodderElementESaIS7_EEPKNS1_10IdentifierESB_RPNS1_3ASTESB_EEEvRS3_PT_DpOT0_.exit ], [ %i.am, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 88 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.bh, %.lr.ph.i.i.i31 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  %.0911.i.i.i33 = phi ptr [ %i.bg, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.ao = load <2 x ptr>, ptr %.0911.i.i.i33, align 8, !tbaa !209, !alias.scope !549, !noalias !548
  store <2 x ptr> %i.ao, ptr %.012.i.i.i32, align 8, !tbaa !209, !alias.scope !548, !noalias !549
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47, !alias.scope !549, !noalias !548
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !47, !alias.scope !548, !noalias !549
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i33, i8 0, i64 24, i1 false), !alias.scope !549, !noalias !548
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 32
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !274, !alias.scope !549, !noalias !548
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !274, !alias.scope !548, !noalias !549
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 40
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !209, !alias.scope !549, !noalias !548
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !209, !alias.scope !548, !noalias !549
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !alias.scope !549, !noalias !548
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 64
  %i.bc = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !274, !alias.scope !549, !noalias !548
  store <2 x ptr> %i.bc, ptr %i.az, align 8, !tbaa !274, !alias.scope !548, !noalias !549
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 72
  %i.bf = load <2 x ptr>, ptr %i.be, align 8, !tbaa !209, !alias.scope !549, !noalias !548
  store <2 x ptr> %i.bf, ptr %i.bd, align 8, !tbaa !209, !alias.scope !548, !noalias !549
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false), !alias.scope !549, !noalias !548
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.0911.i.i.i33) #28, !noalias !548
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 88 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 88 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !542

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.an, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bh, %.lr.ph.i.i.i31 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !105
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !130
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !104
  %i.bm = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !105
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = tail call ptr @__cxa_begin_catch(ptr %i.bp) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #29
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bn

bb.g:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #25
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8ArgParamC2ERKSt6vectorINS0_13FodderElementESaIS3_EEPKNS0_10IdentifierES7_PNS0_3ASTES7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %6, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = load ptr, ptr %1, align 8, !tbaa !209
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !209
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.v, align 8, !tbaa !244
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35   ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i9, label %.noexc14, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %7 = sdiv exact i64 %i.ac, 40
  %i.ad = icmp ugt i64 %7, 230584300921369395
  br i1 %i.ad, label %.noexc.i.i13, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, !prof !190

.noexc.i.i13:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i13
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10: ; preds = %bb.f
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #27
          to label %.noexc14 unwind label %bb.n

.noexc14:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ae, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10 ] ; 4 uses
  store ptr %i.af, ptr %i.w, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !47
  %i.aj = load ptr, ptr %3, align 8, !tbaa !209
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !209
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc14
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i11, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #26
  br label %.body

bb.i:                                             ; preds = %.noexc14
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.as, align 8, !tbaa !208
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %.not.i.i.i.i16 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i16, label %.noexc22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %8 = sdiv exact i64 %i.az, 40
  %i.ba = icmp ugt i64 %8, 230584300921369395
  br i1 %i.ba, label %.noexc.i.i20, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, !prof !190

.noexc.i.i20:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %.noexc.i.i20
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17: ; preds = %bb.j
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #27
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, %bb.i
  %i.bc = phi ptr [ null, %bb.i ], [ %i.bb, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17 ] ; 4 uses
  store ptr %i.bc, ptr %i.at, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !47
  %i.bg = load ptr, ptr %5, align 8, !tbaa !209
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !209
  %i.bi = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bg, ptr %i.bh, ptr noundef %i.bc)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc22
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i18, label %.body23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #26
  br label %.body23

bb.m:                                             ; preds = %.noexc22
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !35
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, %.noexc.i.i13
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, %.noexc.i.i20
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %bb.k, %bb.l, %bb.o
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.bq, %bb.o ], [ %i.bj, %bb.l ], [ %i.bj, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #28
  br label %.body

.body:                                            ; preds = %bb.n, %bb.h, %bb.g, %.body23
  %.pn = phi { ptr, i32 } [ %eh.lpad-body24, %.body23 ], [ %i.bp, %bb.n ], [ %i.am, %bb.h ], [ %i.am, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_5LocalEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EES6_INS3_4BindESaISB_EEPNS0_11ConditionalEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27 ; 8 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !124
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 23, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5LocalE, i64 16), ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(160) %i.a) #28
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.b, ptr %i.e, align 8, !tbaa !249
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.a, ptr %i.h, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !84
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.d, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #26
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.019 = phi ptr [ %i.m, %bb.e ], [ %2, %bb.a ]  ; 6 uses
  %.01218 = phi ptr [ %i.l, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 3 uses
  store ptr %i.a, ptr %.019, align 8, !tbaa !55
  %i.b = load ptr, ptr %.01218, align 8, !tbaa !51 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01218, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52   ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.d, 2             ; 3 uses
  %i.e = icmp ugt i64 %i.d, 3
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.f, label %.noexc.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.b
  %i.g = add nuw nsw i64 %.idx.i.i, 4
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
          to label %.noexc13 unwind label %.loopexit ; 2 uses

.noexc13:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  store ptr %i.h, ptr %.019, align 8, !tbaa !51
  store i64 %i.d, ptr %i.a, align 8, !tbaa !44
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc13, %.lr.ph
  %.pre8.i.i.i = phi ptr [ %i.h, %.noexc13 ], [ %i.a, %.lr.ph ] ; 3 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i32, ptr %i.b, align 4, !tbaa !54
  store i32 %i.i, ptr %.pre8.i.i.i, align 4, !tbaa !54
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i, ptr align 4 %i.b, i64 %.idx.i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.d, ptr %i.j, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i, i64 %.idx.i.i
  store i32 0, ptr %i.k, align 4, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %.01218, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.l, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !550

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.n = extractvalue { ptr, i32 } %lpad.phi, 0
end_hunk_11
