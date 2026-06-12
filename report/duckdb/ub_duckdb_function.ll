inline.NumInlined: 6549
inline.NumDeleted: 2624
begin_hunk_0_@_ZNK6duckdb19ScalarMacroFunction5ToSQLB5cxx11Ev:bb.a
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %2, align 8, !tbaa !207, !noalias !913 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !210, !noalias !913 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.m, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.q) #32
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !211

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8, !tbaa !207, !noalias !913
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.u = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.m, %bb.e ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !913
  br label %.body

bb.h:                                             ; preds = %bb.f, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !913
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = load ptr, ptr %7, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.z) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ac = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.f
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @_ZdlPv(ptr noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ae = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @_ZdlPv(ptr noundef %i.ae) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ah = load ptr, ptr %3, align 8, !tbaa !683   ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(56) %i.ah) #31, !inline_history !742
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.j:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.l:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.m:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.ap) #32
  br label %.body

.body:                                            ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ao, %bb.m ] ; 2 uses
  %i.as = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.as) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn, %.body ] ; 2 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.f
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  call void @_ZdlPv(ptr noundef %i.av) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ax = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @_ZdlPv(ptr noundef %i.ax) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.k ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.j
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.al, %bb.j ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !683   ; 3 uses
  %.not.i33 = icmp eq ptr %i.ba, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit35, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i34

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i34: ; preds = %bb.n
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(56) %i.ba) #31, !inline_history !742
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit35: ; preds = %bb.n, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %3 = load i64, ptr %i.g, align 8
  %4 = select i1 %i.h, i64 15, i64 %3
  %i.j = icmp ugt i64 %i.e, %4
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l                   ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.n)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.c, %bb.d
  %5 = load i64, ptr %i.l, align 8
  %6 = select i1 %i.m, i64 15, i64 %5
  %.not = icmp ugt i64 %i.e, %6
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !19
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a

bb.e:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24   ; 2 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a: ; preds = %.critedge
  store ptr %i.q, ptr %0, align 8, !tbaa !22
  %i.x = load i64, ptr %i.r, align 8, !tbaa !25
  store i64 %i.x, ptr %i.p, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !24
  store ptr %i.r, ptr %i.o, align 8, !tbaa !22
  store i64 0, ptr %i.y, align 8, !tbaa !24
  store i8 0, ptr %i.r, align 8, !tbaa !25
  br label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ab = sub i64 4611686018427387903, %i.b
  %i.ac = icmp ult i64 %i.ab, %i.d
  br i1 %i.ac, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.464) #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.f
  %i.ad = load ptr, ptr %2, align 8, !tbaa !22
  %i.ae = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ad, i64 noundef %i.d) ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !19
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ag, ptr %0, align 8, !tbaa !22
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !25
  store i64 %i.an, ptr %i.af, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !24
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !22
  store i64 0, ptr %i.ao, align 8, !tbaa !24
  store i8 0, ptr %i.ah, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb18TableMacroFunctionC2ENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(152) initializes((8, 9), (16, 64)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !665
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %i.e, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb18TableMacroFunctionE, i64 16), ptr %0, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i64, ptr %1, align 8, !tbaa !918
  store i64 %i.j, ptr %i.i, align 8, !tbaa !918
  store ptr null, ptr %1, align 8, !tbaa !918
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb18TableMacroFunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(152) initializes((8, 9), (16, 64)) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !665
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %i.e, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb18TableMacroFunctionE, i64 16), ptr %0, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.i, align 8, !tbaa !920
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb18TableMacroFunction4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.848") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.976", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.967", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #35, !noalias !922, !inline_history !925 ; 3 uses
  invoke void @_ZN6duckdb18TableMacroFunctionC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %i.a)
          to label %_ZN6duckdb9make_uniqINS_18TableMacroFunctionEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !922, !inline_history !925

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb18TableMacroFunctionESt14default_deleteIS1_EED2Ev.exit13, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn5, %_ZNSt10unique_ptrIN6duckdb18TableMacroFunctionESt14default_deleteIS1_EED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #32, !noalias !922, !inline_history !925
  br label %common.resume

_ZN6duckdb9make_uniqINS_18TableMacroFunctionEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !926, !alias.scope !922
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_18TableMacroFunctionEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.967") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.d)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18TableMacroFunctionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !918
  store ptr null, ptr %3, align 8, !tbaa !918
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !918  ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !918
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.k) #31, !inline_history !928
  %.pr = load ptr, ptr %3, align 8, !tbaa !918    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.o = load ptr, ptr %.pr, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr) #31, !inline_history !929
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
end_hunk_0
