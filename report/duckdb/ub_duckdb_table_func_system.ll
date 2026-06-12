inline.NumInlined: 14721
inline.NumDeleted: 5969
begin_hunk_0_@_ZN6duckdb19TestVectorTypesInitERNS_13ClientContextERNS_22TableFunctionInitInputE:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIN6duckdb13LogicalTypeIdENS0_8TestTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN6duckdb8TestTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.d) #29
  br label %_ZN6duckdb8TestTypeD2Ev.exit

_ZN6duckdb8TestTypeD2Ev.exit:                     ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(184) %i.g) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_19TestVectorTypesDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1614   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_19TestVectorTypesDataESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.185, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_19TestVectorTypesDataESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14TestVectorFlat8GenerateERNS_14TestVectorInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::TestGeneratedValues", align 8 ; 15 uses
  %5 = alloca %"class.duckdb::unique_ptr.1703", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN6duckdb14TestVectorFlat14GenerateValuesERNS_14TestVectorInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::TestGeneratedValues") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !1632   ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1632
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.020111 = phi i64 [ 0, %.lr.ph ], [ %i.eg, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_5ValueELb1ESaIS1_EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !344
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !341
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = icmp ult i64 %.020111, %i.t
  br i1 %i.u, label %bb.f, label %.critedge

.critedge:                                        ; preds = %.noexc
  %.pre.pre = load ptr, ptr %4, align 8, !tbaa !1591 ; 3 uses
  %.pre124.pre = load ptr, ptr %i.h, align 8, !tbaa !1589 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre.pre, %.pre124.pre
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i ], [ %.pre.pre, %.critedge ] ; 4 uses
  %i.v = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !341 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !344  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i.i.i.i.i) #26
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !346

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !341
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.z = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #29
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %.pre124.pre
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1592

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !1591
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, %bb.a, %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %.critedge
  %i.ab = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre.pre, %.critedge ], [ %i.i, %bb.a ], [ %i.eh, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #29
  br label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit

_ZN6duckdb19TestGeneratedValuesD2Ev.exit:         ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.e:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.ad = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27
          to label %.noexc30 unwind label %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit.us ; 3 uses

.noexc30:                                         ; preds = %bb.f
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %bb.h unwind label %bb.g, !noalias !1633

bb.g:                                             ; preds = %.noexc30
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #29, !noalias !1633
  br label %.body

bb.h:                                             ; preds = %.noexc30
  store ptr %i.ad, ptr %5, align 8, !tbaa !1469, !alias.scope !1633
  %i.af = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !1636, !nonnull !38, !align !148
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef 2048)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %4, align 8, !tbaa !1632
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !1632
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNK6duckdb19TestGeneratedValues4RowsEv.exit32, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_5ValueELb1ESaIS1_EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0)
          to label %.noexc31 unwind label %.noexc37.us ; 2 uses

.noexc31:                                         ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !344
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !341
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 6
  br label %_ZNK6duckdb19TestGeneratedValues4RowsEv.exit32

_ZNK6duckdb19TestGeneratedValues4RowsEv.exit32:   ; preds = %.noexc31, %bb.k
  %i.at = phi i64 [ %i.as, %.noexc31 ], [ 0, %bb.k ] ; 3 uses
  %i.au = sub i64 %i.at, %.020111
  %i.av = call noundef i64 @llvm.umin.i64(i64 %i.au, i64 2048)
  %i.aw = load ptr, ptr %0, align 8, !tbaa !1636, !nonnull !38, !align !148 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !63
  %6 = icmp ne ptr %i.ay, %i.az
  %7 = icmp ne i64 %i.at, %.020111
  %or.cond = and i1 %6, %7
  br i1 %or.cond, label %.preheader.us.preheader, label %bb.m

