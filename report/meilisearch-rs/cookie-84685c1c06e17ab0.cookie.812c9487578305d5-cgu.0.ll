inline.NumInlined: 677
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h2028fbd112cadd72E":bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000
  ret i128 %i.aj
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 -66245516071199000, 66121194247203000) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4fac17dc882169cdE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000000
  %i.ak = trunc nsw i128 %i.aj to i64
  ret i64 %i.ak
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e192596122bb916E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h45a7d2d8415832f2E(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @"_ZN4core3ptr35drop_in_place$LT$cookie..Cookie$GT$17h847c2d0f7fbc3d51E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(168) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h868f3c06738f8e98E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !5, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !5
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !5 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfad0070656c1c650E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !5, !noundef !3 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfad0070656c1c650E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !5, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !5, !noundef !3
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add nuw i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !5, !noundef !3
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !5
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !5, !nonnull !3, !noundef !3
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !5
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !5, !nonnull !3, !noundef !3
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !5, !inline_history !8
  %i.s = load i64, ptr %i.e, align 8, !noalias !5, !noundef !3
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfad0070656c1c650E.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfad0070656c1c650E.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !5, !noundef !3 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !5, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !5
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !9 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !9, !noundef !3 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f09789ca3846a94E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !9
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
  br i1 %i.s, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f09789ca3846a94E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #30, !noalias !9
  br label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f09789ca3846a94E.exit"

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f09789ca3846a94E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17h6a7dbe84a978c788E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 1, !alias.scope !12, !noalias !15
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %1, align 1, !alias.scope !15, !noalias !12
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %0, align 1, !alias.scope !12, !noalias !15
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %1, align 1, !alias.scope !15, !noalias !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.a, align 1, !alias.scope !17, !noalias !19
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.b, align 1, !alias.scope !19, !noalias !17
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.a, align 1, !alias.scope !17, !noalias !19
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.b, align 1, !alias.scope !19, !noalias !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.c, align 1, !alias.scope !21, !noalias !23
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.d, align 1, !alias.scope !23, !noalias !21
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.c, align 1, !alias.scope !21, !noalias !23
  store i64 %.sroa.0.0.copyload.i.i.i.2, ptr %i.d, align 1, !alias.scope !23, !noalias !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %.sroa.0.0.copyload.i.i.i.3 = load i64, ptr %i.e, align 1, !alias.scope !25, !noalias !27
  %.sroa.02.0.copyload.i.i.i.3 = load i64, ptr %i.f, align 1, !alias.scope !27, !noalias !25
  store i64 %.sroa.02.0.copyload.i.i.i.3, ptr %i.e, align 1, !alias.scope !25, !noalias !27
  store i64 %.sroa.0.0.copyload.i.i.i.3, ptr %i.f, align 1, !alias.scope !27, !noalias !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %.sroa.0.0.copyload.i.i.i.4 = load i64, ptr %i.g, align 1, !alias.scope !29, !noalias !31
  %.sroa.02.0.copyload.i.i.i.4 = load i64, ptr %i.h, align 1, !alias.scope !31, !noalias !29
  store i64 %.sroa.02.0.copyload.i.i.i.4, ptr %i.g, align 1, !alias.scope !29, !noalias !31
  store i64 %.sroa.0.0.copyload.i.i.i.4, ptr %i.h, align 1, !alias.scope !31, !noalias !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %.sroa.0.0.copyload.i.i.i.5 = load i64, ptr %i.i, align 1, !alias.scope !33, !noalias !35
  %.sroa.02.0.copyload.i.i.i.5 = load i64, ptr %i.j, align 1, !alias.scope !35, !noalias !33
  store i64 %.sroa.02.0.copyload.i.i.i.5, ptr %i.i, align 1, !alias.scope !33, !noalias !35
  store i64 %.sroa.0.0.copyload.i.i.i.5, ptr %i.j, align 1, !alias.scope !35, !noalias !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %.sroa.0.0.copyload.i.i.i.6 = load i64, ptr %i.k, align 1, !alias.scope !37, !noalias !39
  %.sroa.02.0.copyload.i.i.i.6 = load i64, ptr %i.l, align 1, !alias.scope !39, !noalias !37
  store i64 %.sroa.02.0.copyload.i.i.i.6, ptr %i.k, align 1, !alias.scope !37, !noalias !39
  store i64 %.sroa.0.0.copyload.i.i.i.6, ptr %i.l, align 1, !alias.scope !39, !noalias !37
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %.sroa.0.0.copyload.i.i.i.7 = load i64, ptr %i.m, align 1, !alias.scope !41, !noalias !43
  %.sroa.02.0.copyload.i.i.i.7 = load i64, ptr %i.n, align 1, !alias.scope !43, !noalias !41
  store i64 %.sroa.02.0.copyload.i.i.i.7, ptr %i.m, align 1, !alias.scope !41, !noalias !43
  store i64 %.sroa.0.0.copyload.i.i.i.7, ptr %i.n, align 1, !alias.scope !43, !noalias !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %.sroa.0.0.copyload.i.i.i.8 = load i64, ptr %i.o, align 1, !alias.scope !45, !noalias !47
  %.sroa.02.0.copyload.i.i.i.8 = load i64, ptr %i.p, align 1, !alias.scope !47, !noalias !45
  store i64 %.sroa.02.0.copyload.i.i.i.8, ptr %i.o, align 1, !alias.scope !45, !noalias !47
  store i64 %.sroa.0.0.copyload.i.i.i.8, ptr %i.p, align 1, !alias.scope !47, !noalias !45
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %.sroa.0.0.copyload.i.i.i.9 = load i64, ptr %i.q, align 1, !alias.scope !49, !noalias !51
  %.sroa.02.0.copyload.i.i.i.9 = load i64, ptr %i.r, align 1, !alias.scope !51, !noalias !49
  store i64 %.sroa.02.0.copyload.i.i.i.9, ptr %i.q, align 1, !alias.scope !49, !noalias !51
  store i64 %.sroa.0.0.copyload.i.i.i.9, ptr %i.r, align 1, !alias.scope !51, !noalias !49
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %.sroa.0.0.copyload.i.i.i.10 = load i64, ptr %i.s, align 1, !alias.scope !53, !noalias !55
  %.sroa.02.0.copyload.i.i.i.10 = load i64, ptr %i.t, align 1, !alias.scope !55, !noalias !53
  store i64 %.sroa.02.0.copyload.i.i.i.10, ptr %i.s, align 1, !alias.scope !53, !noalias !55
  store i64 %.sroa.0.0.copyload.i.i.i.10, ptr %i.t, align 1, !alias.scope !55, !noalias !53
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %.sroa.0.0.copyload.i.i.i.11 = load i64, ptr %i.u, align 1, !alias.scope !57, !noalias !59
  %.sroa.02.0.copyload.i.i.i.11 = load i64, ptr %i.v, align 1, !alias.scope !59, !noalias !57
  store i64 %.sroa.02.0.copyload.i.i.i.11, ptr %i.u, align 1, !alias.scope !57, !noalias !59
  store i64 %.sroa.0.0.copyload.i.i.i.11, ptr %i.v, align 1, !alias.scope !59, !noalias !57
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.sroa.0.0.copyload.i.i.i.12 = load i64, ptr %i.w, align 1, !alias.scope !61, !noalias !63
  %.sroa.02.0.copyload.i.i.i.12 = load i64, ptr %i.x, align 1, !alias.scope !63, !noalias !61
  store i64 %.sroa.02.0.copyload.i.i.i.12, ptr %i.w, align 1, !alias.scope !61, !noalias !63
  store i64 %.sroa.0.0.copyload.i.i.i.12, ptr %i.x, align 1, !alias.scope !63, !noalias !61
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %.sroa.0.0.copyload.i.i.i.13 = load i64, ptr %i.y, align 1, !alias.scope !65, !noalias !67
  %.sroa.02.0.copyload.i.i.i.13 = load i64, ptr %i.z, align 1, !alias.scope !67, !noalias !65
  store i64 %.sroa.02.0.copyload.i.i.i.13, ptr %i.y, align 1, !alias.scope !65, !noalias !67
  store i64 %.sroa.0.0.copyload.i.i.i.13, ptr %i.z, align 1, !alias.scope !67, !noalias !65
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
end_hunk_0
begin_hunk_1_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9db674edefb3619dE":bb.a
._crit_edge66:                                    ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge, %._crit_edge66.loopexit
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %i.di, %._crit_edge66.loopexit ], [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge ] ; 2 uses
  %i.bg = phi i64 [ %.pre77, %._crit_edge66.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge ]
  %i.bh = sub i64 %.sroa.02.0.i.i, %i.bg
  store i64 %i.av, ptr %0, align 8, !alias.scope !2519, !noalias !2522
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !2530, !noalias !2532 ; 3 uses
  store i64 %i.ap, ptr %i.h, align 8, !alias.scope !2530, !noalias !2532
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bh, ptr %i.bi, align 8, !alias.scope !2534, !noalias !2536
  %i.bj = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bj, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge66
  %i.bk = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 168 ; 2 uses
  %i.bl = add i64 %i.bk, 168
  %i.bm = add i64 %i.bk, 183                      ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bl
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = and i64 %i.bm, -16                      ; 3 uses
  %i.bp = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = icmp ult i64 %i.bq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.br)
  tail call void @llvm.assume(i1 %i.bs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit", label %bb.n

bb.n:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bo
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bu
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2538
  br label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit"

"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit": ; preds = %._crit_edge66, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2509
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hcc6572b4143a0350E.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.062, %.preheader ], [ %i.be, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.064, %.preheader ], [ %i.bf, %.noexc3 ] ; 2 uses
  %.sroa.031.1.lcssa = phi ptr [ %.sroa.031.065, %.preheader ], [ %i.bc, %.noexc3 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.063, -1                ; 2 uses
  %i.cc = sub nsw i64 0, %i.ca
  %i.cd = getelementptr inbounds [168 x i8], ptr %i.bb, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -168
  %i.cf = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h60662d48bfc71a04E(i64 %.val.i.i10, i64 %.val1.i.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ce)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" unwind label %bb.m ; 2 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit": ; preds = %._crit_edge
  %.sroa.0.04.i.i = and i64 %i.cf, %i.ap          ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !2543
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !2546

.lr.ph.i.i:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit", %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i13, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ]
  %i.cj = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ]
  %i.ck = add i64 %i.cj, 16                       ; 2 uses
  %i.cl = add i64 %i.ck, %.sroa.0.07.i.i
  %.sroa.0.0.i.i13 = and i64 %i.cl, %i.ap         ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i.i13
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.cm, align 1, !noalias !2543
  %i.cn = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.co, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !2547

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit"
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.ci, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ], [ %i.co, %.lr.ph.i.i ]
  %i.cp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.cq
  %i.cs = and i64 %i.cr, %i.ap                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !3
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %bb.o, label %bb.p, !prof !155

