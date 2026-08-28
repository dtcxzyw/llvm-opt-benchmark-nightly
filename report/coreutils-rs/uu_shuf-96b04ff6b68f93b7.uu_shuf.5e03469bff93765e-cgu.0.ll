Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_shuf-96b04ff6b68f93b7.uu_shuf.5e03469bff93765e-cgu.0?download=true
inline.NumInlined: 1089
inline.NumDeleted: 516
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvXs_Cs84qwSrTN5pO_7uu_shufINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrENtB4_8Shufable15partial_shuffle:bb.a

bb.m:                                             ; preds = %bb.o, %.lr.ph.i7.i
  %.sroa.02.09.i.i = phi i64 [ 0, %.lr.ph.i7.i ], [ %i.aq, %bb.o ] ; 4 uses
  %i.aq = add nuw nsw i64 %.sroa.02.09.i.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1165
  %i.ar = xor i64 %.sroa.02.09.i.i, -1
  %i.as = add nsw i64 %i.j, %i.ar
  call fastcc void @_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE16generate_at_mostB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.as) #26, !noalias !1168
  %i.at = load ptr, ptr %i.b, align 8, !noalias !1165, !noundef !9 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.at, null
  br i1 %.not6.i.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.au = load i64, ptr %i.ap, align 8, !noalias !1165, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1165
  %i.av = add i64 %i.au, %.sroa.02.09.i.i         ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.j
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.02.09.i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.av ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !noalias !1169
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !1170, !noalias !1169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !1169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond.not.i8.i = icmp eq i64 %i.aq, %..i.i5.i
  br i1 %exitcond.not.i8.i, label %.loopexit, label %bb.m

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef range(i64 0, 576460752303423488) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #29, !noalias !1168
  unreachable

bb.q:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.ap, align 8, !noalias !1165, !nonnull !9, !align !181, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1165
  br label %bb.r

.loopexit:                                        ; preds = %bb.o, %bb.j, %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf.exit.i, %bb.i, %bb.l
  %.sroa.11.0.ph = phi i64 [ 0, %bb.l ], [ %..i.i.i, %bb.j ], [ %i.ag, %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf.exit.i ], [ 0, %bb.i ], [ %..i.i5.i, %bb.o ]
  %.sroa.5.0.ph = phi ptr [ %i.h, %bb.l ], [ %i.h, %bb.j ], [ %i.af, %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf.exit.i ], [ %i.h, %bb.i ], [ %i.h, %bb.o ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.ph, i64 %.sroa.11.0.ph
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.q
  %.sroa.5.0.ph.sink = phi ptr [ %.sroa.5.0.ph, %.loopexit ], [ %i.at, %bb.q ]
  %.sink = phi ptr [ %i.ba, %.loopexit ], [ %i.az, %bb.q ]
  %storemerge = phi i64 [ 0, %.loopexit ], [ 1, %bb.q ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.ph.sink, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.bc, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_Cs84qwSrTN5pO_7uu_shufINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrENtB4_8Shufable6choose(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load i8, ptr %i.f, align 8, !range !898, !alias.scope !1174, !noalias !1178, !noundef !9 ; 2 uses
  %i.h = add nsw i8 %i.g, -2
  %.inv.i = icmp samesign ult i8 %i.g, 2
  %narrow.i = select i1 %.inv.i, i8 2, i8 %i.h
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !1174, !noalias !1178
  %i.j = tail call fastcc noundef i64 @_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs84qwSrTN5pO_7uu_shuf(ptr %.val.i, i64 noundef range(i64 0, 576460752303423488) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #26, !noalias !1179 ; 3 uses
  %i.k = icmp samesign ult i64 %i.j, %i.e
  br i1 %i.k, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef range(i64 0, 576460752303423488) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #29, !noalias !1182
  unreachable

bb.f:                                             ; preds = %bb.a
  %.val2.i = load ptr, ptr %2, align 8, !alias.scope !1174, !noalias !1178
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #29, !noalias !1188
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = add nsw i64 %i.e, -1
  %i.n = tail call fastcc noundef i64 @_RNvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB2_9SeededRng16generate_at_most(ptr %.val2.i, i64 noundef %i.m) #26, !noalias !1188 ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.e
  br i1 %i.o, label %_RINvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB3_9SeededRng17choose_from_sliceRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB5_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef range(i64 0, 576460752303423488) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29, !noalias !1188
  unreachable

_RINvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB3_9SeededRng17choose_from_sliceRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB5_.exit.i: ; preds = %bb.h
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1189, !noalias !1190, !nonnull !9, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1189, !noalias !1190, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.t, align 8, !alias.scope !1171, !noalias !1191
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !1171, !noalias !1191
  br label %_RINvMs4_Cs84qwSrTN5pO_7uu_shufNtB6_10WrappedRng6chooseRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB6_.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.v = icmp eq i64 %i.e, 0
  br i1 %i.v, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29, !noalias !1197
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1197
  %i.w = add nsw i64 %i.e, -1
  call fastcc void @_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE16generate_at_mostB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.w) #26, !noalias !1199
  %i.x = load ptr, ptr %i.a, align 8, !noalias !1197, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1197, !nonnull !9, !align !181, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1197
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aa, align 8, !alias.scope !1200, !noalias !1201
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %i.ab, align 8, !alias.scope !1200, !noalias !1201
  br label %_RINvMs4_Cs84qwSrTN5pO_7uu_shufNtB6_10WrappedRng6chooseRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB6_.exit

bb.n:                                             ; preds = %bb.l
  %i.ac = load i64, ptr %i.y, align 8, !noalias !1197, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1197
  %i.ad = icmp ult i64 %i.ac, %i.e
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ac ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1202, !noalias !1203, !nonnull !9, !noundef !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1202, !noalias !1203, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ai, align 8, !alias.scope !1200, !noalias !1201
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.aj, align 8, !alias.scope !1200, !noalias !1201
  br label %_RINvMs4_Cs84qwSrTN5pO_7uu_shufNtB6_10WrappedRng6chooseRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB6_.exit

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef range(i64 0, 576460752303423488) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !noalias !1199
  unreachable

bb.q:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1176, !noalias !1190, !nonnull !9, !noundef !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1176, !noalias !1190, !noundef !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.ao, align 8, !alias.scope !1171, !noalias !1191
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.an, ptr %i.ap, align 8, !alias.scope !1171, !noalias !1191
  br label %_RINvMs4_Cs84qwSrTN5pO_7uu_shufNtB6_10WrappedRng6chooseRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB6_.exit

bb.r:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #29, !noalias !1204
  unreachable

_RINvMs4_Cs84qwSrTN5pO_7uu_shufNtB6_10WrappedRng6chooseRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB6_.exit: ; preds = %_RINvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB3_9SeededRng17choose_from_sliceRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB5_.exit.i, %bb.m, %bb.o, %bb.q
  %.sink.i = phi i64 [ 0, %bb.q ], [ 0, %_RINvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB3_9SeededRng17choose_from_sliceRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB5_.exit.i ], [ 0, %bb.o ], [ 1, %bb.m ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !1171, !noalias !1191
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_NtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB4_20NonrepeatingIteratorNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8, !range !1205, !noundef !9
  switch i8 %i.f, label %bb.ab [
    i8 2, label %bb.b
    i8 0, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !9 ; 3 uses
  %i.i = icmp ult i64 %i.h, 1152921504606846976
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.ab, label %.thread61

bb.c:                                             ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1206, !noalias !1209, !noundef !9 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.m = mul i64 %i.l, -1065810590584100411       ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.o = lshr i64 %i.n, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1226, !noalias !1227, !noundef !9 ; 4 uses
  %i.s = load ptr, ptr %i.d, align 8, !alias.scope !1226, !noalias !1227, !nonnull !9, !noundef !9 ; 5 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.al, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.am, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.r ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !1231 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ak, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.r                     ; 3 uses
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !1234, !noundef !9
  %i.af = icmp eq i64 %i.l, %.val2.i.i.i.i.i.i
  br i1 %i.af, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i, label %bb.e, !prof !70

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeyECs84qwSrTN5pO_7uu_shuf.exit.i, !prof !10

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.al
  br label %bb.d

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %i.an = add nsw i64 %i.ab, -16
  %i.ao = and i64 %i.an, %i.r
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ap, align 1, !noalias !1246
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.as, align 1, !noalias !1250
  %i.at = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i, splat (i8 -1)
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ar, i1 false)
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 false)
  %narrow.i.i.i.i.i.i.i = add nuw nsw i16 %i.aw, %i.av
  %i.ax = icmp samesign ugt i16 %narrow.i.i.i.i.i.i.i, 15
  br i1 %i.ax, label %_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE6removeCs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = add i64 %i.fj, 1                        ; 2 uses
  store i64 %i.az, ptr %i.ay, align 8, !alias.scope !1253, !noalias !1254
  br label %_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE6removeCs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i

_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE6removeCs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i: ; preds = %bb.g, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i
  %i.ba = phi i64 [ %i.az, %bb.g ], [ %i.fj, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ -1, %bb.g ], [ -128, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.as, align 1, !noalias !1255
  %i.bb = getelementptr i8, ptr %i.ap, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.bb, align 1, !noalias !1255
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !1253, !noalias !1254, !noundef !9
  %i.be = add i64 %i.bd, -1
  store i64 %i.be, ptr %i.bc, align 8, !alias.scope !1253, !noalias !1254
  %i.bf = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !1256, !noundef !9
  br label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeyECs84qwSrTN5pO_7uu_shuf.exit.i

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeyECs84qwSrTN5pO_7uu_shuf.exit.i: ; preds = %._crit_edge.i.i.i.i.i, %_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE6removeCs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i
  %i.bh = phi i64 [ %i.ba, %_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE6removeCs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i ], [ %i.fj, %._crit_edge.i.i.i.i.i ]
  %storemerge.i.i.i.i = phi i64 [ %i.bg, %_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE6removeCs84qwSrTN5pO_7uu_shuf.exit.i.i.i.i ], [ %i.l, %._crit_edge.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1257
  %i.bi = load ptr, ptr %1, align 8, !alias.scope !1206, !noalias !1209, !nonnull !9, !align !181, !noundef !9
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1258, !noalias !1263, !noundef !9
  call fastcc void @_RNvMs4_Cs84qwSrTN5pO_7uu_shufNtB5_10WrappedRng17choose_from_range(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(64) %i.bi, i64 %i.l, i64 %i.bk) #26, !noalias !1257
  %i.bl = load ptr, ptr %i.b, align 8, !noalias !1257, !noundef !9 ; 2 uses
  %.not28.i = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not28.i, label %bb.q, label %bb.p

.thread61:                                        ; preds = %bb.b, %.thread
  %i.bn = phi i64 [ %.pre36, %.thread ], [ %i.h, %bb.b ] ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = icmp ult i64 %i.bn, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nsw i64 %i.bn, -1                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1257
  %i.br = load ptr, ptr %1, align 8, !alias.scope !1206, !noalias !1209, !nonnull !9, !align !181, !noundef !9
  call fastcc void @_RNvMs4_Cs84qwSrTN5pO_7uu_shufNtB5_10WrappedRng17choose_from_range(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.br, i64 0, i64 %i.bq) #26, !noalias !1257
  %i.bs = load ptr, ptr %i.c, align 8, !noalias !1257, !noundef !9 ; 2 uses
  %.not26.i = icmp eq ptr %i.bs, null
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not26.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread61
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !1257, !nonnull !9, !align !181, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1257
  %i.bv = ptrtoint ptr %i.bu to i64
  br label %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit

bb.i:                                             ; preds = %.thread61
  %i.bw = load i64, ptr %i.bt, align 8, !noalias !1257, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1257
  %i.bx = xor i64 %i.bw, -1
  %i.by = add i64 %i.bn, %i.bx                    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !1206, !noalias !1209, !nonnull !9, !noundef !9 ; 3 uses
  %.not38.i = icmp eq i64 %i.bn, 0
  br i1 %.not38.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp ult i64 %i.by, %i.bn
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #29, !noalias !1257
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.by, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #29, !noalias !1257
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bq ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by ; 2 uses
  %.sroa.014.0.copyload.i = load i64, ptr %i.cc, align 8, !noalias !1257
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !1257
  store i64 %i.ce, ptr %i.cc, align 8, !noalias !1257
  store i64 %.sroa.014.0.copyload.i, ptr %i.cd, align 8, !noalias !1257
  store i64 %i.bq, ptr %i.bo, align 8, !alias.scope !1206, !noalias !1209
  %i.cf = load i64, ptr %i.d, align 8, !range !96, !alias.scope !1206, !noalias !1209, !noundef !9 ; 2 uses
  %i.cg = icmp samesign ult i64 %i.bq, %i.cf
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = load i64, ptr %i.cc, align 8, !noalias !1257, !noundef !9 ; 2 uses
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bq)
  %i.cj = icmp eq i64 %i.ci, 1
  %i.ck = icmp samesign ugt i64 %i.bn, 512
  %or.cond.i = and i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %bb.n, label %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %i.cl = shl nuw i64 %i.cf, 3
  %i.cm = shl nuw nsw i64 %i.bq, 3                ; 2 uses
  %i.cn = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %i.ca, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 4096, 9223372036854775801) %i.cm) #26, !noalias !1271 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.o, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf.exit.thread.i

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf.exit.thread.i: ; preds = %bb.n
  store ptr %i.cn, ptr %i.bz, align 8, !alias.scope !1272, !noalias !1209
  store i64 %i.bq, ptr %i.d, align 8, !alias.scope !1272, !noalias !1209
  br label %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cm) #27, !noalias !1257
  unreachable

bb.p:                                             ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeyECs84qwSrTN5pO_7uu_shuf.exit.i
  %i.cp = load ptr, ptr %i.bm, align 8, !noalias !1257, !nonnull !9, !align !181, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1257
  %i.cq = ptrtoint ptr %i.cp to i64
  br label %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit

bb.q:                                             ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeyECs84qwSrTN5pO_7uu_shuf.exit.i
  %i.cr = load i64, ptr %i.bm, align 8, !noalias !1257, !noundef !9 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1257
  %i.cs = icmp eq i64 %i.l, %i.cr
  br i1 %i.cs, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.ct = mul i64 %i.cr, -1065810590584100411     ; 2 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cw = icmp eq i64 %i.bh, 0
  br i1 %i.cw, label %bb.s, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.cx = tail call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE14reserve_rehashNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, i1 noundef zeroext true) #28, !noalias !1279 ; 0 uses
  %.val.i.i.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !1281, !noalias !1282
  %.val5.i.i.pre.i = load i64, ptr %i.q, align 8, !alias.scope !1281, !noalias !1282
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.val5.i.i.i = phi i64 [ %.val5.i.i.pre.i, %bb.s ], [ %i.r, %bb.r ] ; 4 uses
  %.val.i.i.i = phi ptr [ %.val.i.i.pre.i, %bb.s ], [ %i.s, %bb.r ] ; 8 uses
  %i.cy = lshr i64 %i.cu, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 3 uses
  %i.da = insertelement <16 x i8> poison, i8 %i.cz, i64 0
  %i.db = shufflevector <16 x i8> %i.da, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.cu, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ], [ %i.ea, %bb.w ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ], [ %.sroa.4.124.i.i.i.i, %bb.w ]
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ], [ %.sroa.04.126.i.i.i.i, %bb.w ]
  %i.dc = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ], [ %i.dz, %bb.w ]
  %.sroa.0.021.i.i.i.i = and i64 %.pn.i.i.i.i, %.val5.i.i.i ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.021.i.i.i.i
  %.sroa.0.0.copyload.i31.i.i.i.i = load <16 x i8>, ptr %i.dd, align 1, !noalias !1284 ; 3 uses
  %i.de = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, %i.db
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %.not32.i.i.i.i = icmp eq i16 %i.df, 0
  br i1 %.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %.sroa.01.033.i.i.i.i = phi i16 [ %i.dp, %bb.u ], [ %i.df, %bb.t ] ; 3 uses
  %i.dg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i.i.i, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = add i64 %.sroa.0.021.i.i.i.i, %i.dh
  %i.dj = and i64 %i.di, %.val5.i.i.i
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [16 x i8], ptr %.val.i.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -16
  %.val2.i.i.i.i.i = load i64, ptr %i.dm, align 8, !noalias !1287, !noundef !9
  %i.dn = icmp eq i64 %i.cr, %.val2.i.i.i.i.i
  br i1 %i.dn, label %bb.aa, label %bb.u, !prof !70

