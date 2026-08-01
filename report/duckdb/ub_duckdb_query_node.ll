inline.NumInlined: 1548
inline.NumDeleted: 830
begin_hunk_0_@_ZN6duckdb16SetOperationNodeC2ENS_16SetOperationTypeENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS3_ELb1EEES6_NS_6vectorIS6_Lb1ESaIS6_EEEb:bb.a
  store ptr %i.z, ptr %i.h, align 8, !tbaa !296
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !295
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !315
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39

bb.j:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i25, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit
  br i1 %.not56, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %3, align 8, !tbaa !80
  %.not55 = icmp eq ptr %i.ag, null
  br i1 %.not55, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.z unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread: ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.07 = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.ak) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.07, label %bb.q, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.07, label %bb.q, label %bb.y

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn51 = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ]
  call void @__cxa_free_exception(ptr %i.ah) #20
  br label %bb.y

bb.r:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.i, ptr %i.h, align 8, !tbaa !296
  store ptr %i.k, ptr %i.an, align 8, !tbaa !295
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !315
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !315
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !295
  %.pre60 = load ptr, ptr %i.h, align 8, !tbaa !296
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i29.preheader
  %i.ar = phi ptr [ %.pre60, %bb.r ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i29.preheader ]
  %i.as = phi ptr [ %.pre, %bb.r ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i29.preheader ]
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ult i64 %i.av, 9
  br i1 %i.aw, label %bb.s, label %bb.x

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.z unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread: ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0 = phi i1 [ false, %bb.u ], [ true, %bb.t ]  ; 2 uses
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ba = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ba) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.0, label %bb.w, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.0, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn2054 = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ]
  call void @__cxa_free_exception(ptr %i.ax) #20
  br label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39
  ret void

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.j
  %.pn20.pn = phi { ptr, i32 } [ %.pn2054, %bb.w ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.af, %bb.j ], [ %.pn1848, %bb.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn51, %bb.q ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #20
  call void @_ZN6duckdb9QueryNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #20
  br label %common.resume

bb.z:                                             ; preds = %bb.u, %bb.o, %bb.g
  unreachable
}

declare void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !296    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.d) #20, !inline_history !334
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #21
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16SetOperationNode18SerializeChildNodeERNS_10SerializerEm(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(680) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca i64, align 8                        ; 5 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::vector.100", align 8 ; 8 uses
  %8 = alloca i64, align 8                        ; 4 uses
  %9 = alloca i64, align 8                        ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  %13 = alloca %"class.duckdb::vector.100", align 8 ; 19 uses
  %14 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %15 = alloca %"class.duckdb::vector.100", align 8 ; 11 uses
  %16 = alloca %"class.duckdb::vector.100", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6duckdb26SerializationCompatibility7CompareEm(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i64 noundef 7)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !113
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  switch i64 %3, label %bb.e [
    i64 0, label %bb.d
    i64 1, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.e)
  br label %bb.ap

bb.e:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ar unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.016 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %11, align 8, !tbaa !15    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.l) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br i1 %.016, label %bb.i, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br i1 %.016, label %bb.i, label %bb.aq

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33152 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #20
  br label %bb.aq

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !295
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !296
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ugt i64 %i.u, 8
  br i1 %i.v, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.k

.preheader.loopexit:                              ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !295
  %.pre203.a = load ptr, ptr %13, align 8, !tbaa !296
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.j
  %i.y = phi ptr [ %.pre203.a, %.preheader.loopexit ], [ null, %bb.j ] ; 2 uses
  %.pre204.a = phi ptr [ %.pre, %.preheader.loopexit ], [ null, %bb.j ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.aa = ptrtoint ptr %.pre204.a to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ugt i64 %i.ac, 8
  br i1 %i.ad, label %.lr.ph193, label %._crit_edge194

.lr.ph193:                                        ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.t

bb.k:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %.015189 = phi i64 [ 1, %.lr.ph ], [ %i.cf, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.015189)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.am = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.m unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(120) %i.am)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !295 ; 6 uses
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !315
  %.not.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i, label %bb.o, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.n
  %i.as = load i64, ptr %14, align 8, !tbaa !80
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.w, align 8, !tbaa !295
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %13, align 8, !tbaa !296  ; 10 uses
  %i.av = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #23
          to label %.noexc36 unwind label %.loopexit ; 10 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  %i.bh = load i64, ptr %14, align 8, !tbaa !80
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !80
  store ptr null, ptr %14, align 8, !tbaa !80
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.aq
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc36
  %i.bi = sub i64 %i.av, %i.aw
  %i.bj = add i64 %i.bi, -8                       ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader350, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bf, i64 8
  %i.bm = add i64 %i.av, -8
  %i.bn = sub i64 %i.bm, %i.aw
  %i.bo = and i64 %i.bn, -8                       ; 2 uses
  %scevgep285 = getelementptr i8, ptr %scevgep, i64 %i.bo
  %scevgep286 = getelementptr i8, ptr %i.au, i64 8
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %i.bo
  %bound0 = icmp ult ptr %i.bf, %scevgep287
  %bound1 = icmp ult ptr %i.au, %scevgep285
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader350, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bf, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.au, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bs ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.au, i64 %i.bs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.bt = getelementptr i8, ptr %next.gep288, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep288, align 8, !tbaa !80, !alias.scope !341, !noalias !336
  %wide.load289 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !80, !alias.scope !341, !noalias !336
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !80, !alias.scope !344, !noalias !341
  store <2 x i64> %wide.load289, ptr %i.bu, align 8, !tbaa !80, !alias.scope !344, !noalias !341
  %i.bv = getelementptr i8, ptr %next.gep288, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep288, align 8, !tbaa !80, !alias.scope !341, !noalias !336
  store <2 x ptr> splat (ptr null), ptr %i.bv, align 8, !tbaa !80, !alias.scope !341, !noalias !336
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader350

