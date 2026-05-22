inline.NumInlined: 1125
inline.NumDeleted: 407
begin_hunk_0_@_ZN6hermes2vm8GCConfigD2Ev:bb.a
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit:         ; preds = %_ZNSt14_Function_baseD2Ev.exit2, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !10
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN8facebook6hermes7tracing10SynthTrace21nameFromReleaseUnusedEN6hermes2vm13ReleaseUnusedE(i32 noundef %0) local_unnamed_addr #6 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8facebook6hermes7tracing10SynthTrace21nameFromReleaseUnusedEN6hermes2vm13ReleaseUnusedE, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

declare void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN6hermes11JSONEmitter9openArrayEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #24, !inline_history !88
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !89

_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !82
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !91
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace15encodeUndefinedEv() local_unnamed_addr #6 align 2 {
bb.a:
  ret { i32, i64 } { i32 0, i64 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace10encodeNullEv() local_unnamed_addr #6 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace10encodeBoolEb(i1 noundef zeroext %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.sroa.2.8.insert.ext.i = zext i1 %0 to i64
  %.fca.1.insert.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeNumberEd(double noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = bitcast double %0 to i64
  %.fca.1.insert.i = insertvalue { i32, i64 } { i32 3, i64 poison }, i64 %i.a, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeObjectEm(i64 noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.fca.1.insert.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeBigIntEm(i64 noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.fca.1.insert.i = insertvalue { i32, i64 } { i32 8, i64 poison }, i64 %0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeStringEm(i64 noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.fca.1.insert.i = insertvalue { i32, i64 } { i32 5, i64 poison }, i64 %0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace16encodePropNameIDEm(i64 noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.fca.1.insert.i = insertvalue { i32, i64 } { i32 6, i64 poison }, i64 %0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeSymbolEm(i64 noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.fca.1.insert.i = insertvalue { i32, i64 } { i32 7, i64 poison }, i64 %0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing10SynthTrace6encodeB5cxx11ENS2_10TraceValueE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 %1, i64 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::allocator.10", align 1 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::allocator.10", align 1 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::allocator.10", align 1 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::allocator.10", align 1 ; 4 uses
  %i.a = bitcast i64 %2 to double
  switch i32 %1, label %bb.bg [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i38
    i32 4, label %._crit_edge.i.i42
    i32 8, label %._crit_edge.i.i57
    i32 5, label %._crit_edge.i.i87
    i32 6, label %bb.al
    i32 7, label %bb.as
    i32 3, label %bb.az
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.28, i64 10, i1 false)
  br label %.sink.split

._crit_edge.i.i38:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false)
  br label %.sink.split

._crit_edge.i.i42:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.30, i64 7, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.f, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.g = icmp ult i64 %2, 10
  br i1 %i.g, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i42, %bb.g
  %.02229.i.i = phi i64 [ %i.n, %bb.g ], [ %2, %._crit_edge.i.i42 ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.o, %bb.g ], [ 1, %._crit_edge.i.i42 ] ; 4 uses
  %i.h = icmp ult i64 %.02229.i.i, 100
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.n = udiv i64 %.02229.i.i, 10000
  %i.o = add i32 %.02328.i.i, 4                   ; 2 uses
  %i.p = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.p, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !95

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %._crit_edge.i.i42
  %.0.i.i = phi i32 [ %i.m, %bb.f ], [ %i.i, %bb.b ], [ %i.k, %bb.d ], [ 1, %._crit_edge.i.i42 ], [ %i.o, %bb.g ]
  %i.q = zext i32 %.0.i.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !58, !alias.scope !92
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.q, i8 noundef signext 0)
          to label %.noexc47 unwind label %bb.l

.noexc47:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.s = load ptr, ptr %4, align 8, !tbaa !49, !alias.scope !92 ; 4 uses
  %i.t = icmp ugt i64 %2, 99
  br i1 %i.t, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i46

.lr.ph.preheader.i.i:                             ; preds = %.noexc47
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59, !alias.scope !92
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %i.w, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.aa, %.lr.ph.i4.i ], [ %2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ak, %.lr.ph.i4.i ], [ %i.x, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.y = urem i64 %.020.i.i, 100
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10, !noalias !92
  %i.ae = zext i32 %.01819.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ae
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !10
  %i.ag = load i8, ptr %i.ab, align 2, !tbaa !10, !noalias !92
  %i.ah = add i32 %.01819.i.i, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ai
  store i8 %i.ag, ptr %i.aj, align 1, !tbaa !10
  %i.ak = add i32 %.01819.i.i, -2
  %i.al = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.al, label %.lr.ph.i4.i, label %._crit_edge.i.i46, !llvm.loop !96

._crit_edge.i.i46:                                ; preds = %.lr.ph.i4.i, %.noexc47
  %.0.lcssa.i.i = phi i64 [ %2, %.noexc47 ], [ %i.aa, %.lr.ph.i4.i ] ; 3 uses
  %i.am = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i46
  %i.an = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ao = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10, !noalias !92
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !10
  %i.as = load i8, ptr %i.ao, align 2, !tbaa !10, !noalias !92
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i46
  %i.at = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.au = or disjoint i8 %i.at, 48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge.i.i = phi i8 [ %i.au, %bb.i ], [ %i.as, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.s, align 1, !tbaa !10
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ax = load i64, ptr %i.r, align 8, !tbaa !10
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.d
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !10
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bl

bb.l:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.m:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.r
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.m
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !10
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.l
  %.pn33 = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.be, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bj = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.d
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !10
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bm

._crit_edge.i.i57:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bn, ptr %5, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bn, ptr noundef nonnull align 1 dereferenceable(7) @.str.31, i64 7, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.bo, align 8, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.bp, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.bq = icmp ult i64 %2, 10
  br i1 %i.bq, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i64, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %._crit_edge.i.i57, %bb.s
  %.02229.i.i62 = phi i64 [ %i.bx, %bb.s ], [ %2, %._crit_edge.i.i57 ] ; 5 uses
  %.02328.i.i63 = phi i32 [ %i.by, %bb.s ], [ 1, %._crit_edge.i.i57 ] ; 4 uses
  %i.br = icmp ult i64 %.02229.i.i62, 100
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i61
  %i.bs = add i32 %.02328.i.i63, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i64

end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing10SynthTrace6encodeB5cxx11ENS2_10TraceValueE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !10
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bl

bb.aw:                                            ; preds = %bb.as
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.ax:                                            ; preds = %bb.at
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.ay:                                            ; preds = %bb.au
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hr = load ptr, ptr %14, align 8, !tbaa !49   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.ay
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !10
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.ax
  %.pn21 = phi { ptr, i32 } [ %i.hp, %bb.ax ], [ %i.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %i.hq, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.hw = load ptr, ptr %12, align 8, !tbaa !49   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !10
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.aw
  %.pn21.pn = phi { ptr, i32 } [ %i.ho, %bb.aw ], [ %.pn21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bm

bb.az:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke fastcc void @_ZN8facebook6hermes7tracing12_GLOBAL__N_113doublePrinterB5cxx11Ed(ptr dead_on_unwind noalias writable align 8 %17, double noundef %i.a)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.ib = load ptr, ptr %17, align 8, !tbaa !49   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.bc
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !10
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.ig = load ptr, ptr %15, align 8, !tbaa !49   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !10
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.bl

bb.bd:                                            ; preds = %bb.az
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.be:                                            ; preds = %bb.ba
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.bf:                                            ; preds = %bb.bb
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %17, align 8, !tbaa !49   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.bf
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !10
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.be
  %.pn18 = phi { ptr, i32 } [ %i.im, %bb.be ], [ %i.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.in, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.it = load ptr, ptr %15, align 8, !tbaa !49   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.bd
  %.pn18.pn = phi { ptr, i32 } [ %i.il, %bb.bd ], [ %.pn18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.bm

bb.bg:                                            ; preds = %bb.a
  %i.iy = icmp eq i32 %1, 2
  tail call void @llvm.assume(i1 %i.iy)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.iz = trunc i64 %2 to i1
  %i.ja = select i1 %i.iz, ptr @.str.37, ptr @.str.38
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull %i.ja)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.jb = load ptr, ptr %18, align 8, !tbaa !49   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.bi
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !10
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bg
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.bk:                                            ; preds = %bb.bh
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %18, align 8, !tbaa !49   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.bk
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !10
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.jg, %bb.bj ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.jh, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.bm

.sink.split:                                      ; preds = %._crit_edge.i.i, %._crit_edge.i.i38
  %.sink = phi i64 [ 5, %._crit_edge.i.i38 ], [ 10, %._crit_edge.i.i ]
  %.sink271 = phi i64 [ 21, %._crit_edge.i.i38 ], [ 26, %._crit_edge.i.i ]
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink271
  store i8 0, ptr %21, align 1, !tbaa !10
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  ret void

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn36 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn18.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn24.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn21.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ]
  resume { ptr, i32 } %.pn36
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !58
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.131) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.g = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.g, ptr %i.b, align 8, !tbaa !10
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !10
  store i8 %i.i, ptr %i.h, align 1, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !59
  %i.l = load ptr, ptr %0, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n                   ; 2 uses
  br i1 %i.o, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.c, %bb.d
  %i.q = load i64, ptr %i.n, align 8
  %i.r = select i1 %i.o, i64 15, i64 %i.q
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !58
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !49   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !49
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !10
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !59
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store i64 0, ptr %i.ac, align 8, !tbaa !59
  store i8 0, ptr %i.v, align 8, !tbaa !10
  br label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.f
  %i.ah = load ptr, ptr %2, align 8, !tbaa !49
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !58
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !49
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !10
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !59
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !49
  store i64 0, ptr %i.as, align 8, !tbaa !59
  store i8 0, ptr %i.al, align 8, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.02229.i = phi i64 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %.02328.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %i.b = icmp ult i64 %.02229.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add i32 %.02328.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

end_hunk_1