bb.o:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.as, align 16
  %i.cw = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %i.cy = icmp ne i16 %i.cx, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cx, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.da, %bb.o ], [ %i.cs, %._crit_edge.i.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i5.i.i
  %i.dc = lshr i64 %i.cf, 57
  %i.dd = trunc nuw nsw i64 %i.dc to i8           ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.df = and i64 %i.de, %i.ap
  store i8 %i.dd, ptr %i.db, align 1
  %i.dg = getelementptr i8, ptr %i.as, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  store i8 %i.dd, ptr %i.dh, align 1
  %i.di = load ptr, ptr %0, align 8, !alias.scope !2517, !noalias !2518, !nonnull !3, !noundef !3 ; 3 uses
  %.neg.i.i = mul i64 %i.ca, -168
  %i.dj = getelementptr i8, ptr %i.di, i64 %.neg.i.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 -168
  %.neg62.i.i = mul i64 %.sroa.0.0.i5.i.i, -168
  %i.dl = getelementptr i8, ptr %i.as, i64 %.neg62.i.i
  %i.dm = getelementptr i8, ptr %i.dl, i64 -168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.dm, ptr noundef nonnull align 1 dereferenceable(168) %i.dk, i64 168, i1 false)
  %i.dn = icmp eq i64 %i.cb, 0
  br i1 %i.dn, label %._crit_edge66.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.u, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.ep, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %.val11.i = load ptr, ptr %0, align 8, !alias.scope !2548 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread, label %.lr.ph.i.i14

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread: ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2548
  br label %bb.ac