.lr.ph.i.i.i.i.i.i.i.preheader350:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader350, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader350 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader350 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !339, !noalias !336
  store i64 %i.bx, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !336, !noalias !339
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !339, !noalias !336
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.aq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !347

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc36
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.noexc36 ], [ %i.bq, %middle.block ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.au) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  store ptr %i.bf, ptr %13, align 8, !tbaa !296
  store ptr %i.ca, ptr %i.w, align 8, !tbaa !295
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.cb, ptr %i.x, align 8, !tbaa !315
  %.pr = load ptr, ptr %14, align 8, !tbaa !80    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cc = load ptr, ptr %.pr, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr) #20, !inline_history !90
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.cf = add nuw i64 %.015189, 1                 ; 2 uses
  %i.cg = load ptr, ptr %i.p, align 8, !tbaa !295
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !296
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3
  %i.cm = icmp ult i64 %i.cf, %i.cl
  br i1 %i.cm, label %bb.k, label %.preheader.loopexit, !llvm.loop !348

bb.r:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit39

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit157 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp158 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi159 = phi { ptr, i32 } [ %lpad.loopexit157, %.loopexit ], [ %lpad.loopexit.split-lp158, %.loopexit.split-lp ] ; 2 uses
  %i.co = load ptr, ptr %14, align 8, !tbaa !80   ; 3 uses
  %.not.i37 = icmp eq ptr %i.co, null
  br i1 %.not.i37, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit39, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i38

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i38: ; preds = %bb.s
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.co) #20, !inline_history !90
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit39

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit39: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i38, %bb.s, %bb.r
  %.pn30 = phi { ptr, i32 } [ %i.cn, %bb.r ], [ %lpad.phi159, %bb.s ], [ %lpad.phi159, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.ao

bb.t:                                             ; preds = %.lr.ph193, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.cs = phi ptr [ %i.y, %.lr.ph193 ], [ %i.dj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 4 uses
  %i.ct = phi ptr [ %.pre204.a, %.lr.ph193 ], [ %i.di, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %i.ct, %i.cs
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph191.preheader

._crit_edge.thread:                               ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

.lr.ph191.preheader:                              ; preds = %bb.t
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3
  br label %.lr.ph191

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56
  store ptr %i.il, ptr %13, align 8, !tbaa !296
  store ptr %i.in, ptr %i.z, align 8, !tbaa !295
  store ptr %i.ik, ptr %i.ak, align 8, !tbaa !315
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.iq, %i.ip
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.dc, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.iq, %._crit_edge ] ; 2 uses
  %i.cy = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cy) #20, !inline_history !349
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, %i.ip
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %._crit_edge.thread, %._crit_edge
  %.lcssa164259 = phi ptr [ %i.cs, %._crit_edge.thread ], [ %i.iq, %._crit_edge ], [ %i.iq, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %.lcssa164259, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.lcssa164259) #21
  %.pre206.a = load ptr, ptr %15, align 8, !tbaa !296 ; 4 uses
  %.pre207 = load ptr, ptr %i.ai, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre206.a, %.pre207
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dh, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %.pre206.a, %_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit ] ; 2 uses
  %i.dd = load ptr, ptr %.05.i.i.i, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.dd) #20, !inline_history !350
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dh, %.pre207
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, %_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit
  %.not.i.i1.i = icmp eq ptr %.pre206.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.pre206.a) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.di = load ptr, ptr %i.z, align 8, !tbaa !295 ; 2 uses
  %i.dj = load ptr, ptr %13, align 8, !tbaa !296  ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ugt i64 %i.dm, 8
  br i1 %i.dn, label %bb.t, label %._crit_edge194, !llvm.loop !351

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56
  %i.do = phi ptr [ %i.ik, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56 ], [ null, %.lr.ph191.preheader ] ; 7 uses
  %i.dp = phi ptr [ %i.il, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56 ], [ null, %.lr.ph191.preheader ] ; 22 uses
  %i.dq = phi ptr [ %i.im, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56 ], [ null, %.lr.ph191.preheader ] ; 5 uses
  %i.dr = phi ptr [ %i.in, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56 ], [ null, %.lr.ph191.preheader ] ; 6 uses
  %i.ds = phi i64 [ %i.iu, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56 ], [ %i.cx, %.lr.ph191.preheader ] ; 3 uses
  %i.dt = phi ptr [ %i.iq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56 ], [ %i.cs, %.lr.ph191.preheader ] ; 3 uses
  %.0190 = phi i64 [ %i.io, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56 ], [ 0, %.lr.ph191.preheader ] ; 4 uses
  %i.du = or disjoint i64 %.0190, 1               ; 4 uses
  %i.dv = icmp eq i64 %i.du, %i.ds
  br i1 %i.dv, label %bb.v, label %17

