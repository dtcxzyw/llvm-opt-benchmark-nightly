Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBK_5inputs_1__9MultiCalluEEEECsl4q486LaARA_9typst_svg:bb.a

bb.c:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i
  %i.p = sub nuw nsw i64 -32, %i.i
  %i.q = getelementptr inbounds i8, ptr %.val2.i.i.i.i.i, i64 %i.p
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !noalias !2143
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs_1__9MultiCalluEEECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs_1__9MultiCalluEEECsl4q486LaARA_9typst_svg.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 1095582055, 1951945851) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.b, align 4
  %i.c = trunc i64 %4 to i32
  %.val.i.i = load ptr, ptr %1, align 8, !noalias !2208, !nonnull !12, !align !23, !noundef !12 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2212)
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 10 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2213, !noalias !2214, !noundef !12 ; 3 uses
  %i.f = load i64, ptr %.val.i.i, align 8, !range !21, !alias.scope !2213, !noalias !2214, !noundef !12
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ult i64 %i.g, 4
  br i1 %i.h, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i, label %_RNvXs1_NtCs75Nu06PSjCb_3png6traitsQQINtNtCs1xwejQucwHj_5alloc3vec3VechEINtB5_13WriteBytesExtmE8write_beCsl4q486LaARA_9typst_svg.exit, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.e, i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef 1, i64 noundef 1), !noalias !2214
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !2215, !noalias !2214, !noundef !12
  br label %_RNvXs1_NtCs75Nu06PSjCb_3png6traitsQQINtNtCs1xwejQucwHj_5alloc3vec3VechEINtB5_13WriteBytesExtmE8write_beCsl4q486LaARA_9typst_svg.exit