.lr.ph.i.i14:                                     ; preds = %bb.q
  %i.do = lshr i64 %i.k, 4
  %i.dp = and i64 %i.k, 15
  %.not9.i.i.i.i = icmp ne i64 %i.dp, 0
  %i.dq = zext i1 %.not9.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.do, %i.dq ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dr = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph.i.i14.new

.lr.ph.i.i14.new:                                 ; preds = %.lr.ph.i.i14
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.r

._crit_edge.i.i15.unr-lcssa:                      ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i15, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i15.unr-lcssa, %.lr.ph.i.i14
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i14 ], [ %i.ec, %._crit_edge.i.i15.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ds = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.ds, align 16, !noalias !2548
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !2548
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %._crit_edge.i.i15.unr-lcssa, %.epil.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.30.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %.val11.i, i64 %.30.i, i1 false), !noalias !2548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2548
  store ptr @_ZN4core3ops8function6FnOnce9call_once17h45a7d2d8415832f2E, ptr %i.dv, align 8, !noalias !2548
  store i64 168, ptr %i.dw, align 8, !noalias !2548
  store ptr %0, ptr %i.a, align 8, !noalias !2548
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dy, align 8
  br label %.lr.ph.i

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i14.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i14.new ], [ %i.ec, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i14.new ], [ %niter.next.1, %bb.r ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dz, align 16, !noalias !2548
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ea = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.eb = or <2 x i64> %i.ea, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eb, ptr %i.dz, align 16, !noalias !2548
  %i.ec = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.0.08.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ee, align 16, !noalias !2548
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ef = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.eg = or <2 x i64> %i.ef, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eg, ptr %i.ee, align 16, !noalias !2548
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i15.unr-lcssa, label %bb.r

.lr.ph.i:                                         ; preds = %bb.aa, %._crit_edge.i.i15
  %.sroa.0.17.i = phi i64 [ %.sroa.0.1.i, %bb.aa ], [ 1, %._crit_edge.i.i15 ] ; 3 uses
  %.sroa.0.06.i = phi i64 [ %.sroa.0.17.i, %bb.aa ], [ 0, %._crit_edge.i.i15 ] ; 7 uses
  %i.eh = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.0.06.i
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !3
  %.not.i16 = icmp eq i8 %i.ej, -128
  br i1 %.not.i16, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %.lr.ph.i
  %.neg.i = mul i64 %.sroa.0.06.i, -168
  %i.ek = getelementptr i8, ptr %i.eh, i64 %.neg.i
  %i.el = getelementptr i8, ptr %i.ek, i64 -168   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.s
  %i.em = phi ptr [ %.pre.i25, %bb.z ], [ %i.eh, %bb.s ]
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -168
  %i.eo = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h60662d48bfc71a04E(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.en)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" unwind label %bb.u ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h868f3c06738f8e98E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %common.resume unwind label %bb.ab

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i": ; preds = %bb.t
  %.val.i18 = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3 ; 7 uses
  %.val10.i = load i64, ptr %i.h, align 8, !alias.scope !2548, !noundef !3 ; 6 uses
  %.sroa.0.04.i.i19 = and i64 %.val10.i, %i.eo    ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.04.i.i19
  %.sroa.0.0.copyload.i35.i.i20 = load <16 x i8>, ptr %i.eq, align 1, !noalias !2551
  %i.er = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i20, zeroinitializer
  %i.es = bitcast <16 x i1> %i.er to i16          ; 2 uses
  %.not.not.i.not6.i.i21 = icmp eq i16 %i.es, 0
  br i1 %.not.not.i.not6.i.i21, label %.lr.ph.i14.i, label %._crit_edge.i13.i, !prof !2546

.lr.ph.i14.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i", %.lr.ph.i14.i
  %.sroa.0.07.i.i27 = phi i64 [ %.sroa.0.0.i.i28, %.lr.ph.i14.i ], [ %.sroa.0.04.i.i19, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ]
  %i.et = phi i64 [ %i.eu, %.lr.ph.i14.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ]
  %i.eu = add i64 %i.et, 16                       ; 2 uses
  %i.ev = add i64 %i.eu, %.sroa.0.07.i.i27
  %.sroa.0.0.i.i28 = and i64 %i.ev, %.val10.i     ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.0.i.i28
  %.sroa.0.0.copyload.i3.i.i29 = load <16 x i8>, ptr %i.ew, align 1, !noalias !2551
  %i.ex = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i29, zeroinitializer
  %i.ey = bitcast <16 x i1> %i.ex to i16          ; 2 uses
  %.not.not.i.not.i.i30 = icmp eq i16 %i.ey, 0
  br i1 %.not.not.i.not.i.i30, label %.lr.ph.i14.i, label %._crit_edge.i13.i, !prof !2547

._crit_edge.i13.i:                                ; preds = %.lr.ph.i14.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i"
  %.sroa.0.0.lcssa.i.i22 = phi i64 [ %.sroa.0.04.i.i19, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ], [ %.sroa.0.0.i.i28, %.lr.ph.i14.i ]
  %.lcssa.i.i23 = phi i16 [ %i.es, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ], [ %i.ey, %.lr.ph.i14.i ]
  %i.ez = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i23, i1 true)
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = add i64 %.sroa.0.0.lcssa.i.i22, %i.fa
  %i.fc = and i64 %i.fb, %.val10.i                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !noundef !3
  %i.ff = icmp sgt i8 %i.fe, -1
  br i1 %i.ff, label %bb.v, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i, !prof !155

