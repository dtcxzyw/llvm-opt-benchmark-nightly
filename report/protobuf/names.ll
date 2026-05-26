inline.NumInlined: 919
inline.NumDeleted: 504
begin_hunk_0_@_ZN3upb9generator22CApiExtensionIdentBaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.br, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !35 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !63

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator18CApiOneofIdentBaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [3 x %"struct.std::pair.14"], align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !65
  store i64 1, ptr %3, align 8, !tbaa !11, !noalias !65
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str, ptr %i.a, align 8, !tbaa !16, !noalias !65
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 1, ptr %i.b, align 8, !tbaa !11, !noalias !65
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @.str.1, ptr %i.c, align 8, !tbaa !16, !noalias !65
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 1, ptr %i.d, align 8, !tbaa !11, !noalias !65
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @.str.2, ptr %i.e, align 8, !tbaa !16, !noalias !65
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 1, ptr %i.f, align 8, !tbaa !11, !noalias !65
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @.str.1, ptr %i.g, align 8, !tbaa !16, !noalias !65
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 1, ptr %i.h, align 8, !tbaa !11, !noalias !65
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @.str.3, ptr %i.i, align 8, !tbaa !16, !noalias !65
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 1, ptr %i.j, align 8, !tbaa !11, !noalias !65
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr @.str.1, ptr %i.k, align 8, !tbaa !16, !noalias !65
  call void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr nonnull %3, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !65
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator11NameManglerC2ERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10FieldClassENS3_18container_internal10StringHashENSC_8StringEqESaISt4pairIKSA_SB_EEEE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 25 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"struct.std::pair.10", align 8     ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68
  %.not.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !71
  %i.e = icmp eq i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28, !nonnull !73, !noundef !73 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !28 ; 3 uses
  br i1 %i.e, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.g, align 1, !tbaa !74
  %i.j = icmp slt i8 %i.i, -1
  br i1 %i.j, label %.lr.ph.i.i.i, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.c ]
  %i.l = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !28
  %i.n = icmp slt <16 x i8> %i.m, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = zext i16 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.q, i1 true)
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.s ; 2 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !74
  %i.w = icmp slt i8 %i.v, -1
  br i1 %i.w, label %.lr.ph.i.i.i, label %.lr.ph, !llvm.loop !76