.preheader.us.preheader:                          ; preds = %_ZNK6duckdb19TestGeneratedValues4RowsEv.exit32
  %i.ba = add i64 %i.at, %indvars.iv
  %i.bb = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %umax = call i64 @llvm.umin.i64(i64 %i.bb, i64 2048)
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.019105.us = phi i64 [ %i.bc, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 7 uses
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %._crit_edge.us, %_ZNK6duckdb19TestGeneratedValues4RowsEv.exit32
  %8 = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ab unwind label %.noexc37.us

_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit.us: ; preds = %bb.f
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.noexc37.us:                                      ; preds = %bb.m, %bb.l, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.o:                                             ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body33

._crit_edge.us:                                   ; preds = %30
  %i.bc = add nuw i64 %.019105.us, 1              ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !1636, !nonnull !38, !align !148 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !63
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %i.bl = icmp ult i64 %i.bc, %i.bk
  br i1 %i.bl, label %.preheader.us, label %bb.m, !llvm.loop !1638

.loopexit.split-lp:                               ; preds = %.preheader.us, %30
  %.0104 = phi i64 [ 0, %.preheader.us ], [ %31, %30 ] ; 3 uses
  %11 = load ptr, ptr %5, align 8, !tbaa !1469    ; 3 uses
  %.not.i = icmp eq ptr %11, null
  br i1 %.not.i, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit, !prof !30

.noexc.i:                                         ; preds = %.loopexit.split-lp
  %i.bm = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bn, ptr %3, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 49, ptr %i.e, align 8, !tbaa !54
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc64 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc64:                                         ; preds = %.noexc.i
  store ptr %i.bo, ptr %3, align 8, !tbaa !31
  %i.bp = load i64, ptr %i.e, align 8, !tbaa !54  ; 3 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.bo, ptr noundef nonnull align 1 dereferenceable(49) @.str.185, i64 49, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc64
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.s unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %.noexc64
  %.0.i.i = phi i1 [ false, %bb.p ], [ true, %.noexc64 ] ; 2 uses
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bn
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bu) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.0.i.i, label %bb.r, label %.body33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.0.i.i, label %bb.r, label %.body33

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bm) #26
  br label %.body33

bb.s:                                             ; preds = %bb.p
  unreachable

_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %.loopexit.split-lp
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8, !tbaa !1367
  %14 = load ptr, ptr %11, align 8, !tbaa !1368   ; 2 uses
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 104                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.019105.us, ptr %i.f, align 8, !tbaa !54
  store i64 %18, ptr %i.g, align 8, !tbaa !54
  %.not.i.i.i = icmp ult i64 %.019105.us, %18
  br i1 %.not.i.i.i, label %19, label %.noexc.i66, !prof !349

.noexc.i66:                                       ; preds = %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit
  %i.bw = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bx, ptr %2, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 55, ptr %i.d, align 8, !tbaa !54
  %i.by = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc67 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc67:                                         ; preds = %.noexc.i66
  store ptr %i.by, ptr %2, align 8, !tbaa !31
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !54  ; 3 uses
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.by, ptr noundef nonnull align 1 dereferenceable(55) @.str.212, i64 55, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc67
  invoke void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.w unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i66
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %.noexc67
  %.0.i.i.i = phi i1 [ false, %bb.t ], [ true, %.noexc67 ] ; 2 uses
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bx
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.ce) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i.i, label %bb.v, label %.body33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i.i, label %bb.v, label %.body33

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bw) #26
  br label %.body33

bb.w:                                             ; preds = %bb.t
  unreachable

19:                                               ; preds = %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %20 = getelementptr inbounds nuw [104 x i8], ptr %14, i64 %.019105.us
  %21 = load ptr, ptr %i.h, align 8, !tbaa !1589
  %22 = load ptr, ptr %4, align 8, !tbaa !1591    ; 2 uses
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 24                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.019105.us, ptr %i.b, align 8, !tbaa !54
  store i64 %26, ptr %i.c, align 8, !tbaa !54
  %.not.i.i.i69 = icmp ult i64 %.019105.us, %26
  br i1 %.not.i.i.i69, label %.noexc37, label %.noexc.i79, !prof !349

.noexc.i79:                                       ; preds = %19
  %i.cg = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.ch, ptr %1, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 55, ptr %i.a, align 8, !tbaa !54
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc80 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i70 ; 3 uses

.noexc80:                                         ; preds = %.noexc.i79
  store ptr %i.ci, ptr %1, align 8, !tbaa !31
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ci, ptr noundef nonnull align 1 dereferenceable(55) @.str.212, i64 55, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  store i8 0, ptr %i.cl, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc80
  invoke void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.aa unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i70: ; preds = %.noexc.i79
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %.noexc80
  %.0.i.i.i73 = phi i1 [ false, %bb.x ], [ true, %.noexc80 ] ; 2 uses
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !31    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ch
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.co) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i.i.i73, label %bb.z, label %.body33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i.i.i73, label %bb.z, label %.body33

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i70
  %.pn8.i.i.i71 = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i70 ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74 ]
  call void @__cxa_free_exception(ptr %i.cg) #26
  br label %.body33

bb.aa:                                            ; preds = %bb.x
  unreachable

.noexc37:                                         ; preds = %19
  %27 = add nuw nsw i64 %.0104, %.020111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %28 = getelementptr inbounds nuw [24 x i8], ptr %22, i64 %.019105.us
  %29 = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %27)
          to label %_ZNK6duckdb19TestGeneratedValues8GetValueEmm.exit unwind label %32

_ZNK6duckdb19TestGeneratedValues8GetValueEmm.exit: ; preds = %.noexc37
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %20, i64 noundef %.0104, ptr noundef nonnull align 8 dereferenceable(64) %29)
          to label %30 unwind label %32