bb.v:                                             ; preds = %._crit_edge.i13.i
  %.val2.i.i.i26 = load <16 x i8>, ptr %.val.i18, align 16
  %i.fg = icmp slt <16 x i8> %.val2.i.i.i26, zeroinitializer
  %i.fh = bitcast <16 x i1> %i.fg to i16          ; 2 uses
  %i.fi = icmp ne i16 %i.fh, 0
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fh, i1 true)
  %i.fk = zext nneg i16 %i.fj to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i: ; preds = %bb.v, %._crit_edge.i13.i
  %.sroa.0.0.i5.i.i24 = phi i64 [ %i.fk, %bb.v ], [ %i.fc, %._crit_edge.i13.i ] ; 4 uses
  %i.fl = sub i64 %.sroa.0.06.i, %.sroa.0.04.i.i19
  %i.fm = sub i64 %.sroa.0.0.i5.i.i24, %.sroa.0.04.i.i19
  %i.fn = xor i64 %i.fm, %i.fl
  %.unshifted.i = and i64 %i.fn, %.val10.i
  %i.fo = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fo, label %bb.x, label %bb.w, !prof !1634

bb.w:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %.neg9.i = mul i64 %.sroa.0.0.i5.i.i24, -168
  %i.fp = getelementptr i8, ptr %.val.i18, i64 %.neg9.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 -168   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.0.i5.i.i24 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !noundef !3
  %i.ft = lshr i64 %i.eo, 57
  %i.fu = trunc nuw nsw i64 %i.ft to i8           ; 2 uses
  %i.fv = add i64 %.sroa.0.0.i5.i.i24, -16
  %i.fw = and i64 %i.fv, %.val10.i
  store i8 %i.fu, ptr %i.fr, align 1
  %i.fx = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  store i8 %i.fu, ptr %i.fz, align 1
  %i.ga = icmp eq i8 %i.fs, -1
  br i1 %i.ga, label %bb.y, label %bb.z

