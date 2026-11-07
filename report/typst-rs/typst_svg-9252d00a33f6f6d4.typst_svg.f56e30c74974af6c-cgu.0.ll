Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1b_:bb.a
  %i.n = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1575, !nonnull !12, !noundef !12
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !1576
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEBE_.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEBE_.exit8.i.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEBE_.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.s = icmp eq i64 %i.n, %.val1
  br i1 %i.s, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEBE_.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.u = icmp eq i64 %.val4, 0
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1i_.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.v = mul nuw i64 %.val4, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 16) #31
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1i_.exit

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEBE_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.w = icmp eq i64 %.val2, 0
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1i_.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBI_.exit
  %i.x = mul nuw i64 %.val2, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 16) #31
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1i_.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1i_.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBI_.exit, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1i_.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsl4q486LaARA_9typst_svg.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #31
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsl4q486LaARA_9typst_svg.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsl4q486LaARA_9typst_svg.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !1579, !noundef !12 ; 3 uses
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %_RNvXs1_NtCs2qDE43xvXom_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit, label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !1579 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !1579 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !1579
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = sub nsw i64 0, %i.l
  %i.t = getelementptr inbounds i8, ptr %.val2.i, i64 %i.s
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #31, !noalias !1579
  br label %_RNvXs1_NtCs2qDE43xvXom_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit

_RNvXs1_NtCs2qDE43xvXom_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit: ; preds = %bb.a, %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1583, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1583
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1583 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCs2qDE43xvXom_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1583, !noundef !12 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCs2qDE43xvXom_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.04.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.d ] ; 5 uses
  %i.f = add nuw i64 %.sroa.04.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !1583, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !1583, !noundef !12
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs2qDE43xvXom_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.k = add i64 %.sroa.04.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !1583, !noundef !12
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !1583
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !1583, !nonnull !12, !noundef !12
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !1583
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !1583, !nonnull !12, !noundef !12
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg6.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !1583, !inline_history !1582
  %i.s = load i64, ptr %i.e, align 8, !noalias !1583, !noundef !12
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !1583
  br label %bb.d

_RNvXs1_NtCs2qDE43xvXom_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit: ; preds = %bb.d, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1583, !noundef !12 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.01.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !1583, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.01.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !1583
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !19, !alias.scope !1588, !noundef !12
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvXs8_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1588
  store i8 1, ptr %i.c, align 1, !alias.scope !1588
  call fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %0, i32 noundef 1145980233, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  %.val.i = load i64, ptr %i.b, align 8, !range !31, !noalias !1588, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !noalias !1588 ; 4 uses
  %i.g = icmp eq i64 %.val.i, 3
  br i1 %i.g, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1588
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.h = ptrtoint ptr %.val1.i to i64             ; 2 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i
    i64 1, label %bb.e
  ], !prof !32

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.k = and i64 %i.h, 1095216660480
  %i.l = icmp ne i64 %i.k, 1095216660480
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.val1.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !1589, !noalias !1588
  store i8 3, ptr %i.a, align 8, !alias.scope !1589, !noalias !1588
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n), !noalias !1588
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1588
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1588
  br label %_RNvXs8_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit

_RNvXs8_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsl4q486LaARA_9typst_svg(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !12 ; 2 uses
  %narrow.i.i.i = icmp ult i64 %.val.i.i, 9223372036854775783
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i, label %bb.b, !prof !20

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #36
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i
  %i.e = add nuw nsw i64 %.val.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  store i64 8, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsl4q486LaARA_9typst_svg.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs_1__9MultiCalluEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #31
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load i64, ptr %i.e, align 8, !noundef !12 ; 4 uses
  %i.f = icmp eq i64 %.val3, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsl4q486LaARA_9typst_svg.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit
  %i.g = icmp slt i64 %.val3, 576460752303423487
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %.val3, 5                        ; 2 uses
  %i.i = add i64 %i.h, 32                         ; 2 uses
  %i.j = add nsw i64 %.val3, 17
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp uge i64 %i.k, %i.i
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsl4q486LaARA_9typst_svg.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.o = sub nuw nsw i64 -32, %i.h
  %i.p = getelementptr inbounds i8, ptr %.val2, i64 %i.o
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #31
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsl4q486LaARA_9typst_svg.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg(ptr %.40.val, i8 %.55.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not.i.i.i.i = icmp sgt i8 %.55.val, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsl4q486LaARA_9typst_svg.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.40.val) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.40.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.40.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsl4q486LaARA_9typst_svg.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !27
  %.not.i.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsl4q486LaARA_9typst_svg.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  %i.d = getelementptr i8, ptr %.40.val, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !27, !noundef !12 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, label %.noexc.i, !prof !20

.noexc.i:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #36, !noalias !1590
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  %i.e = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8, !noalias !27
  store i64 8, ptr %i.a, align 8, !noalias !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !27
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsl4q486LaARA_9typst_svg.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !1593 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 39
  %.val1.i = load i8, ptr %i.c, align 1, !alias.scope !1593, !noundef !12
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !1593
  %.not.i.i.i.i = icmp eq i64 %i.e, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1593
  %i.f = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !1593, !noundef !12 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i, label %.noexc, !prof !20

.noexc:                                           ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #36
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i
  %i.g = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.h, align 8, !noalias !1593
  store i64 8, ptr %i.a, align 8, !noalias !1593
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.i, align 8, !noalias !1593
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1593
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1s_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1614, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !1614, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCsbMQOdixSu6G_5image6codecs3pngINtB5_10PngEncoderQINtNtCs1xwejQucwHj_5alloc3vec3VechEE12encode_innerCsl4q486LaARA_9typst_svg:bb.a
  %.sroa.19.0 = select i1 %i.bs, ptr undef, ptr %i.bu ; 2 uses
  %.sroa.17690.0 = select i1 %i.bs, i64 -2, i64 -1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !12 ; 6 uses
  %i.by = icmp sgt i64 %i.bx, -1
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = icmp eq i64 %i.bx, 0                    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !12
  %.sroa.23.0714 = select i1 %i.bz, ptr undef, ptr %i.cb ; 2 uses
  %.sroa.21.0 = select i1 %i.bz, i64 -2, i64 -1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !12, !align !23, !noundef !12 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i8 0, i64 16, i1 false)
  %.sroa.643.sroa.9.sroa.7.0..sroa.643.sroa.9.0..sroa.643.0..sroa_idx44.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.9.sroa.7.0..sroa.643.sroa.9.0..sroa.643.0..sroa_idx44.sroa_idx.sroa_idx, align 8
  %.sroa.7.32..sroa.643.sroa.9.sroa.7.0..sroa.643.sroa.9.0..sroa.643.0..sroa_idx44.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.32..sroa.643.sroa.9.sroa.7.0..sroa.643.sroa.9.0..sroa.643.0..sroa_idx44.sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.8.32..sroa.643.sroa.9.sroa.7.0..sroa.643.sroa.9.0..sroa.643.0..sroa_idx44.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.32..sroa.643.sroa.9.sroa.7.0..sroa.643.sroa.9.0..sroa.643.0..sroa_idx44.sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.9.32..sroa.643.sroa.9.sroa.7.0..sroa.643.sroa.9.0..sroa.643.0..sroa_idx44.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  store i64 0, ptr %.sroa.9.32..sroa.643.sroa.9.sroa.7.0..sroa.643.sroa.9.0..sroa.643.0..sroa_idx44.sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.8.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store i64 -2, ptr %.sroa.8.0..sroa_idx45, align 8
  %.sroa.121106.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  store i64 -2, ptr %.sroa.121106.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.131107.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  store i64 -2, ptr %.sroa.131107.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.141108.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  store i64 -2, ptr %.sroa.141108.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.151109.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  store i64 %.sroa.17690.0, ptr %.sroa.151109.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.16.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 176
  store ptr %.sroa.19.0, ptr %.sroa.16.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.17.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 184
  store i64 %i.bq, ptr %.sroa.17.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.18.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 192
  store i64 %.sroa.21.0, ptr %.sroa.18.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.19.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 200
  store ptr %.sroa.23.0714, ptr %.sroa.19.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.20.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  store i64 %i.bx, ptr %.sroa.20.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.21.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 216
  store i32 0, ptr %.sroa.21.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.221110.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 224
  store i32 0, ptr %.sroa.221110.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.231111.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 232
  store i32 0, ptr %.sroa.231111.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.241112.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 268
  store i32 0, ptr %.sroa.241112.72..sroa.8.0..sroa_idx45.sroa_idx, align 4
  %.sroa.251114.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  store i32 0, ptr %.sroa.251114.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.261115.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 316
  store i32 0, ptr %.sroa.261115.72..sroa.8.0..sroa_idx45.sroa_idx, align 4
  %.sroa.271116.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 360
  store i32 0, ptr %.sroa.271116.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.281117.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 372
  store i8 2, ptr %.sroa.281117.72..sroa.8.0..sroa_idx45.sroa_idx, align 4
  %.sroa.291118.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 384
  store i8 2, ptr %.sroa.291118.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.301119.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 413
  store i8 2, ptr %.sroa.301119.72..sroa.8.0..sroa_idx45.sroa_idx, align 1
  %.sroa.311120.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 416
  store i32 %4, ptr %.sroa.311120.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.32.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 420
  store i32 %5, ptr %.sroa.32.72..sroa.8.0..sroa_idx45.sroa_idx, align 4
  %.sroa.33.72..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 424
  store <4 x i8> <i8 0, i8 -1, i8 0, i8 8>, ptr %.sroa.33.72..sroa.8.0..sroa_idx45.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 0, ptr %i.bb, align 8
  %.sroa.643.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 8, ptr %.sroa.643.0..sroa_idx44, align 8
  %.sroa.643.sroa.8.0..sroa.643.0..sroa_idx44.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.8.0..sroa.643.0..sroa_idx44.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 432
  store ptr %i.cd, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 440 ; 2 uses
  store i8 0, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx45.sroa_idx, align 8
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 441
  store i8 0, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx45.sroa_idx, align 1
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 442 ; 5 uses
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 443 ; 4 uses
  store i8 6, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx45.sroa_idx, align 1
  %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 444
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 426
  store i8 %switch.masked, ptr %i.ce, align 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 427
  store i8 %switch.masked1027, ptr %i.cf, align 1
  switch i64 %.sroa.015.0, label %default.unreachable [
    i64 0, label %bb.i
    i64 4, label %bb.l
    i64 2, label %bb.j
    i64 3, label %bb.k
  ]