._crit_edge.i.i.i.i:                              ; preds = %bb.u, %bb.t
  %.not12.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i, 1
  br i1 %.not12.i.i.i.i, label %.thread.i.i.i.i, label %bb.v, !prof !10

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add i16 %.sroa.01.033.i.i.i.i, -1
  %i.dp = and i16 %i.do, %.sroa.01.033.i.i.i.i    ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dp, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dq = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, zeroinitializer
  %i.dr = bitcast <16 x i1> %i.dq to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.dr, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %.thread28.i.i.i.i, !prof !10

.thread28.i.i.i.i:                                ; preds = %bb.v
  %i.ds = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dr, i1 true)
  %i.dt = zext nneg i16 %i.ds to i64
  %i.du = add i64 %.sroa.0.021.i.i.i.i, %i.dt
  %i.dv = and i64 %i.du, %.val5.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread28.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.4.125.i.i.i.i = phi i64 [ %i.dv, %.thread28.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.dw = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, splat (i8 -1)
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %i.dy = icmp eq i16 %i.dx, 0
  br i1 %i.dy, label %bb.w, label %bb.x, !prof !10

bb.w:                                             ; preds = %.thread.i.i.i.i, %bb.v
  %.sroa.04.126.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.v ]
  %.sroa.4.124.i.i.i.i = phi i64 [ %.sroa.4.125.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.v ]
  %i.dz = add i64 %i.dc, 16                       ; 2 uses
  %i.ea = add i64 %i.dz, %.sroa.0.021.i.i.i.i
  br label %bb.t

bb.x:                                             ; preds = %.thread.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.125.i.i.i.i
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !1290, !noundef !9 ; 2 uses
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %bb.y, label %bb.z, !prof !10