bb.x:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.gb = lshr i64 %i.eo, 57
  %i.gc = trunc nuw nsw i64 %i.gb to i8           ; 2 uses
  %i.gd = add nuw i64 %.sroa.0.06.i, -16
  %i.ge = and i64 %.val10.i, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.06.i
  store i8 %i.gc, ptr %i.gf, align 1
  %i.gg = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3
  %i.gh = getelementptr i8, ptr %i.gg, i64 %i.ge
  %i.gi = getelementptr i8, ptr %i.gh, i64 16
  store i8 %i.gc, ptr %i.gi, align 1
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.gj = add nuw i64 %.sroa.0.06.i, -16
  %i.gk = load i64, ptr %i.h, align 8, !alias.scope !2548, !noundef !3
  %i.gl = and i64 %i.gk, %i.gj
  %i.gm = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gn, align 1
  %i.go = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gl
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  store i8 -1, ptr %i.gq, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.fq, ptr noundef nonnull align 1 dereferenceable(168) %i.el, i64 168, i1 false)
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  tail call fastcc void @_ZN4core3ptr19swap_nonoverlapping17h6a7dbe84a978c788E(ptr noundef %i.el, ptr noundef %i.fq)
  %.pre.i25 = load ptr, ptr %0, align 8, !alias.scope !2554, !noalias !2557
  br label %bb.t