bb.h:                                             ; preds = %bb.ku, %bb.kr, %bb.dj
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.critedge231

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx45.sroa_idx, align 2
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  store i8 1, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx45.sroa_idx, align 2
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  store i8 2, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx45.sroa_idx, align 2
  store i8 6, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx45.sroa_idx, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  store i8 2, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx45.sroa_idx, align 2
  store i8 9, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx45.sroa_idx, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  br i1 %or.cond.not.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 2, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx45.sroa_idx, align 2
  store i8 %i.bl, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx45.sroa_idx, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i8 %i.bo, ptr %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx45.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.553.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.553.sroa.9.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.555.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.555.sroa.9.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6713)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !6714
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 388
  %.sroa.0.12..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.12..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.ch, i64 28, i1 false), !noalias !6715
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 268 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ci, i64 12, i1 false), !noalias !6715
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cj, ptr noundef nonnull readonly align 8 dereferenceable(5) %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx45.sroa_idx, i64 5, i1 false), !noalias !6715
  store ptr %i.cd, ptr %i.ax, align 8, !noalias !6714
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.0.i, i64 40, i1 false), !noalias !6714
  %.sroa.5.0..sroa_idx.i250 = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store i32 %4, ptr %.sroa.5.0..sroa_idx.i250, align 8, !noalias !6714
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  store i32 %5, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !6714
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !6714
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 65
  store i8 %switch.masked, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !6714
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 66
  store i8 %switch.masked1027, ptr %.sroa.9.0..sroa_idx.i, align 2, !noalias !6714
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %i.cl, align 8, !noalias !6714
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  store i32 0, ptr %i.cm, align 4, !noalias !6714
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ax, i64 77 ; 2 uses
  store i8 0, ptr %i.cn, align 1, !noalias !6714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6718)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i.i.sroa.23)
  %i.co = icmp eq i32 %4, 0
  %i.cp = ptrtoint ptr %i.cd to i64
  %i.cq = trunc i64 %i.cp to i8
  br i1 %i.co, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp eq i32 %5, 0
  br i1 %i.cr, label %.thread.i, label %.split.i.i

.thread156.i:                                     ; preds = %.loopexit148.i.i.i, %bb.bn, %bb.bk, %bb.bg, %bb.w, %bb.t
  %.sroa.21.i.i.sroa.0.0 = phi i8 [ %.sroa.21.i.i.sroa.0.0.copyload420, %.loopexit148.i.i.i ], [ %.sroa.21.i.i.sroa.0.0.copyload, %bb.t ], [ %.sroa.21.i.i.sroa.0.0.copyload426, %bb.bg ], [ %.sroa.21.i.i.sroa.0.0.copyload416, %bb.w ], [ %.sroa.21.i.i.sroa.0.0.copyload423, %bb.bn ], [ %.sroa.21.i.i.sroa.0.0.copyload417, %bb.bk ]
  %.sroa.21.i.i.sroa.19.0 = phi i8 [ %.sroa.21.i.i.sroa.19.0.copyload434, %.loopexit148.i.i.i ], [ %.sroa.21.i.i.sroa.19.0.copyload, %bb.t ], [ %.sroa.21.i.i.sroa.19.0.copyload440, %bb.bg ], [ %.sroa.21.i.i.sroa.19.0.copyload430, %bb.w ], [ %.sroa.21.i.i.sroa.19.0.copyload437, %bb.bn ], [ %.sroa.21.i.i.sroa.19.0.copyload431, %bb.bk ]
  %.sroa.21.i.i.sroa.21.0 = phi i8 [ %.sroa.21.i.i.sroa.21.0.copyload448, %.loopexit148.i.i.i ], [ %.sroa.21.i.i.sroa.21.0.copyload, %bb.t ], [ %.sroa.21.i.i.sroa.21.0.copyload454, %bb.bg ], [ %.sroa.21.i.i.sroa.21.0.copyload444, %bb.w ], [ %.sroa.21.i.i.sroa.21.0.copyload451, %bb.bn ], [ %.sroa.21.i.i.sroa.21.0.copyload445, %bb.bk ]
  %.sroa.0.090.i.ph.i = phi i64 [ %.sroa.0.0.copyload56.i.i, %.loopexit148.i.i.i ], [ %i.dv, %bb.t ], [ %.sroa.0.0.copyload61.i.i, %bb.bg ], [ %i.dy, %bb.w ], [ %i.in, %bb.bn ], [ %.sroa.0.0.copyload52.i.i, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.25, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.21.i.i.sroa.23, i64 13, i1 false), !noalias !6720
  br label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.o, %.thread156.i
  %.sroa.24.0 = phi i8 [ %.sroa.21.i.i.sroa.21.0, %.thread156.i ], [ %switch.masked, %bb.p ], [ %switch.masked, %bb.o ]
  %.sroa.23.0 = phi i8 [ %.sroa.21.i.i.sroa.19.0, %.thread156.i ], [ %switch.masked1027, %bb.p ], [ %switch.masked1027, %bb.o ]
  %.sroa.18312.0 = phi i8 [ %.sroa.21.i.i.sroa.0.0, %.thread156.i ], [ 1, %bb.p ], [ 0, %bb.o ]
  %.sroa.12311.0 = phi i64 [ %.sroa.0.090.i.ph.i, %.thread156.i ], [ 4, %bb.p ], [ 4, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !6721
  store i8 1, ptr %i.cn, align 1, !alias.scope !6722, !noalias !6714
  invoke fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.ax, i32 noundef 1145980233, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %.noexc.i unwind label %bb.di, !noalias !6714

.noexc.i:                                         ; preds = %.thread.i
  %.val.i.i.i.i = load i64, ptr %i.aw, align 8, !range !31, !noalias !6721, !noundef !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !6721 ; 4 uses
  %i.ct = icmp eq i64 %.val.i.i.i.i, 3
  br i1 %i.ct, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i.i.i

bb.q:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !6721
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.cu = ptrtoint ptr %.val1.i.i.i.i to i64      ; 2 uses
  %i.cv = and i64 %i.cu, 3
  switch i64 %i.cv, label %default.unreachable873 [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i
    i64 1, label %bb.s
  ], !prof !32

bb.r:                                             ; preds = %bb.q
  %i.cw = icmp ult ptr %.val1.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cx = and i64 %i.cu, 1095216660480
  %i.cy = icmp ne i64 %i.cx, 1095216660480
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.assume(i1 %i.cy)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cz = getelementptr i8, ptr %.val1.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.cz, ptr %i.da, align 8, !alias.scope !6723, !noalias !6721
  store i8 3, ptr %i.av, align 8, !alias.scope !6723, !noalias !6721
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i unwind label %bb.di, !noalias !6714

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !6721
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !6721
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i.i.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6714
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs75Nu06PSjCb_3png6common4InfoECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(448) %i.bb), !noalias !6715
  br label %bb.dj

