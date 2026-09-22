Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_convert.simple_convert.e0900865a2a7146e-cgu.07?download=true
inline.NumInlined: 211
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMs_NtCsiHO4aZxHxup_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB1L_E0NCINvB14_8get_hashB1L_uE0ECsjhlb6SMKfKY_14simple_convert:bb.a
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bc, align 8
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write7sectionINtB5_8SectionsINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEE12for_each_mutNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0NtNtNtCs9Jn0q30Ea0B_6object5build5error5ErrorEB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(424) %1, ptr noalias nofree noundef align 8 dereferenceable(232) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr nonnull %2, i8 noundef 0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) #22
  %i.l = load i64, ptr %i.k, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, ptr nonnull %2, i8 noundef 21, ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #22
  %i.n = load i64, ptr %i.j, align 8, !range !6, !noundef !5
  %.not1 = icmp eq i64 %i.n, -1
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr nonnull %2, i8 noundef 11, ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #22
  %i.p = load i64, ptr %i.i, align 8, !range !6, !noundef !5
  %.not2 = icmp eq i64 %i.p, -1
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr nonnull %2, i8 noundef 10, ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #22
  %i.r = load i64, ptr %i.h, align 8, !range !6, !noundef !5
  %.not3 = icmp eq i64 %i.r, -1
  br i1 %.not3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr nonnull %2, i8 noundef 19, ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #22
  %i.t = load i64, ptr %i.g, align 8, !range !6, !noundef !5
  %.not4 = icmp eq i64 %i.t, -1
  br i1 %.not4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr nonnull %2, i8 noundef 20, ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #22
  %i.v = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %.not5 = icmp eq i64 %i.v, -1
  br i1 %.not5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr nonnull %2, i8 noundef 12, ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #22
  %i.x = load i64, ptr %i.e, align 8, !range !6, !noundef !5
  %.not6 = icmp eq i64 %i.x, -1
  br i1 %.not6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 224
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr nonnull %2, i8 noundef 13, ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #22
  %i.z = load i64, ptr %i.d, align 8, !range !6, !noundef !5
  %.not7 = icmp eq i64 %i.z, -1
  br i1 %.not7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr nonnull %2, i8 noundef 9, ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #22
  %i.ab = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  %.not8 = icmp eq i64 %i.ab, -1
  br i1 %.not8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 288
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr nonnull %2, i8 noundef 4, ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac) #22
  %i.ad = load i64, ptr %i.b, align 8, !range !6, !noundef !5
  %.not9 = icmp eq i64 %i.ad, -1
  br i1 %.not9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNCNvCsjhlb6SMKfKY_14simple_convert4mains1_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr nonnull %2, i8 noundef 5, ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae) #22
  %i.af = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %.not10 = icmp eq i64 %i.af, -1
  br i1 %.not10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.w
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !190, !noundef !5 ; 3 uses
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !190, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !190 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !190
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
  %i.s = sub nsw i64 0, %i.l
  %i.t = getelementptr inbounds i8, ptr %.val2.i, i64 %i.s
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #21, !noalias !190
  br label %_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert.exit

_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.a, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !194
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !194
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !194, !nonnull !5, !align !12, !noundef !5 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !194, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.04.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.04.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !194, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !194, !noundef !5
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.04.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !194, !noundef !5
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !194
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !194, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !194
  %i.q = load i64, ptr %i.e, align 8, !noalias !194, !noundef !5
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !194
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.04.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.04.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !194, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.04.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !194, !noundef !5
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.x = add i64 %.sroa.04.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !194, !noundef !5
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !194
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !194, !nonnull !5, !noundef !5
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !194
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !194, !nonnull !5, !noundef !5
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg6.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !194, !inline_history !193
  %i.af = load i64, ptr %i.e, align 8, !noalias !194, !noundef !5
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !194
  br label %bb.d

_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !194, !noundef !5 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.01.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !194, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.01.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !194
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read3str12DebugLineStrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !197, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsjhlb6SMKfKY_14simple_convert.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsjhlb6SMKfKY_14simple_convert.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read3str15DebugStrOffsetsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !200, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsjhlb6SMKfKY_14simple_convert.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsjhlb6SMKfKY_14simple_convert.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read3str8DebugStrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !203, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsjhlb6SMKfKY_14simple_convert.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsjhlb6SMKfKY_14simple_convert.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsiHO4aZxHxup_9hashbrown3mapINtB5_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBR_5write4unit6UnitIdNtB1E_11UnitEntryIdEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE6insertCsjhlb6SMKfKY_14simple_convert:bb.a
  %i.bo = load <2 x i64>, ptr %i.bl, align 8
  store i64 %3, ptr %i.bl, align 8
  store i64 %4, ptr %i.bm, align 8
  store <2 x i64> %i.bo, ptr %i.bn, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %storemerge = phi i64 [ 1, %bb.j ], [ 0, %bb.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 15
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.h, label %bb.d, !prof !7

.thread:                                          ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 4
  %i.e = and i64 %1, 8
  %..i.i = add nuw nsw i64 %i.e, 8
  %.sroa.03.0.i.i = select i1 %i.d, i64 4, i64 %..i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %1, 3
  %i.g = udiv i64 %i.f, 7
  %i.h = add nsw i64 %i.g, -1
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  %i.l = icmp ugt i64 %i.j, 2305843009213693950
  br i1 %i.l, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %.thread, %bb.d
  %.sroa.4.0.i.ph.i10 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.k, %bb.d ] ; 5 uses
  %i.m = shl nuw i64 %.sroa.4.0.i.ph.i10, 3
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i10, 16  ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.f, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !365
  %i.t = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !365 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !365
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread.i