.lr.ph:                                           ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c
  %.sroa.6.0.i.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.c ], [ %i.u, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i.ph = phi ptr [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.t, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorppEv.exit

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iterator21skip_empty_or_deletedEv.exit.i.i, %bb.a
  ret void

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorppEv.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iterator21skip_empty_or_deletedEv.exit.i.i, %.lr.ph
  %.sroa.9.043 = phi ptr [ %.sroa.6.0.i.i.ph, %.lr.ph ], [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 6 uses
  %.sroa.033.042 = phi ptr [ %.sroa.0.0.i.i.ph, %.lr.ph ], [ %.sroa.033.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ]
  %i.ad = load ptr, ptr %.sroa.9.043, align 8, !tbaa !35 ; 15 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.9.043, i64 8 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !54 ; 10 uses
  %i.ag = icmp ult i64 %i.af, 6
  br i1 %i.ag, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.1.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorppEv.exit
  %i.ah = load i32, ptr %i.ad, align 1
  %i.ai = xor i32 %i.ah, 1634036835
  %i.aj = getelementptr i8, ptr %i.ad, i64 4
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = xor i32 %i.al, 24434
  %i.an = or i32 %i.ai, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ar = add i64 %i.af, -6
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i64 %i.ar, ptr %2, align 8
  store ptr %i.as, ptr %i.x, align 8
  %i.at = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findISt17basic_string_viewIcS7_EEENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.i, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.aw = extractvalue { ptr, ptr } %i.at, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !77
  %.fr34.i = freeze i32 %i.ay
  %i.az = and i32 %.fr34.i, 3
  %.not18.i = icmp eq i32 %i.az, 0
  br i1 %.not18.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.i, label %bb.j

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.i: ; preds = %bb.d, %.noexc, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.ba = icmp eq i64 %i.af, 6
  br i1 %i.ba, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.2.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.1.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.1.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.i
  %i.bb = load i32, ptr %i.ad, align 1
  %i.bc = xor i32 %i.bb, 1701602660
  %i.bd = getelementptr i8, ptr %i.ad, i64 3
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = xor i32 %i.be, 1600484453
  %i.bg = or i32 %i.bc, %i.bf
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.1.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.2.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.1.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.bk = add i64 %i.af, -7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  store i64 %i.bk, ptr %2, align 8
  store ptr %i.bl, ptr %i.x, align 8
  %i.bm = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findISt17basic_string_viewIcS7_EEENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc21 unwind label %bb.p   ; 2 uses

.noexc21:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.1.i
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.2.i, label %bb.e

bb.e:                                             ; preds = %.noexc21
  %i.bp = extractvalue { ptr, ptr } %i.bm, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !77
  %.fr.i = freeze i32 %i.br
  %i.bs = and i32 %.fr.i, 2
  %.not18.1.i = icmp eq i32 %i.bs, 0
  br i1 %.not18.1.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.2.i, label %bb.j

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.1.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorppEv.exit
  %i.bt = icmp samesign ult i64 %i.af, 4
  br i1 %i.bt, label %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.2.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.2.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.1.i, %bb.e, %.noexc21, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.1.i, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.i
  %i.bu = load i32, ptr %i.ad, align 1
  %i.bv = icmp ne i32 %i.bu, 1600414817
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.2.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.2.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.2.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.by = add i64 %i.af, -4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i64 %i.by, ptr %2, align 8
  store ptr %i.bz, ptr %i.x, align 8
  %i.ca = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findISt17basic_string_viewIcS7_EEENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc22 unwind label %bb.p   ; 2 uses

.noexc22:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.2.i
  %i.cb = extractvalue { ptr, ptr } %i.ca, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.2.i, label %bb.f

bb.f:                                             ; preds = %.noexc22
  %i.cd = extractvalue { ptr, ptr } %i.ca, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !77
  %.fr35.i = freeze i32 %i.cf
  %i.cg = and i32 %.fr35.i, 2
  %.not18.2.i = icmp eq i32 %i.cg, 0
  br i1 %.not18.2.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.2.i, label %bb.j

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.2.i: ; preds = %bb.f, %.noexc22, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.2.i
  %i.ch = icmp ult i64 %i.af, 7
  br i1 %i.ch, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.4.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.3.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.3.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.2.i
  %i.ci = load i32, ptr %i.ad, align 1
  %i.cj = xor i32 %i.ci, 1769170290
  %i.ck = getelementptr i8, ptr %i.ad, i64 3
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = xor i32 %i.cl, 1600485993
  %i.cn = or i32 %i.cj, %i.cm
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.3.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.4.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.3.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.cr = add i64 %i.af, -7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  store i64 %i.cr, ptr %2, align 8
  store ptr %i.cs, ptr %i.x, align 8
  %i.ct = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findISt17basic_string_viewIcS7_EEENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc23 unwind label %bb.p   ; 2 uses

.noexc23:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.3.i
  %i.cu = extractvalue { ptr, ptr } %i.ct, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.4.i, label %bb.g

bb.g:                                             ; preds = %.noexc23
  %i.cw = extractvalue { ptr, ptr } %i.ct, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !77
  %.fr36.i = freeze i32 %i.cy
  %i.cz = and i32 %.fr36.i, 2
  %.not18.3.i = icmp eq i32 %i.cz, 0
  br i1 %.not18.3.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.4.i, label %bb.j

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.4.i: ; preds = %bb.g, %.noexc23, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.3.i, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.2.i
  %i.da = load i32, ptr %i.ad, align 1
  %i.db = icmp ne i32 %i.da, 1601463667
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.4.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.5.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.4.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.de = add i64 %i.af, -4
  %i.df = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i64 %i.de, ptr %2, align 8
  store ptr %i.df, ptr %i.x, align 8
  %i.dg = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findISt17basic_string_viewIcS7_EEENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc24 unwind label %bb.p   ; 2 uses

.noexc24:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.4.i
  %i.dh = extractvalue { ptr, ptr } %i.dg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.5.i, label %bb.h

bb.h:                                             ; preds = %.noexc24
  %i.dj = extractvalue { ptr, ptr } %i.dg, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !77
  %.fr.4.i = freeze i32 %i.dl
  %.not18.4.i = icmp eq i32 %.fr.4.i, 0
  br i1 %.not18.4.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.5.i, label %bb.j

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.5.i: ; preds = %bb.h, %.noexc24, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.4.i
  %i.dm = load i32, ptr %i.ad, align 1
  %i.dn = icmp ne i32 %i.dm, 1601397096
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.5.i, label %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.5.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.dq = add i64 %i.af, -4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i64 %i.dq, ptr %2, align 8
  store ptr %i.dr, ptr %i.x, align 8
  %i.ds = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findISt17basic_string_viewIcS7_EEENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc25 unwind label %bb.p   ; 2 uses

.noexc25:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.5.i
  %i.dt = extractvalue { ptr, ptr } %i.ds, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit, label %bb.i

bb.i:                                             ; preds = %.noexc25
  %i.dv = extractvalue { ptr, ptr } %i.ds, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !77
  %.fr.5.i = freeze i32 %i.dx
  %.not18.5.i = icmp eq i32 %.fr.5.i, 0
  br i1 %.not18.5.i, label %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.i, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.dy = load ptr, ptr %.sroa.9.043, align 8, !tbaa !35
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !54
  store i64 %i.dz, ptr %4, align 8
  store ptr %i.dy, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 1, ptr %5, align 8
  store ptr @.str.1, ptr %i.z, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE30find_or_prepare_insert_non_sooIS9_EESD_INSH_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.10") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.043)
          to label %.noexc27 unwind label %bb.r

.noexc27:                                         ; preds = %bb.k
  %i.ea = load i8, ptr %i.aa, align 8, !tbaa !89, !range !93, !alias.scope !94, !noundef !73
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.l, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE7emplaceIJRSE_S9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit

bb.l:                                             ; preds = %.noexc27
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !94 ; 9 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16 ; 3 uses
  store ptr %i.ec, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !52
  %i.ed = load ptr, ptr %.sroa.9.043, align 8, !tbaa !35, !noalias !80 ; 2 uses
  %i.ee = load i64, ptr %i.ae, align 8, !tbaa !54, !noalias !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !94
  store i64 %i.ee, ptr %i.a, align 8, !tbaa !23, !noalias !94
  %i.ef = icmp ugt i64 %i.ee, 15
  br i1 %i.ef, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.l
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.r   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.eg, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !35
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !23, !noalias !94
  store i64 %i.eh, ptr %i.ec, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc28, %bb.l
  %i.ei = phi ptr [ %i.eg, %.noexc28 ], [ %i.ec, %bb.l ] ; 2 uses
  switch i64 %i.ee, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !28
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.ed, i64 %i.ee, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !23, !noalias !94 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !54
  %i.em = load ptr, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !35
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store i8 0, ptr %i.en, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !94
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 48 ; 3 uses
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !52
  %i.eq = load ptr, ptr %3, align 8, !tbaa !35, !noalias !80 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ab
  br i1 %i.er, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.es = load i64, ptr %i.ac, align 8, !tbaa !54, !noalias !80 ; 3 uses
  %i.et = icmp ult i64 %i.es, 16
  call void @llvm.assume(i1 %i.et)
  %i.eu = add nuw nsw i64 %i.es, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ep, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.eu, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE7emplaceIJRSE_S9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.eq, ptr %i.eo, align 8, !tbaa !35
  %i.ev = load i64, ptr %i.ab, align 8, !tbaa !28, !noalias !80
  store i64 %i.ev, ptr %i.ep, align 8, !tbaa !28
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !54, !noalias !80
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE7emplaceIJRSE_S9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit.thread

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE7emplaceIJRSE_S9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit.thread: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ew = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.es, %bb.o ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 40
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !54
  store ptr %i.ab, ptr %3, align 8, !tbaa !35, !noalias !80
  store i64 0, ptr %i.ac, align 8, !tbaa !54, !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE7emplaceIJRSE_S9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit: ; preds = %.noexc27
  %.pre48 = load ptr, ptr %3, align 8, !tbaa !35  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ey = icmp eq ptr %.pre48, %i.ab
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE7emplaceIJRSE_S9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit
  %i.ez = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %.pre48, i64 noundef %i.fa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE7emplaceIJRSE_S9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE7emplaceIJRSE_S9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.5.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.4.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.3.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.2.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.1.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.j
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fe = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ab
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.r
  %i.fg = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.q
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.q ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.fd, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.s

_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit: ; preds = %bb.i, %.noexc25, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.5.i, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread24.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.033.042, i64 1 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.9.043, i64 40 ; 2 uses
  %i.fk = load i8, ptr %i.fi, align 1, !tbaa !74  ; 2 uses
  %i.fl = icmp slt i8 %i.fk, -1
  br i1 %i.fl, label %.lr.ph.i.i.i32, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i32:                                   ; preds = %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit, %.lr.ph.i.i.i32
  %i.fm = phi ptr [ %i.fw, %.lr.ph.i.i.i32 ], [ %i.fj, %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit ]
  %i.fn = phi ptr [ %i.fv, %.lr.ph.i.i.i32 ], [ %i.fi, %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit ] ; 2 uses
  %i.fo = load <16 x i8>, ptr %i.fn, align 1, !tbaa !28
  %i.fp = icmp slt <16 x i8> %i.fo, splat (i8 -1)
  %i.fq = bitcast <16 x i1> %i.fp to i16
  %i.fr = zext i16 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fr, 1
  %i.ft = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fs, i1 true)
  %i.fu = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fu ; 3 uses
  %i.fw = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.fu ; 2 uses
  %i.fx = load i8, ptr %i.fv, align 1, !tbaa !74  ; 2 uses
  %i.fy = icmp slt i8 %i.fx, -1
  br i1 %i.fy, label %.lr.ph.i.i.i32, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !76

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i32, %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit
  %.sroa.033.1 = phi ptr [ %i.fi, %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit ], [ %i.fv, %.lr.ph.i.i.i32 ]
  %.sroa.9.1 = phi ptr [ %i.fj, %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit ], [ %i.fw, %.lr.ph.i.i.i32 ]
  %i.fz = phi i8 [ %i.fk, %_ZN3upb9generator12_GLOBAL__N_111HasConflictESt17basic_string_viewIcSt11char_traitsIcEERKN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS0_10FieldClassENS7_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSC_SD_EEEE.exit ], [ %i.fx, %.lr.ph.i.i.i32 ]
  %i.ga = icmp eq i8 %i.fz, -1
  br i1 %i.ga, label %._crit_edge, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3upb9generator10FieldClassEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorppEv.exit, !prof !70

bb.s:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.pn18.pn = phi { ptr, i32 } [ %i.fb, %bb.p ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  resume { ptr, i32 } %.pn18.pn
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.37, align 8             ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !71
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