.split.i.i:                                       ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6728)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !6729, !noalias !6730, !noundef !12 ; 3 uses
  %i.dd = load i64, ptr %i.cd, align 8, !range !21, !alias.scope !6729, !noalias !6730, !noundef !12
  %i.de = sub i64 %i.dd, %i.dc
  %i.df = icmp ult i64 %i.de, 8
  br i1 %i.df, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.split.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef %i.dc, i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6731

.noexc.i.i:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i.i
  %i.dg = load i64, ptr %i.db, align 8, !alias.scope !6732, !noalias !6730, !noundef !12
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i: ; preds = %.noexc.i.i, %.split.i.i
  %.sink274.i.i.i = phi i64 [ %i.dg, %.noexc.i.i ], [ %i.dc, %.split.i.i ] ; 3 uses
  %i.dh = icmp sgt i64 %.sink274.i.i.i, -1
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !6732, !noalias !6730, !nonnull !12, !noundef !12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sink274.i.i.i
  store i64 727905341920923785, ptr %i.dk, align 1, !noalias !6733
  %i.dl = add nuw i64 %.sink274.i.i.i, 8
  store i64 %i.dl, ptr %i.db, align 8, !alias.scope !6732, !noalias !6730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !6719
  %i.dm = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  store i16 0, ptr %i.dm, align 2, !noalias !6719
  %i.dn = tail call i32 @llvm.bswap.i32(i32 %4)
  store i32 %i.dn, ptr %i.au, align 4, !alias.scope !6734, !noalias !6719
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.dp = tail call i32 @llvm.bswap.i32(i32 %5)
  store i32 %i.dp, ptr %i.do, align 4, !alias.scope !6735, !noalias !6719
  %i.dq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i8 %switch.masked1027, ptr %i.dq, align 4, !noalias !6719
  %i.dr = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  store i8 %switch.masked, ptr %i.dr, align 1, !noalias !6719
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bb, i64 424
  %i.dt = load i8, ptr %i.ds, align 8, !range !19, !alias.scope !6736, !noundef !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i8 %i.dt, ptr %i.du, align 4, !noalias !6719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !6719
  invoke fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.ax, i32 noundef 1380206665, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef 13)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6737

.noexc26.i.i:                                     ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i
  %i.dv = load i64, ptr %i.at, align 8, !range !31, !noalias !6719, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dv, -1
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.noexc26.i.i
  %.sroa.21.0..sroa_idx64.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.21.i.i.sroa.0.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx64.i.i, align 8, !noalias !6731
  %.sroa.21.i.i.sroa.19.0..sroa.21.0..sroa_idx64.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  %.sroa.21.i.i.sroa.19.0.copyload = load i8, ptr %.sroa.21.i.i.sroa.19.0..sroa.21.0..sroa_idx64.i.i.sroa_idx, align 1, !noalias !6731
  %.sroa.21.i.i.sroa.21.0..sroa.21.0..sroa_idx64.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  %.sroa.21.i.i.sroa.21.0.copyload = load i8, ptr %.sroa.21.i.i.sroa.21.0..sroa.21.0..sroa_idx64.i.i.sroa_idx, align 2, !noalias !6731
  %.sroa.21.i.i.sroa.23.0..sroa.21.0..sroa_idx64.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.21.i.i.sroa.23, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.21.i.i.sroa.23.0..sroa.21.0..sroa_idx64.i.i.sroa_idx, i64 13, i1 false), !noalias !6731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6719
  br label %.thread156.i

bb.u:                                             ; preds = %.noexc26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6719
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bb, i64 425
  %i.dx = load i8, ptr %i.dw, align 1, !range !50, !alias.scope !6736, !noundef !12 ; 2 uses
  %.not35.i.i.i = icmp eq i8 %i.dx, -1
  br i1 %.not35.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !6719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !6719
  store i8 %i.dx, ptr %i.an, align 1, !noalias !6719
  invoke fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.ax, i32 noundef 1111970419, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 1)
          to label %.noexc28.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6737

.noexc28.i.i:                                     ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !6719
  %i.dy = load i64, ptr %i.as, align 8, !range !31, !noalias !6719, !noundef !12 ; 2 uses
  %.not41.i.i.i = icmp eq i64 %i.dy, -1
  br i1 %.not41.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc28.i.i
  %.sroa.21.0..sroa_idx66.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.21.i.i.sroa.0.0.copyload416 = load i8, ptr %.sroa.21.0..sroa_idx66.i.i, align 8, !noalias !6731
  %.sroa.21.i.i.sroa.19.0..sroa.21.0..sroa_idx66.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  %.sroa.21.i.i.sroa.19.0.copyload430 = load i8, ptr %.sroa.21.i.i.sroa.19.0..sroa.21.0..sroa_idx66.i.i.sroa_idx, align 1, !noalias !6731
  %.sroa.21.i.i.sroa.21.0..sroa.21.0..sroa_idx66.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %.sroa.21.i.i.sroa.21.0.copyload444 = load i8, ptr %.sroa.21.i.i.sroa.21.0..sroa.21.0..sroa_idx66.i.i.sroa_idx, align 2, !noalias !6731
  %.sroa.21.i.i.sroa.23.0..sroa.21.0..sroa_idx66.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.21.i.i.sroa.23, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.21.i.i.sroa.23.0..sroa.21.0..sroa_idx66.i.i.sroa_idx, i64 13, i1 false), !noalias !6731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6719
  br label %.thread156.i