_RNvXs1_NtCs75Nu06PSjCb_3png6traitsQQINtNtCs1xwejQucwHj_5alloc3vec3VechEINtB5_13WriteBytesExtmE8write_beCsl4q486LaARA_9typst_svg.exit: ; preds = %bb.a, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i
  %.sink1.i = phi i64 [ %i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.j = icmp sgt i64 %.sink1.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2215, !noalias !2214, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sink1.i
  store i32 %i.k, ptr %i.n, align 1, !noalias !2215
  %i.o = add nuw i64 %.sink1.i, 4                 ; 4 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !2215, !noalias !2214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  %i.p = load i64, ptr %.val.i.i, align 8, !range !21, !alias.scope !2220, !noalias !2221, !noundef !12
  %i.q = sub i64 %i.p, %i.o
  %i.r = icmp ult i64 %i.q, 4
  br i1 %i.r, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs75Nu06PSjCb_3png6traitsQQINtNtCs1xwejQucwHj_5alloc3vec3VechEINtB5_13WriteBytesExtmE8write_beCsl4q486LaARA_9typst_svg.exit
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.o, i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef 1, i64 noundef 1), !noalias !2221
  %i.s = load i64, ptr %i.d, align 8, !alias.scope !2222, !noalias !2221, !noundef !12
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit: ; preds = %_RNvXs1_NtCs75Nu06PSjCb_3png6traitsQQINtNtCs1xwejQucwHj_5alloc3vec3VechEINtB5_13WriteBytesExtmE8write_beCsl4q486LaARA_9typst_svg.exit, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i
  %.sink39 = phi i64 [ %i.s, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i ], [ %i.o, %_RNvXs1_NtCs75Nu06PSjCb_3png6traitsQQINtNtCs1xwejQucwHj_5alloc3vec3VechEINtB5_13WriteBytesExtmE8write_beCsl4q486LaARA_9typst_svg.exit ] ; 3 uses
  %i.t = icmp sgt i64 %.sink39, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = load ptr, ptr %i.l, align 8, !alias.scope !2222, !noalias !2221, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink39
  store i32 %2, ptr %i.v, align 1, !noalias !2222
  %i.w = add nuw i64 %.sink39, 4                  ; 6 uses
  store i64 %i.w, ptr %i.d, align 8, !alias.scope !2222, !noalias !2221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  %i.x = load i64, ptr %.val.i.i, align 8, !range !21, !alias.scope !2227, !noalias !2228, !noundef !12
  %i.y = sub i64 %i.x, %i.w
  %i.z = icmp ugt i64 %4, %i.y
  br i1 %i.z, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i33, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i32, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i33: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.w, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef 1, i64 noundef 1), !noalias !2228
  %i.aa = load i64, ptr %i.d, align 8, !alias.scope !2229, !noalias !2228, !noundef !12 ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  br label %bb.b

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i32: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit
  %i.ac = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.ac)
  %.not.i.i.i.i.i.i = icmp samesign eq i64 %4, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit34, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i32, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i33
  %i.ad = phi i64 [ %i.aa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i33 ], [ %i.w, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i32 ] ; 2 uses
  %i.ae = load ptr, ptr %i.l, align 8, !alias.scope !2229, !noalias !2228, !nonnull !12, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !noalias !2229
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit34

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit34: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i32, %bb.b
  %i.ag = phi i64 [ %i.ad, %bb.b ], [ %i.w, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i32 ]
  %i.ah = add nuw i64 %i.ag, %4
  store i64 %i.ah, ptr %i.d, align 8, !alias.scope !2229, !noalias !2228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCshiswoHvxWSh_9crc32fastNtB2_6Hasher3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a)
  call void @_RNvMCshiswoHvxWSh_9crc32fastNtB2_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4)
  call void @_RNvMCshiswoHvxWSh_9crc32fastNtB2_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %i.ak = load i64, ptr %i.d, align 8, !alias.scope !2234, !noalias !2235, !noundef !12 ; 3 uses
  %i.al = load i64, ptr %.val.i.i, align 8, !range !21, !alias.scope !2234, !noalias !2235, !noundef !12
  %i.am = sub i64 %i.al, %i.ak
  %i.an = icmp ult i64 %i.am, 4
  br i1 %i.an, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i37, label %_RNvXs1_NtCs75Nu06PSjCb_3png6traitsQQINtNtCs1xwejQucwHj_5alloc3vec3VechEINtB5_13WriteBytesExtmE8write_beCsl4q486LaARA_9typst_svg.exit38, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i37: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit34
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.ak, i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef 1, i64 noundef 1), !noalias !2235
  %i.ao = load i64, ptr %i.d, align 8, !alias.scope !2236, !noalias !2235, !noundef !12
  br label %_RNvXs1_NtCs75Nu06PSjCb_3png6traitsQQINtNtCs1xwejQucwHj_5alloc3vec3VechEINtB5_13WriteBytesExtmE8write_beCsl4q486LaARA_9typst_svg.exit38