bb.v:                                             ; preds = %.lr.ph191
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.0190 ; 4 uses
  %.not.i.i41 = icmp eq ptr %i.dr, %i.do
  br i1 %.not.i.i41, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !80
  store i64 %i.dx, ptr %i.dr, align 8, !tbaa !80
  store ptr null, ptr %i.dw, align 8, !tbaa !80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  store ptr %i.dy, ptr %i.ai, align 8, !tbaa !295
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56

bb.x:                                             ; preds = %bb.v
  %i.dz = ptrtoint ptr %i.do to i64               ; 3 uses
  %i.ea = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775800
  br i1 %i.ec, label %bb.y, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i42

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #22
          to label %.noexc54 unwind label %.body.loopexit.split-lp.a

.noexc54:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i42: ; preds = %bb.x
  %i.ed = ashr exact i64 %i.eb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i43 = call i64 @llvm.umax.i64(i64 %i.ed, i64 1)
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i.i43, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 1152921504606846975)
  %i.eh = select i1 %i.ef, i64 1152921504606846975, i64 %i.eg ; 3 uses
  %.not.i.i.i.i44 = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i44)
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #23
          to label %.noexc55 unwind label %.body.loopexit ; 11 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i42
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb
  %i.el = load i64, ptr %i.dw, align 8, !tbaa !80
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !80
  store ptr null, ptr %i.dw, align 8, !tbaa !80
  %.not10.i.i.i.i.i.i.i45 = icmp eq ptr %i.dp, %i.do
  br i1 %.not10.i.i.i.i.i.i.i45, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i50, label %.lr.ph.i.i.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i.i.i46.preheader:                 ; preds = %.noexc55
  %i.em = sub i64 %i.dz, %i.ea
  %i.en = add i64 %i.em, -8                       ; 2 uses
  %i.eo = lshr i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %i.en, 56
  br i1 %min.iters.check300, label %.lr.ph.i.i.i.i.i.i.i46.preheader339, label %vector.memcheck291

vector.memcheck291:                               ; preds = %.lr.ph.i.i.i.i.i.i.i46.preheader
  %scevgep292.a = getelementptr i8, ptr %i.ej, i64 8
  %i.eq = add i64 %i.dz, -8
  %i.er = sub i64 %i.eq, %i.ea
  %i.es = and i64 %i.er, -8                       ; 2 uses
  %scevgep293 = getelementptr i8, ptr %scevgep292.a, i64 %i.es
  %scevgep294 = getelementptr i8, ptr %i.dp, i64 8
  %scevgep295 = getelementptr i8, ptr %scevgep294, i64 %i.es
  %bound0296 = icmp ult ptr %i.ej, %scevgep295
  %bound1297 = icmp ult ptr %i.dp, %scevgep293
  %found.conflict298 = and i1 %bound0296, %bound1297
  br i1 %found.conflict298, label %.lr.ph.i.i.i.i.i.i.i46.preheader339, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck291
  %n.vec303 = and i64 %i.ep, 4611686018427387900  ; 3 uses
  %i.et = shl i64 %n.vec303, 3                    ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ej, i64 %i.et  ; 2 uses
  %i.ev = getelementptr i8, ptr %i.dp, i64 %i.et
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph301
  %index305 = phi i64 [ 0, %vector.ph301 ], [ %index.next310, %vector.body304 ] ; 2 uses
  %i.ew = shl i64 %index305, 3                    ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.ej, i64 %i.ew ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.dp, i64 %i.ew ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.ex = getelementptr i8, ptr %next.gep307, i64 16
  %wide.load308 = load <2 x i64>, ptr %next.gep307, align 8, !tbaa !80, !alias.scope !357, !noalias !352
  %wide.load309 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !80, !alias.scope !357, !noalias !352
  %i.ey = getelementptr i8, ptr %next.gep306, i64 16
  store <2 x i64> %wide.load308, ptr %next.gep306, align 8, !tbaa !80, !alias.scope !360, !noalias !357
  store <2 x i64> %wide.load309, ptr %i.ey, align 8, !tbaa !80, !alias.scope !360, !noalias !357
  %i.ez = getelementptr i8, ptr %next.gep307, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep307, align 8, !tbaa !80, !alias.scope !357, !noalias !352
  store <2 x ptr> splat (ptr null), ptr %i.ez, align 8, !tbaa !80, !alias.scope !357, !noalias !352
  %index.next310 = add nuw i64 %index305, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.fa, label %middle.block311, label %vector.body304, !llvm.loop !362