bb.x:                                             ; preds = %.noexc28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6719
  br label %_RNvXs1u_NtCs75Nu06PSjCb_3png6commonNtB6_20SourceChromaticitiesNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXs1u_NtCs75Nu06PSjCb_3png6commonNtB6_20SourceChromaticitiesNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %bb.x, %bb.bh, %bb.y
  br i1 %i.bz, label %bb.bj, label %bb.bi

bb.y:                                             ; preds = %bb.u
  br i1 %i.bs, label %_RNvXs1u_NtCs75Nu06PSjCb_3png6commonNtB6_20SourceChromaticitiesNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6719
  call void @llvm.experimental.noalias.scope.decl(metadata !6738)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !6739
  invoke void @_RNvNtCs75Nu06PSjCb_3png13text_metadata17encode_iso_8859_1(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 1)
          to label %.noexc33.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6731

.noexc33.i.i:                                     ; preds = %bb.z
  %i.dz = load i64, ptr %i.am, align 8, !range !30, !noalias !6739, !noundef !12 ; 7 uses
  %i.ea = icmp eq i64 %i.dz, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  br i1 %i.ea, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc33.i.i
  %i.ec = load i8, ptr %i.eb, align 8, !range !18, !noalias !6739, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !6739
  br label %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16write_iccp_chunkCsl4q486LaARA_9typst_svg.exit.thread.i.i.i

bb.ab:                                            ; preds = %.noexc33.i.i
  %.sroa.451.0.copyload.i.i.i.i = load i64, ptr %i.eb, align 8, !noalias !6739 ; 6 uses
  %.sroa.552.sroa.4.0..sroa.552.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.552.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.552.sroa.4.0..sroa.552.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6739 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !6739
  %i.ed = inttoptr i64 %.sroa.451.0.copyload.i.i.i.i to ptr ; 17 uses
  %i.ee = icmp sgt i64 %.sroa.552.sroa.4.0.copyload.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ee)
  %i.ef = add nsw i64 %.sroa.552.sroa.4.0.copyload.i.i.i.i, -80
  %or.cond.i.i.i.i = icmp ult i64 %i.ef, -79
  br i1 %or.cond.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i64 4, ptr %i.ar, align 8, !alias.scope !6738, !noalias !6719
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i8 12, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6738, !noalias !6719
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  store i8 1, ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i.i.i.i, align 1, !alias.scope !6738, !noalias !6719
  br label %bb.be

bb.ad:                                            ; preds = %bb.ab
  %i.eg = mul i64 %i.bq, 3
  %i.eh = lshr i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, %.sroa.552.sroa.4.0.copyload.i.i.i.i ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  store i64 0, ptr %i.el, align 8, !noalias !6739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !6740
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ai, i64 0, ptr nonnull inttoptr (i64 1 to ptr), i64 noundef %i.ej, i64 noundef range(i64 1, 17) 1, i64 noundef range(i64 1, 193) 1), !noalias !6740
  %i.em = load i64, ptr %i.ai, align 8, !range !42, !noalias !6740, !noundef !12
  %i.en = trunc nuw i64 %i.em to i1
  br i1 %i.en, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterhEINtNtNtBa_5array4iter8IntoIterhKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterhEINtNtNtBa_5array4iter8IntoIterhKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !6740, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6740
  store ptr %i.ep, ptr %i.ek, align 8, !noalias !6739
  store i64 %i.ej, ptr %i.ak, align 8, !noalias !6739
  %i.eq = icmp ne i64 %.sroa.451.0.copyload.i.i.i.i, 0
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sroa.552.sroa.4.0.copyload.i.i.i.i ; 2 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub nuw i64 %i.es, %.sroa.451.0.copyload.i.i.i.i ; 2 uses
  %i.eu = add nuw i64 %i.et, 2                    ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.et, -3
  br i1 %.not.i.i.i.i.i, label %bb.af, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterhEINtNtNtBa_5array4iter8IntoIterhKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i, !prof !6741

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterhEINtNtNtBa_5array4iter8IntoIterhKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterhEINtNtNtBa_5array4iter8IntoIterhKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  %i.ev = icmp ugt i64 %i.eu, %i.ej
  br i1 %i.ev, label %bb.ae, label %iter.check, !prof !6742

bb.ae:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterhEINtNtNtBa_5array4iter8IntoIterhKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef 0, i64 noundef %i.eu, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge.i.i.i.i unwind label %bb.ai, !noalias !6739

._crit_edge.i.i.i.i:                              ; preds = %bb.ae
  %.pre.i.i.i.i = load ptr, ptr %i.ek, align 8, !noalias !6739
  %.pre39.i.i.i.i = load i64, ptr %i.el, align 8, !noalias !6739
  br label %iter.check

bb.af:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterhEINtNtNtBa_5array4iter8IntoIterhKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #36
          to label %bb.ah unwind label %bb.ai, !noalias !6743
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtCsbMQOdixSu6G_5image6codecs3pngINtB5_10PngEncoderQINtNtCs1xwejQucwHj_5alloc3vec3VechEE12encode_innerCsl4q486LaARA_9typst_svg:bb.a
  %i.ajb = sub nuw nsw i64 %.sroa.6532.0669.i, %..i.i452.i ; 2 uses
  %i.ajc = call i32 @llvm.bswap.i32(i32 %i.aiz)
  store i32 %i.ajc, ptr %i.aiv, align 1, !alias.scope !6977, !noalias !6792
  %.not312.i = icmp ugt i64 %..i.i452.i, %i.aiw
  br i1 %.not312.i, label %.invoke.i, label %bb.jv, !prof !6911

