Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-hash?download=true
inline.NumInlined: 2965
inline.NumDeleted: 1482
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL19DOCTEST_ANON_FUNC_4v:bb.a
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.pn119 = phi { ptr, i32 } [ %i.vn, %bb.fd ], [ %i.vm, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fb
  %.pn119.pn.pn = phi { ptr, i32 } [ %i.vl, %bb.fb ], [ %.pn119, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fa, %.body684, %.body642, %.body604, %_ZNSt6vectorIhSaIhEED2Ev.exit761, %_ZNSt6vectorIhSaIhEED2Ev.exit758, %_ZNSt6vectorIhSaIhEED2Ev.exit755, %.loopexit, %bb.eu, %.body778, %.body771, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %.body209, %.body, %bb.ei, %bb.eh, %bb.eg
  %.pn119.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn, %bb.ff ], [ %i.vk, %bb.fa ], [ %.pn114.pn, %.body684 ], [ %.pn111.pn, %.body642 ], [ %.pn108.pn, %.body604 ], [ %i.vg, %_ZNSt6vectorIhSaIhEED2Ev.exit761 ], [ %i.vf, %_ZNSt6vectorIhSaIhEED2Ev.exit758 ], [ %i.ve, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %.pn98.pn.pn, %.loopexit ], [ %.pn96, %bb.eu ], [ %.pn94, %.body778 ], [ %.pn92, %.body771 ], [ %i.ut, %bb.ep ], [ %i.us, %bb.eo ], [ %i.ur, %bb.en ], [ %i.uq, %bb.em ], [ %i.up, %bb.el ], [ %.pn90, %.body209 ], [ %.pn, %.body ], [ %i.um, %bb.ei ], [ %i.ul, %bb.eh ], [ %i.uk, %bb.eg ]
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  resume { ptr, i32 } %.pn119.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %0, align 8, !tbaa !29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit unwind label %bb.b, !inline_history !163

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27, !inline_history !163
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %0, align 8, !tbaa !29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b) #26
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.b, !inline_history !34

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27, !inline_history !34
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind noalias writable sret(%"struct.doctest::detail::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.doctest::String", align 8   ; 7 uses
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !32
  %i.b = load i32, ptr %2, align 4, !tbaa !57
  %i.c = sext i32 %i.b to i64
  %i.d = icmp eq i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !165
  %i.g = and i32 %i.f, 256
  %i.h = icmp ne i32 %i.g, 0
  %spec.select = xor i1 %i.d, %i.h                ; 2 uses
  br i1 %spec.select, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN7doctest17getContextOptionsEv()
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %i.k = load i8, ptr %i.j, align 4, !tbaa !170, !range !68, !noundef !69
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN7doctest6detail19stringifyBinaryExprImiEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.38, ptr noundef nonnull align 4 dereferenceable(4) %2)
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  ret void

bb.j:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iteration_proxy_value", align 8 ; 22 uses
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iteration_proxy_value", align 8 ; 17 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 10 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 8 uses
  %i.f = load i8, ptr %0, align 8, !tbaa !36      ; 2 uses
  %i.g = zext i8 %i.f to i64                      ; 27 uses
  switch i8 %i.f, label %.loopexit [
    i8 0, label %bb.b
    i8 9, label %bb.b
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
    i8 3, label %bb.q
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
    i8 7, label %bb.v
    i8 8, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = shl nuw nsw i64 %i.g, 6
  %i.i = add nuw nsw i64 %i.h, 2654435769
  %i.j = lshr i64 %i.g, 2
  %i.k = add nuw nsw i64 %i.i, %i.j
  %i.l = xor i64 %i.k, %i.g
  br label %.loopexit

_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %5 = shl nuw nsw i64 %i.g, 6
  %6 = lshr i64 %i.g, 2
  %i.q = add nuw nsw i64 %5, 2654435769
  %i.r = add nuw nsw i64 %i.q, %6
  %i.s = add i64 %i.r, %i.p
  %i.t = xor i64 %i.s, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24, !noalias !188
  store ptr %0, ptr %1, align 8, !tbaa !70, !alias.scope !187
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.v, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !31, !alias.scope !187
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !70, !alias.scope !187
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !32, !alias.scope !187
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !187
  store ptr %i.y, ptr %i.x, align 8, !tbaa !72, !alias.scope !187
  store i8 48, ptr %i.y, align 8, !tbaa !30, !alias.scope !187
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 1, ptr %i.z, align 8, !tbaa !74, !alias.scope !187
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.aa, align 1, !tbaa !30, !alias.scope !187
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !72, !alias.scope !187
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.ad, align 8, !tbaa !74, !alias.scope !187
  store i8 0, ptr %i.ac, align 8, !tbaa !30, !alias.scope !187
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %0, ptr %2, align 8, !tbaa !70, !alias.scope !189
  %.sroa.2.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ae, ptr %.sroa.2.0..sroa_idx.i64, align 8, !tbaa !31, !alias.scope !189
  %.sroa.4.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %.sroa.4.0..sroa_idx.i65, align 8, !tbaa !70, !alias.scope !189
  %.sroa.5.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i66, align 8, !tbaa !32, !alias.scope !189
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !alias.scope !189
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !72, !alias.scope !189
  store i8 48, ptr %i.ah, align 8, !tbaa !30, !alias.scope !189
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 1, ptr %i.ai, align 8, !tbaa !74, !alias.scope !189
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 65
  store i8 0, ptr %i.aj, align 1, !tbaa !30, !alias.scope !189
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !72, !alias.scope !189
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 0, ptr %i.am, align 8, !tbaa !74, !alias.scope !189
  store i8 0, ptr %i.al, align 8, !tbaa !30, !alias.scope !189
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit, %_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit
  %.053 = phi i64 [ %i.t, %_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit ], [ %i.bw, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit ] ; 4 uses
  %i.ao = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.al
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ap) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !75 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ah
  br i1 %i.as, label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ar) #28
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit

