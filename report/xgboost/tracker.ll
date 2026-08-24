Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/tracker?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1249
begin_hunk_0_@_ZN7xgboost10collective12RabitTrackerC2ERKNS_4JsonE:bb.a

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %i.bp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12, !noalias !181
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12, !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !181
  br label %.body22

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12, !noalias !181
  %.pr1.i.i = load ptr, ptr %2, align 8, !tbaa !187, !noalias !181 ; 4 uses
  %.not.i.i.i20 = icmp eq ptr %.pr1.i.i, null
  br i1 %.not.i.i.i20, label %"_ZZN7xgboost10collective12RabitTrackerC1ERKNS_4JsonEENK3$_2clEv.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %.pr1.i.i, align 8, !tbaa !44, !noalias !181 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.pr1.i.i, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !34, !noalias !181
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #36, !noalias !181
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr1.i.i, i64 noundef 32) #36, !noalias !181
  br label %"_ZZN7xgboost10collective12RabitTrackerC1ERKNS_4JsonEENK3$_2clEv.exit.i"

bb.p:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #33, !noalias !181
  unreachable

"_ZZN7xgboost10collective12RabitTrackerC1ERKNS_4JsonEENK3$_2clEv.exit.i": ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.n, %.noexc21, %_ZN4dmlc11LogCheck_GTIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !181
  %i.bx = load i32, ptr %i.bb, align 4, !tbaa !31, !noalias !181
  invoke void @_ZN7xgboost10collective9TCPSocket6ListenEi(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %8, ptr noundef nonnull align 4 dereferenceable(5) %i.g, i32 noundef %i.bx)
          to label %"_ZN7xgboost10collectivelsIZNS0_12RabitTrackerC1ERKNS_4JsonEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS9_OS8_.exit" unwind label %bb.t

"_ZN7xgboost10collectivelsIZNS0_12RabitTrackerC1ERKNS_4JsonEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS9_OS8_.exit": ; preds = %"_ZZN7xgboost10collective12RabitTrackerC1ERKNS_4JsonEENK3$_2clEv.exit.i"
  %.pr39 = load ptr, ptr %9, align 8, !tbaa !68   ; 3 uses
  %.not.i.i25 = icmp eq ptr %.pr39, null
  br i1 %.not.i.i25, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %"_ZN7xgboost10collectivelsIZNS0_12RabitTrackerC1ERKNS_4JsonEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS9_OS8_.exit"
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr39) #12, !inline_history !150
  call void @_ZdlPvm(ptr noundef nonnull %.pr39, i64 noundef 56) #36, !inline_history !150
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %"_ZN7xgboost10collectivelsIZNS0_12RabitTrackerC1ERKNS_4JsonEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS9_OS8_.exit.thread", %"_ZN7xgboost10collectivelsIZNS0_12RabitTrackerC1ERKNS_4JsonEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS9_OS8_.exit", %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  %i.by = load ptr, ptr %10, align 8, !tbaa !68   ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.by, null
  br i1 %.not.i.i26, label %_ZN7xgboost10collective6ResultD2Ev.exit31, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i27

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i27: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.by) #12, !inline_history !150
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 56) #36, !inline_history !150
  br label %_ZN7xgboost10collective6ResultD2Ev.exit31

_ZN7xgboost10collective6ResultD2Ev.exit31:        ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i27, %_ZN7xgboost10collective6ResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  invoke void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.6, i32 noundef 133)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit31
  %i.bz = load ptr, ptr %8, align 8, !tbaa !68    ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i32, label %_ZN7xgboost10collective6ResultD2Ev.exit34, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i33

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i33: ; preds = %bb.q
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bz) #12, !inline_history !150
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 56) #36, !inline_history !150
  br label %_ZN7xgboost10collective6ResultD2Ev.exit34

_ZN7xgboost10collective6ResultD2Ev.exit34:        ; preds = %bb.q, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void

bb.r:                                             ; preds = %bb.e
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %"_ZZN7xgboost10collective12RabitTrackerC1ERKNS_4JsonEENK3$_1clEv.exit.i", %bb.h, %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %"_ZZN7xgboost10collective12RabitTrackerC1ERKNS_4JsonEENK3$_2clEv.exit.i", %_ZN4dmlc11LogCheck_GTIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body22