30:                                               ; preds = %_ZNK6duckdb19TestGeneratedValues8GetValueEmm.exit
  %31 = add nuw nsw i64 %.0104, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %31, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %.loopexit.split-lp, !llvm.loop !1639

32:                                               ; preds = %.noexc37, %_ZNK6duckdb19TestGeneratedValues8GetValueEmm.exit
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.ab:                                            ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.av, ptr %i.cq, align 8, !tbaa !39
  %i.cr = load ptr, ptr %i.l, align 8, !tbaa !1640, !nonnull !38, !align !148 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1641 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1643
  %.not.i.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i.i, label %bb.ac, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ab
  %i.cw = load i64, ptr %5, align 8, !tbaa !1469
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !1469
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !1641
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !1644 ; 10 uses
  %i.cz = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.da = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 3 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.ad, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.183) #28
          to label %.noexc40 unwind label %bb.o

.noexc40:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.dd = ashr exact i64 %i.db, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 1152921504606846975)
  %i.dh = select i1 %i.df, i64 1152921504606846975, i64 %i.dg ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #27
          to label %.noexc41 unwind label %.noexc37.us ; 10 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db
  %i.dl = load i64, ptr %5, align 8, !tbaa !1469
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !1469
  store ptr null, ptr %5, align 8, !tbaa !1469
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.ct
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc41
  %i.dm = add i64 %i.cz, -8
  %i.dn = sub i64 %i.dm, %i.da                    ; 2 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader185, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dj, i64 8
  %i.dq = add i64 %i.cz, -8
  %i.dr = sub i64 %i.dq, %i.da
  %i.ds = and i64 %i.dr, -8                       ; 2 uses
  %scevgep179 = getelementptr i8, ptr %scevgep, i64 %i.ds
  %scevgep180 = getelementptr i8, ptr %i.cy, i64 8
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.ds
  %bound0 = icmp ult ptr %i.dj, %scevgep181
  %bound1 = icmp ult ptr %i.cy, %scevgep179
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 4611686018427387900     ; 3 uses
  %i.dt = shl i64 %n.vec, 3                       ; 2 uses
  %i.du = getelementptr i8, ptr %i.dj, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %i.cy, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dj, i64 %i.dw ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.cy, i64 %i.dw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  %i.dx = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep182, align 8, !tbaa !1469, !alias.scope !1650, !noalias !1645
  %wide.load183 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !1469, !alias.scope !1650, !noalias !1645
  %i.dy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1469, !alias.scope !1653, !noalias !1650
  store <2 x i64> %wide.load183, ptr %i.dy, align 8, !tbaa !1469, !alias.scope !1653, !noalias !1650
  %i.dz = getelementptr i8, ptr %next.gep182, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep182, align 8, !tbaa !1469, !alias.scope !1650, !noalias !1645
  store <2 x ptr> splat (ptr null), ptr %i.dz, align 8, !tbaa !1469, !alias.scope !1650, !noalias !1645
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !1655

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader185

.lr.ph.i.i.i.i.i.i.i.preheader185:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dj, %vector.memcheck ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.du, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cy, %vector.memcheck ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader185, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader185 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader185 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  %i.eb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1469, !alias.scope !1648, !noalias !1645
  store i64 %i.eb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1469, !alias.scope !1645, !noalias !1648
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1469, !alias.scope !1648, !noalias !1645
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ec, %i.ct
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1656

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dj, %.noexc41 ], [ %i.du, %middle.block ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cy) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.ae
  store ptr %i.dj, ptr %i.cr, align 8, !tbaa !1644
  store ptr %i.ee, ptr %i.cs, align 8, !tbaa !1641
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.ef, ptr %i.cu, align 8, !tbaa !1643
  %.pr = load ptr, ptr %5, align 8, !tbaa !1469   ; 3 uses
  %.not.i42 = icmp eq ptr %.pr, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.pr) #26
  call void @_ZdlPv(ptr noundef nonnull %.pr) #29
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.eg = add i64 %.020111, 2048
  %i.eh = load ptr, ptr %4, align 8, !tbaa !1632  ; 2 uses
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !1632
  %i.ej = icmp eq ptr %i.eh, %i.ei
  %indvars.iv.next = add i64 %indvars.iv, -2048
  br i1 %i.ej, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i, label %bb.b, !llvm.loop !1657

