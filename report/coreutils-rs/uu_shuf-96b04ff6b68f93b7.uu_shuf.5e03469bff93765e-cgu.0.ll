inline.NumInlined: 1089
inline.NumDeleted: 516
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvCs84qwSrTN5pO_7uu_shuf6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs84qwSrTN5pO_7uu_shuf.exit
  store i64 12, ptr %.sroa.521231.0..sroa_idx, align 8, !alias.scope !813, !noalias !817
  %.sroa.541232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %.sroa.541232.0..sroa_idx, align 8, !alias.scope !813, !noalias !817
  %.sroa.551234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %.sroa.551234.0..sroa_idx, align 8, !alias.scope !813, !noalias !817
  %.sroa.561236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i32 -1, ptr %.sroa.561236.0..sroa_idx, align 8, !alias.scope !813, !noalias !817
  %.sroa.571237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store i32 -1, ptr %.sroa.571237.0..sroa_idx, align 4, !alias.scope !813, !noalias !817
  %.sroa.581238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store i32 0, ptr %.sroa.581238.0..sroa_idx, align 8, !alias.scope !813, !noalias !817
  %.sroa.591239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 636
  store i8 1, ptr %.sroa.591239.0..sroa_idx, align 4, !alias.scope !813, !noalias !817
  call fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(640) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(640) %i.a, i8 noundef 3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.an, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %.val.i400 = load i64, ptr %i.ab, align 8, !range !96, !alias.scope !819, !noundef !9 ; 2 uses
  %i.di = icmp eq i64 %.val.i400, 0
  br i1 %i.di, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs84qwSrTN5pO_7uu_shuf.exit, label %bb.l

bb.l:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs84qwSrTN5pO_7uu_shuf.exit399
  %.val1.i401 = load ptr, ptr %i.aq, align 8, !alias.scope !819, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i401, i64 noundef %.val.i400, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !819
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs84qwSrTN5pO_7uu_shuf.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs84qwSrTN5pO_7uu_shuf.exit399, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB2_9SeededRng16generate_at_most(ptr %.0.val, i64 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = load i32, ptr %.0.val, align 16, !alias.scope !822, !noundef !9 ; 4 uses
  %i.c = icmp ult i32 %i.b, 63
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 252
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !822, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  tail call void @_RNvNtCsdpq09Y9gzqS_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.f, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %.0.val) #26
  %i.g = load i32, ptr %.0.val, align 16, !alias.scope !822, !noundef !9 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 63
  br i1 %.not.i, label %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !822, !noundef !9
  br label %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit

bb.e:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.b to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !822, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !822, !noundef !9
  %i.o = add nuw nsw i32 %i.b, 2
  br label %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit

_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.018.i = phi i32 [ %i.o, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ]
  %.sroa.02.017.i = phi i32 [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %.sroa.03.016.i = phi i32 [ %i.n, %bb.e ], [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  store i32 %.sroa.0.018.i, ptr %.0.val, align 16, !alias.scope !822
  %i.p = zext i32 %.sroa.03.016.i to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = zext i32 %.sroa.02.017.i to i64
  %i.s = or disjoint i64 %i.q, %i.r
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.t = add nuw i64 %0, 1                        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.u = load i32, ptr %.0.val, align 16, !alias.scope !825, !noundef !9 ; 4 uses
  %i.v = icmp ult i32 %i.u, 63
  br i1 %i.v, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 252
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !825, !noundef !9
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  tail call void @_RNvNtCsdpq09Y9gzqS_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %.0.val) #26
  %i.z = load i32, ptr %.0.val, align 16, !alias.scope !825, !noundef !9 ; 2 uses
  %.not.i16 = icmp eq i32 %i.u, 63
  br i1 %.not.i16, label %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !825, !noundef !9
  br label %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit20

bb.i:                                             ; preds = %bb.f
  %i.ac = zext nneg i32 %i.u to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !825, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !825, !noundef !9
  %i.ah = add nuw nsw i32 %i.u, 2
  br label %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit20

_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit20: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.018.i17 = phi i32 [ %i.ah, %bb.i ], [ 1, %bb.g ], [ 2, %bb.h ] ; 2 uses
  %.sroa.02.017.i18 = phi i32 [ %i.ae, %bb.i ], [ %i.x, %bb.g ], [ %i.z, %bb.h ]
  %.sroa.03.016.i19 = phi i32 [ %i.ag, %bb.i ], [ %i.z, %bb.g ], [ %i.ab, %bb.h ]
  store i32 %.sroa.0.018.i17, ptr %.0.val, align 16, !alias.scope !825
  %i.ai = zext i32 %.sroa.03.016.i19 to i64
  %i.aj = shl nuw i64 %i.ai, 32
  %i.ak = zext i32 %.sroa.02.017.i18 to i64
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = zext i64 %i.al to i128
  %i.an = zext i64 %i.t to i128                   ; 2 uses
  %i.ao = mul nuw i128 %i.am, %i.an               ; 2 uses
  %i.ap = trunc i128 %i.ao to i64                 ; 2 uses
  %.not = icmp ult i64 %0, %i.ap
  %extract10 = lshr i128 %i.ao, 64
  %extract.t11 = trunc nuw i128 %extract10 to i64 ; 2 uses
  br i1 %.not, label %.loopexit, label %bb.j

..loopexit_crit_edge:                             ; preds = %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit25
  %extract14.le = lshr i128 %i.bm, 64
  %extract.t15.le = trunc nuw i128 %extract14.le to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %..loopexit_crit_edge, %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit20, %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit
  %.sroa.0.0 = phi i64 [ %i.s, %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit ], [ %extract.t11, %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit20 ], [ %extract.t15.le, %..loopexit_crit_edge ], [ %extract.t11, %bb.j ]
  ret i64 %.sroa.0.0

bb.j:                                             ; preds = %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit20
  %i.aq = xor i64 %0, -1
  %i.ar = urem i64 %i.aq, %i.t                    ; 2 uses
  %i.as = icmp ugt i64 %i.ar, %i.ap
  br i1 %i.as, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 252
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit25
  %i.aw = phi i32 [ %.sroa.0.018.i17, %.lr.ph ], [ %.sroa.0.018.i22, %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit25 ] ; 4 uses
  %i.ax = icmp samesign ult i32 %i.aw, 63
  br i1 %i.ax, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load i32, ptr %i.at, align 4, !alias.scope !828, !noundef !9
  tail call void @_RNvNtCsdpq09Y9gzqS_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.au, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %.0.val) #26
  %i.az = load i32, ptr %.0.val, align 16, !alias.scope !828, !noundef !9 ; 2 uses
  %.not.i21 = icmp eq i32 %i.aw, 63
  br i1 %.not.i21, label %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load i32, ptr %i.av, align 4, !alias.scope !828, !noundef !9
  br label %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit25

bb.n:                                             ; preds = %bb.k
  %i.bb = zext nneg i32 %i.aw to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !828, !noundef !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !828, !noundef !9
  %i.bg = add nuw nsw i32 %i.aw, 2
  br label %_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit25

_RNvMs2_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtCsdpq09Y9gzqS_11rand_chacha6chacha12ChaCha12CoreE17next_u64_from_u32Cs84qwSrTN5pO_7uu_shuf.exit25: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.0.018.i22 = phi i32 [ %i.bg, %bb.n ], [ 1, %bb.l ], [ 2, %bb.m ] ; 2 uses
  %.sroa.02.017.i23 = phi i32 [ %i.bd, %bb.n ], [ %i.ay, %bb.l ], [ %i.az, %bb.m ]
  %.sroa.03.016.i24 = phi i32 [ %i.bf, %bb.n ], [ %i.az, %bb.l ], [ %i.ba, %bb.m ]
  store i32 %.sroa.0.018.i22, ptr %.0.val, align 16, !alias.scope !828
  %i.bh = zext i32 %.sroa.03.016.i24 to i64
  %i.bi = shl nuw i64 %i.bh, 32
  %i.bj = zext i32 %.sroa.02.017.i23 to i64
  %i.bk = or disjoint i64 %i.bi, %i.bj
  %i.bl = zext i64 %i.bk to i128
  %i.bm = mul nuw i128 %i.bl, %i.an               ; 2 uses
  %i.bn = trunc i128 %i.bm to i64
  %i.bo = icmp ugt i64 %i.ar, %i.bn
  br i1 %i.bo, label %bb.k, label %..loopexit_crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef nonnull align 16 ptr @_RNvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB2_9SeededRng3new(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 4 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  %.sroa.512 = alloca [48 x i8], align 16         ; 4 uses
  %i.c = alloca [208 x i8], align 16              ; 25 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(201) %i.c, i8 0, i64 201, i1 false)
  %i.e = urem i64 %1, 136                         ; 11 uses
  %i.f = sub nuw nsw i64 %1, %i.e                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 10 uses
  %.not38.i = icmp samesign ult i64 %i.f, 136
  br i1 %.not38.i, label %._crit_edge.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.preheader.i

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.preheader.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  br label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.i

