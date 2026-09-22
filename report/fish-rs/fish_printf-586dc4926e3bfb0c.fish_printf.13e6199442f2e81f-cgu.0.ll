Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_printf-586dc4926e3bfb0c.fish_printf.13e6199442f2e81f-cgu.0?download=true
inline.NumInlined: 123
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimal7DecimalEBH_:bb.a
  %.val.i = load i64, ptr %0, align 8, !range !4, !alias.scope !26, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequemEECs1HV6ixfL8cZ_11fish_printf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !26, !nonnull !5, !noundef !5
  %i.g = shl nuw i64 %.val.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #17
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequemEECs1HV6ixfL8cZ_11fish_printf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs1HV6ixfL8cZ_11fish_printf.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequemEECs1HV6ixfL8cZ_11fish_printf.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !4, !alias.scope !29, !noundef !5 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !29
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !29
  %i.j = load i64, ptr %i.a, align 8, !range !30, !noalias !29, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !31, !noalias !29, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #18
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !29, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !29
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !29
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ECs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.f = icmp eq ptr %1, %2
  br i1 %i.f, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB2a_6StringINtNtB11_7collect6ExtendcE6extendB3_E0ECs1HV6ixfL8cZ_11fish_printf.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0E0Cs1HV6ixfL8cZ_11fish_printf.exit.i.i, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0E0Cs1HV6ixfL8cZ_11fish_printf.exit.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4 ; 2 uses
  %i.j = load i32, ptr %.sroa.0.07.i.i, align 4, !noalias !42, !noundef !5 ; 11 uses
  %i.k = xor i32 %i.j, 55296
  %i.l = add i32 %i.k, -1114112
  %i.m = icmp ult i32 %i.l, -1112064
  br i1 %i.m, label %.split.i.i.i, label %bb.c

.split.i.i.i:                                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  store i32 %i.j, ptr %i.a, align 4, !noalias !42
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19, !noalias !43
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i32 %i.j, 1114112
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load i64, ptr %i.g, align 8, !alias.scope !44, !noundef !5 ; 4 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ult i32 %i.j, 128
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i32 %i.j, 2048         ; 2 uses
  %i.s = icmp samesign ult i32 %i.j, 65536        ; 2 uses
  %..i.i.i.i.i = select i1 %i.s, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i.i.i = select i1 %i.r, i64 2, i64 %..i.i.i.i.i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i.i.i.i.i)
  %i.t = load ptr, ptr %i.h, align 8, !alias.scope !44, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 9 uses
  %i.v = trunc i32 %i.j to i8
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128                ; 3 uses
  %i.y = lshr i32 %i.j, 6
  %i.z = trunc i32 %i.y to i8                     ; 2 uses
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128              ; 2 uses
  %i.ac = lshr i32 %i.j, 12
  %i.ad = trunc i32 %i.ac to i8                   ; 2 uses
  %i.ae = and i8 %i.ad, 63
  %i.af = or disjoint i8 %i.ae, -128
  %i.ag = lshr i32 %i.j, 18
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = or disjoint i8 %i.ah, -16
  br i1 %i.r, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.aj = load ptr, ptr %i.h, align 8, !alias.scope !44, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.o
  %i.al = trunc nuw nsw i32 %i.j to i8
  store i8 %i.al, ptr %i.ak, align 1
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0E0Cs1HV6ixfL8cZ_11fish_printf.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.am = or disjoint i8 %i.z, -64
  store i8 %i.am, ptr %i.u, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.x, ptr %i.an, align 1
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0E0Cs1HV6ixfL8cZ_11fish_printf.exit.i.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = or disjoint i8 %i.ad, -32
  store i8 %i.ao, ptr %i.u, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.ab, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.x, ptr %i.aq, align 1
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0E0Cs1HV6ixfL8cZ_11fish_printf.exit.i.i

bb.i:                                             ; preds = %bb.g
  store i8 %i.ai, ptr %i.u, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.af, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.ab, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  store i8 %i.x, ptr %i.at, align 1
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0E0Cs1HV6ixfL8cZ_11fish_printf.exit.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0E0Cs1HV6ixfL8cZ_11fish_printf.exit.i.i: ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.03.i.i.i.i.i = phi i64 [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.i ]
  %i.au = add nuw i64 %.sroa.0.03.i.i.i.i.i, %i.o
  store i64 %i.au, ptr %i.g, align 8, !alias.scope !44
  %i.av = icmp eq ptr %i.i, %2
  br i1 %i.av, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB2a_6StringINtNtB11_7collect6ExtendcE6extendB3_E0ECs1HV6ixfL8cZ_11fish_printf.exit, label %bb.b