_RNvXs1_NtCs75Nu06PSjCb_3png6traitsQQINtNtCs1xwejQucwHj_5alloc3vec3VechEINtB5_13WriteBytesExtmE8write_beCsl4q486LaARA_9typst_svg.exit38: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit34, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i37
  %.sink1.i36 = phi i64 [ %i.ao, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i37 ], [ %i.ak, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit34 ] ; 3 uses
  %i.ap = icmp sgt i64 %.sink1.i36, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.ar = load ptr, ptr %i.l, align 8, !alias.scope !2236, !noalias !2235, !nonnull !12, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink1.i36
  store i32 %i.aq, ptr %i.as, align 1, !noalias !2236
  %i.at = add nuw i64 %.sink1.i36, 4
  store i64 %i.at, ptr %i.d, align 8, !alias.scope !2236, !noalias !2235
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsl4q486LaARA_9typst_svg(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsl4q486LaARA_9typst_svg(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @35, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 49) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !21, !alias.scope !2239, !noundef !12 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2239
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !2239
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 193) %4), !noalias !2239
  %i.h = load i64, ptr %i.a, align 8, !range !42, !noalias !2239, !noundef !12
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !43, !noalias !2239, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !2239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2239
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #36
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !2239, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2239
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !2239
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !2239
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs1_Csl4q486LaARA_9typst_svgNtB6_7DedupIdNtNtB6_5write10SvgDisplay3fmtNtBJ_12SvgFormatterEB6_(i128 %.0.val, i32 %.16.val, ptr nofree captures(none) %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 14 uses
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4
  %i.d = icmp samesign ult i32 %.16.val, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %.16.val, 2048
  %i.f = trunc i32 %.16.val to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %.16.val, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %.16.val, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %.16.val, 18
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = or disjoint i8 %i.r, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = trunc nuw nsw i32 %.16.val to i8
  store i8 %i.t, ptr %.sroa.0.i, align 4, !alias.scope !2268
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.d:                                             ; preds = %bb.b
  %i.u = or disjoint i8 %i.j, -64
  store i8 %i.u, ptr %.sroa.0.i, align 4, !alias.scope !2268
  %.sroa.0.i.1.i.1.i.1..sroa_idx27 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.h, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx27, align 1, !alias.scope !2268
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %.16.val, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.n, -32
  store i8 %i.w, ptr %.sroa.0.i, align 4, !alias.scope !2268
  %.sroa.0.i.1.i.1.i.1..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.l, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx26, align 1, !alias.scope !2268
  %.sroa.0.i.2.i.2.i.2..sroa_idx28 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  store i8 %i.h, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx28, align 2, !alias.scope !2268
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.s, ptr %.sroa.0.i, align 4, !alias.scope !2268
  %.sroa.0.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.p, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !2268
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  store i8 %i.l, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !2268
  %.sroa.0.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 3
  store i8 %i.h, ptr %.sroa.0.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !2268
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16 ; 6 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2270, !noalias !2271, !noundef !12 ; 3 uses
  %i.z = load i64, ptr %.0.val1, align 8, !range !21, !alias.scope !2270, !noalias !2271, !noundef !12
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = icmp ugt i64 %.sroa.0.05.i.i, %i.aa
  br i1 %i.ab, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5array4iter8IntoIterhKj10_EENtNtNtB8_6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val1, i64 noundef %i.y, i64 noundef %.sroa.0.05.i.i, i64 noundef 1, i64 noundef 1), !noalias !2271
  %i.ac = load i64, ptr %i.x, align 8, !alias.scope !2269, !noalias !2271, !noundef !12
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5array4iter8IntoIterhKj10_EENtNtNtB8_6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5array4iter8IntoIterhKj10_EENtNtNtB8_6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2272
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #33, !noalias !2272
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsl4q486LaARA_9typst_svg.exit: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5array4iter8IntoIterhKj10_EENtNtNtB8_6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !2272, !nonnull !12, !noundef !12 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !2272, !noundef !12 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %i.aj = ptrtoint ptr %i.ai to i64
  %invariant.op.i.i = sub i64 %i.ah, %i.aj
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsl4q486LaARA_9typst_svg.exit
  %.reass5.i.i = phi i64 [ %.reass.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsl4q486LaARA_9typst_svg.exit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %.reass5.i.i ; 5 uses
  %i.al = icmp samesign eq i64 %.reass5.i.i, %i.ah
  br i1 %i.al, label %_RINvMNtCs3oUPovFnLWP_4core3stre18trim_start_matchescECsl4q486LaARA_9typst_svg.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.ak, align 1, !alias.scope !2273, !noalias !2274, !noundef !12 ; 5 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit12.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit12.i.i.i.i: ; preds = %bb.j
  %i.ap = and i8 %i.an, 31
  %i.aq = zext nneg i8 %i.ap to i32               ; 3 uses
  %i.ar = add nuw nsw i64 %.reass5.i.i, 1
  %i.as = icmp samesign ne i64 %i.ar, %i.ah
  call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.am, align 1, !alias.scope !2273, !noalias !2274, !noundef !12
  %i.av = shl nuw nsw i32 %i.aq, 6
  %i.aw = and i8 %i.au, 63
  %i.ax = zext nneg i8 %i.aw to i32               ; 2 uses
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = icmp samesign ugt i8 %i.an, -33
  br i1 %i.az, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit14.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ba = zext nneg i8 %i.an to i32
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit12.i.i.i.i
  %i.bb = add nuw nsw i64 %.reass5.i.i, 2
  %i.bc = icmp samesign ne i64 %i.bb, %i.ah
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 3 ; 2 uses
  %i.be = load i8, ptr %i.at, align 1, !alias.scope !2273, !noalias !2274, !noundef !12
  %i.bf = shl nuw nsw i32 %i.ax, 6
  %i.bg = and i8 %i.be, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh            ; 2 uses
  %i.bj = shl nuw nsw i32 %i.aq, 12
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = icmp samesign ugt i8 %i.an, -17
  br i1 %i.bl, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit16.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit14.i.i.i.i
  %i.bm = add nuw nsw i64 %.reass5.i.i, 3
  %i.bn = icmp samesign ne i64 %i.bm, %i.ah
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.bp = load i8, ptr %i.bd, align 1, !alias.scope !2273, !noalias !2274, !noundef !12
  %i.bq = shl nuw nsw i32 %i.aq, 18
  %i.br = and i32 %i.bq, 1835008
  %i.bs = shl nuw nsw i32 %i.bi, 6
  %i.bt = and i8 %i.bp, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = or disjoint i32 %i.bv, %i.br
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit16.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit14.i.i.i.i, %bb.k, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit12.i.i.i.i
  %.sroa.0.0.ph.i.i.i = phi ptr [ %i.at, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit12.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit14.i.i.i.i ], [ %i.bo, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit16.i.i.i.i ], [ %i.am, %bb.k ]
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.ay, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit12.i.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit14.i.i.i.i ], [ %i.bw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit16.i.i.i.i ], [ %i.ba, %bb.k ] ; 2 uses
  %i.bx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  call void @llvm.assume(i1 %i.bx)
  %i.by = ptrtoint ptr %.sroa.0.0.ph.i.i.i to i64
  %.reass.i.i = add i64 %invariant.op.i.i, %i.by
  %.not.i.i = icmp eq i32 %.sroa.4.0.i.ph.i.i.i, 48
  br i1 %.not.i.i, label %bb.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre18trim_start_matchescECsl4q486LaARA_9typst_svg.exit