._crit_edge672.i:                                 ; preds = %bb.jz, %.split.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6978)
  %.val.i459.i = load i64, ptr %i.f, align 8, !alias.scope !6978, !noalias !6794 ; 2 uses
  %i.ajd = icmp eq i64 %.val.i459.i, 0
  br i1 %i.ajd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit461.i, label %bb.ju

bb.ju:                                            ; preds = %._crit_edge672.i
  %i.aje = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i460.i = load ptr, ptr %i.aje, align 8, !alias.scope !6978, !noalias !6794, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i460.i, i64 noundef %.val.i459.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6979
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit461.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit461.i: ; preds = %bb.ju, %._crit_edge672.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6794
  br label %bb.jg

.invoke.i:                                        ; preds = %.lr.ph671.split.i, %.lr.ph671.i
  %i.ajf = phi i64 [ 4, %.lr.ph671.i ], [ %..i.i452.i, %.lr.ph671.split.i ]
  %i.ajg = phi i64 [ %i.ait, %.lr.ph671.i ], [ %i.aiw, %.lr.ph671.split.i ]
  %i.ajh = phi ptr [ @217, %.lr.ph671.i ], [ @218, %.lr.ph671.split.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ajf, i64 noundef %i.ajg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajh) #36
          to label %.cont.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6792

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.jv:                                            ; preds = %.lr.ph671.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aix, ptr nonnull readonly align 1 %.sroa.0531.0670.i, i64 range(i64 0, -9223372036854775808) %..i.i452.i, i1 false), !alias.scope !6980, !noalias !6792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6794
  %i.aji = add nuw nsw i64 %..i.i452.i, 4
  invoke fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ba, i32 noundef 1413571686, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiv, i64 noundef %i.aji)
          to label %bb.jw unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6792

bb.jw:                                            ; preds = %bb.jv
  %i.ajj = load i64, ptr %i.e, align 8, !range !31, !noalias !6794, !noundef !12 ; 2 uses
  %.not314.i = icmp eq i64 %i.ajj, -1
  br i1 %.not314.i, label %bb.jz, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %.sroa.24325.0..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ajk = load <2 x i64>, ptr %.sroa.24325.0..sroa_idx328, align 8, !noalias !6973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6794
  call void @llvm.experimental.noalias.scope.decl(metadata !6981)
  %.val.i463.i = load i64, ptr %i.f, align 8, !alias.scope !6981, !noalias !6794 ; 2 uses
  %i.ajl = icmp eq i64 %.val.i463.i, 0
  br i1 %i.ajl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit465.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aiv, i64 noundef %.val.i463.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6982
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit465.i

bb.jz:                                            ; preds = %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6794
  %i.ajm = load i32, ptr %i.mc, align 4, !alias.scope !6789, !noundef !12
  %i.ajn = add i32 %i.ajm, 1                      ; 2 uses
  store i32 %i.ajn, ptr %i.mc, align 4, !alias.scope !6789
  %i.ajo = icmp eq i64 %i.ajb, 0
  br i1 %i.ajo, label %._crit_edge672.i, label %.lr.ph671.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit465.i: ; preds = %bb.jy, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6794
  br label %bb.jh

bb.ka:                                            ; preds = %bb.jk
  %i.ajp = load i64, ptr %i.i, align 8, !range !31, !noalias !6794, !noundef !12 ; 2 uses
  %.not318.i = icmp eq i64 %i.ajp, -1
  br i1 %.not318.i, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %.sroa.24325.0..sroa_idx332 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ajq = load <2 x i64>, ptr %.sroa.24325.0..sroa_idx332, align 8, !noalias !6973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6794
  br label %bb.jh

bb.kc:                                            ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6794
  br label %bb.jg

bb.kd:                                            ; preds = %bb.jg
  %i.ajr = load i32, ptr %.sroa.6195.sroa.4.0..sroa.6195.0..sroa_idx.sroa_idx, align 4, !alias.scope !6789, !noundef !12
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ba, i64 68
  %i.ajt = load i32, ptr %i.ajs, align 4, !alias.scope !6789, !noundef !12
  %.not319.i = icmp ugt i32 %i.ajr, %i.ajt
  br i1 %.not319.i, label %bb.ke, label %bb.kg

bb.ke:                                            ; preds = %bb.kg, %bb.kd, %bb.jg
  %i.aju = icmp eq i64 %.sroa.0477.0.i, 0
  br i1 %i.aju, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %.sroa.0477.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6983
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i

bb.kg:                                            ; preds = %bb.kd
  store i8 2, ptr %i.md, align 1, !alias.scope !6789
  br label %bb.ke

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i: ; preds = %bb.kf, %bb.ke
  br i1 %i.mi, label %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16write_image_dataCsl4q486LaARA_9typst_svg.exit, label %bb.kh

bb.kh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mm, i64 noundef %i.mg, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6984
  br label %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16write_image_dataCsl4q486LaARA_9typst_svg.exit

bb.ki:                                            ; preds = %_RNvMNtNtCs2N41nl8cATr_6flate24zlib5writeINtB2_11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEE6finishCsl4q486LaARA_9typst_svg.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5529.0.i) ]
  %i.ajv = ptrtoint ptr %.sroa.5529.0.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6794
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahc, i64 noundef %i.mg, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6985
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i

bb.kj:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6794
  store i8 %i.ahj, ptr %i.l, align 1, !noalias !6794
  %i.ajw = invoke fastcc noundef ptr @_RNvYINtNtNtCs2N41nl8cATr_6flate24zlib5write11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1)
          to label %bb.kk unwind label %.loopexit.split-lp624.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6792 ; 2 uses

