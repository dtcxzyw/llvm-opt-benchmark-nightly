Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.14?download=true
inline.NumInlined: 1049
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0EECs33K2ylI4knu_10hir_expand:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1040, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1040, !noundef !5 ; 5 uses
  %i.h = add i64 %.val1.i, 1
  %i.i = mul nuw i64 %i.e, %i.h                   ; 2 uses
  %i.j = add i64 %i.g, -1
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub i64 0, %i.g
  %i.n = and i64 %i.k, %i.m                       ; 3 uses
  %i.o = add i64 %.val1.i, 17
  %i.p = add i64 %i.o, %i.n                       ; 4 uses
  %i.q = icmp uge i64 %i.p, %i.n
  %i.r = sub nuw i64 -9223372036854775808, %i.g
  %i.s = icmp ule i64 %i.p, %i.r
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.v = sub nsw i64 0, %i.n
  %i.w = getelementptr inbounds i8, ptr %.val.i, i64 %i.v
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.g) #36, !noalias !1040
  br label %_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit

_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.a, %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1044
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1044
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1044, !nonnull !5, !align !15, !noundef !5 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1044, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.04.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.04.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !1044, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !1044, !noundef !5
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.04.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !1044, !noundef !5
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !1044
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !1044, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !1044
  %i.q = load i64, ptr %i.e, align 8, !noalias !1044, !noundef !5
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !1044
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.04.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.04.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !1044, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.04.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !1044, !noundef !5
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.x = add i64 %.sroa.04.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !1044, !noundef !5
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !1044
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !1044, !nonnull !5, !noundef !5
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !1044
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !1044, !nonnull !5, !noundef !5
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg6.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !1044, !inline_history !1043
  %i.af = load i64, ptr %i.e, align 8, !noalias !1044, !noundef !5
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !1044
  br label %bb.d

_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !1044, !noundef !5 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.01.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !1044, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.01.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !1044
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10next_array12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj1_EECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1055, !noundef !5 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj1_EINtNtCshzWfHUSfYae_4core7convert5AsMutSB10_E6as_mutCs33K2ylI4knu_10hir_expand.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !noalias !1055
  unreachable

_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj1_EINtNtCshzWfHUSfYae_4core7convert5AsMutSB10_E6as_mutCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.d = icmp ne i64 %i.b, 0
  %i.e = load i64, ptr %0, align 8, !range !14, !alias.scope !1053
  %i.f = icmp eq i64 %i.e, -1
  %or.cond.i = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.c, label %_RNvXs0_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB5_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit

bb.c:                                             ; preds = %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj1_EINtNtCshzWfHUSfYae_4core7convert5AsMutSB10_E6as_mutCs33K2ylI4knu_10hir_expand.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load i32, ptr %i.g, align 8, !range !13, !alias.scope !1057, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1057
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val.i.i.i, ptr %.val1.i.i.i), !noalias !1058
  br label %_RNvXs0_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB5_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit

_RNvXs0_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB5_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit: ; preds = %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj1_EINtNtCshzWfHUSfYae_4core7convert5AsMutSB10_E6as_mutCs33K2ylI4knu_10hir_expand.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10next_array12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj2_EECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1071, !noundef !5 ; 5 uses
  %i.c = icmp ult i64 %i.b, 3
  br i1 %i.c, label %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj2_EINtNtCshzWfHUSfYae_4core7convert5AsMutSB10_E6as_mutCs33K2ylI4knu_10hir_expand.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !noalias !1071
  unreachable

_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj2_EINtNtCshzWfHUSfYae_4core7convert5AsMutSB10_E6as_mutCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RNvXs0_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB5_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj2_EINtNtCshzWfHUSfYae_4core7convert5AsMutSB10_E6as_mutCs33K2ylI4knu_10hir_expand.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i ], [ 0, %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj2_EINtNtCshzWfHUSfYae_4core7convert5AsMutSB10_E6as_mutCs33K2ylI4knu_10hir_expand.exit.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.0.011.i.i ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 4 uses
  %i.g = load i64, ptr %i.e, align 8, !range !14, !alias.scope !1073, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i = load i32, ptr %i.i, align 8, !range !13, !alias.scope !1073, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1073
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val.i.i.i, ptr %.val1.i.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i unwind label %bb.d, !noalias !1074

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.f, %i.b
  br i1 %i.k, label %_RNvXs0_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB5_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.f, %i.b
  br i1 %i.m, label %._crit_edge15.i.i, label %.lr.ph14.i.i

.lr.ph14.i.i:                                     ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !range !14, !alias.scope !1075, !noundef !5
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %bb.e, label %._crit_edge15.i.i

bb.e:                                             ; preds = %.lr.ph14.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i7.i.i = load i32, ptr %i.q, align 8, !range !13, !alias.scope !1075, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i8.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1075
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val.i7.i.i, ptr %.val1.i8.i.i)
          to label %._crit_edge15.i.i unwind label %bb.f, !noalias !1074

._crit_edge15.i.i:                                ; preds = %bb.e, %.lr.ph14.i.i, %bb.d
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1074
  unreachable

_RNvXs0_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB5_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i, %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderNtNtCs4dcH4YgJDq_2tt4iter9TtElementKj2_EINtNtCshzWfHUSfYae_4core7convert5AsMutSB10_E6as_mutCs33K2ylI4knu_10hir_expand.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1078 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !1078 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !1078, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !1078
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #36, !noalias !1078
  br label %_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit

_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.a, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1082
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1082
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1082, !nonnull !5, !align !15, !noundef !5 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1082, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !1082, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !1082, !noundef !5
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !1082, !noundef !5
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !1082
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !1082, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !1082
  %i.q = load i64, ptr %i.e, align 8, !noalias !1082, !noundef !5
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !1082
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !1082, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !1082, !noundef !5
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !1082, !noundef !5
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !1082
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !1082, !nonnull !5, !noundef !5
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !1082
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !1082, !nonnull !5, !noundef !5
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !1082, !inline_history !1081
  %i.af = load i64, ptr %i.e, align 8, !noalias !1082, !noundef !5
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !1082
  br label %bb.d

_RNvXs1_NtCsfjX3T6UU9IB_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !1082, !noundef !5 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !1082, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !1082
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque7DropperNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand(ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB4_7DropperNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %.8.val
  br i1 %i.b, label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB4_7DropperNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1 ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  %.val8.i.i = load i32, ptr %i.c, align 8, !range !13, !alias.scope !1085, !noundef !5
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val9.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1085
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val8.i.i, ptr %.val9.i.i)
          to label %bb.b unwind label %bb.d, !noalias !1085

bb.c:                                             ; preds = %.lr.ph3
  %i.f = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.g = icmp eq i64 %i.f, %.8.val
  br i1 %i.g, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.d, %.8.val
  br i1 %i.i, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.f, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2 ; 2 uses
  %.val.i.i = load i32, ptr %i.j, align 8, !range !13, !alias.scope !1085, !noundef !5
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val7.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1085
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val.i.i, ptr %.val7.i.i) #34
          to label %bb.c unwind label %bb.e, !noalias !1085

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %.lr.ph3
  %i.l = landingpad { ptr, i32 }
end_hunk_0