_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB2a_6StringINtNtB11_7collect6ExtendcE6extendB3_E0ECs1HV6ixfL8cZ_11fish_printf.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0E0Cs1HV6ixfL8cZ_11fish_printf.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale14apply_grouping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !range !7, !noundef !5 ; 8 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.i, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.h
  %i.d = xor i64 %i.q, -1
  %i.e = add i64 %3, %i.d
  %4 = zext nneg i32 %i.i to i64
  %i.f = udiv i64 %i.e, %4
  %i.g = add i64 %i.f, %i.r                       ; 2 uses
  %.not77.i = icmp ugt i64 %i.g, %spec.select76.i
  br i1 %.not77.i, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !noalias !56
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.08.0.copyload.i = load i32, ptr %i.h, align 4, !alias.scope !56 ; 8 uses
  %.sroa.9.16.extract.trunc.mask.i = and i32 %.sroa.08.0.copyload.i, 255 ; 4 uses
  %i.i = lshr i32 %.sroa.08.0.copyload.i, 24      ; 5 uses
  %i.j = zext nneg i32 %.sroa.9.16.extract.trunc.mask.i to i64 ; 3 uses
  %.not35.i = icmp ugt i64 %3, %i.j
  br i1 %.not35.i, label %bb.e, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count.exit

bb.e:                                             ; preds = %bb.d
  %.not36.i = icmp ne i32 %.sroa.9.16.extract.trunc.mask.i, 0 ; 2 uses
  %spec.select.i = zext i1 %.not36.i to i64       ; 2 uses
  %.sroa.9.17.extract.shift.i = lshr i32 %.sroa.08.0.copyload.i, 8
  %.sroa.9.17.extract.trunc.mask.i = and i32 %.sroa.9.17.extract.shift.i, 255
  %narrow.i = add nuw nsw i32 %.sroa.9.17.extract.trunc.mask.i, %.sroa.9.16.extract.trunc.mask.i ; 2 uses
  %i.k = zext nneg i32 %narrow.i to i64
  %.not35.1.i = icmp ugt i64 %3, %i.k
  br i1 %.not35.1.i, label %bb.f, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count.exit

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %.sroa.08.0.copyload.i, 65280
  %.not36.1.i = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not36.i, i64 2, i64 1
  %spec.select75.i = select i1 %.not36.1.i, i64 %spec.select.i, i64 %i.m ; 2 uses
  %.sroa.9.18.extract.shift.i = lshr i32 %.sroa.08.0.copyload.i, 16
  %.sroa.9.18.extract.trunc.mask.i = and i32 %.sroa.9.18.extract.shift.i, 255
  %narrow68.i = add nuw nsw i32 %narrow.i, %.sroa.9.18.extract.trunc.mask.i ; 2 uses
  %i.n = zext nneg i32 %narrow68.i to i64
  %.not35.2.i = icmp ugt i64 %3, %i.n
  br i1 %.not35.2.i, label %bb.g, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count.exit

bb.g:                                             ; preds = %bb.f
  %i.o = and i32 %.sroa.08.0.copyload.i, 16711680
  %.not36.2.i = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not36.2.i to i64
  %spec.select76.i = add nuw nsw i64 %spec.select75.i, %i.p ; 3 uses
  %narrow69.i = add nuw nsw i32 %narrow68.i, %i.i
  %i.q = zext nneg i32 %narrow69.i to i64         ; 2 uses
  %.not35.3.i = icmp ule i64 %3, %i.q
  %.not36.3.i = icmp eq i32 %i.i, 0
  %or.cond.i = or i1 %.not36.3.i, %.not35.3.i
  br i1 %or.cond.i, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nuw nsw i64 %spec.select76.i, 1      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i8, ptr %i.s, align 4, !range !9, !alias.scope !56, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.b, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count.exit

_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.1.i = phi i64 [ %i.r, %bb.h ], [ %i.g, %bb.b ], [ %spec.select76.i, %bb.g ], [ 0, %bb.d ], [ %spec.select.i, %bb.e ], [ %spec.select75.i, %bb.f ]
  %i.v = add i64 %.sroa.0.1.i, %3                 ; 6 uses
  %i.w = icmp ult i64 %i.v, %3
  br i1 %i.w, label %bb.m, label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count.exit
  %i.x = icmp sgt i64 %i.v, -1
  br i1 %i.x, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1HV6ixfL8cZ_11fish_printf.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !57
  %i.z = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #17, !noalias !57 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1HV6ixfL8cZ_11fish_printf.exit