_RINvMNtCs3oUPovFnLWP_4core3stre18trim_start_matchescECsl4q486LaARA_9typst_svg.exit: ; preds = %bb.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i
  %.sroa.0.0.i = phi i64 [ %.reass5.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i ], [ %i.ah, %bb.i ] ; 3 uses
  %i.bz = sub nuw i64 %i.ah, %.sroa.0.0.i         ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.cb = load i64, ptr %i.x, align 8, !alias.scope !2276, !noalias !2277, !noundef !12 ; 5 uses
  %i.cc = load i64, ptr %.0.val1, align 8, !range !21, !alias.scope !2276, !noalias !2277, !noundef !12
  %i.cd = sub i64 %i.cc, %i.cb
  %i.ce = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre18trim_start_matchescECsl4q486LaARA_9typst_svg.exit
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val1, i64 noundef %i.cb, i64 noundef %i.bz, i64 noundef 1, i64 noundef 1), !noalias !2277
  %i.cf = load i64, ptr %i.x, align 8, !alias.scope !2275, !noalias !2277, !noundef !12 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  br label %bb.l

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre18trim_start_matchescECsl4q486LaARA_9typst_svg.exit
  %i.ch = icmp sgt i64 %i.cb, -1
  call void @llvm.assume(i1 %i.ch)
  %.not.i.i22 = icmp eq i64 %i.ah, %.sroa.0.0.i
  br i1 %.not.i.i22, label %_RNvXs3_NtCsl4q486LaARA_9typst_svg5writeNtB5_12SvgFormatterNtB5_8SvgWrite8push_str.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i
  %i.ci = phi i64 [ %i.cf, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i ], [ %i.cb, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i ] ; 2 uses
  %i.cj = load ptr, ptr %i.co, align 8, !alias.scope !2275, !noalias !2277, !nonnull !12, !noundef !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 1 %i.ca, i64 %i.bz, i1 false), !noalias !2278
  br label %_RNvXs3_NtCsl4q486LaARA_9typst_svg5writeNtB5_12SvgFormatterNtB5_8SvgWrite8push_str.exit