_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !75 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ac
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.at) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !75  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.y
  br i1 %i.aw, label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68
  call void @_ZdlPv(ptr noundef %i.av) #28
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72

_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %1, align 8, !tbaa !191
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !36
  switch i8 %i.ay, label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit [
    i8 2, label %bb.g
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.az = load i64, ptr %i.w, align 8, !tbaa !192 ; 2 uses
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !193
  %.not.i = icmp eq i64 %i.az, %i.ba
  br i1 %.not.i, label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail13int_to_stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %i.az)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  %i.bb = load i64, ptr %i.w, align 8, !tbaa !192
  store i64 %i.bb, ptr %i.an, align 8, !tbaa !193
  br label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit

bb.i:                                             ; preds = %bb.f
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE3keyEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit unwind label %bb.n

_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit: ; preds = %.noexc, %bb.g, %bb.i, %bb.f
  %.0.i73 = phi ptr [ %i.bc, %bb.i ], [ %i.x, %bb.g ], [ %i.x, %.noexc ], [ %i.ab, %bb.f ] ; 2 uses
  %i.bd = load ptr, ptr %.0.i73, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i73, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !74
  %i.bg = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bd, i64 noundef %i.bf, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #27
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit: ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit
  %i.bj = shl i64 %.053, 6
  %i.bk = lshr i64 %.053, 2
  %i.bl = add i64 %i.bj, 2654435769
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = add i64 %i.bm, %i.bg
  %i.bo = xor i64 %i.bn, %.053                    ; 3 uses
  %i.bp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit unwind label %bb.n

_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit: ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit
  %i.bq = invoke noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit
  %i.br = shl i64 %i.bo, 6
  %i.bs = lshr i64 %i.bo, 2
  %i.bt = add i64 %i.br, 2654435769
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = add i64 %i.bu, %i.bq
  %i.bw = xor i64 %i.bv, %i.bo
  %i.bx = load ptr, ptr %1, align 8, !tbaa !81
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !36
  switch i8 %i.by, label %bb.m [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i
    i8 2, label %bb.l
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i: ; preds = %bb.k
  %.promoted11.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !82
  %i.bz = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i.i) #24
  store ptr %i.bz, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !82
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ca = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cb, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !83
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit

bb.m:                                             ; preds = %bb.k
  %i.cc = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !84
  %i.cd = add nsw i64 %i.cc, 1
  store i64 %i.cd, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !84
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i, %bb.l, %bb.m
  %i.ce = load i64, ptr %i.w, align 8, !tbaa !192
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.w, align 8, !tbaa !192
  br label %bb.c

bb.n:                                             ; preds = %bb.h, %bb.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit, %bb.c, %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.cg

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit: ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !30 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !85 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !41 ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 4
  %7 = shl nuw nsw i64 %i.g, 6
  %8 = lshr i64 %i.g, 2
  %i.cq = add nuw nsw i64 %7, 2654435769
  %i.cr = add nuw nsw i64 %i.cq, %8
  %i.cs = add nsw i64 %i.cr, %i.cp
  %i.ct = xor i64 %i.cs, %i.g                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !81, !alias.scope !194
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 0, ptr %i.cu, align 8
  store i64 -9223372036854775808, ptr %i.cv, align 8, !tbaa !84, !alias.scope !194
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.cl, ptr %i.cw, align 8, !tbaa !70, !alias.scope !194
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %0, ptr %4, align 8, !tbaa !81, !alias.scope !195
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.cx, align 8
  store i64 -9223372036854775808, ptr %i.cy, align 8, !tbaa !84, !alias.scope !195
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ck, ptr %i.cz, align 8, !tbaa !70, !alias.scope !195
  %i.da = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.da, label %._crit_edge, label %.lr.ph98