bb.y:                                             ; preds = %bb.x
  %.val2.i23.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !1290
  %i.ee = icmp slt <16 x i8> %.val2.i23.i.i.i.i, zeroinitializer
  %i.ef = bitcast <16 x i1> %i.ee to i16          ; 2 uses
  %.not.i24.i.i.i.i = icmp ne i16 %i.ef, 0
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ef, i1 true)
  %i.eh = zext nneg i16 %i.eg to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i24.i.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.eh
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !1291
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ei = phi i8 [ %.pre.i.i, %bb.y ], [ %i.ec, %bb.x ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.eh, %bb.y ], [ %.sroa.4.125.i.i.i.i, %bb.x ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i
  %i.ek = and i8 %i.ei, 1
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.en = and i64 %i.em, %.val5.i.i.i
  store i8 %i.cz, ptr %i.ej, align 1, !noalias !1291
  %i.eo = getelementptr i8, ptr %.val.i.i.i, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  store i8 %i.cz, ptr %i.ep, align 1, !noalias !1291
  %i.eq = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !1295, !noalias !1209
  %i.er = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.el, i64 0
  %i.es = sub <2 x i64> %i.eq, %i.er
  store <2 x i64> %i.es, ptr %i.cv, align 8, !alias.scope !1295, !noalias !1209
  %i.et = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.eu = getelementptr inbounds [16 x i8], ptr %.val.i.i.i, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -16
  store i64 %i.cr, ptr %i.ev, align 8, !noalias !1291
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -8
  store i64 %storemerge.i.i.i.i, ptr %i.ew, align 8, !noalias !1291
  br label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ex = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !1296, !noundef !9
  store i64 %storemerge.i.i.i.i, ptr %i.ex, align 8, !noalias !1296
  br label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i: ; preds = %bb.aa, %bb.z, %bb.q
  %.sroa.02.2.i = phi i64 [ %storemerge.i.i.i.i, %bb.q ], [ %i.cr, %bb.z ], [ %i.ey, %bb.aa ]
  %i.ez = load i64, ptr %i.k, align 8, !alias.scope !1206, !noalias !1209, !noundef !9
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.k, align 8, !alias.scope !1206, !noalias !1209
  store i8 0, ptr %i.e, align 8, !alias.scope !1206, !noalias !1209
  br label %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit

_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit: ; preds = %bb.m, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf.exit.thread.i, %bb.h, %bb.p, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i
  %.sroa.08.0 = phi ptr [ %i.bl, %bb.p ], [ %i.bs, %bb.h ], [ null, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i ], [ null, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf.exit.thread.i ], [ null, %bb.m ]
  %.sroa.7.0 = phi i64 [ %i.cq, %bb.p ], [ %i.bv, %bb.h ], [ %.sroa.02.2.i, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i ], [ %i.ch, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf.exit.thread.i ], [ %i.ch, %bb.m ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %i.fb, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.ac, %bb.a, %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit
  %.sink = phi i64 [ 0, %bb.ac ], [ 1, %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.ac:                                            ; preds = %bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fd = load i64, ptr %i.fc, align 8, !noundef !9 ; 12 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ff = load i64, ptr %i.fe, align 8, !noundef !9 ; 8 uses
  %.not1 = icmp ugt i64 %i.fd, %i.ff
  br i1 %.not1, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fh = load i64, ptr %i.fg, align 8, !noundef !9 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !noundef !9 ; 4 uses
  %i.fk = add i64 %i.fj, %i.fh
  %.not2 = icmp ult i64 %i.fh, %i.fk
  br i1 %.not2, label %bb.c, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1300
  %i.fl = sub nuw i64 %i.ff, %i.fd                ; 4 uses
  %.not.i.i = icmp eq i64 %i.fl, -1
  %i.fm = add nuw i64 %i.fl, 1                    ; 2 uses
  br i1 %.not.i.i, label %bb.ap, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i, !prof !1306

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i
  %i.fn = shl i64 %i.fm, 3                        ; 4 uses
  %i.fo = icmp ugt i64 %i.fl, 2305843009213693950
  %.not.i.i.i.i5 = icmp ugt i64 %i.fn, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.fo, %.not.i.i.i.i5
  br i1 %or.cond.i.i.i.i, label %bb.af, label %bb.ae, !prof !13

bb.ae:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i
  %i.fp = icmp eq i64 %i.fn, 0
  br i1 %i.fp, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.ae
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1307
  %i.fq = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.fn, i64 noundef range(i64 1, 9) 8) #26, !noalias !1307 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.af, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i

bb.af:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.fn) #27, !noalias !1300
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i: ; preds = %bb.ae, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ae ], [ %i.fq, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.fm, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 3 uses
  %i.fs = icmp samesign ult i64 %i.fl, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.fs)
  store i64 %.sroa.4.0.i.i.i, ptr %i.a, align 8, !noalias !1300
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %i.ft, align 8, !noalias !1300
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.fu, align 8, !noalias !1300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.fv = sub nuw i64 %i.ff, %i.fd                ; 6 uses
  %.not.i.i1.i.i = icmp eq i64 %i.fv, -1
  %i.fw = add nuw i64 %i.fv, 1
  br i1 %.not.i.i1.i.i, label %bb.ao, label %bb.ag, !prof !1072

bb.ag:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i
  %.not36.i.i.i.i = icmp ult i64 %i.fv, %.sroa.4.0.i.i.i
  br i1 %.not36.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.ah, !prof !1073

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %i.fw, i64 noundef 8, i64 noundef 8) #26, !noalias !1316
  %.pre.i.i6 = load ptr, ptr %i.ft, align 8, !alias.scope !1319, !noalias !1316
  %.pre16.i.i = load i64, ptr %i.fu, align 8, !alias.scope !1319, !noalias !1316
  br label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ah, %bb.ag
  %.ph.i.i = phi i64 [ 0, %bb.ag ], [ %.pre16.i.i, %bb.ah ] ; 6 uses
  %.ph26.i.i = phi ptr [ %.sroa.10.0.i.i.i, %bb.ag ], [ %.pre.i.i6, %bb.ah ] ; 4 uses
  %i.fx = icmp ult i64 %i.fd, %i.ff
  br i1 %i.fx, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fz = icmp eq i64 %i.fh, 0
  %i.ga = load i64, ptr %i.fy, align 8, !alias.scope !1297, !noalias !1320 ; 3 uses
  %i.gb = load ptr, ptr %i.d, align 8, !alias.scope !1297, !noalias !1320, !nonnull !9 ; 2 uses
  br i1 %i.fz, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.split.i

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.fv, 4
  br i1 %min.iters.check, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93, label %vector.ph

vector.ph:                                        ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader
  %n.vec = and i64 %i.fv, -4                      ; 4 uses
  %i.gc = add i64 %.ph.i.i, %n.vec                ; 2 uses
  %i.gd = sub i64 %i.ff, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ff, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ge = add <2 x i64> %broadcast.splat, <i64 0, i64 -1>
  %i.gf = getelementptr [8 x i8], ptr %.ph26.i.i, i64 %.ph.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %i.ge, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 -2)
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %index ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <2 x i64> %vec.ind, ptr %i.gg, align 8, !noalias !1321
  store <2 x i64> %step.add, ptr %i.gh, align 8, !noalias !1321
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 -4)
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !1345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br i1 %cmp.n, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93: ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader, %middle.block
  %.ph = phi i64 [ %.ph.i.i, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.gc, %middle.block ]
  %.ph94 = phi i64 [ %i.ff, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.gd, %middle.block ]
  br label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i
  %i.gj = phi i64 [ %i.gn, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %.ph, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93 ] ; 2 uses
  %i.gk = phi i64 [ %i.gl, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %.ph94, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93 ] ; 2 uses
  %i.gl = add i64 %i.gk, -1                       ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.ph26.i.i, i64 %i.gj
  store i64 %i.gk, ptr %i.gm, align 8, !noalias !1321
  %i.gn = add i64 %i.gj, 1                        ; 2 uses
  %i.go = icmp ult i64 %i.fd, %i.gl
  br i1 %i.go, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, !llvm.loop !1346

