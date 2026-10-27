Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.11?download=true
inline.NumInlined: 215
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs5_NtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq:bb.a

bb.au:                                            ; preds = %.split24, %.split23, %_RNvXsO_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_12SmallStrKindKj1e_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsa9sSWSfjDbm_4jiff.exit19, %bb.ao
  %i.ja = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.jb = load i32, ptr %i.ja, align 8, !noundef !4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.jd = load i32, ptr %i.jc, align 8, !noundef !4
  %i.je = icmp eq i32 %i.jb, %i.jd
  br label %_RNvXsS_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZoneNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXsS_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZoneNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.as, %bb.ar, %bb.at, %bb.ap, %bb.ak, %bb.aj, %bb.al, %bb.ah, %.split24, %.split23, %_RNvXsO_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_12SmallStrKindKj1e_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsa9sSWSfjDbm_4jiff.exit19, %.split21, %.split, %_RNvXsO_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_12SmallStrKindKj1e_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsa9sSWSfjDbm_4jiff.exit, %bb.ae, %_RNvXs1i_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB6_3DayNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit3.i.i, %.split8.i.i, %bb.ad, %bb.ac, %.split7.i.i, %bb.aa, %bb.z, %_RNvXs1i_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB6_3DayNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i, %.split5.i.i, %bb.y, %bb.x, %.split.i.i, %bb.v, %bb.u, %_RNvXsO_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_12SmallStrKindKj6_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsa9sSWSfjDbm_4jiff.exit10.i, %.split14.i, %bb.t, %.split15.i, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %_RNvXsO_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_12SmallStrKindKj6_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsa9sSWSfjDbm_4jiff.exit.i, %.split.i, %bb.m, %.split12.i, %bb.l, %bb.k, %bb.i, %bb.au, %bb.an, %bb.ao, %bb.am, %bb.af, %bb.ag, %bb.b, %bb.b, %bb.a, %_RNvMs1_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit8
  %.sroa.0.2 = phi i1 [ false, %bb.ao ], [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %_RNvMs1_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit8 ], [ true, %bb.b ], [ false, %bb.ag ], [ %i.hp, %bb.am ], [ false, %bb.af ], [ %i.je, %bb.au ], [ false, %bb.an ], [ false, %.split15.i ], [ %.mux.i, %bb.o ], [ false, %_RNvXsO_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_12SmallStrKindKj6_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsa9sSWSfjDbm_4jiff.exit.i ], [ false, %bb.s ], [ false, %bb.n ], [ false, %bb.u ], [ false, %_RNvXsO_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_12SmallStrKindKj6_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsa9sSWSfjDbm_4jiff.exit10.i ], [ false, %bb.ac ], [ false, %.split.i ], [ false, %.split12.i ], [ false, %bb.l ], [ false, %.split14.i ], [ %i.ga, %bb.ae ], [ false, %bb.z ], [ false, %_RNvXs1i_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB6_3DayNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %_RNvXs1i_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB6_3DayNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit3.i.i ], [ false, %.split8.i.i ], [ false, %.split.i.i ], [ false, %.split5.i.i ], [ false, %bb.x ], [ false, %.split7.i.i ], [ false, %bb.v ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ad ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.p ], [ false, %bb.t ], [ false, %bb.r ], [ false, %_RNvXsO_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_12SmallStrKindKj1e_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsa9sSWSfjDbm_4jiff.exit ], [ false, %.split24 ], [ false, %.split ], [ false, %.split21 ], [ false, %_RNvXsO_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_12SmallStrKindKj1e_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsa9sSWSfjDbm_4jiff.exit19 ], [ false, %bb.ak ], [ false, %.split23 ], [ false, %bb.ah ], [ false, %bb.al ], [ false, %bb.aj ], [ false, %bb.ap ], [ false, %bb.at ], [ false, %bb.ar ], [ false, %bb.as ]
  ret i1 %.sroa.0.2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !727, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !727, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !727, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !727
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !733
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !734, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !734, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !734
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !734
  ret i1 false
}

; Function Attrs: cold nonlazybind uwtable
define noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz12concatenatedNtB4_5ErrorNtB8_9IntoError10into_error(i8 noundef range(i8 0, 12) %0) unnamed_addr #9 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz12concatenatedNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef %0) #24
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db7bundled5innerNtB4_8DatabaseNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 20)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsi_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6OffsetINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB9_15signed_duration14SignedDurationE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = icmp sgt i32 %2, 499999999
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, -499999999
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @llvm.sadd.sat.i64(i64 %1, i64 1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i64 @llvm.sadd.sat.i64(i64 %1, i64 -1)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %1, %bb.b ] ; 2 uses
  %i.f = add i64 %.sroa.0.0, -2147483648
  %or.cond = icmp ult i64 %i.f, -4294967296
  br i1 %or.cond, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = trunc nsw i64 %.sroa.0.0 to i32          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.h = add i32 %i.g, 93599
  %or.cond.i = icmp ult i32 %i.h, 187199
  br i1 %or.cond.i, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset12from_seconds.exit, label %bb.g, !prof !9

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset12from_seconds.exit: ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.i, align 4, !alias.scope !737
  store i32 0, ptr %0, align 8, !alias.scope !737
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5119) #24, !noalias !737
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = tail call fastcc noundef ptr @_RNCNvXsi_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB7_6OffsetINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtBb_15signed_duration14SignedDurationE8try_froms_0Bb_(ptr noundef %i.j) #26
  store ptr %i.l, ptr %i.k, align 8
  store i32 1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset12from_seconds.exit, %bb.g, %bb.i
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  %i.m = call noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef captures(none) dereferenceable(10) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.a = load i8, ptr %0, align 1, !alias.scope !743, !noundef !4
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = add i64 %2, %i.b                         ; 5 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %i.e = icmp ugt i64 %i.c, 9
  %or.cond.not.i.not = or i1 %i.d, %i.e           ; 2 uses
  br i1 %or.cond.not.i.not, label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit, label %.preheader.i, !prof !12

