inline.NumInlined: 548
inline.NumDeleted: 287
begin_hunk_0_@_ZN6duckdb12FilterPullup19ProjectSetOperationERNS_17LogicalProjectionE:bb.a

bb.an:                                            ; preds = %.lr.ph106
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.0105)
          to label %bb.ao unwind label %bb.ap     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !27
  store ptr null, ptr %i.jv, align 8, !tbaa !27
  %i.jy = load ptr, ptr %i.jw, align 8, !tbaa !27 ; 3 uses
  store ptr %i.jx, ptr %i.jw, align 8, !tbaa !27
  %.not.i.i.i.i.i58 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i58, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ao
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !19
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(88) %i.jy) #17, !inline_history !136
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ao, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.kc = add nuw i64 %.0105, 1                   ; 2 uses
  %i.kd = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.ke = load ptr, ptr %0, align 8, !tbaa !25
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = ashr exact i64 %i.kh, 3
  %i.kj = icmp ult i64 %i.kc, %i.ki
  br i1 %i.kj, label %.lr.ph106, label %.loopexit, !llvm.loop !137

bb.ap:                                            ; preds = %bb.an, %.lr.ph106
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %._crit_edge104.thread, %.preheader, %_ZN6duckdbL18RevertFilterPullupERNS_17LogicalProjectionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit
  %i.kl = phi ptr [ %i.cf, %._crit_edge104.thread ], [ %i.bv, %.preheader ], [ %i.ez, %_ZN6duckdbL18RevertFilterPullupERNS_17LogicalProjectionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit ], [ %i.bv, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit ]
  %i.km = load ptr, ptr %5, align 8, !tbaa !25    ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !24 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.km, %i.ko
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kt, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.km, %.loopexit ] ; 2 uses
  %i.kp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i.i.i59, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i60

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !19
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(88) %i.kp) #17, !inline_history !138
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i60, %.lr.ph.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.kt, %i.ko
  br i1 %.not.i.i.i61, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !106

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.ku = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.km, %.loopexit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ku) #20
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.kv = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %i.kw = load ptr, ptr %i.kl, align 8, !tbaa !24 ; 2 uses
  %.not4.i.i.i62 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not4.i.i.i62, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i71, label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i67
  %.05.i.i.i64 = phi ptr [ %i.lb, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i67 ], [ %i.kv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %i.kx = load ptr, ptr %.05.i.i.i64, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i.i65, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i67, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i66

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i66: ; preds = %.lr.ph.i.i.i63
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !19
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(88) %i.kx) #17, !inline_history !138
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i67

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i67: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i66, %.lr.ph.i.i.i63
  %i.lb = getelementptr inbounds nuw i8, ptr %.05.i.i.i64, i64 8 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.lb, %i.kw
  br i1 %.not.i.i.i68, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69, label %.lr.ph.i.i.i63, !llvm.loop !106

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i67
  %.pr.i70 = load ptr, ptr %3, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i71

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i71: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.lc = phi ptr [ %.pr.i70, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69 ], [ %i.kv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i72 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i1.i72, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit73, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i71
  call void @_ZdlPv(ptr noundef nonnull %i.lc) #20
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit73

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit73: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i71, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

.body:                                            ; preds = %bb.am, %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit33.i, %bb.w, %bb.ap, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit54
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit54 ], [ %i.kk, %bb.ap ], [ %i.ju, %bb.am ], [ %i.fb, %bb.w ], [ %.pn.i, %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit33.i ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.as

bb.as:                                            ; preds = %.body, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32 ], [ %.pn.pn, %.body ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.29", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL24ReplaceExpressionBindingERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %3 = alloca %"class.duckdb::unique_ptr.20", align 8 ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 12 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !139
  %i.d = icmp eq i8 %i.c, -28
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %1) ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = load ptr, ptr %0, align 8, !tbaa !25
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.02644 = phi i64 [ %i.t, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.02644)
  %i.j = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !139
  %i.m = icmp eq i8 %i.l, -28
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.j)
  br i1 %i.q, label %.thread38, label %bb.d

.thread38:                                        ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 %2, ptr %i.r, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %.02644, ptr %i.s, align 8, !tbaa !165
  br label %bb.i

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.t = add nuw i64 %.02644, 1                   ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.v = load ptr, ptr %0, align 8, !tbaa !25
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = icmp ult i64 %i.t, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !166

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.20") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %i.e)
  %5 = load i64, ptr %i.a, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 %5, ptr %i.ae, align 8, !tbaa !144
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !24  ; 6 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !25    ; 10 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.af, %i.an
  br i1 %.not.i.i, label %bb.e, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %._crit_edge
  %i.ao = load i64, ptr %3, align 8, !tbaa !27
  store i64 %i.ao, ptr %i.af, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !24
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %._crit_edge
  %i.aq = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.aq, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.ak
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #19
          to label %.noexc28 unwind label %bb.h   ; 10 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aj
  %i.ay = load i64, ptr %3, align 8, !tbaa !27
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !27
  store ptr null, ptr %3, align 8, !tbaa !27
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc28
  %i.az = add i64 %i.ah, -8
  %i.ba = sub i64 %i.az, %i.ai                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader58, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bd = add i64 %i.ah, -8
  %i.be = sub i64 %i.bd, %i.ai
  %i.bf = and i64 %i.be, -8
  %i.bg = add i64 %i.bf, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.bg
  %scevgep54 = getelementptr i8, ptr %i.ag, i64 %i.bg
  %bound0 = icmp ult ptr %i.aw, %scevgep54
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.aw, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ag, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bk ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.ag, i64 %i.bk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.bl = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !27, !alias.scope !172, !noalias !167
  %wide.load56 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !27, !alias.scope !172, !noalias !167
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !27, !alias.scope !175, !noalias !172
  store <2 x i64> %wide.load56, ptr %i.bm, align 8, !tbaa !27, !alias.scope !175, !noalias !172
  %i.bn = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !27, !alias.scope !172, !noalias !167
  store <2 x ptr> splat (ptr null), ptr %i.bn, align 8, !tbaa !27, !alias.scope !172, !noalias !167
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader58

.lr.ph.i.i.i.i.i.i.i.preheader58:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader58, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader58 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader58 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !170, !noalias !167
  store i64 %i.bp, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !167, !noalias !170
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !170, !noalias !167
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.af
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !178

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc28
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.noexc28 ], [ %i.bi, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #20
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.g
  store ptr %i.aw, ptr %0, align 8, !tbaa !25
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bt, ptr %i.am, align 8, !tbaa !26
  %.pr = load ptr, ptr %3, align 8, !tbaa !27     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bu = load ptr, ptr %.pr, align 8, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #17, !inline_history !83
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %3, align 8, !tbaa !27    ; 3 uses
  %.not.i29 = icmp eq ptr %i.by, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit31, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i30

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i30: ; preds = %bb.h
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(88) %i.by) #17, !inline_history !83
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit31: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.p

bb.i:                                             ; preds = %.thread38, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %4, align 8, !tbaa !179
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !181
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_L24ReplaceExpressionBindingERNS0_6vectorINS0_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaIS8_EEES2_mE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.cd, align 8, !tbaa !183
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_L24ReplaceExpressionBindingERNS0_6vectorINS0_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaIS8_EEES2_mE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr %i.cc, align 8, !tbaa !186
  invoke void @_ZN6duckdb18ExpressionIterator17EnumerateChildrenERNS_10ExpressionERKSt8functionIFvS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !186 ; 2 uses
  %.not.i32 = icmp eq ptr %i.ce, null
  br i1 %.not.i32, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

end_hunk_0