.body22:                                          ; preds = %bb.m, %bb.t
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.cc, %bb.t ], [ %.pn.i.i, %bb.m ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %bb.u

bb.u:                                             ; preds = %.body22, %bb.s
  %.pn = phi { ptr, i32 } [ %eh.lpad-body23, %.body22 ], [ %i.cb, %bb.s ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #12
  br label %.body

.body:                                            ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.ca, %bb.r ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.w

bb.v:                                             ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit31
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.body
  %.pn9 = phi { ptr, i32 } [ %i.cd, %bb.v ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @_ZN7xgboost10collective9TCPSocketD2Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %i.g) #12
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #12
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.d
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.cg = load i64, ptr %i.d, align 8, !tbaa !34
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn9
}

declare void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !189    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !44 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !34
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !193

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !189
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #36
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS1_11WorkerProxyESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.xgboost::collective::Result") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::unique_ptr.92", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.92", align 8 ; 6 uses
  %5 = alloca %"class.std::vector.21", align 8    ; 10 uses
  %.sroa.8 = alloca %"struct.xgboost::GlobalConfiguration", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !195    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !24    ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS4_9WorkerCmpEEvT_SC_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 144
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS4_9WorkerCmpEEEEvT_SF_T0_T1_(ptr %i.c, ptr %i.e, i64 noundef %i.n, i8 %i.g)
  %i.o = icmp sgt i64 %i.j, 2304
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2304 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS4_9WorkerCmpEEEEvT_SF_T0_(ptr %i.c, ptr nonnull %i.p, i8 %i.g)
  %.not7.i.i.i.i = icmp eq ptr %i.p, %i.e
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS4_9WorkerCmpEEvT_SC_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS4_9WorkerCmpEEEEvT_T0_(ptr nonnull %.sroa.0.08.i.i.i.i, i8 %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS4_9WorkerCmpEEvT_SC_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !197

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS4_9WorkerCmpEEEEvT_SF_T0_(ptr %i.c, ptr %i.e, i8 %i.g)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS4_9WorkerCmpEEvT_SC_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS4_9WorkerCmpEEvT_SC_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge103

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS4_9WorkerCmpEEvT_SC_T0_.exit
  %i.u = tail call noundef align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN4dmlc16ThreadLocalStoreIN7xgboost19GlobalConfigurationEE3GetEvE4inst)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pre = load ptr, ptr %5, align 8, !tbaa !198   ; 4 uses
  %.pre119 = load ptr, ptr %i.v, align 8, !tbaa !198 ; 4 uses
  %.not99 = icmp eq ptr %.pre, %.pre119
  br i1 %.not99, label %._crit_edge103, label %.lr.ph102

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 11 uses
  %i.ab = phi ptr [ null, %.lr.ph ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 5 uses
  %i.ac = phi ptr [ null, %.lr.ph ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 6 uses
  %i.ad = phi i32 [ %i.s, %.lr.ph ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 2 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !200   ; 2 uses
  %i.af = getelementptr inbounds nuw [144 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ah = add i32 %i.ad, %i.ag
  %i.ai = srem i32 %i.ah, %i.ad                   ; 3 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [144 x i8], ptr %i.ae, i64 %i.aj ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false)
  %.not.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %i.ac, align 8, !tbaa !202
  %i.al = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35
          to label %.noexc unwind label %.loopexit ; 6 uses

.noexc:                                           ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS5_11WorkerProxyESaIS7_EEE3$_0EEEEEE", i64 16), ptr %i.al, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.ai, ptr %i.am, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.af, ptr %.sroa.674.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.ak, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  store ptr %i.al, ptr %4, align 8, !tbaa !204
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 %4, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc
  %i.an = load ptr, ptr %4, align 8, !tbaa !204   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %"_ZNSt6threadC2IZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS3_11WorkerProxyESaIS5_EEE3$_0JEvEEOT_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %bb.g
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #12, !inline_history !206
  br label %"_ZNSt6threadC2IZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS3_11WorkerProxyESaIS5_EEE3$_0JEvEEOT_DpOT0_.exit.i"

bb.h:                                             ; preds = %.noexc
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %4, align 8, !tbaa !204   ; 3 uses
  %.not.i5.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i5.i.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i: ; preds = %bb.h
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #12, !inline_history !206
  br label %.body

"_ZNSt6threadC2IZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS3_11WorkerProxyESaIS5_EEE3$_0JEvEEOT_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.v, align 8, !tbaa !207
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEERS0_DpOT_.exit"

bb.i:                                             ; preds = %bb.e
  %i.ax = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.j, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #34
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i3.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i3.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3                ; 2 uses
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #35
          to label %.noexc37 unwind label %.loopexit ; 12 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.bi, align 8, !tbaa !202
  %i.bj = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35
          to label %.noexc.i.i unwind label %bb.o ; 6 uses

.noexc.i.i:                                       ; preds = %.noexc37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS5_11WorkerProxyESaIS7_EEE3$_0EEEEEE", i64 16), ptr %i.bj, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.ai, ptr %i.bk, align 8
  %.sroa.674.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.af, ptr %.sroa.674.0..sroa_idx75, align 8
  %.sroa.7.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.ak, ptr %.sroa.7.0..sroa_idx77, align 8
  %.sroa.8.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx79, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  store ptr %i.bj, ptr %3, align 8, !tbaa !204
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  %i.bl = load ptr, ptr %3, align 8, !tbaa !204   ; 3 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i35, label %bb.m, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.k
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #12, !inline_history !209
  br label %bb.m

bb.l:                                             ; preds = %.noexc.i.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !204   ; 3 uses
  %.not.i5.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i5.i.i.i, label %bb.q, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i: ; preds = %bb.l
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #12, !inline_history !209
  br label %bb.q

bb.m:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.m
  %i.bu = add i64 %i.ax, -8
  %i.bv = sub i64 %i.bu, %i.ay                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader189, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bh, i64 8
  %i.by = add i64 %i.ax, -8
  %i.bz = sub i64 %i.by, %i.ay
  %i.ca = and i64 %i.bz, -8                       ; 2 uses
  %scevgep183 = getelementptr i8, ptr %scevgep, i64 %i.ca
  %scevgep184 = getelementptr i8, ptr %i.aa, i64 8
  %scevgep185 = getelementptr i8, ptr %scevgep184, i64 %i.ca
  %bound0 = icmp ult ptr %i.bh, %scevgep185
  %bound1 = icmp ult ptr %i.aa, %scevgep183
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader189, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bh, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.aa, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.ce ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.aa, i64 %i.ce ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.cf = getelementptr i8, ptr %next.gep186, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep186, align 8, !tbaa !22, !alias.scope !215, !noalias !210
  %wide.load187 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !22, !alias.scope !215, !noalias !210
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !22, !alias.scope !218, !noalias !215
  store <2 x i64> %wide.load187, ptr %i.cg, align 8, !tbaa !22, !alias.scope !218, !noalias !215
  store <2 x i64> zeroinitializer, ptr %next.gep186, align 8, !tbaa !22, !alias.scope !215, !noalias !210
  store <2 x i64> zeroinitializer, ptr %i.cf, align 8, !tbaa !22, !alias.scope !215, !noalias !210
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader189

.lr.ph.i.i.i.i.i.preheader189:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader189, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader189 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader189 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !213, !noalias !210
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !210, !noalias !213
  store i64 0, ptr %.0911.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !213, !noalias !210
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !223

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.m
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bh, %bb.m ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i33.i.i, label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.az) #36
  br label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i"

bb.o:                                             ; preds = %.noexc37
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.r

bb.q:                                             ; preds = %bb.o, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i, %bb.l
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cm, %bb.o ], [ %i.bp, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i ], [ %i.bp, %bb.l ]
  %i.co = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.cp = call ptr @__cxa_begin_catch(ptr %i.co) #12 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bg) #36
  invoke void @__cxa_rethrow() #34
          to label %bb.s unwind label %bb.p

bb.r:                                             ; preds = %bb.p
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #33
  unreachable

bb.s:                                             ; preds = %bb.q
  unreachable

"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i": ; preds = %bb.n, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  store ptr %i.bh, ptr %5, align 8, !tbaa !224
  store ptr %i.cl, ptr %i.v, align 8, !tbaa !207
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf ; 2 uses
  store ptr %i.cs, ptr %i.w, align 8, !tbaa !225
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEERS0_DpOT_.exit"

"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEERS0_DpOT_.exit": ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", %"_ZNSt6threadC2IZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS3_11WorkerProxyESaIS5_EEE3$_0JEvEEOT_DpOT0_.exit.i"
  %i.ct = phi ptr [ %i.cl, %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i" ], [ %i.aw, %"_ZNSt6threadC2IZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS3_11WorkerProxyESaIS5_EEE3$_0JEvEEOT_DpOT0_.exit.i" ] ; 2 uses
  %i.cu = phi ptr [ %i.bh, %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i" ], [ %i.aa, %"_ZNSt6threadC2IZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS3_11WorkerProxyESaIS5_EEE3$_0JEvEEOT_DpOT0_.exit.i" ]
  %i.cv = phi ptr [ %i.cs, %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i" ], [ %i.ab, %"_ZNSt6threadC2IZN7xgboost10collective12RabitTracker9BootstrapEPSt6vectorINS3_11WorkerProxyESaIS5_EEE3$_0JEvEEOT_DpOT0_.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.cw = icmp samesign ult i64 %indvars.iv, 10
  br i1 %i.cw, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEERS0_DpOT_.exit"
  %i.cx = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.y
  %.030.i.i = phi i32 [ %i.df, %bb.y ], [ 1, %.lr.ph.i.i.preheader ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.de, %bb.y ], [ %i.cx, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.cy = icmp samesign ult i32 %.02329.i.i, 100
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.cz = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.da = icmp samesign ult i32 %.02329.i.i, 1000
  br i1 %i.da, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.db = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.w:                                             ; preds = %bb.u
  %i.dc = icmp samesign ult i32 %.02329.i.i, 10000
  br i1 %i.dc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dd = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.y:                                             ; preds = %bb.w
  %i.de = udiv i32 %.02329.i.i, 10000
  %i.df = add i32 %.030.i.i, 4                    ; 2 uses
  %i.dg = icmp samesign ult i32 %.02329.i.i, 100000
  br i1 %i.dg, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !229

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEERS0_DpOT_.exit"
  %.022.i.i = phi i32 [ %i.dd, %bb.x ], [ %i.cz, %bb.t ], [ %i.db, %bb.v ], [ 1, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN7xgboost10collective12RabitTracker9BootstrapEPS_INS6_11WorkerProxyESaIS7_EEE3$_0EEERS0_DpOT_.exit" ], [ %i.df, %bb.y ] ; 2 uses
  %i.dh = zext i32 %.022.i.i to i64
end_hunk_0
begin_hunk_1_@_ZN5rabit5utils10PollHelper4PollENSt6chrono8durationIlSt5ratioILl1ELl1EEEEb:bb.a
  %.02328.i.i73 = phi i64 [ %i.fh, %bb.ak ], [ %i.k, %bb.ae ] ; 5 uses
  %i.fb = icmp ult i64 %.02328.i.i73, 100
  br i1 %i.fb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i71
  %i.fc = add i32 %.029.i.i72, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74

bb.ag:                                            ; preds = %.lr.ph.i.i71
  %i.fd = icmp ult i64 %.02328.i.i73, 1000
  br i1 %i.fd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fe = add i32 %.029.i.i72, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74

bb.ai:                                            ; preds = %bb.ag
  %i.ff = icmp ult i64 %.02328.i.i73, 10000
  br i1 %i.ff, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fg = add i32 %.029.i.i72, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74

bb.ak:                                            ; preds = %bb.ai
  %i.fh = udiv i64 %.02328.i.i73, 10000
  %i.fi = add i32 %.029.i.i72, 4                  ; 2 uses
  %i.fj = icmp ult i64 %.02328.i.i73, 100000
  br i1 %i.fj, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74, label %.lr.ph.i.i71, !llvm.loop !40

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74:  ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.af, %bb.ae
  %.022.i.i75 = phi i32 [ %i.fg, %bb.aj ], [ %i.fc, %bb.af ], [ %i.fe, %bb.ah ], [ 1, %bb.ae ], [ %i.fi, %bb.ak ]
  %i.fk = zext i32 %.022.i.i75 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.fl, ptr %9, align 8, !tbaa !42, !alias.scope !965
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.fk, i8 noundef signext 0)
          to label %.noexc82 unwind label %bb.ar

.noexc82:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74
  %i.fm = load ptr, ptr %9, align 8, !tbaa !44, !alias.scope !965 ; 4 uses
  %i.fn = icmp ugt i64 %i.k, 99
  br i1 %i.fn, label %.lr.ph.preheader.i.i79, label %._crit_edge.i.i76

.lr.ph.preheader.i.i79:                           ; preds = %.noexc82
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !50, !alias.scope !965
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = add i32 %i.fq, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i79
  %.020.i.i80 = phi i64 [ %i.fu, %.lr.ph.i4.i ], [ %i.k, %.lr.ph.preheader.i.i79 ] ; 3 uses
  %.01819.i.i81 = phi i32 [ %i.ge, %.lr.ph.i4.i ], [ %i.fr, %.lr.ph.preheader.i.i79 ] ; 3 uses
  %i.fs = urem i64 %.020.i.i80, 100
  %i.ft = shl nuw nsw i64 %i.fs, 1
  %i.fu = udiv i64 %.020.i.i80, 100               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ft ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !34, !noalias !965
  %i.fy = zext i32 %.01819.i.i81 to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fy
  store i8 %i.fx, ptr %i.fz, align 1, !tbaa !34
  %i.ga = load i8, ptr %i.fv, align 2, !tbaa !34, !noalias !965
  %i.gb = add i32 %.01819.i.i81, -1
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gc
  store i8 %i.ga, ptr %i.gd, align 1, !tbaa !34
  %i.ge = add i32 %.01819.i.i81, -2
  %i.gf = icmp ugt i64 %.020.i.i80, 9999
  br i1 %i.gf, label %.lr.ph.i4.i, label %._crit_edge.i.i76, !llvm.loop !46

._crit_edge.i.i76:                                ; preds = %.lr.ph.i4.i, %.noexc82
  %.0.lcssa.i.i77 = phi i64 [ %i.k, %.noexc82 ], [ %i.fu, %.lr.ph.i4.i ] ; 3 uses
  %i.gg = icmp samesign ugt i64 %.0.lcssa.i.i77, 9
  br i1 %i.gg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i76
  %i.gh = shl nuw nsw i64 %.0.lcssa.i.i77, 1
  %i.gi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !34, !noalias !965
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !34
  %i.gm = load i8, ptr %i.gi, align 2, !tbaa !34, !noalias !965
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i76
  %i.gn = trunc nuw nsw i64 %.0.lcssa.i.i77 to i8
  %i.go = or disjoint i8 %i.gn, 48
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %storemerge.i.i78 = phi i8 [ %i.go, %bb.am ], [ %i.gm, %bb.al ]
  store i8 %storemerge.i.i78, ptr %i.fm, align 1, !tbaa !34
  %i.gp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.98, i64 noundef 18)
          to label %.noexc86 unwind label %bb.as  ; 6 uses

.noexc86:                                         ; preds = %bb.an
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.gq, ptr %8, align 8, !tbaa !42, !alias.scope !968
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !44 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 5 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

bb.ao:                                            ; preds = %.noexc86
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !50 ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 16
  call void @llvm.assume(i1 %i.gw)
  %i.gx = add nuw nsw i64 %i.gv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gq, ptr noundef nonnull align 8 dereferenceable(1) %i.gs, i64 %i.gx, i1 false)
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %.noexc86
  store ptr %i.gr, ptr %8, align 8, !tbaa !44, !alias.scope !968
  %i.gy = load i64, ptr %i.gs, align 8, !tbaa !34
  store i64 %i.gy, ptr %i.gq, align 8, !tbaa !34, !alias.scope !968
  %.phi.trans.insert.i84 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.pre.i85 = load i64, ptr %.phi.trans.insert.i84, align 8, !tbaa !50
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.ao
  %i.gz = phi i64 [ %i.gv, %bb.ao ], [ %.pre.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.gz, ptr %i.hb, align 8, !tbaa !50, !alias.scope !968
  store ptr %i.gs, ptr %i.gp, align 8, !tbaa !44
  store i64 0, ptr %i.ha, align 8, !tbaa !50
  store i8 0, ptr %i.gs, align 8, !tbaa !34
  invoke void @_ZN7xgboost6system12FailWithCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 %8)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.hc = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gq
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.aq
  %i.he = load i64, ptr %i.gq, align 8, !tbaa !34
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %i.hg = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.fl
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.hi = load i64, ptr %i.fl, align 8, !tbaa !34
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.ar:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.as:                                            ; preds = %bb.an
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.at:                                            ; preds = %bb.ap
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.gq
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.at
  %i.hp = load i64, ptr %i.gq, align 8, !tbaa !34
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.as
  %.pn34 = phi { ptr, i32 } [ %i.hl, %bb.as ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.hm, %bb.at ] ; 2 uses
  %i.hr = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.fl
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.ht = load i64, ptr %i.fl, align 8, !tbaa !34
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.ar
  %.pn34.pn = phi { ptr, i32 } [ %i.hk, %bb.ar ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.be

bb.au:                                            ; preds = %.lr.ph181, %bb.bb
  %.sroa.0107.0180 = phi ptr [ %.sroa.0116.0.lcssa, %.lr.ph181 ], [ %i.ja, %bb.bb ] ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0107.0180, i64 6 ; 2 uses
  invoke void @_ZN5rabit5utils9PollErrorIsEENSt9enable_ifIXsr3stdE13is_integral_vIT_EEN7xgboost10collective6ResultEE4typeERKS3_(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 2 dereferenceable(2) %i.hv)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hw = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i100 = icmp ne ptr %i.hw, null
  %or.cond.not = select i1 %3, i1 %.not.i100, i1 false
  br i1 %or.cond.not, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ax:                                            ; preds = %bb.av
  %i.hy = load i16, ptr %i.hv, align 2, !tbaa !971
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0107.0180, i64 4
  %i.ia = load i16, ptr %i.hz, align 4, !tbaa !808
  %i.ib = load i32, ptr %.sroa.0107.0180, align 4, !tbaa !72 ; 3 uses
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = load i64, ptr %i.ez, align 8, !tbaa !785 ; 2 uses
  %i.ie = urem i64 %i.ic, %i.id                   ; 3 uses
  %i.if = load ptr, ptr %1, align 8, !tbaa !778
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !801 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !802 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !72
  %i.il = icmp eq i32 %i.ib, %i.ik
  br i1 %i.il, label %.loopexit, label %.lr.ph.i.i.i.i

bb.az:                                            ; preds = %bb.ba
  %i.im = icmp eq i32 %i.ib, %i.ip
  br i1 %i.im, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !803

.lr.ph.i.i.i.i:                                   ; preds = %bb.ay, %bb.az
  %.020.i.i.i.i = phi ptr [ %i.in, %bb.az ], [ %i.ii, %bb.ay ]
  %i.in = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !802 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !72 ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %i.ir = urem i64 %i.iq, %i.id
  %.not19.i.i.i.i = icmp eq i64 %i.ir, %i.ie
  br i1 %.not19.i.i.i.i, label %bb.az, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !803

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ba
  br label %.loopexit.i.i, !llvm.loop !803

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.ax
  %i.is = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35
          to label %.noexc101 unwind label %bb.bc ; 5 uses

.noexc101:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.is, align 8, !tbaa !802
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %10 = load i32, ptr %.sroa.0107.0180, align 4, !tbaa !72
  store i32 %10, ptr %i.it, align 8, !tbaa !804
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i64 0, ptr %i.iu, align 4
  %i.iv = invoke ptr @_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.ie, i64 noundef %i.ic, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc101..loopexit_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

.noexc101..loopexit_crit_edge:                    ; preds = %.noexc101
  %.pre = load ptr, ptr %0, align 8, !tbaa !68
  br label %.loopexit

_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc101
  %i.iw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef 24) #36
  br label %.body102

.loopexit:                                        ; preds = %bb.az, %.noexc101..loopexit_crit_edge, %bb.ay
  %i.ix = phi ptr [ %.pre, %.noexc101..loopexit_crit_edge ], [ %i.hw, %bb.ay ], [ %i.hw, %bb.az ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.iv, %.noexc101..loopexit_crit_edge ], [ %i.ii, %bb.ay ], [ %i.in, %bb.az ]
  %i.iy = and i16 %i.ia, %i.hy
  %i.iz = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i16 %i.iy, ptr %i.iz, align 4, !tbaa !808
  %.not.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i, label %bb.bb, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %.loopexit
  tail call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ix) #12, !inline_history !150
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef 56) #36, !inline_history !150
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0107.0180, i64 8 ; 2 uses
  %.not146 = icmp eq ptr %i.ja, %.sroa.14.0.lcssa
  br i1 %.not146, label %.critedge, label %bb.au

bb.bc:                                            ; preds = %.loopexit.i.i
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body102

.body102:                                         ; preds = %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.bc
  %eh.lpad-body103 = phi { ptr, i32 } [ %i.jb, %bb.bc ], [ %i.iw, %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #12
  br label %bb.be

.critedge:                                        ; preds = %bb.bb, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !65, !alias.scope !972
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %bb.av, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.not.i.i.i104 = icmp eq ptr %.sroa.0116.0.lcssa, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.jc = ptrtoint ptr %.sroa.23.0.lcssa to i64
  %i.jd = sub i64 %i.jc, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0116.0.lcssa, i64 noundef %i.jd) #36
  br label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit

_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit:            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit, %bb.bd
  ret void

bb.be:                                            ; preds = %.loopexit147, %.loopexit.split-lp, %bb.aw, %.body102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.sroa.0116.0169 = phi ptr [ %.sroa.0116.0.lcssa, %.body102 ], [ %.sroa.0116.0.lcssa, %bb.aw ], [ %.sroa.0116.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.sroa.0116.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.sroa.0116.0173.a, %.loopexit147 ], [ %.sroa.0116.0173.a, %.loopexit.split-lp ] ; 3 uses
  %.sroa.23.0163 = phi ptr [ %.sroa.23.0.lcssa, %.body102 ], [ %.sroa.23.0.lcssa, %bb.aw ], [ %.sroa.23.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.sroa.23.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.sroa.23.0175, %.loopexit147 ], [ %.sroa.23.0175, %.loopexit.split-lp ]
  %.pn42 = phi { ptr, i32 } [ %eh.lpad-body103, %.body102 ], [ %i.hx, %bb.aw ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %lpad.loopexit, %.loopexit147 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i105 = icmp eq ptr %.sroa.0116.0169, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit106, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.je = ptrtoint ptr %.sroa.23.0163 to i64
  %i.jf = ptrtoint ptr %.sroa.0116.0169 to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0116.0169, i64 noundef %i.jg) #36
  br label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit106

_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit106:         ; preds = %bb.be, %bb.bf
  resume { ptr, i32 } %.pn42
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !975
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !785
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !948
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #12 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !975
  invoke void @__cxa_rethrow() #34
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !785
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !778    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !801  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !802
  store ptr %i.w, ptr %3, align 8, !tbaa !802
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !801
  store ptr %3, ptr %i.x, align 8, !tbaa !802
  br label %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !813
  store ptr %i.z, ptr %3, align 8, !tbaa !802
  store ptr %3, ptr %i.y, align 8, !tbaa !813
  %i.aa = load ptr, ptr %3, align 8, !tbaa !802   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !785
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !72
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !801
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !801
  br label %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !948
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !948
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !286

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !976
  br label %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKi6pollfdELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !286

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
end_hunk_1