._crit_edge:                                      ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %.057.lcssa = phi i64 [ %i.ct, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit ], [ %i.di, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.loopexit

.lr.ph98:                                         ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit
  %.05797 = phi i64 [ %i.di, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ], [ %i.ct, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit ] ; 3 uses
  %i.db = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.dc = call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.db)
  %i.dd = shl i64 %.05797, 6
  %i.de = lshr i64 %.05797, 2
  %i.df = add i64 %i.dd, 2654435769
  %i.dg = add i64 %i.df, %i.de
  %i.dh = add i64 %i.dg, %i.dc
  %i.di = xor i64 %i.dh, %.05797                  ; 2 uses
  %i.dj = load ptr, ptr %3, align 8, !tbaa !81
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !36
  switch i8 %i.dk, label %bb.p [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.o
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %.lr.ph98
  %.promoted11.i.i = load ptr, ptr %i.cu, align 8, !tbaa !82
  %i.dl = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #24
  store ptr %i.dl, ptr %i.cu, align 8, !tbaa !82
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.o:                                             ; preds = %.lr.ph98
  %i.dm = load ptr, ptr %i.cw, align 8, !tbaa !83
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dn, ptr %i.cw, align 8, !tbaa !83
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.p:                                             ; preds = %.lr.ph98
  %i.do = load i64, ptr %i.cv, align 8, !tbaa !84
  %i.dp = add nsw i64 %i.do, 1
  store i64 %i.dp, ptr %i.cv, align 8, !tbaa !84
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.o, %bb.p
  %i.dq = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.dq, label %._crit_edge, label %.lr.ph98

bb.q:                                             ; preds = %bb.a
  %i.dr = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRKS9_KSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !75
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !74
  %i.dv = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ds, i64 noundef %i.du, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  tail call void @__clang_call_terminate(ptr %i.dx) #27
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78: ; preds = %bb.q
  %9 = shl nuw nsw i64 %i.g, 6
  %10 = lshr i64 %i.g, 2
  %i.dy = add nuw nsw i64 %9, 2654435769
  %i.dz = add nuw nsw i64 %i.dy, %10
  %i.ea = add i64 %i.dz, %i.dv
  %i.eb = xor i64 %i.ea, %i.g
  br label %.loopexit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i8 0, ptr %i.e, align 1, !tbaa !86
  call void @_ZNK8nlohmann16json_abi_v3_12_06detail12from_json_fnclINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEERbEEDTcl9from_jsonfp_clsr3stdE7forwardIT0_Efp0_EEERKT_OSI_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN8nlohmann16json_abi_v3_12_06detail12static_constINS1_12from_json_fnEE5valueE, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %i.ec = load i8, ptr %i.e, align 1, !tbaa !86, !range !68, !noundef !69
  %i.ed = zext nneg i8 %i.ec to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %11 = shl nuw nsw i64 %i.g, 6
  %12 = lshr i64 %i.g, 2
  %i.ee = add nuw nsw i64 %11, 2654435769
  %i.ef = add nuw nsw i64 %i.ee, %12
  %i.eg = add nuw nsw i64 %i.ef, %i.ed
  %i.eh = xor i64 %i.eg, %i.g
  br label %.loopexit

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !32
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEElTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.ei = load i64, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %13 = shl nuw nsw i64 %i.g, 6
  %14 = lshr i64 %i.g, 2
  %i.ej = add nuw nsw i64 %13, 2654435769
  %i.ek = add nuw nsw i64 %i.ej, %14
  %i.el = add i64 %i.ek, %i.ei
  %i.em = xor i64 %i.el, %i.g
  br label %.loopexit

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !32
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEmTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.en = load i64, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %15 = shl nuw nsw i64 %i.g, 6
  %16 = lshr i64 %i.g, 2
  %i.eo = add nuw nsw i64 %15, 2654435769
  %i.ep = add nuw nsw i64 %i.eo, %16
  %i.eq = add i64 %i.ep, %i.en
  %i.er = xor i64 %i.eq, %i.g
  br label %.loopexit

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !88
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.es = load double, ptr %i.b, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.es, ptr %i.a, align 8, !tbaa !88
  %i.et = fcmp une double %i.es, 0.000000e+00
  br i1 %i.et, label %bb.w, label %_ZNKSt4hashIdEclEd.exit

bb.w:                                             ; preds = %bb.v
  %i.eu = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #27
  unreachable

_ZNKSt4hashIdEclEd.exit:                          ; preds = %bb.v, %bb.w
  %i.ex = phi i64 [ 0, %bb.v ], [ %i.eu, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %17 = shl nuw nsw i64 %i.g, 6
  %18 = lshr i64 %i.g, 2
  %i.ey = add nuw nsw i64 %17, 2654435769
  %i.ez = add nuw nsw i64 %i.ey, %18
  %i.fa = add i64 %i.ez, %i.ex
  %i.fb = xor i64 %i.fa, %i.g
  br label %.loopexit

bb.y:                                             ; preds = %bb.a
  %i.fc = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !45
  %i.ff = load ptr, ptr %i.fc, align 8, !tbaa !44
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %19 = shl nuw nsw i64 %i.g, 6
  %20 = lshr i64 %i.g, 2
  %i.fi = add nuw nsw i64 %19, 2654435769
  %i.fj = add nuw nsw i64 %i.fi, %20
  %i.fk = add i64 %i.fj, %i.fg
  %i.fl = sub i64 %i.fk, %i.fh
  %i.fm = xor i64 %i.fl, %i.g                     ; 3 uses
  %i.fn = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !53, !range !68, !noundef !69
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = add nuw nsw i64 %i.fq, 2654435769
  %i.fs = shl i64 %i.fm, 6
  %i.ft = add i64 %i.fr, %i.fs
  %i.fu = lshr i64 %i.fm, 2
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = xor i64 %i.fv, %i.fm                    ; 3 uses
  %i.fx = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !53, !range !68, !noundef !69
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = add i64 %i.gc, 2654435769
  %i.ge = select i1 %i.ga, i64 %i.gd, i64 2654435768
  %i.gf = shl i64 %i.fw, 6
  %i.gg = add i64 %i.gf, %i.ge
  %i.gh = lshr i64 %i.fw, 2
  %i.gi = add i64 %i.gg, %i.gh
  %i.gj = xor i64 %i.gi, %i.fw                    ; 5 uses
  %i.gk = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !89 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !89 ; 3 uses
  %.not94 = icmp eq ptr %i.gl, %i.gn
  br i1 %.not94, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.y
  %i.go = ptrtoaddr ptr %i.gn to i64              ; 2 uses
  %i.gp = ptrtoaddr ptr %i.gl to i64              ; 2 uses
  %i.gq = sub i64 %i.go, %i.gp
  %xtraiter = and i64 %i.gq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.gr = load i8, ptr %i.gl, align 1, !tbaa !30
  %i.gs = zext i8 %i.gr to i64
  %i.gt = shl i64 %i.gj, 6
  %i.gu = lshr i64 %i.gj, 2
  %i.gv = add i64 %i.gt, 2654435769
  %i.gw = add i64 %i.gv, %i.gu
  %i.gx = add i64 %i.gw, %i.gs
  %i.gy = xor i64 %i.gx, %i.gj                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa118.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.gy, %.lr.ph.prol ]
  %.05296.unr = phi i64 [ %i.gj, %.lr.ph.preheader ], [ %i.gy, %.lr.ph.prol ]
  %.sroa.080.095.unr = phi ptr [ %i.gl, %.lr.ph.preheader ], [ %i.gz, %.lr.ph.prol ]
  %i.ha = add i64 %i.go, -1
  %i.hb = icmp eq i64 %i.ha, %i.gp
  br i1 %i.hb, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05296 = phi i64 [ %i.hs, %.lr.ph ], [ %.05296.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.080.095 = phi ptr [ %i.ht, %.lr.ph ], [ %.sroa.080.095.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.hc = load i8, ptr %.sroa.080.095, align 1, !tbaa !30
  %i.hd = zext i8 %i.hc to i64
  %i.he = shl i64 %.05296, 6
  %i.hf = lshr i64 %.05296, 2
  %i.hg = add i64 %i.he, 2654435769
  %i.hh = add i64 %i.hg, %i.hf
  %i.hi = add i64 %i.hh, %i.hd
  %i.hj = xor i64 %i.hi, %.05296                  ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.080.095, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !30
  %i.hm = zext i8 %i.hl to i64
  %i.hn = shl i64 %i.hj, 6
  %i.ho = lshr i64 %i.hj, 2
  %i.hp = add i64 %i.hn, 2654435769
  %i.hq = add i64 %i.hp, %i.ho
  %i.hr = add i64 %i.hq, %i.hm
  %i.hs = xor i64 %i.hr, %i.hj                    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.080.095, i64 2 ; 2 uses
  %.not.1 = icmp eq ptr %i.ht, %i.gn
  br i1 %.not.1, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.y, %bb.a, %_ZNKSt4hashIdEclEd.exit, %bb.u, %bb.t, %bb.s, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78, %._crit_edge, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72, %bb.b
  %.0 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ], [ %.053, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72 ], [ %.057.lcssa, %._crit_edge ], [ %i.eb, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78 ], [ %i.eh, %bb.s ], [ %i.em, %bb.t ], [ %i.er, %bb.u ], [ %i.fb, %_ZNKSt4hashIdEclEd.exit ], [ %i.gj, %bb.y ], [ %.lcssa118.unr, %.lr.ph.prol.loopexit ], [ %i.hs, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.10", align 1 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.10", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !36
  switch i8 %i.b, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !81
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %i.h, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #29
          to label %bb.o unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.05 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.05, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.05, label %.sink.split, label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !84
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.m, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIPKNS1_6detail8json_refISD_EEEEvT_SM_St20forward_iterator_tag:bb.a
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = call ptr @__cxa_begin_catch(ptr %i.s) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.i, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #29
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.u

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #27
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.q, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.x, align 8, !tbaa !85
  ret void
}

declare noundef ptr @_ZN7doctest17getContextOptionsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail19stringifyBinaryExprImiEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind noalias writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %5 = alloca %"class.doctest::String", align 8   ; 7 uses
  %6 = alloca %"class.doctest::String", align 8   ; 7 uses
  %7 = alloca %"class.doctest::String", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = load i64, ptr %1, align 8, !tbaa !32
  call void @_ZN7doctest8toStringEm(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %5, i64 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.b = load i32, ptr %3, align 4, !tbaa !57
  invoke void @_ZN7doctest8toStringEi(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %7, i32 noundef %i.b)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.f, %bb.i ], [ %i.e, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.d, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN7doctest8toStringEm(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8, i64 noundef) local_unnamed_addr #0

declare void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #0

declare void @_ZN7doctest8toStringEi(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !270

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %0, align 8, !tbaa !59
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit unwind label %bb.b, !inline_history !271

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27, !inline_history !271
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %0, align 8, !tbaa !59
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b) #26
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.b, !inline_history !60

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27, !inline_history !60
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iteration_proxy_value.164", align 8 ; 22 uses
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iteration_proxy_value.164", align 8 ; 17 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl.165", align 8 ; 10 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl.165", align 8 ; 8 uses
  %i.f = load i8, ptr %0, align 8, !tbaa !62      ; 2 uses
  %i.g = zext i8 %i.f to i64                      ; 27 uses
  switch i8 %i.f, label %.loopexit [
    i8 0, label %bb.b
    i8 9, label %bb.b
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
    i8 3, label %bb.s
    i8 4, label %bb.u
    i8 5, label %bb.v
    i8 6, label %bb.w
    i8 7, label %bb.x
    i8 8, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = shl nuw nsw i64 %i.g, 6
  %i.i = add nuw nsw i64 %i.h, 2654435769
  %i.j = lshr i64 %i.g, 2
  %i.k = add nuw nsw i64 %i.i, %i.j
  %i.l = xor i64 %i.k, %i.g
  br label %.loopexit

_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !114  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 48
  %5 = shl nuw nsw i64 %i.g, 6
  %6 = lshr i64 %i.g, 2
  %i.v = add nuw nsw i64 %5, 2654435769
  %i.w = add nuw nsw i64 %i.v, %6
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = xor i64 %i.x, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %0, ptr %1, align 8, !tbaa !115, !alias.scope !284
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !116, !alias.scope !284
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !115, !alias.scope !284
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !32, !alias.scope !284
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !alias.scope !284
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !72, !alias.scope !284
  store i8 48, ptr %i.ab, align 8, !tbaa !30, !alias.scope !284
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 1, ptr %i.ac, align 8, !tbaa !74, !alias.scope !284
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.ad, align 1, !tbaa !30, !alias.scope !284
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !72, !alias.scope !284
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.ag, align 8, !tbaa !74, !alias.scope !284
  store i8 0, ptr %i.af, align 8, !tbaa !30, !alias.scope !284
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !115, !alias.scope !285
  %.sroa.2.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.p, ptr %.sroa.2.0..sroa_idx.i64, align 8, !tbaa !116, !alias.scope !285
  %.sroa.4.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %.sroa.4.0..sroa_idx.i65, align 8, !tbaa !115, !alias.scope !285
  %.sroa.5.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i66, align 8, !tbaa !32, !alias.scope !285
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !285
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !72, !alias.scope !285
  store i8 48, ptr %i.aj, align 8, !tbaa !30, !alias.scope !285
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 1, ptr %i.ak, align 8, !tbaa !74, !alias.scope !285
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 65
  store i8 0, ptr %i.al, align 1, !tbaa !30, !alias.scope !285
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !72, !alias.scope !285
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 0, ptr %i.ao, align 8, !tbaa !74, !alias.scope !285
  store i8 0, ptr %i.an, align 8, !tbaa !30, !alias.scope !285
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit, %_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit
  %.053 = phi i64 [ %i.y, %_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit ], [ %i.by, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit ] ; 4 uses
  %i.aq = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !75 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.an
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ar) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !75 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aj
  br i1 %i.au, label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.at) #28
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit

_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !75 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.af
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.av) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !75 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ab
  br i1 %i.ay, label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68
  call void @_ZdlPv(ptr noundef %i.ax) #28
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72

_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %1, align 8, !tbaa !287
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !62
  switch i8 %i.ba, label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit [
    i8 2, label %bb.g
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.bb = load i64, ptr %i.z, align 8, !tbaa !288 ; 2 uses
  %i.bc = load i64, ptr %i.ap, align 8, !tbaa !289
  %.not.i = icmp eq i64 %i.bb, %i.bc
  br i1 %.not.i, label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail13int_to_stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %i.bb)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.h
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !288
  store i64 %i.bd, ptr %i.ap, align 8, !tbaa !289
  br label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit

bb.i:                                             ; preds = %bb.f
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE3keyEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit unwind label %bb.o

_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit: ; preds = %.noexc, %bb.g, %bb.i, %bb.f
  %.0.i73 = phi ptr [ %i.be, %bb.i ], [ %i.aa, %bb.g ], [ %i.aa, %.noexc ], [ %i.ae, %bb.f ] ; 2 uses
  %i.bf = load ptr, ptr %.0.i73, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i73, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !74
  %i.bi = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bf, i64 noundef %i.bh, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #27
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit: ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit
  %i.bl = shl i64 %.053, 6
  %i.bm = lshr i64 %.053, 2
  %i.bn = add i64 %i.bl, 2654435769
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = add i64 %i.bo, %i.bi
  %i.bq = xor i64 %i.bp, %.053                    ; 3 uses
  %i.br = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit unwind label %bb.o

_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit: ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit
  %i.bs = invoke noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.br)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit
  %i.bt = shl i64 %i.bq, 6
  %i.bu = lshr i64 %i.bq, 2
  %i.bv = add i64 %i.bt, 2654435769
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = add i64 %i.bw, %i.bs
  %i.by = xor i64 %i.bx, %i.bq
  %i.bz = load ptr, ptr %1, align 8, !tbaa !121
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !62
  switch i8 %i.ca, label %bb.n [
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.cb = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !122
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store ptr %i.cc, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !122
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit

bb.m:                                             ; preds = %bb.k
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !123
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !123
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit

bb.n:                                             ; preds = %bb.k
  %i.cf = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !84
  %i.cg = add nsw i64 %i.cf, 1
  store i64 %i.cg, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !84
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ch = load i64, ptr %i.z, align 8, !tbaa !288
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.z, align 8, !tbaa !288
  br label %bb.c

bb.o:                                             ; preds = %bb.h, %bb.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit, %bb.c, %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.cj

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit: ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !124 ; 2 uses
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !67 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %7 = shl nuw nsw i64 %i.g, 6
  %8 = lshr i64 %i.g, 2
  %i.ct = add nuw nsw i64 %7, 2654435769
  %i.cu = add nuw nsw i64 %i.ct, %8
  %i.cv = add nsw i64 %i.cu, %i.cs
  %i.cw = xor i64 %i.cv, %i.g                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !121, !alias.scope !290
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 0, ptr %i.cx, align 8
  store i64 -9223372036854775808, ptr %i.cy, align 8, !tbaa !84, !alias.scope !290
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.co, ptr %i.cz, align 8, !tbaa !115, !alias.scope !290
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %0, ptr %4, align 8, !tbaa !121, !alias.scope !291
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.da, align 8
  store i64 -9223372036854775808, ptr %i.db, align 8, !tbaa !84, !alias.scope !291
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cn, ptr %i.dc, align 8, !tbaa !115, !alias.scope !291
  %i.dd = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.dd, label %._crit_edge, label %.lr.ph98

._crit_edge:                                      ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %.057.lcssa = phi i64 [ %i.cw, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit ], [ %i.dl, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.loopexit

.lr.ph98:                                         ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit
  %.05797 = phi i64 [ %i.dl, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ], [ %i.cw, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit ] ; 3 uses
  %i.de = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.df = call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.de)
  %i.dg = shl i64 %.05797, 6
  %i.dh = lshr i64 %.05797, 2
  %i.di = add i64 %i.dg, 2654435769
  %i.dj = add i64 %i.di, %i.dh
  %i.dk = add i64 %i.dj, %i.df
  %i.dl = xor i64 %i.dk, %.05797                  ; 2 uses
  %i.dm = load ptr, ptr %3, align 8, !tbaa !121
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !62
  switch i8 %i.dn, label %bb.r [
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph98
  %i.do = load ptr, ptr %i.cx, align 8, !tbaa !122
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store ptr %i.dp, ptr %i.cx, align 8, !tbaa !122
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.q:                                             ; preds = %.lr.ph98
  %i.dq = load ptr, ptr %i.cz, align 8, !tbaa !123
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store ptr %i.dr, ptr %i.cz, align 8, !tbaa !123
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.r:                                             ; preds = %.lr.ph98
  %i.ds = load i64, ptr %i.cy, align 8, !tbaa !84
  %i.dt = add nsw i64 %i.ds, 1
  store i64 %i.dt, ptr %i.cy, align 8, !tbaa !84
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit: ; preds = %bb.p, %bb.q, %bb.r
  %i.du = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.du, label %._crit_edge, label %.lr.ph98

bb.s:                                             ; preds = %bb.a
  %i.dv = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRKS9_KSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !75
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !74
  %i.dz = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.dw, i64 noundef %i.dy, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  tail call void @__clang_call_terminate(ptr %i.eb) #27
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78: ; preds = %bb.s
  %9 = shl nuw nsw i64 %i.g, 6
  %10 = lshr i64 %i.g, 2
  %i.ec = add nuw nsw i64 %9, 2654435769
  %i.ed = add nuw nsw i64 %i.ec, %10
  %i.ee = add i64 %i.ed, %i.dz
  %i.ef = xor i64 %i.ee, %i.g
  br label %.loopexit

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i8 0, ptr %i.e, align 1, !tbaa !86
  call void @_ZNK8nlohmann16json_abi_v3_12_06detail12from_json_fnclINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEERbEEDTcl9from_jsonfp_clsr3stdE7forwardIT0_Efp0_EEERKT_OSI_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN8nlohmann16json_abi_v3_12_06detail12static_constINS1_12from_json_fnEE5valueE, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %i.eg = load i8, ptr %i.e, align 1, !tbaa !86, !range !68, !noundef !69
  %i.eh = zext nneg i8 %i.eg to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %11 = shl nuw nsw i64 %i.g, 6
  %12 = lshr i64 %i.g, 2
  %i.ei = add nuw nsw i64 %11, 2654435769
  %i.ej = add nuw nsw i64 %i.ei, %12
  %i.ek = add nuw nsw i64 %i.ej, %i.eh
  %i.el = xor i64 %i.ek, %i.g
  br label %.loopexit

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !32
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEElTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.em = load i64, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %13 = shl nuw nsw i64 %i.g, 6
  %14 = lshr i64 %i.g, 2
  %i.en = add nuw nsw i64 %13, 2654435769
  %i.eo = add nuw nsw i64 %i.en, %14
  %i.ep = add i64 %i.eo, %i.em
  %i.eq = xor i64 %i.ep, %i.g
  br label %.loopexit

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !32
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEmTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.er = load i64, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %15 = shl nuw nsw i64 %i.g, 6
  %16 = lshr i64 %i.g, 2
  %i.es = add nuw nsw i64 %15, 2654435769
  %i.et = add nuw nsw i64 %i.es, %16
  %i.eu = add i64 %i.et, %i.er
  %i.ev = xor i64 %i.eu, %i.g
  br label %.loopexit

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !88
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ew = load double, ptr %i.b, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.ew, ptr %i.a, align 8, !tbaa !88
  %i.ex = fcmp une double %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.y, label %_ZNKSt4hashIdEclEd.exit

bb.y:                                             ; preds = %bb.x
  %i.ey = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #27
  unreachable

_ZNKSt4hashIdEclEd.exit:                          ; preds = %bb.x, %bb.y
  %i.fb = phi i64 [ 0, %bb.x ], [ %i.ey, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %17 = shl nuw nsw i64 %i.g, 6
  %18 = lshr i64 %i.g, 2
  %i.fc = add nuw nsw i64 %17, 2654435769
  %i.fd = add nuw nsw i64 %i.fc, %18
  %i.fe = add i64 %i.fd, %i.fb
  %i.ff = xor i64 %i.fe, %i.g
  br label %.loopexit

bb.aa:                                            ; preds = %bb.a
  %i.fg = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !45
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !44
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %19 = shl nuw nsw i64 %i.g, 6
  %20 = lshr i64 %i.g, 2
  %i.fm = add nuw nsw i64 %19, 2654435769
  %i.fn = add nuw nsw i64 %i.fm, %20
  %i.fo = add i64 %i.fn, %i.fk
  %i.fp = sub i64 %i.fo, %i.fl
  %i.fq = xor i64 %i.fp, %i.g                     ; 3 uses
  %i.fr = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !53, !range !68, !noundef !69
  %i.fu = zext nneg i8 %i.ft to i64
  %i.fv = add nuw nsw i64 %i.fu, 2654435769
  %i.fw = shl i64 %i.fq, 6
  %i.fx = add i64 %i.fv, %i.fw
  %i.fy = lshr i64 %i.fq, 2
  %i.fz = add i64 %i.fx, %i.fy
  %i.ga = xor i64 %i.fz, %i.fq                    ; 3 uses
  %i.gb = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !53, !range !68, !noundef !69
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = add i64 %i.gg, 2654435769
  %i.gi = select i1 %i.ge, i64 %i.gh, i64 2654435768
  %i.gj = shl i64 %i.ga, 6
  %i.gk = add i64 %i.gj, %i.gi
  %i.gl = lshr i64 %i.ga, 2
  %i.gm = add i64 %i.gk, %i.gl
  %i.gn = xor i64 %i.gm, %i.ga                    ; 5 uses
  %i.go = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !89 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !89 ; 3 uses
  %.not94 = icmp eq ptr %i.gp, %i.gr
  br i1 %.not94, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.gs = ptrtoaddr ptr %i.gr to i64              ; 2 uses
  %i.gt = ptrtoaddr ptr %i.gp to i64              ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt
  %xtraiter = and i64 %i.gu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.gv = load i8, ptr %i.gp, align 1, !tbaa !30
  %i.gw = zext i8 %i.gv to i64
  %i.gx = shl i64 %i.gn, 6
  %i.gy = lshr i64 %i.gn, 2
  %i.gz = add i64 %i.gx, 2654435769
  %i.ha = add i64 %i.gz, %i.gy
  %i.hb = add i64 %i.ha, %i.gw
  %i.hc = xor i64 %i.hb, %i.gn                    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa118.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.hc, %.lr.ph.prol ]
  %.05296.unr = phi i64 [ %i.gn, %.lr.ph.preheader ], [ %i.hc, %.lr.ph.prol ]
  %.sroa.080.095.unr = phi ptr [ %i.gp, %.lr.ph.preheader ], [ %i.hd, %.lr.ph.prol ]
  %i.he = add i64 %i.gs, -1
  %i.hf = icmp eq i64 %i.he, %i.gt
  br i1 %i.hf, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05296 = phi i64 [ %i.hw, %.lr.ph ], [ %.05296.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.080.095 = phi ptr [ %i.hx, %.lr.ph ], [ %.sroa.080.095.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.hg = load i8, ptr %.sroa.080.095, align 1, !tbaa !30
  %i.hh = zext i8 %i.hg to i64
  %i.hi = shl i64 %.05296, 6
  %i.hj = lshr i64 %.05296, 2
  %i.hk = add i64 %i.hi, 2654435769
  %i.hl = add i64 %i.hk, %i.hj
  %i.hm = add i64 %i.hl, %i.hh
  %i.hn = xor i64 %i.hm, %.05296                  ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.080.095, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !30
  %i.hq = zext i8 %i.hp to i64
  %i.hr = shl i64 %i.hn, 6
  %i.hs = lshr i64 %i.hn, 2
  %i.ht = add i64 %i.hr, 2654435769
  %i.hu = add i64 %i.ht, %i.hs
  %i.hv = add i64 %i.hu, %i.hq
  %i.hw = xor i64 %i.hv, %i.hn                    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.080.095, i64 2 ; 2 uses
  %.not.1 = icmp eq ptr %i.hx, %i.gr
  br i1 %.not.1, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.aa, %bb.a, %_ZNKSt4hashIdEclEd.exit, %bb.w, %bb.v, %bb.u, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78, %._crit_edge, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72, %bb.b
  %.0 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ], [ %.053, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72 ], [ %.057.lcssa, %._crit_edge ], [ %i.ef, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78 ], [ %i.el, %bb.u ], [ %i.eq, %bb.v ], [ %i.ev, %bb.w ], [ %i.ff, %_ZNKSt4hashIdEclEd.exit ], [ %i.gn, %bb.aa ], [ %.lcssa118.unr, %.lr.ph.prol.loopexit ], [ %i.hw, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.10", align 1 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.10", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !62
  switch i8 %i.b, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !121
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %i.h, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #29
          to label %bb.o unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.05 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.05, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.05, label %.sink.split, label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !84
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.m, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread

end_hunk_1