bb.m:                                             ; preds = %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

bb.n:                                             ; preds = %bb.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.j ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.v) #18
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1HV6ixfL8cZ_11fish_printf.exit: ; preds = %bb.l, %bb.k
  %.sroa.10.0 = phi i64 [ %i.ab, %bb.l ], [ 1, %bb.k ]
  %i.ac = inttoptr i64 %.sroa.10.0 to ptr
  store i64 %i.v, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ad = icmp eq i64 %3, 0
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1HV6ixfL8cZ_11fish_printf.exit
  %.sroa.8.17.extract.shift.i = lshr i32 %.sroa.08.0.copyload.i, 8
  %i.ae = and i32 %.sroa.8.17.extract.shift.i, 255
  %narrow.i21 = add nuw nsw i32 %i.ae, %.sroa.9.16.extract.trunc.mask.i ; 2 uses
  %i.af = zext nneg i32 %narrow.i21 to i64        ; 2 uses
  %.sroa.8.18.extract.shift.i = lshr i32 %.sroa.08.0.copyload.i, 16
  %i.ag = and i32 %.sroa.8.18.extract.shift.i, 255
  %narrow54.i = add nuw nsw i32 %narrow.i21, %i.ag
  %5 = zext nneg i32 %narrow54.i to i64           ; 3 uses
  %i.ah = zext nneg i32 %i.i to i64               ; 3 uses
  %i.ai = add nuw nsw i64 %5, %i.ah               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !range !9
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = icmp ne i32 %i.i, 0
  %or.cond.not.i = and i1 %i.am, %i.al
  %i.an = icmp samesign ult i32 %i.c, 128
  %i.ao = icmp samesign ult i32 %i.c, 2048        ; 2 uses
  %i.ap = icmp samesign ult i32 %i.c, 65536       ; 2 uses
  %..i = select i1 %i.ap, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.ao, i64 2, i64 %..i
  %i.aq = trunc i32 %i.c to i8                    ; 2 uses
  %i.ar = and i8 %i.aq, 63
  %i.as = or disjoint i8 %i.ar, -128              ; 3 uses
  %i.at = lshr i32 %i.c, 6
  %i.au = trunc i32 %i.at to i8                   ; 2 uses
  %i.av = and i8 %i.au, 63
  %i.aw = or disjoint i8 %i.av, -128              ; 2 uses
  %i.ax = lshr i32 %i.c, 12
  %i.ay = trunc i32 %i.ax to i8                   ; 2 uses
  %i.az = and i8 %i.ay, 63
  %i.ba = or disjoint i8 %i.az, -128
  %i.bb = lshr i32 %i.c, 18
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %i.bd = or disjoint i8 %i.bc, -16
  %i.be = or disjoint i8 %i.ay, -32
  %i.bf = or disjoint i8 %i.au, -64
  br label %bb.o

bb.o:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit, %.lr.ph
  %.sroa.0.055 = phi ptr [ %2, %.lr.ph ], [ %.sroa.7.0, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit ] ; 5 uses
  %.sroa.9.054 = phi i64 [ %3, %.lr.ph ], [ %.sroa.9.034, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit ] ; 11 uses
  %.not35.i20 = icmp ugt i64 %.sroa.9.054, %i.j
  br i1 %.not35.i20, label %bb.p, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit

bb.p:                                             ; preds = %bb.o
  %.not35.1.i22 = icmp ugt i64 %.sroa.9.054, %i.af
  br i1 %.not35.1.i22, label %bb.q, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit

bb.q:                                             ; preds = %bb.p
  %.not35.2.i23 = icmp ugt i64 %.sroa.9.054, %5
  br i1 %.not35.2.i23, label %bb.r, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit

bb.r:                                             ; preds = %bb.q
  %.not35.3.i24 = icmp ugt i64 %.sroa.9.054, %i.ai ; 2 uses
  %brmerge.not = select i1 %.not35.3.i24, i1 %or.cond.not.i, i1 false
  %.mux = select i1 %.not35.3.i24, i64 %i.ai, i64 %5
  br i1 %brmerge.not, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit.thread, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit

_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit.thread: ; preds = %bb.r
  %i.bg = sub nuw i64 %.sroa.9.054, %i.ai
  %i.bh = urem i64 %i.bg, %i.ah                   ; 2 uses
  %.not.i25 = icmp eq i64 %i.bh, 0
  %spec.select = select i1 %.not.i25, i64 %i.ah, i64 %i.bh
  br label %bb.t

._crit_edge:                                      ; preds = %bb.x, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1HV6ixfL8cZ_11fish_printf.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.loopexit:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit, %bb.z, %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %bb.ag unwind label %bb.af

_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit: ; preds = %bb.r, %bb.o, %bb.q, %bb.p
  %.sroa.02.042.lcssa4856.i.pn = phi i64 [ %i.af, %bb.q ], [ 0, %bb.o ], [ %.mux, %bb.r ], [ %i.j, %bb.p ]
  %.sroa.0.0.i = sub nuw i64 %.sroa.9.054, %.sroa.02.042.lcssa4856.i.pn ; 2 uses
  %i.bi = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.bi, label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit, label %bb.t

bb.t:                                             ; preds = %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit.thread, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit
  %.sroa.0.0.i43 = phi i64 [ %spec.select, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit.thread ], [ %.sroa.0.0.i, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit ] ; 7 uses
  %.not.i27 = icmp ult i64 %.sroa.0.0.i43, %.sroa.9.054
  br i1 %.not.i27, label %bb.u, label %.split3.i

.split3.i:                                        ; preds = %bb.t
  %i.bj = icmp eq i64 %.sroa.0.0.i43, %.sroa.9.054
  br i1 %i.bj, label %.split.i, label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 %.sroa.0.0.i43
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !58, !noalias !59, !noundef !5
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %.split.i, label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit.thread

.split.i:                                         ; preds = %bb.u, %.split3.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 %.sroa.0.0.i43
  %i.bo = sub i64 %.sroa.9.054, %.sroa.0.0.i43
  br label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit

_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit: ; preds = %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit, %.split.i
  %i.bp = phi i1 [ true, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit ], [ false, %.split.i ]
  %.sroa.0.0.i41 = phi i64 [ 0, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit ], [ %.sroa.0.0.i43, %.split.i ] ; 3 uses
  %.sroa.9.034 = phi i64 [ %.sroa.9.054, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit ], [ %i.bo, %.split.i ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.0.055, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15next_group_size.exit ], [ %i.bn, %.split.i ]
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i41)
          to label %.noexc29 unwind label %.loopexit

.noexc29:                                         ; preds = %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit
  %i.bq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !60, !noundef !5 ; 3 uses
  %i.br = icmp sgt i64 %i.bq, -1
  call void @llvm.assume(i1 %i.br)
  br i1 %i.bp, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.noexc29
  %i.bs = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !60, !nonnull !5, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %.sroa.0.055, i64 %.sroa.0.0.i41, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !60
  br label %bb.x

_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit.thread: ; preds = %.split3.i, %bb.u
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.055, i64 noundef %.sroa.9.054, i64 noundef 0, i64 noundef %.sroa.0.0.i43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit.thread
  unreachable

bb.x:                                             ; preds = %bb.v, %.noexc29
  %i.bu = phi i64 [ %.pre.i, %bb.v ], [ %i.bq, %.noexc29 ]
  %i.bv = add i64 %i.bu, %.sroa.0.0.i41           ; 5 uses
  store i64 %i.bv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !60
  %cond = icmp eq i64 %.sroa.9.034, 0
  br i1 %cond, label %._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = icmp sgt i64 %i.bv, -1
  call void @llvm.assume(i1 %i.bw)
  br i1 %i.an, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.ph.i)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %bb.z
  %i.bx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !61, !nonnull !5, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv ; 7 uses
  br i1 %i.ao, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.aa
  %i.bz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !61, !nonnull !5, !noundef !5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bv
  store i8 %i.aq, ptr %i.ca, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.ab:                                            ; preds = %.noexc30
  store i8 %i.bf, ptr %i.by, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.as, ptr %i.cb, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.ac:                                            ; preds = %.noexc30
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 2 ; 2 uses
  br i1 %i.ap, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i8 %i.be, ptr %i.by, align 1
  store i8 %i.aw, ptr %i.cc, align 1
  store i8 %i.as, ptr %i.cd, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.ae:                                            ; preds = %bb.ac
  store i8 %i.bd, ptr %i.by, align 1
  store i8 %i.ba, ptr %i.cc, align 1
  store i8 %i.aw, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  store i8 %i.as, ptr %i.ce, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %.noexc31, %bb.ab, %bb.ad, %bb.ae
  %.sroa.0.03.i = phi i64 [ 1, %.noexc31 ], [ 2, %bb.ab ], [ 3, %bb.ad ], [ 4, %bb.ae ]
  %i.cf = add nuw i64 %.sroa.0.03.i, %i.bv
  store i64 %i.cf, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !61
  br label %bb.o