bb.aa:                                            ; preds = %bb.y, %bb.x, %.lr.ph.i
  %i.gr = icmp ult i64 %.sroa.0.17.i, %i.k        ; 2 uses
  %i.gs = zext i1 %i.gr to i64
  %.sroa.0.1.i = add nuw i64 %.sroa.0.17.i, %i.gs
  br i1 %i.gr, label %.lr.ph.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

bb.ab:                                            ; preds = %bb.u
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #33
  unreachable

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit: ; preds = %bb.aa
  %.pre13.i = load i64, ptr %i.h, align 8, !alias.scope !2548
  %.pre13.i.fr = freeze i64 %.pre13.i             ; 3 uses
  %.pre14.i = add i64 %.pre13.i.fr, 1
  %i.gu = lshr i64 %.pre14.i, 3
  %i.gv = mul nuw i64 %i.gu, 7
  %i.gw = icmp ult i64 %.pre13.i.fr, 8
  %spec.select = select i1 %i.gw, i64 %.pre13.i.fr, i64 %i.gv
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !2548
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread
  %i.gx = phi i64 [ %i.e, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %.pre, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ]
  %i.gy = phi i64 [ 0, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %spec.select, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ]
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ha = sub i64 %i.gy, %i.gx
  store i64 %i.ha, ptr %i.gz, align 8, !alias.scope !2548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2548
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hcc6572b4143a0350E.exit.i