middle.block311:                                  ; preds = %vector.body304
  %cmp.n312 = icmp eq i64 %i.ep, %n.vec303
  br i1 %cmp.n312, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i50, label %.lr.ph.i.i.i.i.i.i.i46.preheader339

.lr.ph.i.i.i.i.i.i.i46.preheader339:              ; preds = %vector.memcheck291, %.lr.ph.i.i.i.i.i.i.i46.preheader, %middle.block311
  %.012.i.i.i.i.i.i.i47.ph = phi ptr [ %i.ej, %vector.memcheck291 ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i46.preheader ], [ %i.eu, %middle.block311 ]
  %.0911.i.i.i.i.i.i.i48.ph = phi ptr [ %i.dp, %vector.memcheck291 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i46.preheader ], [ %i.ev, %middle.block311 ]
  br label %.lr.ph.i.i.i.i.i.i.i46

.lr.ph.i.i.i.i.i.i.i46:                           ; preds = %.lr.ph.i.i.i.i.i.i.i46.preheader339, %.lr.ph.i.i.i.i.i.i.i46
  %.012.i.i.i.i.i.i.i47 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i46 ], [ %.012.i.i.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i.i.i46.preheader339 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i48 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i46 ], [ %.0911.i.i.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i.i.i46.preheader339 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.fb = load i64, ptr %.0911.i.i.i.i.i.i.i48, align 8, !tbaa !80, !alias.scope !355, !noalias !352
  store i64 %i.fb, ptr %.012.i.i.i.i.i.i.i47, align 8, !tbaa !80, !alias.scope !352, !noalias !355
  store ptr null, ptr %.0911.i.i.i.i.i.i.i48, align 8, !tbaa !80, !alias.scope !355, !noalias !352
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i48, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i47, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i49 = icmp eq ptr %i.fc, %i.do
  br i1 %.not.i.i.i.i.i.i.i49, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i50, label %.lr.ph.i.i.i.i.i.i.i46, !llvm.loop !363

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i50: ; preds = %.lr.ph.i.i.i.i.i.i.i46, %middle.block311, %.noexc55
  %.0.lcssa.i.i.i.i.i.i.i51 = phi ptr [ %i.ej, %.noexc55 ], [ %i.eu, %middle.block311 ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i46 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %.not.i23.i.i.i52 = icmp eq ptr %i.dp, null
  br i1 %.not.i23.i.i.i52, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i50
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53: ; preds = %bb.z, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i50
  store ptr %i.ej, ptr %15, align 8, !tbaa !296
  store ptr %i.fe, ptr %i.ai, align 8, !tbaa !295
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh ; 3 uses
  store ptr %i.ff, ptr %i.aj, align 8, !tbaa !315
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56

.body.loopexit:                                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i42
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.loopexit.split-lp.a:                        ; preds = %bb.y
  %lpad.loopexit.split-lp155.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

17:                                               ; preds = %.lr.ph191
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.0190 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %i.du, ptr %8, align 8, !tbaa !115
  store i64 %i.ds, ptr %9, align 8, !tbaa !115
  %.not.i.i.i67 = icmp ult i64 %i.du, %i.ds
  br i1 %.not.i.i.i67, label %bb.aa, label %.noexc.i139, !prof !142

.noexc.i139:                                      ; preds = %17
  %19 = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %20, ptr %10, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 55, ptr %4, align 8, !tbaa !115
  %21 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %.noexc140 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68 ; 3 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %21, ptr %10, align 8, !tbaa !15
  %22 = load i64, ptr %4, align 8, !tbaa !115     ; 3 uses
  store i64 %22, ptr %20, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %21, ptr noundef nonnull align 1 dereferenceable(55) @.str.45, i64 55, i1 false)
  %23 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %22, ptr %23, align 8, !tbaa !11
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 %22
  store i8 0, ptr %24, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %25 unwind label %26

25:                                               ; preds = %.noexc140
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %31 unwind label %26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68: ; preds = %.noexc.i139
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %30

26:                                               ; preds = %25, %.noexc140
  %.0.i.i.i71 = phi i1 [ false, %25 ], [ true, %.noexc140 ] ; 2 uses
  %27 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %28 = load ptr, ptr %10, align 8, !tbaa !15     ; 2 uses
  %29 = icmp eq ptr %28, %20
  br i1 %29, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72: ; preds = %26
  call void @_ZdlPv(ptr noundef %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.0.i.i.i71, label %30, label %.body64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73: ; preds = %26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.0.i.i.i71, label %30, label %.body64

30:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68
  %.pn8.i.i.i69 = phi { ptr, i32 } [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68 ], [ %27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73 ], [ %27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72 ]
  call void @__cxa_free_exception(ptr %19) #20
  br label %.body64

31:                                               ; preds = %25
  unreachable

bb.aa:                                            ; preds = %17
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.fh = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #23
          to label %.noexc80 unwind label %bb.ak  ; 6 uses

.noexc80:                                         ; preds = %bb.aa
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.du ; 2 uses
  %i.fj = load i8, ptr %i.ae, align 8, !tbaa !364, !noalias !365
  %i.fk = load i64, ptr %18, align 8, !tbaa !80, !noalias !365
  store i64 %i.fk, ptr %5, align 8, !tbaa !80, !noalias !365
  store ptr null, ptr %18, align 8, !tbaa !80, !noalias !365
  %i.fl = load i64, ptr %i.fi, align 8, !tbaa !80, !noalias !365
  store i64 %i.fl, ptr %6, align 8, !tbaa !80, !noalias !365
  store ptr null, ptr %i.fi, align 8, !tbaa !80, !noalias !365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !noalias !365
  %i.fm = load i8, ptr %i.af, align 1, !tbaa !368, !range !72, !noalias !365, !noundef !73
  %i.fn = trunc nuw i8 %i.fm to i1
  invoke void @_ZN6duckdb16SetOperationNodeC1ENS_16SetOperationTypeENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS3_ELb1EEES6_NS_6vectorIS6_Lb1ESaIS6_EEEb(ptr noundef nonnull align 8 dereferenceable(152) %i.fh, i8 noundef zeroext %i.fj, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i1 noundef zeroext %i.fn)
          to label %bb.ab unwind label %bb.ad, !noalias !365

bb.ab:                                            ; preds = %.noexc80
  %i.fo = load ptr, ptr %7, align 8, !tbaa !296, !noalias !365 ; 3 uses
  %i.fp = load ptr, ptr %i.ag, align 8, !tbaa !295, !noalias !365 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fo, %i.fp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ab, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fu, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.fo, %bb.ab ] ; 2 uses
  %i.fq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !80, !noalias !365 ; 3 uses
  %.not.i.i.i.i.i.i77 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i77, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !17, !noalias !365
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !365
  call void %i.ft(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fq) #20, !noalias !365, !inline_history !369
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.fu, %i.fp
  br i1 %.not.i.i.i.i78, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 8, !tbaa !296, !noalias !365
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.ab
  %i.fv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fo, %bb.ab ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fv) #21, !noalias !365
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i: ; preds = %bb.ac, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.fw = load ptr, ptr %6, align 8, !tbaa !80, !noalias !365 ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i79, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !17, !noalias !365
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !365
  call void %i.fz(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fw) #20, !noalias !365, !inline_history !370
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  %i.ga = load ptr, ptr %5, align 8, !tbaa !80, !noalias !365 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.ga, null
  br i1 %.not.i7.i, label %bb.ae, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !17, !noalias !365
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !365
  call void %i.gd(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ga) #20, !noalias !365, !inline_history !370
  br label %bb.ae