bb.af:                                            ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.ag:                                            ; preds = %bb.s
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !range !7, !noundef !5
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %.thread, label %bb.d

bb.b:                                             ; preds = %bb.h
  %i.c = xor i64 %i.q, -1
  %i.d = add i64 %1, %i.c
  %2 = zext nneg i32 %i.h to i64
  %i.e = udiv i64 %i.d, %2
  %i.f = add i64 %i.e, %i.r                       ; 2 uses
  %.not77 = icmp ugt i64 %i.f, %spec.select76
  br i1 %.not77, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.b, %bb.a, %bb.h
  %.sroa.0.1 = phi i64 [ %i.r, %bb.h ], [ %i.f, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ %spec.select, %bb.e ], [ %spec.select75, %bb.f ], [ %spec.select76, %bb.g ]
  ret i64 %.sroa.0.1

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.08.0.copyload = load i32, ptr %i.g, align 4 ; 7 uses
  %.sroa.9.16.extract.trunc.mask = and i32 %.sroa.08.0.copyload, 255 ; 2 uses
  %i.h = lshr i32 %.sroa.08.0.copyload, 24        ; 3 uses
  %i.i = zext nneg i32 %.sroa.9.16.extract.trunc.mask to i64
  %.not35 = icmp ugt i64 %1, %i.i
  br i1 %.not35, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %.sroa.08.0.copyload, 255
  %.not36 = icmp ne i32 %i.j, 0                   ; 2 uses
  %spec.select = zext i1 %.not36 to i64           ; 2 uses
  %.sroa.9.17.extract.shift = lshr i32 %.sroa.08.0.copyload, 8
  %.sroa.9.17.extract.trunc.mask = and i32 %.sroa.9.17.extract.shift, 255
  %narrow = add nuw nsw i32 %.sroa.9.16.extract.trunc.mask, %.sroa.9.17.extract.trunc.mask ; 2 uses
  %i.k = zext nneg i32 %narrow to i64
  %.not35.1 = icmp ugt i64 %1, %i.k
  br i1 %.not35.1, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %.sroa.08.0.copyload, 65280
  %.not36.1 = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not36, i64 2, i64 1
  %spec.select75 = select i1 %.not36.1, i64 %spec.select, i64 %i.m ; 2 uses
  %.sroa.9.18.extract.shift = lshr i32 %.sroa.08.0.copyload, 16
  %.sroa.9.18.extract.trunc.mask = and i32 %.sroa.9.18.extract.shift, 255
  %narrow68 = add nuw nsw i32 %narrow, %.sroa.9.18.extract.trunc.mask ; 2 uses
  %i.n = zext nneg i32 %narrow68 to i64
  %.not35.2 = icmp ugt i64 %1, %i.n
  br i1 %.not35.2, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = and i32 %.sroa.08.0.copyload, 16711680
  %.not36.2 = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not36.2 to i64
  %spec.select76 = add nuw nsw i64 %spec.select75, %i.p ; 3 uses
  %narrow69 = add nuw nsw i32 %narrow68, %i.h
  %i.q = zext nneg i32 %narrow69 to i64           ; 2 uses
  %.not35.3 = icmp ule i64 %1, %i.q
  %.not36.3 = icmp eq i32 %i.h, 0
  %or.cond = or i1 %.not35.3, %.not36.3
  br i1 %or.cond, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nuw nsw i64 %spec.select76, 1        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i8, ptr %i.s, align 4, !range !9, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.b, label %.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 4 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE14push_front_mutCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !noundef !5
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.c, i32 1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i32, i1 } %i.d, 0
  store i32 %i.f, ptr %i.b, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal26round_to_fractional_digits(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %.val = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.val23 = load i32, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.d = trunc i64 %.val to i32
  %i.e = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.d, i32 %.val23) ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i32, i1 } %i.e, 0
  %i.h = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.g, i32 -1) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  %i.k = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.j, i32 9) ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.f, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal22fractional_digit_count.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #19
  unreachable