bb.kk:                                            ; preds = %bb.kj
  %.not294.i = icmp eq ptr %i.ajw, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6794
  br i1 %.not294.i, label %bb.kl, label %.loopexit

bb.kl:                                            ; preds = %bb.kk
  %i.ajx = invoke fastcc noundef ptr @_RNvYINtNtNtCs2N41nl8cATr_6flate24zlib5write11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ahc, i64 noundef %i.mg)
          to label %bb.km unwind label %.loopexit.split-lp624.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6792 ; 2 uses

bb.km:                                            ; preds = %bb.kl
  %.not295.i = icmp eq ptr %i.ajx, null
  br i1 %.not295.i, label %.preheader622.i, label %.loopexit

.loopexit:                                        ; preds = %bb.km, %bb.kk
  %.sroa.24325.sroa.22.sroa.0.0.in.in.in = phi ptr [ %i.ajw, %bb.kk ], [ %i.ajx, %bb.km ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs2N41nl8cATr_6flate24zlib5write11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n)
          to label %bb.kn unwind label %.body437.i, !noalias !6792

bb.kn:                                            ; preds = %.loopexit
  %.sroa.24325.sroa.22.sroa.0.0.in.in = ptrtoint ptr %.sroa.24325.sroa.22.sroa.0.0.in.in.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6794
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahc, i64 noundef %i.mg, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6986
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i

.loopexit.split-lp624.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kl, %bb.kj, %bb.io, %bb.in
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs2N41nl8cATr_6flate24zlib5write11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #32
          to label %.body437.thread.i unwind label %bb.fb, !noalias !6792

bb.ko:                                            ; preds = %bb.dr, %bb.dm, %bb.kp
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  br label %.body259

.body259:                                         ; preds = %.body.i253, %bb.dt, %.body437.thread.i, %bb.ko
  %eh.lpad-body260 = phi { ptr, i32 } [ %i.ajy, %bb.ko ], [ %.pn322.i, %.body.i253 ], [ %.pn322593.i, %bb.dt ], [ %.pn.i, %.body437.thread.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ba) #32
          to label %.critedge231 unwind label %bb.kx

bb.kp:                                            ; preds = %bb.dl, %bb.dk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i, %bb.eu, %bb.ds
  %.sroa.24325.sroa.22.sroa.0.6.ph = phi i64 [ 0, %bb.dl ], [ 0, %bb.dk ], [ %.sroa.24325.sroa.22.0.extract.shift392, %bb.ds ], [ %.sroa.24325.sroa.22.sroa.0.1.in, %bb.eu ], [ %.sroa.24325.sroa.22.sroa.0.1.in, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i ]
  %.sroa.24325.sroa.0.6.ph = phi i64 [ 7, %bb.dl ], [ 3, %bb.dk ], [ %i.mh, %bb.ds ], [ %.sroa.24325.sroa.22.sroa.0.1.in.in, %bb.eu ], [ %.sroa.24325.sroa.22.sroa.0.1.in.in, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i ]
  %.sroa.38.2.ph = phi i64 [ undef, %bb.dl ], [ undef, %bb.dk ], [ %3, %bb.ds ], [ %.sroa.38.0, %bb.eu ], [ %.sroa.38.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i ]
  %.sroa.0319.6.ph = phi i64 [ 4, %bb.dl ], [ 4, %bb.dk ], [ 0, %bb.ds ], [ %.sroa.0319.1, %bb.eu ], [ %.sroa.0319.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 %.sroa.0319.6.ph, ptr %i.ay, align 8
  %.sroa.24325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.24325.sroa.22.0.insert.shift = shl nuw i64 %.sroa.24325.sroa.22.sroa.0.6.ph, 8
  %.sroa.24325.sroa.0.0.insert.ext = and i64 %.sroa.24325.sroa.0.6.ph, 255
  %.sroa.24325.sroa.0.0.insert.insert = or disjoint i64 %.sroa.24325.sroa.0.0.insert.ext, %.sroa.24325.sroa.22.0.insert.shift
  store i64 %.sroa.24325.sroa.0.0.insert.insert, ptr %.sroa.24325.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %.sroa.38.2.ph, ptr %.sroa.38.0..sroa_idx, align 8
  %i.ajz = invoke noundef nonnull ptr @_RNvXs2_NtCs75Nu06PSjCb_3png7encoderNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBD_7convert4FromNtB5_13EncodingErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ay)
          to label %bb.kv unwind label %bb.ko

_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16write_image_dataCsl4q486LaARA_9typst_svg.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i, %bb.kh
  store i8 -1, ptr %0, align 8
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kv, %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16write_image_dataCsl4q486LaARA_9typst_svg.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !6987)
  call void @llvm.experimental.noalias.scope.decl(metadata !6988)
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ba, i64 77 ; 2 uses
  %i.akb = load i8, ptr %i.aka, align 1, !range !19, !alias.scope !6989, !noundef !12
  %i.akc = trunc nuw i8 %i.akb to i1
  br i1 %i.akc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6989
  store i8 1, ptr %i.aka, align 1, !alias.scope !6989
  invoke fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.ba, i32 noundef 1145980233, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %.noexc262 unwind label %bb.h

.noexc262:                                        ; preds = %bb.kr
  %.val.i.i = load i64, ptr %i.b, align 8, !range !31, !noalias !6989, !noundef !12
  %i.akd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i = load ptr, ptr %i.akd, align 8, !noalias !6989 ; 4 uses
  %i.ake = icmp eq i64 %.val.i.i, 3
  br i1 %i.ake, label %bb.ks, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i