.lr.ph.i.i.i.i.i.i.i.i.split.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i
  %i.gp = phi i64 [ %i.hr, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ], [ %.ph.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gq = phi i64 [ %i.gr, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.gr = add i64 %i.gq, -1                       ; 2 uses
  %i.gs = mul i64 %i.gq, -1065810590584100411     ; 2 uses
  %i.gt = tail call noundef i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gs, i64 26) ; 2 uses
  %i.gu = lshr i64 %i.gt, 57
  %i.gv = trunc nuw nsw i64 %i.gu to i8
  %i.gw = insertelement <16 x i8> poison, i8 %i.gv, i64 0
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i.i.i.split.i
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.i ], [ %i.ho, %bb.ak ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i.split.i ], [ %i.hp, %bb.ak ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ga ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gy, align 1, !noalias !1347 ; 2 uses
  %i.gz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gx
  %i.ha = bitcast <16 x i1> %i.gz to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ha, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ai, %bb.aj
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hn, %bb.aj ], [ %i.ha, %bb.ai ] ; 3 uses
  %i.hb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.hc = zext nneg i16 %i.hb to i64
  %i.hd = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hc
  %i.he = and i64 %i.hd, %i.ga
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds [16 x i8], ptr %i.gb, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -16
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hh, align 8, !noalias !1357, !noundef !9
  %i.hi = icmp eq i64 %i.gq, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hi, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, !prof !70

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.aj, %bb.ai
  %i.hj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hk = bitcast <16 x i1> %i.hj to i16
  %i.hl = icmp eq i16 %i.hk, 0
  br i1 %i.hl, label %bb.ak, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i, !prof !10

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hn = and i16 %i.hm, %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hn, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.hp = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ho
  br label %bb.ai

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %i.hg, i64 -8
  %.else.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !noalias !1360, !noundef !9
  br label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i
  %3 = phi i64 [ %.else.val.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.ph26.i.i, i64 %i.gp
  store i64 %3, ptr %i.hq, align 8, !noalias !1321
  %i.hr = add i64 %i.gp, 1                        ; 2 uses
  %i.hs = icmp ult i64 %i.fd, %i.gr
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i.i.i.split.i, label %.thread.i.i.i.i.i.i.i.i.thread22.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.ht = icmp eq i64 %i.fh, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  br i1 %i.ht, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, label %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge

.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge: ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1364, !noalias !1369
  br label %.thread.i.i.i.i.i.i.i.i.thread22.i

.thread.i.i.i.i.i.i.i.i.thread22.i:               ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge
  %i.hu = phi i64 [ %.pre, %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge ], [ %i.ga, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i24.i = phi i64 [ %.ph.i.i, %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge ], [ %i.hr, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hv = mul i64 %i.fd, -1065810590584100411     ; 2 uses
  %i.hw = tail call noundef i64 @llvm.fshl.i64(i64 %i.hv, i64 %i.hv, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.hx = lshr i64 %i.hw, 57
  %i.hy = trunc nuw nsw i64 %i.hx to i8
  %i.hz = load ptr, ptr %i.d, align 8, !alias.scope !1364, !noalias !1369, !nonnull !9, !noundef !9 ; 2 uses
  %i.ia = insertelement <16 x i8> poison, i8 %i.hy, i64 0
  %i.ib = shufflevector <16 x i8> %i.ia, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.thread.i.i.i.i.i.i.i.i.thread22.i
  %.sroa.9.0.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.thread.i.i.i.i.i.i.i.i.thread22.i ], [ %i.is, %bb.an ]
  %.pn.i.i.i.i.i9.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hw, %.thread.i.i.i.i.i.i.i.i.thread22.i ], [ %i.it, %bb.an ]
  %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i9.i.i.i.i.i.i.i.i.i, %i.hu ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ic, align 1, !noalias !1377 ; 2 uses
  %i.id = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, %i.ib
  %i.ie = bitcast <16 x i1> %i.id to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ie, 0
  br i1 %.not.i.not30.i.i.i.i.i12.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i:             ; preds = %bb.al, %bb.am
  %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ir, %bb.am ], [ %i.ie, %bb.al ] ; 3 uses
  %i.if = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ig = zext nneg i16 %i.if to i64
  %i.ih = add i64 %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i, %i.ig
  %i.ii = and i64 %i.ih, %i.hu
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = getelementptr inbounds [16 x i8], ptr %i.hz, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -16
  %.val2.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i = load i64, ptr %i.il, align 8, !noalias !1380, !noundef !9
  %i.im = icmp eq i64 %i.fd, %.val2.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i
  br i1 %i.im, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i, label %bb.am, !prof !70

._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i:        ; preds = %bb.am, %bb.al
  %i.in = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.io = bitcast <16 x i1> %i.in to i16
  %i.ip = icmp eq i16 %i.io, 0
  br i1 %i.ip, label %bb.an, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, !prof !10

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i
  %i.iq = add i16 %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i, -1
  %i.ir = and i16 %i.iq, %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i16.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ir, 0
  br i1 %.not.i.not.i.i.i.i.i16.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i
  %i.is = add i64 %.sroa.9.0.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.it = add i64 %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i, %i.is
  br label %bb.al

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i
  %i.iu = getelementptr inbounds i8, ptr %i.ik, i64 -8
  %.else.val.i.i.i19.i.i.i.i.i.i.i.i.i = load i64, ptr %i.iu, align 8, !noalias !1383, !noundef !9
  br label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit

bb.ao:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29, !noalias !1384
  unreachable

bb.ap:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #29, !noalias !1300
  unreachable

_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit: ; preds = %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i, %middle.block, %.thread.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i21.i = phi i64 [ %.sroa.5.0.i.i.i.i.i.i.i24.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i ], [ %.ph.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.gn, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %i.gc, %middle.block ], [ %.sroa.5.0.i.i.i.i.i.i.i24.i, %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %4 = phi i64 [ %.else.val.i.i.i19.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i ], [ %i.fd, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.fd, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %i.fd, %middle.block ], [ %i.fd, %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i ]
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.ph26.i.i, i64 %.sroa.5.0.i.i.i.i.i.i.i21.i
  store i64 %4, ptr %i.iv, align 8, !noalias !1385
  %.pre34 = load i8, ptr %i.e, align 8, !range !1205, !alias.scope !1390
  %i.iw = add i64 %.sroa.5.0.i.i.i.i.i.i.i21.i, 1
  store i64 %i.iw, ptr %i.fu, align 8, !alias.scope !1319, !noalias !1393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.ix = icmp eq i8 %.pre34, 2
  br i1 %i.ix, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit
  %.val.i = load i64, ptr %i.d, align 8, !range !96, !alias.scope !1390, !noundef !9 ; 2 uses
  %i.iy = icmp eq i64 %.val.i, 0
  br i1 %i.iy, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.iz, align 8, !alias.scope !1390, !nonnull !9, !noundef !9
  %i.ja = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1390
  br label %.thread

bb.as:                                            ; preds = %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !1390 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.jb, align 8, !alias.scope !1390, !noundef !9 ; 3 uses
  %i.jc = icmp eq i64 %.val3.i, 0
  br i1 %i.jc, label %.thread, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.as
  %i.jd = shl i64 %.val3.i, 4                     ; 2 uses
  %i.je = add i64 %i.jd, 16                       ; 2 uses
  %i.jf = add i64 %.val3.i, 17
  %i.jg = add i64 %i.jf, %i.je                    ; 4 uses
  %i.jh = icmp uge i64 %i.jg, %i.je
  %i.ji = icmp ult i64 %i.jg, 9223372036854775793
  tail call void @llvm.assume(i1 %i.jh)
  tail call void @llvm.assume(i1 %i.ji)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.jj = icmp eq i64 %i.jg, 0
  br i1 %i.jj, label %.thread, label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.jk = sub nuw nsw i64 -16, %i.jd
  %i.jl = getelementptr inbounds i8, ptr %.val2.i, i64 %i.jk
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jl, i64 noundef %i.jg, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1390
  br label %.thread

.thread:                                          ; preds = %bb.at, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.as, %bb.ar, %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  store i8 2, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.pre36 = load i64, ptr %i.fi, align 8, !alias.scope !1206, !noalias !1209
  br label %.thread61
}

; Function Attrs: norecurse nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #10 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCsjXcachvKq5y_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !1394, !noalias !1397 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !1394, !noalias !1397 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !1394, !noalias !1397 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !1394, !noalias !1397 ; 5 uses
  %i.f = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32> ; 2 uses
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0>
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0>
  %i.i = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0>
  %i.j = bitcast <2 x i64> %i.g to <4 x i32>      ; 2 uses
  %i.k = bitcast <2 x i64> %i.h to <4 x i32>      ; 2 uses
  %i.l = bitcast <2 x i64> %i.i to <4 x i32>      ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.042.0110.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ej, %bb.c ]
  %i.n = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cw, %bb.c ] ; 2 uses
  %i.o = phi <4 x i32> [ %i.f, %bb.b ], [ %i.ei, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.eh, %bb.c ]
  %i.q = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.em, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.di, %bb.c ] ; 2 uses
  %i.s = phi <4 x i32> [ %i.j, %bb.b ], [ %i.el, %bb.c ]
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.ek, %bb.c ]
  %i.u = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ep, %bb.c ]
  %i.v = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.du, %bb.c ] ; 2 uses
  %i.w = phi <4 x i32> [ %i.k, %bb.b ], [ %i.eo, %bb.c ]
  %i.x = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.en, %bb.c ]
  %i.y = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.es, %bb.c ]
  %i.z = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.eg, %bb.c ] ; 2 uses
  %i.aa = phi <4 x i32> [ %i.l, %bb.b ], [ %i.er, %bb.c ]
  %i.ab = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.eq, %bb.c ]
  %i.ac = add nuw nsw i64 %.sroa.042.0110.i.i, 1  ; 2 uses
  %i.ad = add <4 x i32> %i.n, %i.m                ; 2 uses
  %i.ae = xor <4 x i32> %i.o, %i.ad               ; 2 uses
  %i.af = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ae, <4 x i32> %i.ae, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ag = add <4 x i32> %i.af, %i.p               ; 2 uses
  %i.ah = xor <4 x i32> %i.ag, %i.n               ; 2 uses
  %i.ai = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ah, <4 x i32> %i.ah, <4 x i32> splat (i32 12)) ; 2 uses
  %i.aj = add <4 x i32> %i.ai, %i.ad              ; 2 uses
  %i.ak = xor <4 x i32> %i.aj, %i.af              ; 2 uses
  %i.al = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ak, <4 x i32> %i.ak, <4 x i32> splat (i32 8)) ; 2 uses
  %i.am = add <4 x i32> %i.al, %i.ag              ; 2 uses
  %i.an = xor <4 x i32> %i.am, %i.ai              ; 2 uses
  %i.ao = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.an, <4 x i32> %i.an, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ap = add <4 x i32> %i.r, %i.q                ; 2 uses
  %i.aq = xor <4 x i32> %i.s, %i.ap               ; 2 uses
  %i.ar = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aq, <4 x i32> %i.aq, <4 x i32> splat (i32 16)) ; 2 uses
  %i.as = add <4 x i32> %i.ar, %i.t               ; 2 uses
  %i.at = xor <4 x i32> %i.as, %i.r               ; 2 uses
  %i.au = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.at, <4 x i32> %i.at, <4 x i32> splat (i32 12)) ; 2 uses
  %i.av = add <4 x i32> %i.au, %i.ap              ; 2 uses
  %i.aw = xor <4 x i32> %i.av, %i.ar              ; 2 uses
  %i.ax = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aw, <4 x i32> %i.aw, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ay = add <4 x i32> %i.ax, %i.as              ; 2 uses
  %i.az = xor <4 x i32> %i.ay, %i.au              ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.az, <4 x i32> %i.az, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bb = add <4 x i32> %i.v, %i.u                ; 2 uses
  %i.bc = xor <4 x i32> %i.w, %i.bb               ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bc, <4 x i32> %i.bc, <4 x i32> splat (i32 16)) ; 2 uses
  %i.be = add <4 x i32> %i.bd, %i.x               ; 2 uses
  %i.bf = xor <4 x i32> %i.be, %i.v               ; 2 uses
  %i.bg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bf, <4 x i32> %i.bf, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bh = add <4 x i32> %i.bg, %i.bb              ; 2 uses
  %i.bi = xor <4 x i32> %i.bh, %i.bd              ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bi, <4 x i32> %i.bi, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bk = add <4 x i32> %i.bj, %i.be              ; 2 uses
  %i.bl = xor <4 x i32> %i.bk, %i.bg              ; 2 uses
  %i.bm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bl, <4 x i32> %i.bl, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bn = add <4 x i32> %i.z, %i.y                ; 2 uses
  %i.bo = xor <4 x i32> %i.aa, %i.bn              ; 2 uses
  %i.bp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bo, <4 x i32> %i.bo, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bq = add <4 x i32> %i.bp, %i.ab              ; 2 uses
  %i.br = xor <4 x i32> %i.bq, %i.z               ; 2 uses
  %i.bs = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.br, <4 x i32> %i.br, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bt = add <4 x i32> %i.bs, %i.bn              ; 2 uses
  %i.bu = xor <4 x i32> %i.bt, %i.bp              ; 2 uses
  %i.bv = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bu, <4 x i32> %i.bu, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bw = add <4 x i32> %i.bv, %i.bq              ; 2 uses
  %i.bx = xor <4 x i32> %i.bw, %i.bs              ; 2 uses
  %i.by = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bx, <4 x i32> %i.bx, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bz = shufflevector <4 x i32> %i.am, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ca = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cb = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cc = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.cd = shufflevector <4 x i32> %i.ax, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ce = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cf = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.cg = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ch = shufflevector <4 x i32> %i.bh, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ci = shufflevector <4 x i32> %i.bw, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.cj = shufflevector <4 x i32> %i.bv, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ck = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cl = add <4 x i32> %i.ao, %i.cb              ; 2 uses
  %i.cm = xor <4 x i32> %i.cl, %i.ca              ; 2 uses
  %i.cn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cm, <4 x i32> %i.cm, <4 x i32> splat (i32 16)) ; 2 uses
  %i.co = add <4 x i32> %i.cn, %i.bz              ; 2 uses
  %i.cp = xor <4 x i32> %i.co, %i.ao              ; 2 uses
  %i.cq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cp, <4 x i32> %i.cp, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cr = add <4 x i32> %i.cq, %i.cl              ; 2 uses
  %i.cs = xor <4 x i32> %i.cr, %i.cn              ; 2 uses
  %i.ct = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cs, <4 x i32> %i.cs, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cu = add <4 x i32> %i.ct, %i.co              ; 2 uses
  %i.cv = xor <4 x i32> %i.cu, %i.cq              ; 2 uses
  %i.cw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cv, <4 x i32> %i.cv, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cx = add <4 x i32> %i.ba, %i.ce              ; 2 uses
  %i.cy = xor <4 x i32> %i.cx, %i.cd              ; 2 uses
  %i.cz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cy, <4 x i32> %i.cy, <4 x i32> splat (i32 16)) ; 2 uses
  %i.da = add <4 x i32> %i.cz, %i.cc              ; 2 uses
  %i.db = xor <4 x i32> %i.da, %i.ba              ; 2 uses
  %i.dc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.db, <4 x i32> %i.db, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dd = add <4 x i32> %i.dc, %i.cx              ; 2 uses
  %i.de = xor <4 x i32> %i.dd, %i.cz              ; 2 uses
  %i.df = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.de, <4 x i32> %i.de, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dg = add <4 x i32> %i.df, %i.da              ; 2 uses
  %i.dh = xor <4 x i32> %i.dg, %i.dc              ; 2 uses
  %i.di = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dh, <4 x i32> %i.dh, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dj = add <4 x i32> %i.bm, %i.ch              ; 2 uses
  %i.dk = xor <4 x i32> %i.dj, %i.cg              ; 2 uses
  %i.dl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dk, <4 x i32> %i.dk, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dm = add <4 x i32> %i.dl, %i.cf              ; 2 uses
  %i.dn = xor <4 x i32> %i.dm, %i.bm              ; 2 uses
  %i.do = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dn, <4 x i32> %i.dn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dp = add <4 x i32> %i.do, %i.dj              ; 2 uses
  %i.dq = xor <4 x i32> %i.dp, %i.dl              ; 2 uses
  %i.dr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dq, <4 x i32> %i.dq, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ds = add <4 x i32> %i.dr, %i.dm              ; 2 uses
  %i.dt = xor <4 x i32> %i.ds, %i.do              ; 2 uses
  %i.du = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dt, <4 x i32> %i.dt, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dv = add <4 x i32> %i.by, %i.ck              ; 2 uses
  %i.dw = xor <4 x i32> %i.dv, %i.cj              ; 2 uses
  %i.dx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dw, <4 x i32> %i.dw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dy = add <4 x i32> %i.dx, %i.ci              ; 2 uses
  %i.dz = xor <4 x i32> %i.dy, %i.by              ; 2 uses
  %i.ea = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dz, <4 x i32> %i.dz, <4 x i32> splat (i32 12)) ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.fshl.v8i32