_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal22fractional_digit_count.exit: ; preds = %bb.d
  %i.m = extractvalue { i32, i1 } %i.k, 0
  %.not = icmp slt i32 %1, %i.m
  br i1 %.not, label %bb.g, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal19trim_trailing_zeros.exit

bb.g:                                             ; preds = %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal22fractional_digit_count.exit
  %i.n = srem i32 %1, 9                           ; 4 uses
  %i.o = sdiv i32 %1, 9
  %i.p = icmp slt i32 %i.n, 0
  %i.q = add nsw i32 %i.n, 9
  %spec.select.i = select i1 %i.p, i32 %i.q, i32 %i.n ; 3 uses
  %i.r = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.val23, i32 1) ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.lobit.i = ashr i32 %i.n, 31
  %.sroa.0.0.i = add nsw i32 %.lobit.i, %i.o
  %i.t = extractvalue { i32, i1 } %i.r, 0
  %i.u = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.t, i32 %.sroa.0.0.i) ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.w = extractvalue { i32, i1 } %i.u, 0         ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable

.lr.ph:                                           ; preds = %bb.j, %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit
  %.pn59 = phi i32 [ %i.ad, %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit ], [ %i.w, %bb.j ] ; 2 uses
  %i.y = tail call noundef nonnull align 4 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE14push_front_mutCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr %i.c, align 8, !alias.scope !93, !noundef !5
  %i.aa = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.z, i32 1) ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.l, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19
  unreachable

_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit: ; preds = %.lr.ph
  %i.ac = extractvalue { i32, i1 } %i.aa, 0
  store i32 %i.ac, ptr %i.c, align 8, !alias.scope !93
  %i.ad = add nuw nsw i32 %.pn59, 1
  %i.ae = icmp slt i32 %.pn59, -1
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit, %bb.j
  %.pn.lcssa = phi i32 [ %i.w, %bb.j ], [ 0, %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit ] ; 7 uses
  %i.af = sub nuw nsw i32 9, %spec.select.i       ; 5 uses
  %i.ag = and i32 %i.af, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %.preheader38.1.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ah = icmp eq i32 %spec.select.i, 8
  br i1 %i.ah, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.thread.thread, label %.preheader38.1.i

.preheader38.1.i:                                 ; preds = %bb.m, %._crit_edge
  %.sroa.027.1.i = phi i32 [ 10, %bb.m ], [ 1, %._crit_edge ] ; 2 uses
  %i.ai = and i32 %i.af, 2
  %.not.1.i = icmp eq i32 %i.ai, 0
  br i1 %.not.1.i, label %.preheader38.2.i, label %bb.n

bb.n:                                             ; preds = %.preheader38.1.i
  %i.aj = mul nuw nsw i32 %.sroa.027.1.i, 100     ; 2 uses
  %.mask.i = and i32 %i.af, 14
  %i.ak = icmp eq i32 %.mask.i, 2
  br i1 %i.ak, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.thread, label %.preheader38.2.i

.preheader38.2.i:                                 ; preds = %bb.n, %.preheader38.1.i
  %.sroa.027.1.1.i = phi i32 [ %i.aj, %bb.n ], [ %.sroa.027.1.i, %.preheader38.1.i ] ; 2 uses
  %i.al = and i32 %i.af, 4
  %.not.2.i = icmp eq i32 %i.al, 0
  br i1 %.not.2.i, label %.preheader38.3.i, label %bb.o

bb.o:                                             ; preds = %.preheader38.2.i
  %i.am = mul nuw nsw i32 %.sroa.027.1.1.i, 10000 ; 2 uses
  %.mask47.i = and i32 %i.af, 12
  %i.an = icmp eq i32 %.mask47.i, 4
  br i1 %i.an, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.thread, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit

.preheader38.3.i:                                 ; preds = %.preheader38.2.i
  %.not.3.i = icmp ugt i32 %spec.select.i, 1
  br i1 %.not.3.i, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.thread48, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit, !prof !94

_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit: ; preds = %bb.o, %.preheader38.3.i
  %.sroa.027.1.251.i = phi i32 [ %.sroa.027.1.1.i, %.preheader38.3.i ], [ %i.am, %bb.o ]
end_hunk_0