bb.ad:                                            ; preds = %.noexc80
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #20, !noalias !365
  %i.gf = load ptr, ptr %6, align 8, !tbaa !80, !noalias !365 ; 3 uses
  %.not.i10.i = icmp eq ptr %i.gf, null
  br i1 %.not.i10.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit12.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i11.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i11.i: ; preds = %bb.ad
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !17, !noalias !365
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !365
  call void %i.gi(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.gf) #20, !noalias !365, !inline_history !370
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit12.i

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit12.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i11.i, %bb.ad
  %i.gj = load ptr, ptr %5, align 8, !tbaa !80, !noalias !365 ; 3 uses
  %.not.i13.i = icmp eq ptr %i.gj, null
  br i1 %.not.i13.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit15.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i14.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i14.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit12.i
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !17, !noalias !365
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !365
  call void %i.gm(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.gj) #20, !noalias !365, !inline_history !370
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit15.i

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit15.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i14.i, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit12.i
  call void @_ZdlPv(ptr noundef nonnull %i.fh) #21, !noalias !365
  br label %.body64

bb.ae:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8.i, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not.i.i83 = icmp eq ptr %i.dr, %i.dq
  br i1 %.not.i.i83, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gn = ptrtoint ptr %i.fh to i64
  store i64 %i.gn, ptr %i.dr, align 8, !tbaa !80
  %i.go = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  store ptr %i.go, ptr %i.ai, align 8, !tbaa !295
  br label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gp = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.gq = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 3 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %bb.ah, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i84

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #22
          to label %.noexc96 unwind label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit.split-lp