._crit_edge.i:                                    ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.i, %bb.a
  %i.p = icmp eq i64 %i.e, 0
  br i1 %i.p, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs84qwSrTN5pO_7uu_shuf.exit, label %iter.check

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.i: ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.i, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.preheader.i
  %.sroa.5.040.i = phi i64 [ %i.az, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.i ], [ %i.f, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.preheader.i ]
  %.sroa.010.039.i = phi ptr [ %i.ay, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.i ], [ %0, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.preheader.i ] ; 10 uses
  %i.q = load <2 x i64>, ptr %.sroa.010.039.i, align 1, !alias.scope !831, !noalias !834
  %i.r = load <2 x i64>, ptr %i.c, align 16
  %i.s = xor <2 x i64> %i.r, %i.q
  store <2 x i64> %i.s, ptr %i.c, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.039.i, i64 16
  %i.u = load <2 x i64>, ptr %i.t, align 1, !alias.scope !831, !noalias !834
  %i.v = load <2 x i64>, ptr %i.h, align 16
  %i.w = xor <2 x i64> %i.v, %i.u
  store <2 x i64> %i.w, ptr %i.h, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.039.i, i64 32
  %i.y = load <2 x i64>, ptr %i.x, align 1, !alias.scope !831, !noalias !834
  %i.z = load <2 x i64>, ptr %i.i, align 16
  %i.aa = xor <2 x i64> %i.z, %i.y
  store <2 x i64> %i.aa, ptr %i.i, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.039.i, i64 48
  %i.ac = load <2 x i64>, ptr %i.ab, align 1, !alias.scope !831, !noalias !834
  %i.ad = load <2 x i64>, ptr %i.j, align 16
  %i.ae = xor <2 x i64> %i.ad, %i.ac
  store <2 x i64> %i.ae, ptr %i.j, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.039.i, i64 64
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !alias.scope !831, !noalias !834
  %i.ah = load <2 x i64>, ptr %i.k, align 16
  %i.ai = xor <2 x i64> %i.ah, %i.ag
  store <2 x i64> %i.ai, ptr %i.k, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.010.039.i, i64 80
  %i.ak = load <2 x i64>, ptr %i.aj, align 1, !alias.scope !831, !noalias !834
  %i.al = load <2 x i64>, ptr %i.l, align 16
  %i.am = xor <2 x i64> %i.al, %i.ak
  store <2 x i64> %i.am, ptr %i.l, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.039.i, i64 96
  %i.ao = load <2 x i64>, ptr %i.an, align 1, !alias.scope !831, !noalias !834
  %i.ap = load <2 x i64>, ptr %i.m, align 16
  %i.aq = xor <2 x i64> %i.ap, %i.ao
  store <2 x i64> %i.aq, ptr %i.m, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.039.i, i64 112
  %i.as = load <2 x i64>, ptr %i.ar, align 1, !alias.scope !831, !noalias !834
  %i.at = load <2 x i64>, ptr %i.n, align 16
  %i.au = xor <2 x i64> %i.at, %i.as
  store <2 x i64> %i.au, ptr %i.n, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.039.i, i64 128
  %.sroa.01.0.copyload.i.16.i = load i64, ptr %i.av, align 1, !alias.scope !831, !noalias !834
  %i.aw = load i64, ptr %i.o, align 16, !noundef !9
  %i.ax = xor i64 %i.aw, %.sroa.01.0.copyload.i.16.i
  store i64 %i.ax, ptr %i.o, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.039.i, i64 136
  %i.az = add i64 %.sroa.5.040.i, -136            ; 2 uses
  call fastcc void @_RINvNtNtCs8rkZRxrAZIZ_6keccak8backends4soft8keccak_pyKj18_ECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.c) #26
  %.not.i = icmp ult i64 %i.az, 136
  br i1 %.not.i, label %._crit_edge.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs84qwSrTN5pO_7uu_shuf.exit.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp samesign ult i64 %i.e, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp samesign ult i64 %i.e, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.e, 28
  %n.vec = and i64 %i.e, 224                      ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !alias.scope !837, !noalias !840
  %wide.load16.a = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !837, !noalias !840
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load17.a = load <16 x i8>, ptr %i.c, align 16
  %wide.load18 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = xor <16 x i8> %wide.load17.a, %wide.load
  %i.be = xor <16 x i8> %wide.load18, %wide.load16.a
  store <16 x i8> %i.bd, ptr %i.c, align 16
  store <16 x i8> %i.be, ptr %i.bc, align 16
  %i.bf = icmp eq i64 %n.vec, 32
  br i1 %i.bf, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !837, !noalias !840
  %wide.load16.1.a = load <16 x i8>, ptr %i.bh, align 1, !alias.scope !837, !noalias !840
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load17.1.a = load <16 x i8>, ptr %i.bi, align 16
  %wide.load18.1 = load <16 x i8>, ptr %i.bj, align 16
  %i.bk = xor <16 x i8> %wide.load17.1.a, %wide.load.1
  %i.bl = xor <16 x i8> %wide.load18.1, %wide.load16.1.a
  store <16 x i8> %i.bk, ptr %i.bi, align 16
  store <16 x i8> %i.bl, ptr %i.bj, align 16
  %i.bm = icmp eq i64 %n.vec, 64
  br i1 %i.bm, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !837, !noalias !840
  %wide.load16.2.a = load <16 x i8>, ptr %i.bo, align 1, !alias.scope !837, !noalias !840
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %wide.load17.2.a = load <16 x i8>, ptr %i.bp, align 16
  %wide.load18.2 = load <16 x i8>, ptr %i.bq, align 16
  %i.br = xor <16 x i8> %wide.load17.2.a, %wide.load.2
  %i.bs = xor <16 x i8> %wide.load18.2, %wide.load16.2.a
  store <16 x i8> %i.br, ptr %i.bp, align 16
  store <16 x i8> %i.bs, ptr %i.bq, align 16
  %i.bt = icmp eq i64 %n.vec, 96
  br i1 %i.bt, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.bu, align 1, !alias.scope !837, !noalias !840
  %wide.load16.3.a = load <16 x i8>, ptr %i.bv, align 1, !alias.scope !837, !noalias !840
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %wide.load17.3.a = load <16 x i8>, ptr %i.bw, align 16
  %wide.load18.3 = load <16 x i8>, ptr %i.bx, align 16
  %i.by = xor <16 x i8> %wide.load17.3.a, %wide.load.3
  %i.bz = xor <16 x i8> %wide.load18.3, %wide.load16.3.a
  store <16 x i8> %i.by, ptr %i.bw, align 16
  store <16 x i8> %i.bz, ptr %i.bx, align 16
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RNvMs_CscS7sre2QgLl_13sponge_cursorINtB4_12SpongeCursorKj88_E7set_posCs84qwSrTN5pO_7uu_shuf.exit32.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !842

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %i.e, 252                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 %index20
  %wide.load21.a = load <4 x i8>, ptr %i.ca, align 1, !alias.scope !837, !noalias !840
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 %index20 ; 2 uses
  %wide.load22 = load <4 x i8>, ptr %i.cb, align 4
  %i.cc = xor <4 x i8> %wide.load22, %wide.load21.a
  store <4 x i8> %i.cc, ptr %i.cb, align 4
  %index.next23 = add nuw i64 %index20, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next23, %n.vec19
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !843

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.e, %n.vec19
  br i1 %cmp.n24, label %_RNvMs_CscS7sre2QgLl_13sponge_cursorINtB4_12SpongeCursorKj88_E7set_posCs84qwSrTN5pO_7uu_shuf.exit32.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.0.i41.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec19, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.01.0.i41.i = phi i64 [ %i.ce, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i41.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ce = add nuw nsw i64 %.sroa.01.0.i41.i, 1    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i41.i
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !837, !noalias !840, !noundef !9
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.01.0.i41.i ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !9
  %i.cj = xor i8 %i.ci, %i.cg
  store i8 %i.cj, ptr %i.ch, align 1
  %i.ck = icmp samesign ult i64 %i.ce, %i.e
  br i1 %i.ck, label %vec.epilog.scalar.ph, label %_RNvMs_CscS7sre2QgLl_13sponge_cursorINtB4_12SpongeCursorKj88_E7set_posCs84qwSrTN5pO_7uu_shuf.exit32.i, !llvm.loop !846

_RNvMs_CscS7sre2QgLl_13sponge_cursorINtB4_12SpongeCursorKj88_E7set_posCs84qwSrTN5pO_7uu_shuf.exit32.i: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cl = trunc nuw i64 %i.e to i8
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs84qwSrTN5pO_7uu_shuf.exit

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RNvMs_CscS7sre2QgLl_13sponge_cursorINtB4_12SpongeCursorKj88_E7set_posCs84qwSrTN5pO_7uu_shuf.exit32.i, %._crit_edge.i
  %.sink.i = phi i8 [ %i.cl, %_RNvMs_CscS7sre2QgLl_13sponge_cursorINtB4_12SpongeCursorKj88_E7set_posCs84qwSrTN5pO_7uu_shuf.exit32.i ], [ 0, %._crit_edge.i ]
  store i8 %.sink.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @_RNvXse_CsacedJx9u1BN_4sha3NtB5_8Sha3_256NtCsjseir0iHWAJ_6digest11FixedOutput13finalize_into(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.c, ptr noalias nofree noundef nonnull dereferenceable(32) %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
end_hunk_0