_ZN9hashbrown3raw13RawTableInner12resize_inner17hcc6572b4143a0350E.exit.i: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.thread, %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit", %bb.ac
  %.sroa.4.0.i = phi i64 [ undef, %bb.ac ], [ %.sroa.12.045, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.thread ], [ undef, %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit" ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775807, %bb.ac ], [ %.sroa.7.046, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.thread ], [ -9223372036854775807, %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit" ]
  %i.hb = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hc = insertvalue { i64, i64 } %i.hb, i64 %.sroa.4.0.i, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hffa5c287c76e4a79E.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hffa5c287c76e4a79E.exit: ; preds = %bb.c, %_ZN9hashbrown3raw13RawTableInner12resize_inner17hcc6572b4143a0350E.exit.i
  %.merged.i = phi { i64, i64 } [ %i.o, %bb.c ], [ %i.hc, %_ZN9hashbrown3raw13RawTableInner12resize_inner17hcc6572b4143a0350E.exit.i ]
  ret { i64, i64 } %.merged.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hb6e40b683943727bE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  %i.a = lshr i64 %1, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2559, !noalias !2562, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !2559, !noalias !2562, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %.sroa.0.15.vec.insert.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.sroa.9.0.i = phi i64 [ 0, %bb.a ], [ %i.ao, %bb.n ]
  %.pn = phi i64 [ %1, %bb.a ], [ %i.ap, %bb.n ]
  %.sroa.01.0.i = and i64 %.pn, %i.d              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i
  %.sroa.0.0.copyload.i27 = load <16 x i8>, ptr %i.f, align 1, !noalias !2564 ; 2 uses
  %i.g = icmp eq <16 x i8> %.sroa.0.0.copyload.i27, %.sroa.0.15.vec.insert.i
  %i.h = bitcast <16 x i1> %i.g to i16            ; 2 uses
  %.not.i.not43 = icmp eq i16 %i.h, 0
  br i1 %.not.i.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h0828047e149ca61fE.exit.thread"
  %.sroa.06.0.i44 = phi i16 [ %i.an, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h0828047e149ca61fE.exit.thread" ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i44, i1 true)
  %i.j = zext nneg i16 %i.i to i64
  %i.k = add i64 %.sroa.01.0.i, %i.j
  %i.l = and i64 %i.k, %i.d                       ; 2 uses
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [168 x i8], ptr %i.e, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2567), !noalias !2570
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2571), !noalias !2570
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574), !noalias !2570
  %i.p = load i64, ptr %i.o, align 8, !range !97, !alias.scope !2577, !noalias !2578, !noundef !3
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2582), !noalias !2570
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585), !noalias !2570
  %i.r = load i64, ptr %i.q, align 8, !range !97, !alias.scope !2587, !noalias !2588, !noundef !3
  %cond.i.i.i.i.i = icmp eq i64 %i.r, -9223372036854775807
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 -136 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 -128
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2587, !noalias !2588, !noundef !3 ; 8 uses
  br i1 %cond.i.i.i.i.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %.lr.ph
  %.not.i.i.i.i = icmp eq i64 %i.p, -9223372036854775807
  %i.v = load i64, ptr %i.s, align 8, !alias.scope !2587, !noalias !2588, !noundef !3 ; 8 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #31, !noalias !2589
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.05.0.in.i.i.i.i.i = getelementptr inbounds i8, ptr %i.n, i64 -160
  %.sroa.05.0.i.i.i.i.i = load ptr, ptr %.sroa.05.0.in.i.i.i.i.i, align 8, !alias.scope !2590, !noalias !2591, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.56.0.in.i.i.i.i.i = getelementptr inbounds i8, ptr %i.n, i64 -152
  %.sroa.56.0.i.i.i.i.i = load i64, ptr %.sroa.56.0.in.i.i.i.i.i, align 8, !alias.scope !2590, !noalias !2591, !noundef !3 ; 5 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.v, %i.u
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not5.i.i.i.i.i.i = icmp ult i64 %i.v, %.sroa.56.0.i.i.i.i.i
  br i1 %.not5.i.i.i.i.i.i, label %bb.i, label %.split.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i, %.split.i.i.i.i.i.i, %bb.f
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i", label %bb.j