_RNvXs3_NtCsl4q486LaARA_9typst_svg5writeNtB5_12SvgFormatterNtB5_8SvgWrite8push_str.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i, %bb.l
  %i.cl = phi i64 [ %i.ci, %bb.l ], [ %i.cb, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i ]
  %i.cm = add i64 %i.cl, %i.bz
  store i64 %i.cm, ptr %i.x, align 8, !alias.scope !2275, !noalias !2277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5array4iter8IntoIterhKj10_EENtNtNtB8_6traits8iterator8Iterator4nextCsl4q486LaARA_9typst_svg.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i
  %.sink10.i = phi i64 [ %i.ac, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i ], [ %i.y, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i ] ; 3 uses
  %i.cn = icmp sgt i64 %.sink10.i, -1
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !2269, !noalias !2271, !nonnull !12, !noundef !12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sink10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cq, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0.i, i64 %.sroa.0.05.i.i, i1 false), !noalias !2279
  %i.cr = add nuw i64 %.sink10.i, %.sroa.0.05.i.i
  store i64 %i.cr, ptr %i.x, align 8, !alias.scope !2269, !noalias !2271
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cs = tail call i128 @llvm.bswap.i128(i128 %.0.val)
  %0 = bitcast i128 %i.cs to <16 x i8>            ; 3 uses
  %i.ct = lshr <16 x i8> %0, splat (i8 4)
  %1 = shufflevector <16 x i8> %0, <16 x i8> poison, <32 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %2 = and <32 x i8> %1, <i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15>
  %i.cu = and <16 x i8> %0, splat (i8 15)
  %3 = shufflevector <16 x i8> %i.ct, <16 x i8> %i.cu, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %4 = icmp ult <32 x i8> %2, <i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10>
  %5 = or disjoint <32 x i8> %3, splat (i8 48)
  %6 = add nuw nsw <32 x i8> %3, splat (i8 55)
  %7 = select <32 x i1> %4, <32 x i8> %5, <32 x i8> %6
  store <32 x i8> %7, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 32)
  call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  %i.cv = load i64, ptr %i.b, align 8, !range !42, !alias.scope !2272, !noundef !12
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.h, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsl4q486LaARA_9typst_svg.exit, !prof !13
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp slt i64 %1, 0
  br i1 %.not.i, label %bb.e, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl4q486LaARA_9typst_svg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2282
  %i.b = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %1, i64 noundef range(i64 1, 17) 1) #31, !noalias !2282 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = ptrtoint ptr %i.b to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl4q486LaARA_9typst_svg.exit

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %1) #36
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl4q486LaARA_9typst_svg.exit: ; preds = %bb.d, %bb.b
  %.sroa.10.0 = phi i64 [ %i.d, %bb.d ], [ 1, %bb.b ]
  %i.e = inttoptr i64 %.sroa.10.0 to ptr
  store i64 %1, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 10 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !12, !align !23, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2320, !noalias !2321, !nonnull !12, !noundef !12 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2322, !noalias !2323, !nonnull !12, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2880
  %i.j = load ptr, ptr %i.i, align 8, !noalias !2324, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 2888
  %i.l = load ptr, ptr %i.k, align 8, !noalias !2324, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !invariant.load !12, !noalias !2324 ; 2 uses
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 16)
  %i.p = add nsw i64 %i.o, -1
  %i.q = and i64 %i.p, -16
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  %i.t = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !2326, !nonnull !12, !noundef !12
  %i.u = tail call noundef i128 %i.t(ptr noundef nonnull align 16 %i.s), !noalias !2326, !inline_history !2291 ; 2 uses
  %i.v = icmp eq i128 %i.u, 0
  br i1 %i.v, label %bb.b, label %_RINvXs0_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_4FontNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg.exit.i

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val4.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !2325, !noalias !2324
  %i.x = add nsw i64 %i.n, -1
  %i.y = and i64 %i.x, -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2326
  store i64 8317987319222330741, ptr %i.d, align 8, !noalias !2326
  %.sroa.411.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2326
  %.sroa.512.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2326
  %.sroa.613.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2326
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !2326
  %i.ab = tail call { ptr, i64 } %.val4.i.i.i(ptr noundef nonnull %i.aa) #34, !noalias !2327, !inline_history !2294 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, i64 noundef %i.ad), !noalias !2326
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad), !noalias !2326
  %i.ae = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Csl4q486LaARA_9typst_svg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d) #34, !noalias !2326 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %i.ah = zext i64 %i.af to i128
  %i.ai = zext i64 %i.ag to i128
  %i.aj = shl nuw i128 %i.ai, 64
  %i.ak = or disjoint i128 %i.aj, %i.ah           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2326
  %i.al = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !2326, !nonnull !12, !noundef !12
  call void %i.al(ptr noundef nonnull align 16 %i.s, i128 noundef %i.ak), !noalias !2326, !inline_history !2295
  br label %_RINvXs0_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_4FontNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg.exit.i