.noexc96:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i84: ; preds = %bb.ag
  %i.gt = ashr exact i64 %i.gr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i85 = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i85, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 1152921504606846975)
  %i.gx = select i1 %i.gv, i64 1152921504606846975, i64 %i.gw ; 3 uses
  %.not.i.i.i.i86 = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i86)
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #23
          to label %.noexc97 unwind label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit ; 11 uses

.noexc97:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i84
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gr
  %i.hb = ptrtoint ptr %i.fh to i64
  store i64 %i.hb, ptr %i.ha, align 8, !tbaa !80
  %.not10.i.i.i.i.i.i.i87 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not10.i.i.i.i.i.i.i87, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92, label %.lr.ph.i.i.i.i.i.i.i88.preheader

.lr.ph.i.i.i.i.i.i.i88.preheader:                 ; preds = %.noexc97
  %i.hc = sub i64 %i.gp, %i.gq
  %i.hd = add i64 %i.hc, -8                       ; 2 uses
  %i.he = lshr i64 %i.hd, 3
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check324 = icmp ult i64 %i.hd, 56
  br i1 %min.iters.check324, label %.lr.ph.i.i.i.i.i.i.i88.preheader340, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i.i.i.i.i.i.i88.preheader
  %scevgep316.a = getelementptr i8, ptr %i.gz, i64 8
  %i.hg = add i64 %i.gp, -8
  %i.hh = sub i64 %i.hg, %i.gq
  %i.hi = and i64 %i.hh, -8                       ; 2 uses
  %scevgep317 = getelementptr i8, ptr %scevgep316.a, i64 %i.hi
  %scevgep318 = getelementptr i8, ptr %i.dp, i64 8
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.hi
  %bound0320 = icmp ult ptr %i.gz, %scevgep319
  %bound1321 = icmp ult ptr %i.dp, %scevgep317
  %found.conflict322 = and i1 %bound0320, %bound1321
  br i1 %found.conflict322, label %.lr.ph.i.i.i.i.i.i.i88.preheader340, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck315
  %n.vec327 = and i64 %i.hf, 4611686018427387900  ; 3 uses
  %i.hj = shl i64 %n.vec327, 3                    ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gz, i64 %i.hj  ; 2 uses
  %i.hl = getelementptr i8, ptr %i.dp, i64 %i.hj
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.hm = shl i64 %index329, 3                    ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.gz, i64 %i.hm ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.dp, i64 %i.hm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.hn = getelementptr i8, ptr %next.gep331, i64 16
  %wide.load332 = load <2 x i64>, ptr %next.gep331, align 8, !tbaa !80, !alias.scope !376, !noalias !371
  %wide.load333 = load <2 x i64>, ptr %i.hn, align 8, !tbaa !80, !alias.scope !376, !noalias !371
  %i.ho = getelementptr i8, ptr %next.gep330, i64 16
  store <2 x i64> %wide.load332, ptr %next.gep330, align 8, !tbaa !80, !alias.scope !379, !noalias !376
  store <2 x i64> %wide.load333, ptr %i.ho, align 8, !tbaa !80, !alias.scope !379, !noalias !376
  %i.hp = getelementptr i8, ptr %next.gep331, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep331, align 8, !tbaa !80, !alias.scope !376, !noalias !371
  store <2 x ptr> splat (ptr null), ptr %i.hp, align 8, !tbaa !80, !alias.scope !376, !noalias !371
  %index.next334 = add nuw i64 %index329, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.hq, label %middle.block335, label %vector.body328, !llvm.loop !381

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.hf, %n.vec327
  br i1 %cmp.n336, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92, label %.lr.ph.i.i.i.i.i.i.i88.preheader340