.split.i.i.i.i.i.i:                               ; preds = %bb.g
  %i.y = icmp eq i64 %i.v, %.sroa.56.0.i.i.i.i.i
  br i1 %i.y, label %bb.h, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i.i.i, i64 %i.v
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !2592, !noalias !2589, !noundef !3
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %bb.h, label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not6.i.i.i.i.i.i = icmp ult i64 %i.u, %.sroa.56.0.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i.i, label %bb.k, label %.split7.i.i.i.i.i.i

.split7.i.i.i.i.i.i:                              ; preds = %bb.j
  %i.ac = icmp eq i64 %i.u, %.sroa.56.0.i.i.i.i.i
  br i1 %i.ac, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i", label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i.i.i, i64 %i.u
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !2592, !noalias !2589, !noundef !3
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i", label %bb.l

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i": ; preds = %bb.k, %.split7.i.i.i.i.i.i, %bb.h
  %i.ag = sub nuw i64 %i.u, %i.v
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i.i.i, i64 %i.v
  br label %"_ZN78_$LT$cookie..delta..DeltaCookie$u20$as$u20$core..borrow..Borrow$LT$str$GT$$GT$6borrow17h819222658ea6622bE.exit.i.i.i"

bb.l:                                             ; preds = %bb.k, %.split7.i.i.i.i.i.i, %bb.i, %.split.i.i.i.i.i.i, %bb.e
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.05.0.i.i.i.i.i, i64 noundef %.sroa.56.0.i.i.i.i.i, i64 noundef %i.v, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31, !noalias !2589
  unreachable

bb.m:                                             ; preds = %.lr.ph
  %.sroa.03.0.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !2587, !noalias !2588, !nonnull !3, !noundef !3
  br label %"_ZN78_$LT$cookie..delta..DeltaCookie$u20$as$u20$core..borrow..Borrow$LT$str$GT$$GT$6borrow17h819222658ea6622bE.exit.i.i.i"

"_ZN78_$LT$cookie..delta..DeltaCookie$u20$as$u20$core..borrow..Borrow$LT$str$GT$$GT$6borrow17h819222658ea6622bE.exit.i.i.i": ; preds = %bb.m, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i"
  %.sroa.03.0.pn.i.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i.i, %bb.m ], [ %i.ah, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i" ]
  %.sroa.54.0.pn.i.i.i.i.i = phi i64 [ %i.u, %bb.m ], [ %i.ag, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i" ]
  %.not.i3.i.i.i = icmp eq i64 %3, %.sroa.54.0.pn.i.i.i.i.i
  br i1 %.not.i3.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h0828047e149ca61fE.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h0828047e149ca61fE.exit.thread", !prof !2595

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h0828047e149ca61fE.exit": ; preds = %"_ZN78_$LT$cookie..delta..DeltaCookie$u20$as$u20$core..borrow..Borrow$LT$str$GT$$GT$6borrow17h819222658ea6622bE.exit.i.i.i"
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %2, ptr nonnull readonly align 1 %.sroa.03.0.pn.i.i.i.i.i, i64 %3), !alias.scope !2596, !noalias !2600
  %i.ai = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ai, label %_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE.exit, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h0828047e149ca61fE.exit.thread", !prof !1637

._crit_edge:                                      ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h0828047e149ca61fE.exit.thread", %bb.b
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.n, label %.loopexit, !prof !155

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h0828047e149ca61fE.exit.thread": ; preds = %"_ZN78_$LT$cookie..delta..DeltaCookie$u20$as$u20$core..borrow..Borrow$LT$str$GT$$GT$6borrow17h819222658ea6622bE.exit.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h0828047e149ca61fE.exit"
  %i.am = add i16 %.sroa.06.0.i44, -1
  %i.an = and i16 %i.am, %.sroa.06.0.i44          ; 2 uses
  %.not.i.not = icmp eq i16 %i.an, 0
  br i1 %.not.i.not, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %._crit_edge
  %i.ao = add i64 %.sroa.9.0.i, 16                ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i, %i.ao
end_hunk_1
