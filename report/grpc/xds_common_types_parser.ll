Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_common_types_parser?download=true
inline.NumInlined: 2639
inline.NumDeleted: 1217
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core19ParseXdsGrpcServiceERKNS_15XdsResourceType13DecodeContextEPK32envoy_config_core_v3_GrpcServicePNS_16ValidationErrorsE:bb.a
  %.not.i.i1.i553 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i1.i553, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit556, label %bb.es

bb.es:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i552
  %i.rs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !133
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = ptrtoint ptr %i.rr to i64
  %i.rw = sub i64 %i.ru, %i.rv
  call void @_ZdlPvm(ptr noundef nonnull %i.rr, i64 noundef %i.rw) #27
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit556

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit556: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i552, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.et:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, %bb.ad
  %.pn179.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539 ], [ %i.db, %bb.ad ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #24
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ac
  %.pn179.pn.pn = phi { ptr, i32 } [ %.pn179.pn, %bb.et ], [ %i.da, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.ab
  %.pn187.pn.pn = phi { ptr, i32 } [ %.pn187.pn, %bb.ab ], [ %.pn179.pn.pn, %bb.eu ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ew

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit556
  ret void

bb.ew:                                            ; preds = %bb.j, %bb.ev
  %.pn192.pn = phi { ptr, i32 } [ %.pn187.pn.pn, %bb.ev ], [ %.pn, %bb.j ]
  resume { ptr, i32 } %.pn192.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !145    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !34
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !33 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !34
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !141    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !136 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i, !prof !75

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !8
  br label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i

_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES4_EvT_S6_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27
  br label %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES4_EvT_S6_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !34
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare noundef zeroext i1 @_ZNK9grpc_core16ResolverRegistry13IsValidTargetESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK9grpc_core13GrpcXdsServer16TrustedXdsServerEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !141    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140
  %i.j = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE11_M_allocateEm.exit.i, !prof !75

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE11_M_allocateEm.exit.i, %bb.f
  %.014.i.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.p, %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.c, %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !136
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.t = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.e ], [ null, %.lr.ph.i.i.i.i.i ]
  store ptr %i.t, ptr %.014.i.i.i.i.i, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !259

_ZNSt6vectorIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !141    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i ], [ %i.w, %_ZNSt6vectorIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 2 uses
  %i.z = load ptr, ptr %.05.i.i, align 8, !tbaa !136 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 acq_rel, align 8
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i, !prof !75

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !8
  br label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i

_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ag, %i.y
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvT_S6_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvT_S6_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvT_S6_.exit

_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvT_S6_.exitthread-pre-split, %_ZNSt6vectorIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.ah = phi ptr [ %.pr, %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvT_S6_.exitthread-pre-split ], [ %i.w, %_ZNSt6vectorIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvT_S6_.exit
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !140
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvT_S6_.exit, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !141
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.am, ptr %i.h, align 8, !tbaa !140
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit

bb.j:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !139 ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.aq, %i.f
  br i1 %.not24, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp sgt i64 %i.g, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.k, %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bf, %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i ], [ %i.g, %bb.k ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.be, %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i ], [ %i.j, %bb.k ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bd, %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i ], [ %i.c, %bb.k ] ; 3 uses
  %i.as = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !136
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i26
  %i.av = phi ptr [ %.pre.i.i.i.i.i.i, %bb.l ], [ null, %.lr.ph.i.i.i.i.i26 ]
  %i.aw = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !267 ; 4 uses
  store ptr %i.av, ptr %.0811.i.i.i.i.i, align 8, !tbaa !267
  %.not.i.i.i.i.i.i.i27 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i27, label %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 acq_rel, align 8
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.o, label %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i, !prof !75

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #24, !inline_history !260
  br label %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i

_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bf = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bg = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, !llvm.loop !261

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit: ; preds = %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !144
  %.pre56 = ptrtoint ptr %i.be to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, %bb.k
  %.pre-phi57 = phi i64 [ %.pre56, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.l, %bb.k ]
  %i.bh = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.ao, %bb.k ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.be, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.j, %bb.k ]
  %.not4.i.i28 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.bh
  br i1 %.not4.i.i28, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit
  %i.bi = sub i64 %.pre-phi57, %i.l
  %i.bj = getelementptr inbounds i8, ptr %i.j, i64 %i.bi
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i31
  %.sroa.01.05.i.i = phi ptr [ %i.br, %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i31 ], [ %i.bj, %.lr.ph.i.i29.preheader ] ; 2 uses
  %i.bk = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !136 ; 4 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i30, label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i31, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 acq_rel, align 8
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.q, label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i31, !prof !75

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24, !inline_history !262
  br label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i31

_ZSt8_DestroyIN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEEEvPT_.exit.i.i31: ; preds = %bb.q, %bb.p, %.lr.ph.i.i29
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.br, %i.bh
  br i1 %.not.i.i32, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrIKNS2_15CallCredsConfigEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit, label %.lr.ph.i.i29, !llvm.loop !263

bb.r:                                             ; preds = %bb.j
  %i.bs = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i34, label %_ZSt4copyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES5_ET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i34:                               ; preds = %bb.r, %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i41
  %.012.i.i.i.i.i35 = phi i64 [ %i.ch, %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i41 ], [ %i.bs, %bb.r ] ; 2 uses
  %.0811.i.i.i.i.i36 = phi ptr [ %i.cg, %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i41 ], [ %i.j, %bb.r ] ; 3 uses
  %.0910.i.i.i.i.i37 = phi ptr [ %i.cf, %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i41 ], [ %i.c, %bb.r ] ; 3 uses
  %i.bu = load ptr, ptr %.0910.i.i.i.i.i37, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i34
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i.i.i.i.i.i39 = load ptr, ptr %.0910.i.i.i.i.i37, align 8, !tbaa !136
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i34
  %i.bx = phi ptr [ %.pre.i.i.i.i.i.i39, %bb.s ], [ null, %.lr.ph.i.i.i.i.i34 ]
  %i.by = load ptr, ptr %.0811.i.i.i.i.i36, align 8, !tbaa !267 ; 4 uses
  store ptr %i.bx, ptr %.0811.i.i.i.i.i36, align 8, !tbaa !267
  %.not.i.i.i.i.i.i.i40 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i41, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 acq_rel, align 8
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.v, label %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i41, !prof !75

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #24, !inline_history !264
  br label %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i41

_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i41: ; preds = %bb.v, %bb.u, %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i37, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i36, i64 8
  %i.ch = add nsw i64 %.012.i.i.i.i.i35, -1
  %i.ci = icmp sgt i64 %.012.i.i.i.i.i35, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i34, label %_ZSt4copyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES5_ET0_T_S7_S6_.exit.loopexit, !llvm.loop !265

_ZSt4copyIPN9grpc_core13RefCountedPtrIKNS0_15CallCredsConfigEEES5_ET0_T_S7_S6_.exit.loopexit: ; preds = %_ZN9grpc_core13RefCountedPtrIKNS_15CallCredsConfigEEaSERKS3_.exit.i.i.i.i.i41
  %.pre47 = load ptr, ptr %1, align 8, !tbaa !141
  %.pre48 = load ptr, ptr %i.an, align 8, !tbaa !139 ; 2 uses
  %.pre49 = load ptr, ptr %0, align 8, !tbaa !141
  %.pre50 = load ptr, ptr %i.a, align 8, !tbaa !139
  %.pre51 = ptrtoint ptr %.pre48 to i64
  %.pre52 = ptrtoint ptr %.pre49 to i64
end_hunk_0