bb.ks:                                            ; preds = %.noexc262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6989
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.akf = ptrtoint ptr %.val1.i.i to i64         ; 2 uses
  %i.akg = and i64 %i.akf, 3
  switch i64 %i.akg, label %default.unreachable873 [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i
    i64 3, label %bb.kt
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i
    i64 1, label %bb.ku
  ], !prof !32

bb.kt:                                            ; preds = %bb.ks
  %i.akh = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aki = and i64 %i.akf, 1095216660480
  %i.akj = icmp ne i64 %i.aki, 1095216660480
  call void @llvm.assume(i1 %i.akh)
  call void @llvm.assume(i1 %i.akj)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i

bb.ku:                                            ; preds = %bb.ks
  %i.akk = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.akk) ]
  %i.akl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.akk, ptr %i.akl, align 8, !alias.scope !6990, !noalias !6989
  store i8 3, ptr %i.a, align 8, !alias.scope !6990, !noalias !6989
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.akl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %bb.ku, %bb.kt, %bb.ks, %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6989
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i, %.noexc262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6989
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit

bb.kv:                                            ; preds = %bb.kp
  store i8 9, ptr %0, align 8
  %.sroa.4211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ajz, ptr %.sroa.4211.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.kq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.experimental.noalias.scope.decl(metadata !6991)
  %.val.i264 = load i64, ptr %1, align 8, !alias.scope !6991 ; 2 uses
  %i.akm = icmp eq i64 %.val.i264, 0
  br i1 %i.akm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit, label %bb.kw

bb.kw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit
  %i.akn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.akn, align 8, !alias.scope !6991, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i264, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6991
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit: ; preds = %bb.kw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit
  %.val.i268 = load i64, ptr %i.bv, align 8, !alias.scope !6992 ; 2 uses
  %i.ako = icmp eq i64 %.val.i268, 0
  br i1 %i.ako, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit270, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit270.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit270.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit273
  %.val.i301.sink = phi i64 [ %.val.i301, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit273 ], [ %.val.i268, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit ]
  %i.akp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i302 = load ptr, ptr %i.akp, align 8, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i302, i64 noundef %.val.i301.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !12
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit270

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit270: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit270.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit273, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit
  ret void

bb.kx:                                            ; preds = %.body259
  %i.akq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit297: ; preds = %bb.lc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit294
  resume { ptr, i32 } %.pn460

bb.ky:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.553.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.555.sroa.7, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.553.sroa.9.sroa.12, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.555.sroa.9.sroa.11, i64 29, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555.sroa.9.sroa.11)
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4206.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.553.sroa.7, i64 7, i1 false)
  %.sroa.6208.sroa.9.0..sroa.6208.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.6208.sroa.9.0..sroa.6208.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.553.sroa.9.sroa.12, i64 29, i1 false)
  store i8 9, ptr %0, align 8
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lp, ptr %.sroa.5207.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.553.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.553.sroa.9.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !6993)
  %.val.i271 = load i64, ptr %1, align 8, !alias.scope !6993 ; 2 uses
  %i.akr = icmp eq i64 %.val.i271, 0
  br i1 %i.akr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit273, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aks = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i272 = load ptr, ptr %i.aks, align 8, !alias.scope !6993, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i272, i64 noundef %.val.i271, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6993
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit273

.critedge231:                                     ; preds = %bb.h, %.body.i, %.body259
  %.pn460 = phi { ptr, i32 } [ %eh.lpad-body260, %.body259 ], [ %eh.lpad-body.i, %.body.i ], [ %i.cg, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6994)
  %.val.i292 = load i64, ptr %1, align 8, !alias.scope !6994 ; 2 uses
  %i.akt = icmp eq i64 %.val.i292, 0
  br i1 %i.akt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit294, label %bb.lb

bb.lb:                                            ; preds = %.critedge231
  %i.aku = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i293 = load ptr, ptr %i.aku, align 8, !alias.scope !6994, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i293, i64 noundef %.val.i292, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6994
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit294

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit294: ; preds = %bb.lb, %.critedge231
  call void @llvm.experimental.noalias.scope.decl(metadata !6995)
  %.val.i295 = load i64, ptr %i.bv, align 8, !alias.scope !6995 ; 2 uses
  %i.akv = icmp eq i64 %.val.i295, 0
  br i1 %i.akv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit297, label %bb.lc

bb.lc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit294
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i296 = load ptr, ptr %i.akw, align 8, !alias.scope !6995, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i296, i64 noundef %.val.i295, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6995
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit297

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit273: ; preds = %bb.la, %bb.kz
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i301 = load i64, ptr %i.akx, align 8, !alias.scope !6996 ; 2 uses
  %i.aky = icmp eq i64 %.val.i301, 0
  br i1 %i.aky, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit270, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit270.sink.split
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1j_7memoize10CacheEntryINtNvNtB1j_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEE8grow_oneCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !21, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6999)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6999
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !6999
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 64), !noalias !6999
  %i.f = load i64, ptr %i.a, align 8, !range !42, !noalias !6999, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !43, !noalias !6999, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !6999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6999
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !6999, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6999
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !6999
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !6999
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1j_7memoize10CacheEntryINtNvNtB1j_5inputs_1__9MultiCalluENtNtCsl4q486LaARA_9typst_svg5image8WebImageEEEE8grow_oneB2X_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !21, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7002)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7002
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7002
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 72), !noalias !7002
  %i.f = load i64, ptr %i.a, align 8, !range !42, !noalias !7002, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !43, !noalias !7002, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7002
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7002, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7002
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7002
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7002
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEEE8grow_oneB20_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !21, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7005)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7005
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7005
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 192), !noalias !7005
  %i.f = load i64, ptr %i.a, align 8, !range !42, !noalias !7005, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !43, !noalias !7005, !noundef !12
end_hunk_2