.body33:                                          ; preds = %.noexc37.us, %bb.o, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %32, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.v, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %10, %bb.n ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.r ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.v ], [ %33, %32 ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75 ], [ %.pn8.i.i.i71, %bb.z ], [ %lpad.loopexit, %.noexc37.us ], [ %lpad.loopexit.split-lp, %bb.o ] ; 2 uses
  %i.ek = load ptr, ptr %5, align 8, !tbaa !1469  ; 3 uses
  %.not.i43 = icmp eq ptr %i.ek, null
  br i1 %.not.i43, label %.body, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i44

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i44: ; preds = %.body33
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ek) #26
  call void @_ZdlPv(ptr noundef nonnull %i.ek) #29
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i44, %.body33, %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit.us, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %9, %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit.us ], [ %.pn.pn, %.body33 ], [ %.pn.pn, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.af

bb.af:                                            ; preds = %.body, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ac, %bb.e ]
  %i.el = load ptr, ptr %4, align 8, !tbaa !1591  ; 3 uses
  %i.em = load ptr, ptr %i.h, align 8, !tbaa !1589 ; 2 uses
  %.not4.i.i.i.i46 = icmp eq ptr %i.el, %i.em
  br i1 %.not4.i.i.i.i46, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %bb.af, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57
  %.05.i.i.i.i48 = phi ptr [ %i.es, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57 ], [ %i.el, %bb.af ] ; 4 uses
  %i.en = load ptr, ptr %.05.i.i.i.i48, align 8, !tbaa !341 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i48, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !344 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i49 = icmp eq ptr %i.en, %i.ep
  br i1 %.not4.i.i.i.i.i.i.i.i49, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55, label %.lr.ph.i.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i.i50:                         ; preds = %.lr.ph.i.i.i.i47, %.lr.ph.i.i.i.i.i.i.i.i50
  %.05.i.i.i.i.i.i.i.i51 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i50 ], [ %i.en, %.lr.ph.i.i.i.i47 ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i.i.i.i.i51) #26
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i51, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i52 = icmp eq ptr %i.eq, %i.ep
  br i1 %.not.i.i.i.i.i.i.i.i52, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i.i50, !llvm.loop !346

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i53: ; preds = %.lr.ph.i.i.i.i.i.i.i.i50
  %.pr.i.i.i.i.i.i54 = load ptr, ptr %.05.i.i.i.i48, align 8, !tbaa !341
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i53, %.lr.ph.i.i.i.i47
  %i.er = phi ptr [ %.pr.i.i.i.i.i.i54, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i53 ], [ %i.en, %.lr.ph.i.i.i.i47 ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i56 = icmp eq ptr %i.er, null
  br i1 %.not.i.i1.i.i.i.i.i.i56, label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55
  call void @_ZdlPv(ptr noundef nonnull %i.er) #29
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57

_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57: ; preds = %bb.ag, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55
  %i.es = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i48, i64 24 ; 2 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.es, %i.em
  br i1 %.not.i.i.i.i58, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i59, label %.lr.ph.i.i.i.i47, !llvm.loop !1592

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i59: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57
  %.pr.i.i60 = load ptr, ptr %4, align 8, !tbaa !1591
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i59, %bb.af
  %i.et = phi ptr [ %.pr.i.i60, %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i59 ], [ %i.el, %bb.af ] ; 2 uses
  %.not.i.i1.i.i62 = icmp eq ptr %i.et, null
  br i1 %.not.i.i1.i.i62, label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit63, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61
  call void @_ZdlPv(ptr noundef nonnull %i.et) #29
  br label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit63

_ZN6duckdb19TestGeneratedValuesD2Ev.exit63:       ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18TestVectorConstant8GenerateERNS_14TestVectorInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.duckdb::TestGeneratedValues", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::unique_ptr.1703", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN6duckdb14TestVectorFlat14GenerateValuesERNS_14TestVectorInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::TestGeneratedValues") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %i.n = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27
          to label %.noexc unwind label %bb.h     ; 3 uses

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i ], [ %i.fg, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.o = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !341 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !344  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i.i.i.i.i) #26
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !346

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !341
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.fh
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1592

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !1591
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.u = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fg, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #29
  br label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit

_ZN6duckdb19TestGeneratedValuesD2Ev.exit:         ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %bb.e unwind label %bb.d, !noalias !1658

bb.d:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.n) #29, !noalias !1658
  br label %.body

bb.e:                                             ; preds = %.noexc
  store ptr %i.n, ptr %7, align 8, !tbaa !1469, !alias.scope !1658
  %i.w = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !tbaa !1636, !nonnull !38, !align !148
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 2048)
          to label %.preheader unwind label %bb.i

.preheader:                                       ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !1636, !nonnull !38, !align !148 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !63
  %.not = icmp eq ptr %i.ab, %i.ac
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ag, %.preheader
  %i.ad = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ai unwind label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body22

.lr.ph:                                           ; preds = %.preheader, %bb.ag
  %.093 = phi i64 [ %i.de, %bb.ag ], [ 0, %.preheader ] ; 10 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !1469  ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit, !prof !30

.noexc.i:                                         ; preds = %.lr.ph
  %i.ah = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 49, ptr %i.g, align 8, !tbaa !54
end_hunk_0