.preheader.i:                                     ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, %i.b
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = add i64 %2, -1
  %i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h)
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.02.010.i.ph = phi i64 [ %i.b, %.lr.ph.i ], [ %i.n, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 16, i64 %i.k
  %n.vec = sub i64 %i.j, %i.m                     ; 2 uses
  %i.n = add i64 %n.vec, %i.b
  %invariant.gep = getelementptr i8, ptr %i.g, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !alias.scope !744
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  store <16 x i8> %wide.load, ptr %gep, align 1, !alias.scope !743
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %scalar.ph.preheader, label %vector.body, !llvm.loop !741

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %i.q = trunc nuw nsw i64 %i.c to i8
  store i8 %i.q, ptr %0, align 1, !alias.scope !743
  br label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.sroa.02.010.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.02.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.r = sub nuw nsw i64 %.sroa.02.010.i, %i.b    ; 3 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #25, !noalias !745
  unreachable

bb.c:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !744, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.010.i
  store i8 %i.u, ptr %i.v, align 1, !alias.scope !743
  %i.w = add nuw nsw i64 %.sroa.02.010.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !742

_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.a, %._crit_edge.i
  ret i1 %or.cond.not.i.not
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtNtCsa9sSWSfjDbm_4jiff5civil7weekdayNtB5_7WeekdayNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !22, !noundef !4
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsr_NtNtCsa9sSWSfjDbm_4jiff5civil7weekdayNtB5_7WeekdayNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsr_NtNtCsa9sSWSfjDbm_4jiff5civil7weekdayNtB5_7WeekdayNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.37, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtCsb09rMIQFAXO_9jiff_core4util8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write10write_charCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef captures(none) dereferenceable(10) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 2048
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %1 to i8
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.f:                                             ; preds = %bb.e
  %i.t = or disjoint i8 %i.k, -32
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.e, %bb.c, %bb.d, %bb.f
  %.sroa.15.0 = phi i8 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.e, %bb.e ]
  %.sroa.12.0 = phi i8 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.e, %bb.f ], [ %i.i, %bb.e ]
  %.sroa.8.0 = phi i8 [ 0, %bb.c ], [ %i.e, %bb.d ], [ %i.i, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i8 [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.t, %bb.f ], [ %i.p, %bb.e ]
  %exitcond.not.i.i.1 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.e ]
  %exitcond.not.i.i.2 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.e ]
  %i.u = load i8, ptr %0, align 1, !alias.scope !750, !noundef !4
  %i.v = zext i8 %i.u to i64                      ; 5 uses
  %i.w = add nuw nsw i64 %.sroa.0.05.i, %i.v      ; 2 uses
  %i.x = icmp samesign ugt i64 %i.w, 9            ; 2 uses
  br i1 %i.x, label %_RNvXsr_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsa9sSWSfjDbm_4jiff.exit, label %.lr.ph.i.i, !prof !12

.lr.ph.i.i:                                       ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 %.sroa.0.0, ptr %i.z, align 1, !alias.scope !750
  br i1 %i.a, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i.i
  %i.aa = trunc nuw nsw i64 %i.w to i8
  store i8 %i.aa, ptr %0, align 1, !alias.scope !750
  br label %_RNvXsr_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsa9sSWSfjDbm_4jiff.exit

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %.sroa.8.0, ptr %i.ac, align 1, !alias.scope !750
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i8 %.sroa.12.0, ptr %i.ae, align 1, !alias.scope !750
  br i1 %exitcond.not.i.i.2, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  store i8 %.sroa.15.0, ptr %i.ag, align 1, !alias.scope !750
  br label %._crit_edge.i.i

_RNvXsr_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsa9sSWSfjDbm_4jiff.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit, %._crit_edge.i.i
  ret i1 %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtCsb09rMIQFAXO_9jiff_core4util8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef dereferenceable(10) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNtCsb09rMIQFAXO_9jiff_core4util8ArrayStrKj9_ENtB4_12SpecWriteFmt14spec_write_fmtCsa9sSWSfjDbm_4jiff.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull dereferenceable(10) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @191, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !751
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