bb.g:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !365
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread.i

bb.h:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !366 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread.i: ; preds = %bb.g, %bb.f
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.f ], [ %i.w, %bb.g ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.i: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i10, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i10, -1     ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i10, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.09.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !366
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.a, %bb.h, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.i
  %.sroa.10.0 = phi i64 [ %i.z, %bb.h ], [ %.sroa.12.09.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread.i ], [ %.sroa.09.0.i.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.y, %bb.h ], [ %.sroa.7.010.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread.i ], [ %i.ab, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ null, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread.i ], [ %i.ae, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.i ], [ @0, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13ranges_offsetCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_10RangeListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE10get_offsetCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, i32 noundef %.sroa.0.0.copyload, i64 noundef %i.g, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !18, !noundef !5
  %i.d = getelementptr i8, ptr %i.c, i64 88
  %.val = load i32, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.f = load i8, ptr %i.e, align 8, !range !13, !alias.scope !370, !noalias !371, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE17raw_locations_dwoCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, i64 noundef %2, i32 noundef %.val)
  br label %_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCsjhlb6SMKfKY_14simple_convert.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, i64 noundef %2, i32 noundef %.val)
  br label %_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCsjhlb6SMKfKY_14simple_convert.exit

_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16locations_offsetCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.g = load i64, ptr %i.f, align 16, !noundef !5
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE10get_offsetCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, i32 noundef %.sroa.0.0.copyload, i64 noundef %i.g, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE22ranges_offset_from_rawCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 416
  %.val = load i8, ptr %i.d, align 8, !range !13, !noundef !5
  %i.e = getelementptr i8, ptr %i.c, i64 90
  %.val1 = load i16, ptr %i.e, align 2
  %i.f = getelementptr i8, ptr %i.c, i64 504
  %.val2 = load i64, ptr %i.f, align 8
  %i.g = trunc nuw i8 %.val to i1
  %i.h = icmp ult i16 %.val1, 5
  %or.cond.i = select i1 %i.g, i1 %i.h, i1 false
  %i.i = select i1 %or.cond.i, i64 %.val2, i64 0
  %spec.select.i = add i64 %i.i, %1
  ret i64 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE7addressCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load i8, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  tail call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianEE11get_addressCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, i8 noundef %i.f, i64 noundef %i.h, i64 noundef %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 25) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val14 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = add i64 %.val15, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val14, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val14, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val14, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val14, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val14, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.01.08.i, 32               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val14, i64 %.sroa.01.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.01.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.01.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.04.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.04.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.04.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.04.06, -1
  %.neg10 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg10 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.04.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #19
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %.val13 = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i = and i64 %.val13, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !374
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i17, label %._crit_edge.i16, !prof !9

._crit_edge.i16:                                  ; preds = %.lr.ph.i17, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i17 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i17 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val13                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !5
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.g:                                             ; preds = %._crit_edge.i16
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i17:                                       ; preds = %bb.f, %.lr.ph.i17
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i17 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i17 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val13           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !374
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i17, label %._crit_edge.i16, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i16
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i16 ] ; 4 uses
  %i.bf = sub i64 %.sroa.04.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val13
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bj = lshr i64 %i.aj, 57
  %i.bk = trunc nuw nsw i64 %i.bj to i8           ; 2 uses
  %i.bl = add i64 %.sroa.04.06, -16
  %i.bm = and i64 %.val13, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.04.06
  store i8 %i.bk, ptr %i.bn, align 1
  %i.bo = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bm
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store i8 %i.bk, ptr %i.bq, align 1
  br label %bb.l

bb.i:                                             ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg11 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg12 = mul i64 %2, %.neg11
  %i.br = getelementptr inbounds i8, ptr %.val, i64 %.neg12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !5
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.0.i5.i, -16
  %i.bx = and i64 %i.bw, %.val13
  store i8 %i.bv, ptr %i.bs, align 1
  %i.by = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store i8 %i.bv, ptr %i.ca, align 1
  %i.cb = icmp eq i8 %i.bt, -1
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = add i64 %.sroa.04.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !5
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.04.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
end_hunk_1