!1147 = distinct !{!1147, !"_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf"}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1147, !"_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf: argument 2"}
!1150 = !{!1149, !1139}
!1151 = !{!1152, !1146, !1144, !1142}
!1152 = distinct !{!1152, !1147, !"_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1153 = !{!1152, !1146, !1149, !1144, !1139, !1142}
!1154 = !{!1152, !1149, !1144, !1139}
!1155 = !{!1146, !1142}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1158, !"_RINvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB3_9SeededRng7shuffleRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB5_: argument 0"}
!1158 = distinct !{!1158, !"_RINvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB3_9SeededRng7shuffleRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB5_"}
!1159 = !{!1157, !1144, !1139, !1142}
!1160 = !{!1144, !1139}
!1161 = !{!1157, !1142}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"_RINvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB5_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE7shuffleRNtNtNtB2j_3ffi6os_str5OsStrEB7_: argument 2"}
!1164 = distinct !{!1164, !"_RINvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB5_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE7shuffleRNtNtNtB2j_3ffi6os_str5OsStrEB7_"}
!1165 = !{!1166, !1167, !1163, !1144, !1139, !1142}
!1166 = distinct !{!1166, !1164, !"_RINvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB5_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE7shuffleRNtNtNtB2j_3ffi6os_str5OsStrEB7_: argument 0"}
!1167 = distinct !{!1167, !1164, !"_RINvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB5_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE7shuffleRNtNtNtB2j_3ffi6os_str5OsStrEB7_: argument 1"}
!1168 = !{!1166, !1163, !1144, !1142}
!1169 = !{!1166, !1167, !1144, !1139}
!1170 = !{!1163, !1142}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1173, !"_RINvMs4_Cs84qwSrTN5pO_7uu_shufNtB6_10WrappedRng6chooseRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB6_: argument 0"}
!1173 = distinct !{!1173, !"_RINvMs4_Cs84qwSrTN5pO_7uu_shufNtB6_10WrappedRng6chooseRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB6_"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1173, !"_RINvMs4_Cs84qwSrTN5pO_7uu_shufNtB6_10WrappedRng6chooseRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB6_: argument 1"}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1173, !"_RINvMs4_Cs84qwSrTN5pO_7uu_shufNtB6_10WrappedRng6chooseRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB6_: argument 2"}
!1178 = !{!1172, !1177}
!1179 = !{!1180, !1172, !1175, !1177}
!1180 = distinct !{!1180, !1181, !"_RINvYSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtNtNtCs7g3JyErIm42_4rand3seq5slice13IndexedRandom6chooseNtNtNtBQ_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1181 = distinct !{!1181, !"_RINvYSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtNtNtCs7g3JyErIm42_4rand3seq5slice13IndexedRandom6chooseNtNtNtBQ_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf"}
!1182 = !{!1183, !1180, !1172, !1175, !1177}
!1183 = distinct !{!1183, !1184, !"_RNvXs0_NtNtCs6JMX4GRUq9U_4core5slice5indexjINtB5_10SliceIndexSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE5indexCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1184 = distinct !{!1184, !"_RNvXs0_NtNtCs6JMX4GRUq9U_4core5slice5indexjINtB5_10SliceIndexSRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE5indexCs84qwSrTN5pO_7uu_shuf"}
!1185 = !{!1186}
!1186 = distinct !{!1186, !1187, !"_RINvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB3_9SeededRng17choose_from_sliceRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB5_: argument 0"}
!1187 = distinct !{!1187, !"_RINvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB3_9SeededRng17choose_from_sliceRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB5_"}
!1188 = !{!1186, !1172, !1175, !1177}
!1189 = !{!1186, !1177}
!1190 = !{!1172, !1175}
!1191 = !{!1175, !1177}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1194, !"_RINvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB5_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_sliceRNtNtNtB2j_3ffi6os_str5OsStrEB7_: argument 0"}
!1194 = distinct !{!1194, !"_RINvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB5_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_sliceRNtNtNtB2j_3ffi6os_str5OsStrEB7_"}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1194, !"_RINvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB5_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_sliceRNtNtNtB2j_3ffi6os_str5OsStrEB7_: argument 2"}
!1197 = !{!1193, !1198, !1196, !1172, !1175, !1177}
!1198 = distinct !{!1198, !1194, !"_RINvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB5_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_sliceRNtNtNtB2j_3ffi6os_str5OsStrEB7_: argument 1"}
!1199 = !{!1193, !1196, !1172, !1177}
!1200 = !{!1193, !1172}
!1201 = !{!1198, !1196, !1175, !1177}
!1202 = !{!1196, !1177}
!1203 = !{!1193, !1198, !1172, !1175}
!1204 = !{!1172, !1175, !1177}
!1205 = !{i8 0, i8 3}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1208, !"_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce: argument 1"}
!1208 = distinct !{!1208, !"_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1208, !"_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce: argument 0"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1213, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeyECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1213 = distinct !{!1213, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeyECs84qwSrTN5pO_7uu_shuf"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1216, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE12remove_entryyECs84qwSrTN5pO_7uu_shuf: argument 1"}
!1216 = distinct !{!1216, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE12remove_entryyECs84qwSrTN5pO_7uu_shuf"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1219, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE12remove_entryNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf: argument 1"}
!1219 = distinct !{!1219, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE12remove_entryNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1222, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1222 = distinct !{!1222, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!1225 = distinct !{!1225, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!1226 = !{!1224, !1221, !1218, !1215, !1212, !1207}
!1227 = !{!1228, !1229, !1230, !1210}
!1228 = distinct !{!1228, !1222, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf: argument 1"}
!1229 = distinct !{!1229, !1219, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE12remove_entryNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1230 = distinct !{!1230, !1216, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE12remove_entryyECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1231 = !{!1232, !1224, !1221, !1228, !1229, !1218, !1230, !1215, !1212, !1210, !1207}
!1232 = distinct !{!1232, !1233, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!1233 = distinct !{!1233, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!1234 = !{!1235, !1224, !1221, !1228, !1229, !1218, !1230, !1215, !1212, !1210, !1207}
!1235 = distinct !{!1235, !1236, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE4findNCINvNtBa_3map14equivalent_keyyyyE0E0Cs84qwSrTN5pO_7uu_shuf: argument 0"}
!1236 = distinct !{!1236, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE4findNCINvNtBa_3map14equivalent_keyyyyE0E0Cs84qwSrTN5pO_7uu_shuf"}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1239, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE6removeCs84qwSrTN5pO_7uu_shuf: argument 1"}
!1239 = distinct !{!1239, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE6removeCs84qwSrTN5pO_7uu_shuf"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1242, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE13erase_no_dropCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1242 = distinct !{!1242, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE13erase_no_dropCs84qwSrTN5pO_7uu_shuf"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1245, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!1245 = distinct !{!1245, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner5erase"}
!1246 = !{!1247, !1244, !1241, !1249, !1238, !1229, !1218, !1230, !1215, !1212, !1210, !1207}
!1247 = distinct !{!1247, !1248, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!1248 = distinct !{!1248, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!1249 = distinct !{!1249, !1239, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE6removeCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1250 = !{!1251, !1244, !1241, !1249, !1238, !1229, !1218, !1230, !1215, !1212, !1210, !1207}
!1251 = distinct !{!1251, !1252, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!1252 = distinct !{!1252, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!1253 = !{!1244, !1241, !1238, !1218, !1215, !1212, !1207}
!1254 = !{!1249, !1229, !1230, !1210}
!1255 = !{!1244, !1241, !1249, !1238, !1229, !1218, !1230, !1215, !1212, !1210, !1207}
!1256 = !{!1249, !1238, !1229, !1218, !1230, !1215, !1212, !1210, !1207}
!1257 = !{!1210, !1207}
!1258 = !{!1259, !1261, !1207}
!1259 = distinct !{!1259, !1260, !"_RNvXsg_NtNtCs6JMX4GRUq9U_4core5clone5implsyNtB7_5Clone5clone: argument 0"}
!1260 = distinct !{!1260, !"_RNvXsg_NtNtCs6JMX4GRUq9U_4core5clone5implsyNtB7_5Clone5clone"}
!1261 = distinct !{!1261, !1262, !"_RNvXs10_NtNtCs6JMX4GRUq9U_4core3ops5rangeINtB6_14RangeInclusiveyENtNtBa_5clone5Clone5cloneCs84qwSrTN5pO_7uu_shuf: argument 1"}
!1262 = distinct !{!1262, !"_RNvXs10_NtNtCs6JMX4GRUq9U_4core3ops5rangeINtB6_14RangeInclusiveyENtNtBa_5clone5Clone5cloneCs84qwSrTN5pO_7uu_shuf"}
!1263 = !{!1264, !1210}
!1264 = distinct !{!1264, !1262, !"_RNvXs10_NtNtCs6JMX4GRUq9U_4core3ops5rangeINtB6_14RangeInclusiveyENtNtBa_5clone5Clone5cloneCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1267 = distinct !{!1267, !"_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1270, !"_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1270 = distinct !{!1270, !"_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs84qwSrTN5pO_7uu_shuf"}
!1271 = !{!1269, !1266, !1210, !1207}
!1272 = !{!1269, !1266, !1207}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1275, !"_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1275 = distinct !{!1275, !"_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf"}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyyyyE0NCINvB1q_11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1278 = distinct !{!1278, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyyyyE0NCINvB1q_11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf"}
!1279 = !{!1280, !1210}
!1280 = distinct !{!1280, !1278, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyyyyE0NCINvB1q_11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf: argument 1"}
!1281 = !{!1277, !1274, !1207}
!1282 = !{!1280, !1283, !1210}
!1283 = distinct !{!1283, !1278, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyyyyE0NCINvB1q_11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf: argument 2"}
!1284 = !{!1285, !1277, !1280, !1283, !1274, !1210, !1207}
!1285 = distinct !{!1285, !1286, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!1286 = distinct !{!1286, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!1287 = !{!1288, !1277, !1280, !1283, !1274, !1210, !1207}
!1288 = distinct !{!1288, !1289, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyyyyE0NCINvB1s_11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0Cs84qwSrTN5pO_7uu_shuf: argument 0"}
!1289 = distinct !{!1289, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyyyyE0NCINvB1s_11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0Cs84qwSrTN5pO_7uu_shuf"}
!1290 = !{!1277, !1280, !1283, !1274, !1210, !1207}
!1291 = !{!1292, !1274, !1210, !1207}
!1292 = distinct !{!1292, !1293, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE22insert_tagged_at_indexCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1293 = distinct !{!1293, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTyyEE22insert_tagged_at_indexCs84qwSrTN5pO_7uu_shuf"}
!1294 = !{!1292}
!1295 = !{!1292, !1274, !1207}
!1296 = !{!1274, !1210, !1207}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1299, !"_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec: argument 2"}
!1299 = distinct !{!1299, !"_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec"}
!1300 = !{!1301, !1303, !1304, !1305, !1298}
!1301 = distinct !{!1301, !1302, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecyEINtB4_18SpecFromIterNestedyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1B_3rev3RevINtNtNtB1F_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE9from_iterB3l_: argument 0"}
!1302 = distinct !{!1302, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecyEINtB4_18SpecFromIterNestedyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1B_3rev3RevINtNtNtB1F_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE9from_iterB3l_"}
!1303 = distinct !{!1303, !1302, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecyEINtB4_18SpecFromIterNestedyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1B_3rev3RevINtNtNtB1F_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE9from_iterB3l_: argument 1"}
!1304 = distinct !{!1304, !1299, !"_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec: argument 0"}
!1305 = distinct !{!1305, !1299, !"_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec: argument 1"}
!1306 = !{!"branch_weights", !"expected", i32 4292820, i32 2143190828}
!1307 = !{!1308, !1301, !1303, !1304, !1305, !1298}
!1308 = distinct !{!1308, !1309, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1309 = distinct !{!1309, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf"}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1312, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecyEINtB4_10SpecExtendyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1j_3rev3RevINtNtNtB1n_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE11spec_extendB33_: argument 0"}
!1312 = distinct !{!1312, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecyEINtB4_10SpecExtendyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1j_3rev3RevINtNtNtB1n_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE11spec_extendB33_"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1315, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB13_3rev3RevINtNtNtB17_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EEB2N_: argument 0"}
!1315 = distinct !{!1315, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB13_3rev3RevINtNtNtB17_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EEB2N_"}
!1316 = !{!1317, !1318, !1301, !1303, !1304, !1305, !1298}
!1317 = distinct !{!1317, !1315, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB13_3rev3RevINtNtNtB17_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EEB2N_: argument 1"}
!1318 = distinct !{!1318, !1312, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecyEINtB4_10SpecExtendyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1j_3rev3RevINtNtNtB1n_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE11spec_extendB33_: argument 1"}
!1319 = !{!1314, !1311}
!1320 = !{!1304, !1305}
!1321 = !{!1322, !1324, !1326, !1328, !1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305, !1298}
!1322 = distinct !{!1322, !1323, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecyE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB15_3rev3RevINtNtNtB19_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE0B2P_: argument 0"}
!1323 = distinct !{!1323, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecyE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB15_3rev3RevINtNtNtB19_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE0B2P_"}
!1324 = distinct !{!1324, !1325, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1p_3VecyE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2n_3rev3RevINtNtNtBe_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE0E0B3J_: argument 0"}
!1325 = distinct !{!1325, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1p_3VecyE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2n_3rev3RevINtNtNtBe_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE0E0B3J_"}
!1326 = distinct !{!1326, !1327, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB36_3VecyE14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_3ops5range14RangeInclusiveyEEBX_EE0E0E0B13_: argument 0"}
!1327 = distinct !{!1327, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB36_3VecyE14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_3ops5range14RangeInclusiveyEEBX_EE0E0E0B13_"}
!1328 = distinct !{!1328, !1329, !"_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_: argument 0"}
!1329 = distinct !{!1329, !"_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_"}
!1330 = distinct !{!1330, !1331, !"_RINvXsc_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl14spec_try_rfolduNCINvMNtBJ_9try_traitINtB2a_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtB8_8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB5P_3VecyE14extend_trustedINtB3a_3MapINtNtB3c_3rev3RevBE_EB3G_EE0E0E0E0B2p_EB3M_: argument 0"}
!1331 = distinct !{!1331, !"_RINvXsc_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl14spec_try_rfolduNCINvMNtBJ_9try_traitINtB2a_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtB8_8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB5P_3VecyE14extend_trustedINtB3a_3MapINtNtB3c_3rev3RevBE_EB3G_EE0E0E0E0B2p_EB3M_"}
!1332 = distinct !{!1332, !1331, !"_RINvXsc_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl14spec_try_rfolduNCINvMNtBJ_9try_traitINtB2a_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtB8_8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB5P_3VecyE14extend_trustedINtB3a_3MapINtNtB3c_3rev3RevBE_EB3G_EE0E0E0E0B2p_EB3M_: argument 1"}
!1333 = distinct !{!1333, !1334, !"_RINvXse_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB8_8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtB1k_8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4O_3VecyE14extend_trustedINtB2h_3MapINtNtB2j_3rev3RevBE_EB2N_EE0E0E0EB2T_: argument 0"}
!1334 = distinct !{!1334, !"_RINvXse_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB8_8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtB1k_8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4O_3VecyE14extend_trustedINtB2h_3MapINtNtB2j_3rev3RevBE_EB2N_EE0E0E0EB2T_"}
!1335 = distinct !{!1335, !1334, !"_RINvXse_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB8_8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtB1k_8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4O_3VecyE14extend_trustedINtB2h_3MapINtNtB2j_3rev3RevBE_EB2N_EE0E0E0EB2T_: argument 1"}
!1336 = distinct !{!1336, !1337, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range14RangeInclusiveyEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvB1z_8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecyE14extend_trustedINtB2i_3MapBM_B2D_EE0E0E0EB2J_: argument 0"}
!1337 = distinct !{!1337, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range14RangeInclusiveyEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvB1z_8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecyE14extend_trustedINtB2i_3MapBM_B2D_EE0E0E0EB2J_"}
!1338 = distinct !{!1338, !1337, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range14RangeInclusiveyEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvB1z_8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecyE14extend_trustedINtB2i_3MapBM_B2D_EE0E0E0EB2J_: argument 1"}
!1339 = distinct !{!1339, !1340, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtBc_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2X_8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4a_3VecyE14extend_trustedBN_E0E0EB1W_: argument 0"}
!1340 = distinct !{!1340, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtBc_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2X_8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4a_3VecyE14extend_trustedBN_E0E0EB1W_"}
!1341 = distinct !{!1341, !1340, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtBc_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2X_8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4a_3VecyE14extend_trustedBN_E0E0EB1W_: argument 1"}
!1342 = distinct !{!1342, !1343, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB8_3rev3RevINtNtNtBc_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3H_3VecyE14extend_trustedB3_E0EB1Q_: argument 0"}
!1343 = distinct !{!1343, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB8_3rev3RevINtNtNtBc_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3H_3VecyE14extend_trustedB3_E0EB1Q_"}
!1344 = distinct !{!1344, !1343, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB8_3rev3RevINtNtNtBc_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3H_3VecyE14extend_trustedB3_E0EB1Q_: argument 1"}
!1345 = distinct !{!1345, !844, !845}
!1346 = distinct !{!1346, !845, !844}
!1347 = !{!1348, !1350, !1352, !1354, !1355, !1326, !1328, !1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305, !1298}
!1348 = distinct !{!1348, !1349, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!1349 = distinct !{!1349, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!1350 = distinct !{!1350, !1351, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!1351 = distinct !{!1351, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!1352 = distinct !{!1352, !1353, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1353 = distinct !{!1353, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf"}
!1354 = distinct !{!1354, !1353, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf: argument 1"}
!1355 = distinct !{!1355, !1356, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1356 = distinct !{!1356, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf"}
!1357 = !{!1358, !1350, !1352, !1354, !1355, !1326, !1328, !1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305, !1298}
!1358 = distinct !{!1358, !1359, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE4findNCINvNtBa_3map14equivalent_keyyyyE0E0Cs84qwSrTN5pO_7uu_shuf: argument 0"}
!1359 = distinct !{!1359, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE4findNCINvNtBa_3map14equivalent_keyyyyE0E0Cs84qwSrTN5pO_7uu_shuf"}
!1360 = !{!1326, !1328, !1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305, !1298}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1363, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1363 = distinct !{!1363, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf"}
!1364 = !{!1365, !1367, !1362, !1298}
!1365 = distinct !{!1365, !1366, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!1366 = distinct !{!1366, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!1367 = distinct !{!1367, !1368, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1368 = distinct !{!1368, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf"}
!1369 = !{!1370, !1371, !1373, !1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305}
!1370 = distinct !{!1370, !1368, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE4findNCINvNtB8_3map14equivalent_keyyyyE0ECs84qwSrTN5pO_7uu_shuf: argument 1"}
!1371 = distinct !{!1371, !1372, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB36_3VecyE14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_3ops5range14RangeInclusiveyEEBX_EE0E0E0B13_: argument 0"}
!1372 = distinct !{!1372, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB36_3VecyE14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_3ops5range14RangeInclusiveyEEBX_EE0E0E0B13_"}
!1373 = distinct !{!1373, !1374, !"_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_: argument 0"}
!1374 = distinct !{!1374, !"_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_"}
!1375 = !{!1367}
!1376 = !{!1365}
!1377 = !{!1378, !1365, !1367, !1370, !1362, !1371, !1373, !1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305, !1298}
!1378 = distinct !{!1378, !1379, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!1379 = distinct !{!1379, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!1380 = !{!1381, !1365, !1367, !1370, !1362, !1371, !1373, !1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305, !1298}
!1381 = distinct !{!1381, !1382, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE4findNCINvNtBa_3map14equivalent_keyyyyE0E0Cs84qwSrTN5pO_7uu_shuf: argument 0"}
!1382 = distinct !{!1382, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE4findNCINvNtBa_3map14equivalent_keyyyyE0E0Cs84qwSrTN5pO_7uu_shuf"}
!1383 = !{!1371, !1373, !1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305, !1298}
!1384 = !{!1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305, !1298}
!1385 = !{!1386, !1388, !1371, !1373, !1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1314, !1317, !1311, !1318, !1301, !1303, !1304, !1305, !1298}
!1386 = distinct !{!1386, !1387, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecyE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB15_3rev3RevINtNtNtB19_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE0B2P_: argument 0"}
!1387 = distinct !{!1387, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecyE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB15_3rev3RevINtNtNtB19_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE0B2P_"}
!1388 = distinct !{!1388, !1389, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1p_3VecyE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2n_3rev3RevINtNtNtBe_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE0E0B3J_: argument 0"}
!1389 = distinct !{!1389, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1p_3VecyE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2n_3rev3RevINtNtNtBe_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0EE0E0B3J_"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1392, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator6ValuesEBF_: argument 0"}
!1392 = distinct !{!1392, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator6ValuesEBF_"}
!1393 = !{!1330, !1332, !1333, !1335, !1336, !1338, !1339, !1341, !1342, !1344, !1317, !1318, !1301, !1303, !1304, !1305, !1298}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1396, !"_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1396 = distinct !{!1396, !"_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs84qwSrTN5pO_7uu_shuf"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1396, !"_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs84qwSrTN5pO_7uu_shuf: argument 1"}
!1399 = !{!1400}
!1400 = distinct !{!1400, !1401, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEEE3newCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1401 = distinct !{!1401, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEEE3newCs84qwSrTN5pO_7uu_shuf"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEEE3newCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1404 = distinct !{!1404, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEEE3newCs84qwSrTN5pO_7uu_shuf"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInneryEE3newCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1407 = distinct !{!1407, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInneryEE3newCs84qwSrTN5pO_7uu_shuf"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1410, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInneryEE3newCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1410 = distinct !{!1410, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInneryEE3newCs84qwSrTN5pO_7uu_shuf"}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1413, !"_RNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB7_16TypedValueParser9parse_ref0B11_: argument 0"}
!1413 = distinct !{!1413, !"_RNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB7_16TypedValueParser9parse_ref0B11_"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1416, !"_RNvYNvCs84qwSrTN5pO_7uu_shuf11parse_rangeINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnTReEE4callB4_: argument 1"}
!1416 = distinct !{!1416, !"_RNvYNvCs84qwSrTN5pO_7uu_shuf11parse_rangeINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnTReEE4callB4_"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1419, !"_RNvCs84qwSrTN5pO_7uu_shuf11parse_range: argument 1"}
!1419 = distinct !{!1419, !"_RNvCs84qwSrTN5pO_7uu_shuf11parse_range"}
!1420 = !{!1421, !1423, !1424, !1426, !1427}
!1421 = distinct !{!1421, !1422, !"_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!1422 = distinct !{!1422, !"_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!1423 = distinct !{!1423, !1422, !"_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!1424 = distinct !{!1424, !1425, !"_RINvMNtCs6JMX4GRUq9U_4core3stre10split_oncecECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1425 = distinct !{!1425, !"_RINvMNtCs6JMX4GRUq9U_4core3stre10split_oncecECs84qwSrTN5pO_7uu_shuf"}
!1426 = distinct !{!1426, !1419, !"_RNvCs84qwSrTN5pO_7uu_shuf11parse_range: argument 0"}
!1427 = distinct !{!1427, !1416, !"_RNvYNvCs84qwSrTN5pO_7uu_shuf11parse_rangeINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnTReEE4callB4_: argument 0"}
!1428 = !{!1429, !1431, !1418, !1415}
!1429 = distinct !{!1429, !1430, !"_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr: argument 0"}
!1430 = distinct !{!1430, !"_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr"}
!1431 = distinct !{!1431, !1425, !"_RINvMNtCs6JMX4GRUq9U_4core3stre10split_oncecECs84qwSrTN5pO_7uu_shuf: argument 1"}
!1432 = !{!1431, !1418, !1415}
!1433 = !{!1424, !1426, !1427}
!1434 = !{!1435, !1418, !1415}
!1435 = distinct !{!1435, !1436, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl: argument 1"}
!1436 = distinct !{!1436, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl"}
!1437 = !{!1438, !1426, !1427}
!1438 = distinct !{!1438, !1436, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl: argument 0"}
!1439 = !{!1426, !1418, !1427, !1415}
!1440 = !{!1441, !1443, !1426, !1418, !1427, !1415}
!1441 = distinct !{!1441, !1442, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs6JMX4GRUq9U_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1442 = distinct !{!1442, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs6JMX4GRUq9U_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf"}
!1443 = distinct !{!1443, !1442, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs6JMX4GRUq9U_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf: argument 1"}
!1444 = !{!1441, !1426, !1427}
!1445 = !{!1443, !1426, !1418, !1427, !1415}
!1446 = !{!1447, !1418, !1415}
!1447 = distinct !{!1447, !1448, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl: argument 1"}
!1448 = distinct !{!1448, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl"}
!1449 = !{!1450, !1426, !1427}
!1450 = distinct !{!1450, !1448, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl: argument 0"}
!1451 = !{!1452, !1454, !1426, !1418, !1427, !1415}
!1452 = distinct !{!1452, !1453, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs6JMX4GRUq9U_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1453 = distinct !{!1453, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs6JMX4GRUq9U_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf"}
!1454 = distinct !{!1454, !1453, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs6JMX4GRUq9U_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf: argument 1"}
!1455 = !{!1452, !1426, !1427}
!1456 = !{!1454, !1426, !1418, !1427, !1415}
!1457 = !{!1458, !1460, !1461, !1463}
!1458 = distinct !{!1458, !1459, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1459 = distinct !{!1459, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf"}
!1460 = distinct !{!1460, !1459, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf: argument 1"}
!1461 = distinct !{!1461, !1462, !"_RNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB7_16TypedValueParser9parse_refs_0B11_: argument 0"}
!1462 = distinct !{!1462, !"_RNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB7_16TypedValueParser9parse_refs_0B11_"}
!1463 = distinct !{!1463, !1462, !"_RNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB7_16TypedValueParser9parse_refs_0B11_: argument 1"}
!1464 = !{!1458, !1461, !1463}
!1465 = !{!1461, !1463}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1468, !"_RNCNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB9_16TypedValueParser9parse_refs_0s_0B13_: argument 0"}
!1468 = distinct !{!1468, !"_RNCNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB9_16TypedValueParser9parse_refs_0s_0B13_"}
!1469 = !{!1470, !1467, !1461, !1463}
!1470 = distinct !{!1470, !1471, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1471 = distinct !{!1471, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf"}
!1472 = !{!1467, !1461, !1463}
!1473 = !{!1474, !1461, !1463}
!1474 = distinct !{!1474, !1475, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1475 = distinct !{!1475, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf"}
!1476 = !{!1477, !1479, !1481, !1461, !1463}
!1477 = distinct !{!1477, !1478, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCs6JMX4GRUq9U_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1478 = distinct !{!1478, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCs6JMX4GRUq9U_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs84qwSrTN5pO_7uu_shuf"}
!1479 = distinct !{!1479, !1480, !"_RNvXsf_NtNtCs7tKScEop1B6_5alloc5boxed7convertINtB7_3BoxDNtNtCs6JMX4GRUq9U_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtB9_6string6StringE4from: argument 0"}
!1480 = distinct !{!1480, !"_RNvXsf_NtNtCs7tKScEop1B6_5alloc5boxed7convertINtB7_3BoxDNtNtCs6JMX4GRUq9U_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtB9_6string6StringE4from"}
!1481 = distinct !{!1481, !1482, !"_RNvXs1_NtCs6JMX4GRUq9U_4core7convertNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_4IntoINtNtBC_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB1Z_4SendEL_EE4intoCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1482 = distinct !{!1482, !"_RNvXs1_NtCs6JMX4GRUq9U_4core7convertNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_4IntoINtNtBC_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB1Z_4SendEL_EE4intoCs84qwSrTN5pO_7uu_shuf"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1485, !"_RNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strNtB7_16TypedValueParser9parse_ref0Cs84qwSrTN5pO_7uu_shuf: argument 0"}
!1485 = distinct !{!1485, !"_RNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strNtB7_16TypedValueParser9parse_ref0Cs84qwSrTN5pO_7uu_shuf"}
!1486 = !{!1487, !1489, !1491}
!1487 = distinct !{!1487, !1488, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl: argument 1"}
!1488 = distinct !{!1488, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl"}
!1489 = distinct !{!1489, !1490, !"_RNvXsC_NtCs6JMX4GRUq9U_4core3numyNtNtNtB7_3str6traits7FromStr8from_str: argument 1"}
!1490 = distinct !{!1490, !"_RNvXsC_NtCs6JMX4GRUq9U_4core3numyNtNtNtB7_3str6traits7FromStr8from_str"}
!1491 = distinct !{!1491, !1492, !"_RNvYNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strINtNtNtBc_3ops8function2FnTReEE4callCs84qwSrTN5pO_7uu_shuf: argument 1"}
!1492 = distinct !{!1492, !"_RNvYNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strINtNtNtBc_3ops8function2FnTReEE4callCs84qwSrTN5pO_7uu_shuf"}
!1493 = !{!1494, !1495, !1496}
!1494 = distinct !{!1494, !1488, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl: argument 0"}
!1495 = distinct !{!1495, !1490, !"_RNvXsC_NtCs6JMX4GRUq9U_4core3numyNtNtNtB7_3str6traits7FromStr8from_str: argument 0"}
!1496 = distinct !{!1496, !1492, !"_RNvYNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strINtNtNtBc_3ops8function2FnTReEE4callCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1497 = !{!1498, !1500, !1501}
!1498 = distinct !{!1498, !1499, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1499 = distinct !{!1499, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf"}
!1500 = distinct !{!1500, !1499, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf: argument 1"}
!1501 = distinct !{!1501, !1502, !"_RNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strNtB7_16TypedValueParser9parse_refs_0Cs84qwSrTN5pO_7uu_shuf: argument 0"}
!1502 = distinct !{!1502, !"_RNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strNtB7_16TypedValueParser9parse_refs_0Cs84qwSrTN5pO_7uu_shuf"}
!1503 = !{!1498, !1501}
!1504 = !{!1501}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1507, !"_RNCNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strNtB9_16TypedValueParser9parse_refs_0s_0Cs84qwSrTN5pO_7uu_shuf: argument 0"}
!1507 = distinct !{!1507, !"_RNCNCNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strNtB9_16TypedValueParser9parse_refs_0s_0Cs84qwSrTN5pO_7uu_shuf"}
!1508 = !{!1509, !1506, !1501}
!1509 = distinct !{!1509, !1510, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1510 = distinct !{!1510, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf"}
!1511 = !{!1506, !1501}
!1512 = !{!1513, !1501}
!1513 = distinct !{!1513, !1514, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1514 = distinct !{!1514, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84qwSrTN5pO_7uu_shuf"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1517, !"_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw: argument 0"}
!1517 = distinct !{!1517, !"_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB8_3fmt5Write9write_strCs84qwSrTN5pO_7uu_shuf: argument 0"}
!1520 = distinct !{!1520, !"_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB8_3fmt5Write9write_strCs84qwSrTN5pO_7uu_shuf"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1520, !"_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB8_3fmt5Write9write_strCs84qwSrTN5pO_7uu_shuf: argument 1"}
!1523 = !{!1519, !1522}
!1524 = !{!1525}
!1525 = distinct !{!1525, !1526, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1526 = distinct !{!1526, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs84qwSrTN5pO_7uu_shuf"}
!1527 = distinct !{null}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1530, !"_RNvMs7_NtNtCs6JMX4GRUq9U_4core2io8io_sliceNtB5_7IoSlice14advance_slices: argument 0"}
!1530 = distinct !{!1530, !"_RNvMs7_NtNtCs6JMX4GRUq9U_4core2io8io_sliceNtB5_7IoSlice14advance_slices"}
!1531 = distinct !{null}
!1532 = !{i8 0, i8 44}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_RNvMs7_NtNtCs6JMX4GRUq9U_4core2io8io_sliceNtB5_7IoSlice14advance_slices: argument 0"}
!1535 = distinct !{!1535, !"_RNvMs7_NtNtCs6JMX4GRUq9U_4core2io8io_sliceNtB5_7IoSlice14advance_slices"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1538, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1538 = distinct !{!1538, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs84qwSrTN5pO_7uu_shuf"}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1541, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1541 = distinct !{!1541, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs84qwSrTN5pO_7uu_shuf"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtCs2vKOLqTMYjT_3std2fs4FileECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1544 = distinct !{!1544, !"_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtCs2vKOLqTMYjT_3std2fs4FileECs84qwSrTN5pO_7uu_shuf"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1547, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!1547 = distinct !{!1547, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs84qwSrTN5pO_7uu_shuf"}
!1548 = distinct !{null}
end_hunk_1