_RINvXs0_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_4FontNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i = phi i128 [ %i.ak, %bb.b ], [ %i.u, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2328
  store i128 %.sroa.0.0.i.i.i, ptr %i.c, align 16, !noalias !2328
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 16), !noalias !2329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2328
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 2896
  %i.an = load i32, ptr %i.am, align 8, !noalias !2329, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2330
  store i32 %i.an, ptr %i.b, align 4, !noalias !2330
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4), !noalias !2329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2330
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 3312 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 3328
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !2332, !noalias !2333, !noundef !12 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 2                   ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 8, !alias.scope !2332, !noalias !2333, !nonnull !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 3320
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !2332, !noalias !2333
  %.sink11.i.i.i = select i1 %i.ar, ptr %i.as, ptr %i.ao ; 2 uses
  %.sink10.i.i.i = select i1 %i.ar, i64 %i.au, i64 %i.aq ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.sink10.i.i.i), !noalias !2334
  call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  %.idx.i.i.i = shl nuw nsw i64 %.sink10.i.i.i, 3
  %i.av = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i, i64 %.idx.i.i.i
  %i.aw = icmp eq i64 %.sink10.i.i.i, 0
  br i1 %i.aw, label %_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_12FontInstanceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvXs0_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_4FontNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg.exit.i, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.sink11.i.i.i, %_RINvXs0_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_4FontNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg.exit.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 4
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 4), !noalias !2337
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.03.i.i.i, i64 noundef 4), !noalias !2320
  %.val.i.i.i.i = load i32, ptr %i.ay, align 4, !alias.scope !2338, !noalias !2339, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2340
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !2340
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4), !noalias !2320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2340
  %i.az = icmp eq ptr %i.ax, %i.av
  br i1 %i.az, label %_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_12FontInstanceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg.exit, label %.lr.ph.i.i.i

_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_12FontInstanceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg.exit: ; preds = %.lr.ph.i.i.i, %_RINvXs0_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_4FontNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 7 uses
  %i.g = load i64, ptr %0, align 8, !range !26, !noundef !12 ; 4 uses
  %i.h = icmp ne i64 %i.g, 2
  %i.i = zext i1 %i.h to i64
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef range(i64 0, 8) %i.i)
  %.not = icmp eq i64 %i.g, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef range(i64 0, 8) %i.g)
  %i.j = trunc nuw i64 %i.g to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  %i.l = load i32, ptr %i.k, align 8, !range !24, !alias.scope !2359, !noalias !2360, !noundef !12
  %i.m = zext nneg i32 %i.l to i64
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef range(i64 0, 8) %i.m), !noalias !2359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2361
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.k)
  %i.n = load i32, ptr %i.f, align 4, !noalias !2361, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noalias !2361, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load i32, ptr %i.q, align 4, !noalias !2361, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.t = load i32, ptr %i.s, align 4, !noalias !2361, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2362
  store i32 %i.n, ptr %i.e, align 4, !noalias !2362
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 4), !noalias !2359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2363
  store i32 %i.p, ptr %i.d, align 4, !noalias !2363
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4), !noalias !2359
end_hunk_0