.lr.ph.i.i.i.i.i.i.i88.preheader340:              ; preds = %vector.memcheck315, %.lr.ph.i.i.i.i.i.i.i88.preheader, %middle.block335
  %.012.i.i.i.i.i.i.i89.ph = phi ptr [ %i.gz, %vector.memcheck315 ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.i88.preheader ], [ %i.hk, %middle.block335 ]
  %.0911.i.i.i.i.i.i.i90.ph = phi ptr [ %i.dp, %vector.memcheck315 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i88.preheader ], [ %i.hl, %middle.block335 ]
  br label %.lr.ph.i.i.i.i.i.i.i88

.lr.ph.i.i.i.i.i.i.i88:                           ; preds = %.lr.ph.i.i.i.i.i.i.i88.preheader340, %.lr.ph.i.i.i.i.i.i.i88
  %.012.i.i.i.i.i.i.i89 = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i.i.i88 ], [ %.012.i.i.i.i.i.i.i89.ph, %.lr.ph.i.i.i.i.i.i.i88.preheader340 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i90 = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i.i.i88 ], [ %.0911.i.i.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i.i.i88.preheader340 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.hr = load i64, ptr %.0911.i.i.i.i.i.i.i90, align 8, !tbaa !80, !alias.scope !374, !noalias !371
  store i64 %i.hr, ptr %.012.i.i.i.i.i.i.i89, align 8, !tbaa !80, !alias.scope !371, !noalias !374
  store ptr null, ptr %.0911.i.i.i.i.i.i.i90, align 8, !tbaa !80, !alias.scope !374, !noalias !371
  %i.hs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i90, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i89, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i91 = icmp eq ptr %i.hs, %i.dq
  br i1 %.not.i.i.i.i.i.i.i91, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92, label %.lr.ph.i.i.i.i.i.i.i88, !llvm.loop !382

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92: ; preds = %.lr.ph.i.i.i.i.i.i.i88, %middle.block335, %.noexc97
  %.0.lcssa.i.i.i.i.i.i.i93 = phi ptr [ %i.gz, %.noexc97 ], [ %i.hk, %middle.block335 ], [ %i.ht, %.lr.ph.i.i.i.i.i.i.i88 ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i93, i64 8 ; 2 uses
  %.not.i23.i.i.i94 = icmp eq ptr %i.dp, null
  br i1 %.not.i23.i.i.i94, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #21
  %.pre205.pre = load ptr, ptr %16, align 8, !tbaa !296
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95: ; preds = %bb.ai, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92
  %.pre205 = phi ptr [ %.pre205.pre, %bb.ai ], [ null, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92 ]
  store ptr %i.gz, ptr %15, align 8, !tbaa !296
  store ptr %i.hu, ptr %i.ai, align 8, !tbaa !295
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gx ; 3 uses
  store ptr %i.hv, ptr %i.aj, align 8, !tbaa !315
  br label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95, %bb.af
  %i.hw = phi ptr [ %i.hv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.do, %bb.af ]
  %.pr.i111 = phi ptr [ %.pre205, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ null, %bb.af ] ; 4 uses
  %i.hx = phi ptr [ %i.gz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.dp, %bb.af ]
  %i.hy = phi ptr [ %i.hv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.dq, %bb.af ]
  %i.hz = phi ptr [ %i.hu, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.go, %bb.af ]
  %i.ia = load ptr, ptr %i.ah, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i103 = icmp eq ptr %.pr.i111, %i.ia
  br i1 %.not4.i.i.i103, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108
  %.05.i.i.i105 = phi ptr [ %i.if, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108 ], [ %.pr.i111, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.ib = load ptr, ptr %.05.i.i.i105, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i106 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i106, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i107

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i107: ; preds = %.lr.ph.i.i.i104
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ib) #20, !inline_history !350
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i107, %.lr.ph.i.i.i104
  %i.if = getelementptr inbounds nuw i8, ptr %.05.i.i.i105, i64 8 ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.if, %i.ia
  br i1 %.not.i.i.i109, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, label %.lr.ph.i.i.i104, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit
  %.not.i.i1.i113 = icmp eq ptr %.pr.i111, null
  br i1 %.not.i.i1.i113, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112
  call void @_ZdlPv(ptr noundef nonnull %.pr.i111) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56

bb.ak:                                            ; preds = %bb.aa
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body64

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i84
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit.split-lp: ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120: ; preds = %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit.split-lp ]
  %i.ih = load ptr, ptr %i.fh, align 8, !tbaa !17
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fh) #20, !inline_history !90
  br label %.body64

.body64:                                          ; preds = %bb.ak, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, %30, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120 ], [ %27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72 ], [ %27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73 ], [ %.pn8.i.i.i69, %30 ], [ %i.ig, %bb.ak ], [ %i.ge, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit15.i ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53, %bb.w, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114
  %i.ik = phi ptr [ %i.ff, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53 ], [ %i.do, %bb.w ], [ %i.hw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114 ] ; 2 uses
  %i.il = phi ptr [ %i.ej, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53 ], [ %i.dp, %bb.w ], [ %i.hx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114 ] ; 2 uses
  %i.im = phi ptr [ %i.ff, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53 ], [ %i.do, %bb.w ], [ %i.hy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114 ]
  %i.in = phi ptr [ %i.fe, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53 ], [ %i.dy, %bb.w ], [ %i.hz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114 ] ; 2 uses
  %i.io = add i64 %.0190, 2                       ; 2 uses
  %i.ip = load ptr, ptr %i.z, align 8, !tbaa !295 ; 3 uses
  %i.iq = load ptr, ptr %13, align 8, !tbaa !296  ; 6 uses
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = ashr exact i64 %i.it, 3                 ; 2 uses
  %i.iv = icmp ult i64 %i.io, %i.iu
  br i1 %i.iv, label %.lr.ph191, label %._crit_edge, !llvm.loop !383

.body:                                            ; preds = %.body.loopexit, %.body.loopexit.split-lp.a, %.body64
  %.pn28 = phi { ptr, i32 } [ %.pn, %.body64 ], [ %lpad.loopexit154, %.body.loopexit ], [ %lpad.loopexit.split-lp155.a, %.body.loopexit.split-lp.a ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.ao

._crit_edge194:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %.preheader
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef 0)
          to label %bb.al unwind label %bb.an     ; 2 uses

bb.al:                                            ; preds = %._crit_edge194
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !80
  store i64 %i.ix, ptr %0, align 8, !tbaa !80
  store ptr null, ptr %i.iw, align 8, !tbaa !80
  %i.iy = load ptr, ptr %13, align 8, !tbaa !296  ; 3 uses
  %i.iz = load ptr, ptr %i.z, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i121 = icmp eq ptr %i.iy, %i.iz
  br i1 %.not4.i.i.i121, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130, label %.lr.ph.i.i.i122

.lr.ph.i.i.i122:                                  ; preds = %bb.al, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126
  %.05.i.i.i123 = phi ptr [ %i.je, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126 ], [ %i.iy, %bb.al ] ; 2 uses
  %i.ja = load ptr, ptr %.05.i.i.i123, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i124 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i.i124, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i125

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i125: ; preds = %.lr.ph.i.i.i122
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !17
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ja) #20, !inline_history !350
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i125, %.lr.ph.i.i.i122
  %i.je = getelementptr inbounds nuw i8, ptr %.05.i.i.i123, i64 8 ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.je, %i.iz
  br i1 %.not.i.i.i127, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i128, label %.lr.ph.i.i.i122, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i128: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126
  %.pr.i129 = load ptr, ptr %13, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i128, %bb.al
  %i.jf = phi ptr [ %.pr.i129, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i128 ], [ %i.iy, %bb.al ] ; 2 uses
  %.not.i.i1.i131 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i1.i131, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit132, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130
  call void @_ZdlPv(ptr noundef nonnull %i.jf) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit132

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit132: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.ap

bb.an:                                            ; preds = %._crit_edge194
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.body, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit39
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit39 ], [ %.pn28, %.body ], [ %i.jg, %bb.an ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit132, %bb.d, %bb.b
  ret void

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.ao
  %.pn33.pn = phi { ptr, i32 } [ %.pn33152, %bb.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn30.pn, %bb.ao ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn33.pn

bb.ar:                                            ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb16SetOperationNode18SerializeChildListERNS_10SerializerE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(680) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6duckdb26SerializationCompatibility7CompareEm(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i64 noundef 7)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295
  %i.e = load ptr, ptr %0, align 8, !tbaa !296    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !115
  store i64 %i.i, ptr %i.b, align 8, !tbaa !115
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13StatementNodeC2ERNS_12SQLStatementE(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 9), (16, 40)) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb9QueryNodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.a, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6duckdb24CommonTableExpressionMapC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #20
  resume { ptr, i32 } %i.d

_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit:  ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb13StatementNodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.e, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb13StatementNode8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !386, !nonnull !73, !align !388 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb13StatementNode6EqualsEPKNS_9QueryNodeE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb9QueryNode6EqualsEPKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb9QueryNode4CastINS_13StatementNodeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(120) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !386, !nonnull !73, !align !388
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !386, !nonnull !73, !align !388
  %i.h = icmp eq ptr %i.e, %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ %i.h, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb9QueryNode4CastINS_13StatementNodeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !81
  %.not = icmp eq i8 %i.b, 6
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
end_hunk_0
