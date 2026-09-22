Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/cookie-84685c1c06e17ab0.cookie.812c9487578305d5-cgu.0?download=true
inline.NumInlined: 677
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h2028fbd112cadd72E":bb.a
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
define internal fastcc noundef range(i64 -66245516071199000, 66121194247199000) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4fac17dc882169cdE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
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
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !28, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !28
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !28 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfad0070656c1c650E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !28, !noundef !5 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfad0070656c1c650E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !28, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !28, !noundef !5
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !28, !noundef !5
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !28
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !28, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !28
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !28, !nonnull !5, !noundef !5
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !28, !inline_history !27
  %i.s = load i64, ptr %i.e, align 8, !noalias !28, !noundef !5
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfad0070656c1c650E.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfad0070656c1c650E.exit": ; preds = %bb.e, %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !28, !noundef !5 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !28, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !28
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !31 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !31 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !31, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f09789ca3846a94E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !31
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
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f09789ca3846a94E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #30, !noalias !31
  br label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f09789ca3846a94E.exit"

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f09789ca3846a94E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17h6a7dbe84a978c788E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 1, !alias.scope !75, !noalias !76
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %1, align 1, !alias.scope !76, !noalias !75
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %0, align 1, !alias.scope !75, !noalias !76
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %1, align 1, !alias.scope !76, !noalias !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.a, align 1, !alias.scope !77, !noalias !78
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.b, align 1, !alias.scope !78, !noalias !77
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.a, align 1, !alias.scope !77, !noalias !78
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.b, align 1, !alias.scope !78, !noalias !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.c, align 1, !alias.scope !79, !noalias !80
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.d, align 1, !alias.scope !80, !noalias !79
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.c, align 1, !alias.scope !79, !noalias !80
  store i64 %.sroa.0.0.copyload.i.i.i.2, ptr %i.d, align 1, !alias.scope !80, !noalias !79
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %.sroa.0.0.copyload.i.i.i.3 = load i64, ptr %i.e, align 1, !alias.scope !81, !noalias !82
  %.sroa.02.0.copyload.i.i.i.3 = load i64, ptr %i.f, align 1, !alias.scope !82, !noalias !81
  store i64 %.sroa.02.0.copyload.i.i.i.3, ptr %i.e, align 1, !alias.scope !81, !noalias !82
  store i64 %.sroa.0.0.copyload.i.i.i.3, ptr %i.f, align 1, !alias.scope !82, !noalias !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.sroa.0.0.copyload.i.i.i.4 = load i64, ptr %i.g, align 1, !alias.scope !83, !noalias !84
  %.sroa.02.0.copyload.i.i.i.4 = load i64, ptr %i.h, align 1, !alias.scope !84, !noalias !83
  store i64 %.sroa.02.0.copyload.i.i.i.4, ptr %i.g, align 1, !alias.scope !83, !noalias !84
  store i64 %.sroa.0.0.copyload.i.i.i.4, ptr %i.h, align 1, !alias.scope !84, !noalias !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %.sroa.0.0.copyload.i.i.i.5 = load i64, ptr %i.i, align 1, !alias.scope !85, !noalias !86
  %.sroa.02.0.copyload.i.i.i.5 = load i64, ptr %i.j, align 1, !alias.scope !86, !noalias !85
  store i64 %.sroa.02.0.copyload.i.i.i.5, ptr %i.i, align 1, !alias.scope !85, !noalias !86
  store i64 %.sroa.0.0.copyload.i.i.i.5, ptr %i.j, align 1, !alias.scope !86, !noalias !85
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %.sroa.0.0.copyload.i.i.i.6 = load i64, ptr %i.k, align 1, !alias.scope !87, !noalias !88
  %.sroa.02.0.copyload.i.i.i.6 = load i64, ptr %i.l, align 1, !alias.scope !88, !noalias !87
  store i64 %.sroa.02.0.copyload.i.i.i.6, ptr %i.k, align 1, !alias.scope !87, !noalias !88
  store i64 %.sroa.0.0.copyload.i.i.i.6, ptr %i.l, align 1, !alias.scope !88, !noalias !87
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %.sroa.0.0.copyload.i.i.i.7 = load i64, ptr %i.m, align 1, !alias.scope !89, !noalias !90
  %.sroa.02.0.copyload.i.i.i.7 = load i64, ptr %i.n, align 1, !alias.scope !90, !noalias !89
  store i64 %.sroa.02.0.copyload.i.i.i.7, ptr %i.m, align 1, !alias.scope !89, !noalias !90
  store i64 %.sroa.0.0.copyload.i.i.i.7, ptr %i.n, align 1, !alias.scope !90, !noalias !89
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %.sroa.0.0.copyload.i.i.i.8 = load i64, ptr %i.o, align 1, !alias.scope !91, !noalias !92
  %.sroa.02.0.copyload.i.i.i.8 = load i64, ptr %i.p, align 1, !alias.scope !92, !noalias !91
  store i64 %.sroa.02.0.copyload.i.i.i.8, ptr %i.o, align 1, !alias.scope !91, !noalias !92
  store i64 %.sroa.0.0.copyload.i.i.i.8, ptr %i.p, align 1, !alias.scope !92, !noalias !91
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.sroa.0.0.copyload.i.i.i.9 = load i64, ptr %i.q, align 1, !alias.scope !93, !noalias !94
  %.sroa.02.0.copyload.i.i.i.9 = load i64, ptr %i.r, align 1, !alias.scope !94, !noalias !93
  store i64 %.sroa.02.0.copyload.i.i.i.9, ptr %i.q, align 1, !alias.scope !93, !noalias !94
  store i64 %.sroa.0.0.copyload.i.i.i.9, ptr %i.r, align 1, !alias.scope !94, !noalias !93
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %.sroa.0.0.copyload.i.i.i.10 = load i64, ptr %i.s, align 1, !alias.scope !95, !noalias !96
  %.sroa.02.0.copyload.i.i.i.10 = load i64, ptr %i.t, align 1, !alias.scope !96, !noalias !95
  store i64 %.sroa.02.0.copyload.i.i.i.10, ptr %i.s, align 1, !alias.scope !95, !noalias !96
  store i64 %.sroa.0.0.copyload.i.i.i.10, ptr %i.t, align 1, !alias.scope !96, !noalias !95
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %.sroa.0.0.copyload.i.i.i.11 = load i64, ptr %i.u, align 1, !alias.scope !97, !noalias !98
  %.sroa.02.0.copyload.i.i.i.11 = load i64, ptr %i.v, align 1, !alias.scope !98, !noalias !97
  store i64 %.sroa.02.0.copyload.i.i.i.11, ptr %i.u, align 1, !alias.scope !97, !noalias !98
  store i64 %.sroa.0.0.copyload.i.i.i.11, ptr %i.v, align 1, !alias.scope !98, !noalias !97
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %.sroa.0.0.copyload.i.i.i.12 = load i64, ptr %i.w, align 1, !alias.scope !99, !noalias !100
  %.sroa.02.0.copyload.i.i.i.12 = load i64, ptr %i.x, align 1, !alias.scope !100, !noalias !99
  store i64 %.sroa.02.0.copyload.i.i.i.12, ptr %i.w, align 1, !alias.scope !99, !noalias !100
  store i64 %.sroa.0.0.copyload.i.i.i.12, ptr %i.x, align 1, !alias.scope !100, !noalias !99
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %.sroa.0.0.copyload.i.i.i.13 = load i64, ptr %i.y, align 1, !alias.scope !101, !noalias !102
  %.sroa.02.0.copyload.i.i.i.13 = load i64, ptr %i.z, align 1, !alias.scope !102, !noalias !101
  store i64 %.sroa.02.0.copyload.i.i.i.13, ptr %i.y, align 1, !alias.scope !101, !noalias !102
  store i64 %.sroa.0.0.copyload.i.i.i.13, ptr %i.z, align 1, !alias.scope !102, !noalias !101
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %.sroa.0.0.copyload.i.i.i.14 = load i64, ptr %i.aa, align 1, !alias.scope !103, !noalias !104
  %.sroa.02.0.copyload.i.i.i.14 = load i64, ptr %i.ab, align 1, !alias.scope !104, !noalias !103
  store i64 %.sroa.02.0.copyload.i.i.i.14, ptr %i.aa, align 1, !alias.scope !103, !noalias !104
  store i64 %.sroa.0.0.copyload.i.i.i.14, ptr %i.ab, align 1, !alias.scope !104, !noalias !103
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %.sroa.0.0.copyload.i.i.i.15 = load i64, ptr %i.ac, align 1, !alias.scope !105, !noalias !106
  %.sroa.02.0.copyload.i.i.i.15 = load i64, ptr %i.ad, align 1, !alias.scope !106, !noalias !105
  store i64 %.sroa.02.0.copyload.i.i.i.15, ptr %i.ac, align 1, !alias.scope !105, !noalias !106
  store i64 %.sroa.0.0.copyload.i.i.i.15, ptr %i.ad, align 1, !alias.scope !106, !noalias !105
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %.sroa.0.0.copyload.i.i.i.16 = load i64, ptr %i.ae, align 1, !alias.scope !107, !noalias !108
  %.sroa.02.0.copyload.i.i.i.16 = load i64, ptr %i.af, align 1, !alias.scope !108, !noalias !107
  store i64 %.sroa.02.0.copyload.i.i.i.16, ptr %i.ae, align 1, !alias.scope !107, !noalias !108
  store i64 %.sroa.0.0.copyload.i.i.i.16, ptr %i.af, align 1, !alias.scope !108, !noalias !107
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %.sroa.0.0.copyload.i.i.i.17 = load i64, ptr %i.ag, align 1, !alias.scope !109, !noalias !110
  %.sroa.02.0.copyload.i.i.i.17 = load i64, ptr %i.ah, align 1, !alias.scope !110, !noalias !109
  store i64 %.sroa.02.0.copyload.i.i.i.17, ptr %i.ag, align 1, !alias.scope !109, !noalias !110
  store i64 %.sroa.0.0.copyload.i.i.i.17, ptr %i.ah, align 1, !alias.scope !110, !noalias !109
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %.sroa.0.0.copyload.i.i.i.18 = load i64, ptr %i.ai, align 1, !alias.scope !111, !noalias !112
  %.sroa.02.0.copyload.i.i.i.18 = load i64, ptr %i.aj, align 1, !alias.scope !112, !noalias !111
  store i64 %.sroa.02.0.copyload.i.i.i.18, ptr %i.ai, align 1, !alias.scope !111, !noalias !112
  store i64 %.sroa.0.0.copyload.i.i.i.18, ptr %i.aj, align 1, !alias.scope !112, !noalias !111
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.sroa.0.0.copyload.i.i.i.19 = load i64, ptr %i.ak, align 1, !alias.scope !113, !noalias !114
  %.sroa.02.0.copyload.i.i.i.19 = load i64, ptr %i.al, align 1, !alias.scope !114, !noalias !113
  store i64 %.sroa.02.0.copyload.i.i.i.19, ptr %i.ak, align 1, !alias.scope !113, !noalias !114
  store i64 %.sroa.0.0.copyload.i.i.i.19, ptr %i.al, align 1, !alias.scope !114, !noalias !113
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %.sroa.0.0.copyload.i.i.i.20 = load i64, ptr %i.am, align 1, !alias.scope !115, !noalias !116
  %.sroa.02.0.copyload.i.i.i.20 = load i64, ptr %i.an, align 1, !alias.scope !116, !noalias !115
  store i64 %.sroa.02.0.copyload.i.i.i.20, ptr %i.am, align 1, !alias.scope !115, !noalias !116
  store i64 %.sroa.0.0.copyload.i.i.i.20, ptr %i.an, align 1, !alias.scope !116, !noalias !115
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr35drop_in_place$LT$cookie..Cookie$GT$17h847c2d0f7fbc3d51E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val13 = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  %switch = icmp sgt i64 %.val13, 0
  br i1 %switch, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i", label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h11cd2dd2660fbe2cE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i": ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val13, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h11cd2dd2660fbe2cE.exit"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h11cd2dd2660fbe2cE.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i"
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZN6cookie5parse11parse_inner17he18e37d26665742fE:.lr.ph.split.i.i
  %i.iu = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.5182.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2160 ; 18 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.bd, label %iter.check

bb.bd:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.bc
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.bc ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.5182.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #31
          to label %.noexc332 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc332:                                        ; preds = %bb.bd
  unreachable

iter.check:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iu, ptr nonnull readonly align 1 %.sroa.0181.0, i64 %.sroa.5182.0, i1 false), !noalias !2161
  %min.iters.check = icmp ult i64 %.sroa.5182.0, 8
  br i1 %min.iters.check, label %.lr.ph.i.i331.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1064 = icmp ult i64 %.sroa.5182.0, 32
  br i1 %min.iters.check1064, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iw = and i64 %.sroa.5182.0, 24
  %n.vec = and i64 %.sroa.5182.0, 9223372036854775776 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %index ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ix, align 1, !alias.scope !2162, !noalias !2163 ; 2 uses
  %wide.load1065 = load <16 x i8>, ptr %i.iy, align 1, !alias.scope !2162, !noalias !2163 ; 2 uses
  %i.iz = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ja = add <16 x i8> %wide.load1065, splat (i8 -65)
  %i.jb = icmp ult <16 x i8> %i.iz, splat (i8 26)
  %i.jc = icmp ult <16 x i8> %i.ja, splat (i8 26)
  %i.jd = select <16 x i1> %i.jb, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.je = select <16 x i1> %i.jc, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.jf = or <16 x i8> %i.jd, %wide.load
  %i.jg = or <16 x i8> %i.je, %wide.load1065
  store <16 x i8> %i.jf, ptr %i.ix, align 1, !alias.scope !2162, !noalias !2163
  store <16 x i8> %i.jg, ptr %i.iy, align 1, !alias.scope !2162, !noalias !2163
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !2072

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.5182.0, %n.vec
  br i1 %cmp.n, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i331.preheader, label %vec.epilog.ph, !prof !2166

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1066 = and i64 %.sroa.5182.0, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1067 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1069, %vec.epilog.vector.body ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iu, i64 %index1067 ; 2 uses
  %wide.load1068 = load <8 x i8>, ptr %i.ji, align 1, !alias.scope !2162, !noalias !2163 ; 2 uses
  %i.jj = add <8 x i8> %wide.load1068, splat (i8 -65)
  %i.jk = icmp ult <8 x i8> %i.jj, splat (i8 26)
  %i.jl = select <8 x i1> %i.jk, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.jm = or <8 x i8> %i.jl, %wide.load1068
  store <8 x i8> %i.jm, ptr %i.ji, align 1, !alias.scope !2162, !noalias !2163
  %index.next1069 = add nuw i64 %index1067, 8     ; 2 uses
  %i.jn = icmp eq i64 %index.next1069, %n.vec1066
  br i1 %i.jn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2073

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1070 = icmp eq i64 %.sroa.5182.0, %n.vec1066
  br i1 %cmp.n1070, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", label %.lr.ph.i.i331.preheader

.lr.ph.i.i331.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1066, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i331

.lr.ph.i.i331:                                    ; preds = %.lr.ph.i.i331.preheader, %.lr.ph.i.i331
  %.sroa.0.05.i.i = phi i64 [ %i.jt, %.lr.ph.i.i331 ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i331.preheader ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iu, i64 %.sroa.0.05.i.i ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !2162, !noalias !2163, !noundef !5 ; 2 uses
  %i.jq = add i8 %i.jp, -65
  %i.jr = icmp ult i8 %i.jq, 26
  %i.js = select i1 %i.jr, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.js, %i.jp
  store i8 %.sroa.03.0.i.i, ptr %i.jo, align 1, !alias.scope !2162, !noalias !2163
  %i.jt = add nuw nsw i64 %.sroa.0.05.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jt, %.sroa.5182.0
  br i1 %exitcond.not.i.i, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", label %.lr.ph.i.i331, !llvm.loop !2074

bb.be:                                            ; preds = %bb.bb
  %i.ju = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd80e8504149a2e96E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.1.i292, i64 noundef %i.io)
  %i.jv = add nuw i64 %i.io, 1                    ; 5 uses
  %.not.i333 = icmp ult i64 %i.jv, %.sroa.4.1.i291
  br i1 %.not.i333, label %bb.bg, label %.split.i334

bb.bf:                                            ; preds = %.thread550
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i292, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !2167, !noundef !5
  %i.jy = icmp sgt i8 %i.jx, -65
  br i1 %i.jy, label %.split.i334, label %.thread550

.split.i334:                                      ; preds = %bb.be, %bb.bg
  %i.jz = sub nuw i64 %.sroa.4.1.i291, %i.jv
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i292, i64 %i.jv
  %i.kb = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd80e8504149a2e96E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ka, i64 noundef %i.jz) ; 2 uses
  %i.kc = extractvalue { ptr, i64 } %i.kb, 0
  %i.kd = extractvalue { ptr, i64 } %i.kb, 1
  br label %bb.bc

.thread550:                                       ; preds = %bb.bg
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.1.i292, i64 noundef %.sroa.4.1.i291, i64 noundef %i.jv, i64 noundef %.sroa.4.1.i291, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #31
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp

"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit": ; preds = %.lr.ph.i.i331, %vec.epilog.middle.block, %middle.block
  switch i64 %.sroa.5182.0, label %.backedge.sink.split [
    i64 6, label %bb.bh
    i64 8, label %bb.bj
    i64 7, label %bb.bl
    i64 4, label %bb.cn
  ]

bb.bh:                                            ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit"
  %i.ke = load i32, ptr %i.iu, align 1
  %i.kf = xor i32 %i.ke, 1969448307
  %i.kg = getelementptr i8, ptr %i.iu, i64 4
  %i.kh = load i16, ptr %i.kg, align 1
  %i.ki = zext i16 %i.kh to i32
  %i.kj = xor i32 %i.ki, 25970
  %i.kk = or i32 %i.kf, %i.kj
  %i.kl = icmp ne i32 %i.kk, 0
  %i.km = zext i1 %i.kl to i32
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.bi, label %bb.ch

bb.bi:                                            ; preds = %bb.bh
  store i8 1, ptr %i.fp, align 8
  br label %.backedge.sink.split

bb.bj:                                            ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit"
  %i.ko = load i64, ptr %i.iu, align 1
  %i.kp = icmp ne i64 %i.ko, 8749489600981136488
  %i.kq = zext i1 %i.kp to i32
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %bb.bk, label %bb.cp

bb.bk:                                            ; preds = %bb.bj
  store i8 1, ptr %i.fq, align 1
  br label %.backedge.sink.split

bb.bl:                                            ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit"
  %i.ks = load i32, ptr %i.iu, align 1
  %i.kt = xor i32 %i.ks, 762863981
  %i.ku = getelementptr i8, ptr %i.iu, i64 3
  %i.kv = load i32, ptr %i.ku, align 1
  %i.kw = xor i32 %i.kv, 1701273901
  %i.kx = or i32 %i.kt, %i.kw
  %i.ky = icmp ne i32 %i.kx, 0
  %i.kz = zext i1 %i.ky to i32
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.bm, label %bb.cr

bb.bm:                                            ; preds = %bb.bl
  %.not210 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not210, label %.backedge.sink.split, label %bb.bn

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i338": ; preds = %.loopexit617, %.loopexit.split-lp618, %bb.dn, %bb.de, %bb.cv
  %.pn227559 = phi { ptr, i32 } [ %i.ug, %bb.dn ], [ %i.tx, %bb.de ], [ %i.tn, %bb.cv ], [ %lpad.loopexit619, %.loopexit617 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp618 ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef %.sroa.5182.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit339"

.loopexit617:                                     ; preds = %bb.cs, %bb.cx, %bb.dg, %bb.dp, %bb.dw
  %lpad.loopexit619 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i338"

.loopexit.split-lp618:                            ; preds = %.invoke1071, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i338"

bb.bn:                                            ; preds = %bb.bm
  %.not.i340 = icmp eq i64 %.sroa.5184.0, 0
  br i1 %.not.i340, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit": ; preds = %bb.bn
  %rhsc.i = load i8, ptr %.sroa.0183.0, align 1, !alias.scope !2168, !noalias !2169
  %i.lb = icmp eq i8 %rhsc.i, 45
  br i1 %i.lb, label %bb.br, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread": ; preds = %bb.bn, %.split.i344, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit"
  %.sroa.03.0.i562 = phi i1 [ true, %.split.i344 ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit" ], [ false, %bb.bn ]
  %.sroa.976.0 = phi i64 [ %i.mr, %.split.i344 ], [ %.sroa.5184.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit" ], [ 0, %bb.bn ] ; 9 uses
  %.sroa.072.0 = phi ptr [ %i.ms, %.split.i344 ], [ %.sroa.0183.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit" ], [ %.sroa.0183.0, %bb.bn ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.072.0) ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.072.0, i64 %.sroa.976.0 ; 4 uses
  br label %bb.bo

bb.bo:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread"
  %i.lc = phi ptr [ %i.ml, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i" ], [ %.sroa.072.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread" ] ; 6 uses
  %.not.i.i342 = icmp eq ptr %i.lc, %4
  br i1 %.not.i.i342, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 3 uses
  %i.le = load i8, ptr %i.lc, align 1, !noalias !2170, !noundef !5 ; 5 uses
  %i.lf = icmp sgt i8 %i.le, -1
  br i1 %i.lf, label %bb.bq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i": ; preds = %bb.bp
  %i.lg = and i8 %i.le, 31
  %i.lh = zext nneg i8 %i.lg to i32               ; 3 uses
  %i.li = icmp ne ptr %i.ld, %4
  call void @llvm.assume(i1 %i.li)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 2 ; 3 uses
  %i.lk = load i8, ptr %i.ld, align 1, !noalias !2170, !noundef !5
  %i.ll = shl nuw nsw i32 %i.lh, 6
  %i.lm = and i8 %i.lk, 63
  %i.ln = zext nneg i8 %i.lm to i32               ; 2 uses
  %i.lo = or disjoint i32 %i.ll, %i.ln
  %i.lp = icmp samesign ugt i8 %i.le, -33
  br i1 %i.lp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

bb.bq:                                            ; preds = %bb.bp
  %i.lq = zext nneg i8 %i.le to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i"
  %i.lr = icmp ne ptr %i.lj, %4
  call void @llvm.assume(i1 %i.lr)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lc, i64 3 ; 3 uses
  %i.lt = load i8, ptr %i.lj, align 1, !noalias !2170, !noundef !5
  %i.lu = shl nuw nsw i32 %i.ln, 6
  %i.lv = and i8 %i.lt, 63
  %i.lw = zext nneg i8 %i.lv to i32
  %i.lx = or disjoint i32 %i.lu, %i.lw            ; 2 uses
  %i.ly = shl nuw nsw i32 %i.lh, 12
  %i.lz = or disjoint i32 %i.lx, %i.ly
  %i.ma = icmp samesign ugt i8 %i.le, -17
  br i1 %i.ma, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i"
  %i.mb = icmp ne ptr %i.ls, %4
  call void @llvm.assume(i1 %i.mb)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.md = load i8, ptr %i.ls, align 1, !noalias !2170, !noundef !5
  %i.me = shl nuw nsw i32 %i.lh, 18
  %i.mf = and i32 %i.me, 1835008
  %i.mg = shl nuw nsw i32 %i.lx, 6
  %i.mh = and i8 %i.md, 63
  %i.mi = zext nneg i8 %i.mh to i32
  %i.mj = or disjoint i32 %i.mg, %i.mi
  %i.mk = or disjoint i32 %i.mj, %i.mf            ; 2 uses
  %.not.not.i = icmp eq i32 %i.mk, 1114112
  br i1 %.not.not.i, label %bb.bt, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i", %bb.bq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i"
  %i.ml = phi ptr [ %i.mc, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i" ], [ %i.ls, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i" ], [ %i.lj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i" ], [ %i.ld, %bb.bq ]
  %spec.select.i8.i = phi i32 [ %i.mk, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i" ], [ %i.lz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i" ], [ %i.lo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i" ], [ %i.lq, %bb.bq ]
  %i.mm = add nsw i32 %spec.select.i8.i, -58
  %i.mn = icmp ult i32 %i.mm, -10
  br i1 %i.mn, label %.backedge.sink.split, label %bb.bo

bb.br:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit"
  %.not.i343.not = icmp eq i64 %.sroa.5184.0, 1
  br i1 %.not.i343.not, label %.split.i344, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 1
  %i.mp = load i8, ptr %i.mo, align 1, !alias.scope !2171, !noundef !5
  %i.mq = icmp sgt i8 %i.mp, -65
  br i1 %i.mq, label %.split.i344, label %.invoke

.split.i344:                                      ; preds = %bb.br, %bb.bs
  %i.mr = add i64 %.sroa.5184.0, -1
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 1
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread"

.invoke:                                          ; preds = %bb.cl, %bb.bs
  %i.mt = phi ptr [ @50, %bb.bs ], [ @51, %bb.cl ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0183.0, i64 noundef %.sroa.5184.0, i64 noundef 1, i64 noundef %.sroa.5184.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mt) #31
          to label %.cont unwind label %.loopexit.split-lp618

.cont:                                            ; preds = %.invoke
  unreachable

.backedge.sink.split:                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i", %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", %bb.cr, %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit366", %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit", %bb.ci, %bb.bm, %bb.bk, %bb.bi, %bb.ch, %bb.cn, %bb.cp, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit", %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit395", %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit383", %.loopexit887, %.preheader.i387.3, %.preheader.i387.2, %.preheader.i387.1, %.preheader.i387.preheader, %.preheader.i375.preheader, %.preheader.i375.1, %.preheader.i375.2, %.preheader.i370.preheader, %.preheader.i370.1, %.preheader.i370.2, %.preheader.i370.3, %.preheader.i370.4, %.preheader.i370.5, %bb.cq, %bb.dz, %bb.dy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i418", %bb.dx, %bb.dv, %.thread592, %bb.dw
  %.sroa.5182.0.sink = phi i64 [ %.sroa.5182.0, %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit" ], [ %.sroa.5182.0, %bb.dw ], [ %.sroa.5182.0, %.thread592 ], [ %.sroa.5182.0, %bb.dv ], [ %.sroa.5182.0, %bb.dx ], [ %.sroa.5182.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i418" ], [ %.sroa.5182.0, %bb.dy ], [ %.sroa.5182.0, %bb.dz ], [ %.sroa.5182.0, %bb.cq ], [ %.sroa.5182.0, %.preheader.i370.5 ], [ %.sroa.5182.0, %.preheader.i370.4 ], [ %.sroa.5182.0, %.preheader.i370.3 ], [ %.sroa.5182.0, %.preheader.i370.2 ], [ %.sroa.5182.0, %.preheader.i370.1 ], [ %.sroa.5182.0, %.preheader.i370.preheader ], [ %.sroa.5182.0, %.preheader.i375.2 ], [ %.sroa.5182.0, %.preheader.i375.1 ], [ %.sroa.5182.0, %.preheader.i375.preheader ], [ %.sroa.5182.0, %.preheader.i387.preheader ], [ %.sroa.5182.0, %.preheader.i387.1 ], [ %.sroa.5182.0, %.preheader.i387.2 ], [ %.sroa.5182.0, %.preheader.i387.3 ], [ %.sroa.5182.0, %.loopexit887 ], [ %.sroa.5182.0, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit383" ], [ %.sroa.5182.0, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit395" ], [ %.sroa.5182.0, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit" ], [ %.sroa.5182.0, %bb.cp ], [ %.sroa.5182.0, %bb.cn ], [ %.sroa.5182.0, %bb.ch ], [ %.sroa.5182.0, %bb.bi ], [ %.sroa.5182.0, %bb.bk ], [ %.sroa.5182.0, %bb.bm ], [ %.sroa.5182.0, %bb.ci ], [ %.sroa.5182.0, %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit" ], [ %.sroa.5182.0, %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit366" ], [ %.sroa.5182.0, %bb.cr ], [ 7, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef %.sroa.5182.0.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  br i1 %i.hz, label %._crit_edge, label %bb.as

bb.bt:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i", %bb.bo
  br i1 %.sroa.03.0.i562, label %.loopexit887, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  switch i64 %.sroa.976.0, label %thread-pre-split.i [
    i64 0, label %.loopexit887
    i64 1, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.mu = load i8, ptr %.sroa.072.0, align 1, !alias.scope !2172, !noalias !2173, !noundef !5 ; 2 uses
  switch i8 %i.mu, label %bb.bw [
    i8 43, label %.loopexit887
    i8 45, label %.loopexit887
  ]

thread-pre-split.i:                               ; preds = %bb.bu
  %.pr.i = load i8, ptr %.sroa.072.0, align 1, !alias.scope !2172, !noalias !2173
  br label %bb.bw

bb.bw:                                            ; preds = %thread-pre-split.i, %bb.bv
  %i.mv = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.mu, %bb.bv ]
  switch i8 %i.mv, label %bb.cd [
    i8 43, label %bb.bx
    i8 45, label %bb.by
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.072.0, i64 1 ; 2 uses
  %i.mx = add i64 %.sroa.976.0, -1                ; 3 uses
  %i.my = icmp ult i64 %.sroa.976.0, 17
  br i1 %i.my, label %.preheader.i, label %.preheader95.i

bb.by:                                            ; preds = %bb.bw
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.072.0, i64 1 ; 2 uses
  %i.na = add i64 %.sroa.976.0, -1                ; 3 uses
  %i.nb = icmp ult i64 %.sroa.976.0, 17
  %.not89109.i = icmp eq i64 %i.na, 0             ; 2 uses
  br i1 %i.nb, label %.preheader97.i, label %.preheader99.i.preheader

.preheader99.i.preheader:                         ; preds = %bb.by
  br i1 %.not89109.i, label %.loopexit887, label %.lr.ph1057

.preheader97.i:                                   ; preds = %bb.by
  br i1 %.not89109.i, label %.loopexit887, label %.lr.ph.i

bb.bz:                                            ; preds = %bb.cf
  %i.nc = extractvalue { i64, i1 } %i.ok, 0       ; 2 uses
  %.not90.i.not = icmp eq i64 %i.ob, 0
  br i1 %.not90.i.not, label %.loopexit887, label %.lr.ph1062

.preheader99.i:                                   ; preds = %bb.cb
  %i.nd = extractvalue { i64, i1 } %i.no, 0       ; 2 uses
  %.not.i350.not = icmp eq i64 %i.nf, 0
  br i1 %.not.i350.not, label %.loopexit887, label %.lr.ph1057

.lr.ph1057:                                       ; preds = %.preheader99.i.preheader, %.preheader99.i
  %.sroa.01.2.i1056 = phi ptr [ %i.ne, %.preheader99.i ], [ %i.mz, %.preheader99.i.preheader ] ; 2 uses
  %.sroa.27.2.i1055 = phi i64 [ %i.nf, %.preheader99.i ], [ %i.na, %.preheader99.i.preheader ]
  %.sroa.031.2.i1054 = phi i64 [ %i.nd, %.preheader99.i ], [ 0, %.preheader99.i.preheader ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i1056, i64 1
  %i.nf = add i64 %.sroa.27.2.i1055, -1           ; 2 uses
  %i.ng = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i1054, i64 10) ; 2 uses
  %i.nh = extractvalue { i64, i1 } %i.ng, 0
  %i.ni = load i8, ptr %.sroa.01.2.i1056, align 1, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.nj = zext i8 %i.ni to i32
  %i.nk = add nsw i32 %i.nj, -48                  ; 2 uses
  %i.nl = icmp ult i32 %i.nk, 10
  br i1 %i.nl, label %bb.ca, label %.loopexit887

bb.ca:                                            ; preds = %.lr.ph1057
  %i.nm = extractvalue { i64, i1 } %i.ng, 1
  br i1 %i.nm, label %.loopexit887, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nn = zext nneg i32 %i.nk to i64
  %i.no = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.nh, i64 %i.nn) ; 2 uses
  %i.np = extractvalue { i64, i1 } %i.no, 1
  br i1 %i.np, label %.loopexit887, label %.preheader99.i

.lr.ph.i:                                         ; preds = %.preheader97.i, %bb.cc
  %.sroa.01.3112.i = phi ptr [ %i.nw, %bb.cc ], [ %i.mz, %.preheader97.i ] ; 2 uses
  %.sroa.27.3111.i = phi i64 [ %i.nv, %bb.cc ], [ %i.na, %.preheader97.i ]
  %.sroa.031.4110.i = phi i64 [ %i.ny, %bb.cc ], [ 0, %.preheader97.i ]
  %i.nq = load i8, ptr %.sroa.01.3112.i, align 1, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.nr = zext i8 %i.nq to i32
  %i.ns = add nsw i32 %i.nr, -48                  ; 2 uses
  %i.nt = icmp ugt i32 %i.ns, 9
  br i1 %i.nt, label %.loopexit887, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i
  %i.nu = mul i64 %.sroa.031.4110.i, 10
  %i.nv = add nsw i64 %.sroa.27.3111.i, -1        ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i, i64 1
  %i.nx = zext nneg i32 %i.ns to i64
  %i.ny = sub i64 %i.nu, %i.nx                    ; 2 uses
  %.not89.i = icmp eq i64 %i.nv, 0
  br i1 %.not89.i, label %.loopexit887, label %.lr.ph.i

bb.cd:                                            ; preds = %bb.bw
  %i.nz = icmp ult i64 %.sroa.976.0, 16
  br i1 %i.nz, label %.lr.ph117.i.preheader, label %.preheader95.i
end_hunk_1
begin_hunk_2_@_ZN6cookie6Cookie10unset_path17hee879956ac52906fE:bb.a
  %.val4 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i"
  store i64 -9223372036854775806, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6cookie6Cookie12make_removal17h331ba5ad5fc108a8E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) initializes((64, 72), (120, 136)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !range !7, !alias.scope !2264, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %switch.i = icmp sgt i64 %.val.i, 0
  br i1 %switch.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i", label %_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i": ; preds = %bb.a
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !2264, !nonnull !5, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2264
  br label %_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i

_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i: ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i"
  store i64 -9223372036854775808, ptr %i.d, align 8, !alias.scope !2264
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8, !alias.scope !2264
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.6.0..sroa_idx6.i, align 8, !alias.scope !2264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2265)
  %.sroa.09.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !2265, !noalias !2266 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i64 %.sroa.09.0.copyload.i to i32
  %i.g = icmp ult i32 %.sroa.01.0.extract.trunc.i.i.i, 1000000000
  tail call void @llvm.assume(i1 %i.g)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !2265, !noalias !2266 ; 2 uses
  %i.h = and i32 %.sroa.2.0.copyload.i, 511
  %i.i = add nuw nsw i32 %i.h, -363521075
  %i.j = ashr i32 %.sroa.2.0.copyload.i, 10
  %i.k = add nsw i32 %i.j, 999999                 ; 3 uses
  %.neg.i.i.i = sdiv i32 %i.k, -100
  %i.l = add nsw i32 %i.i, %.neg.i.i.i
  %i.m = sdiv i32 %i.k, 400
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = sext i32 %i.k to i64
  %i.p = mul nsw i64 %i.o, 1461
  %i.q = sdiv i64 %i.p, 4
  %i.r = trunc nsw i64 %i.q to i32
  %i.s = add nsw i32 %i.n, %i.r                   ; 2 uses
  %i.t = add nsw i32 %i.s, -5373850
  %or.cond.i.i.i.i = icmp ult i32 %i.t, -7304484
  br i1 %or.cond.i.i.i.i, label %_ZN4time19primitive_date_time17PrimitiveDateTime11checked_sub17h4803e67e338f0548E.exit.thread.i, label %_ZN6cookie10expiration10Expiration3map17h03d683e9edbcb503E.exit, !prof !20

_ZN4time19primitive_date_time17PrimitiveDateTime11checked_sub17h4803e67e338f0548E.exit.thread.i: ; preds = %_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #31, !noalias !2267
  unreachable

_ZN6cookie10expiration10Expiration3map17h03d683e9edbcb503E.exit: ; preds = %_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i
  %i.u = add nsw i32 %i.s, 867409628              ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 3853261555         ; 2 uses
  %i.x = lshr i64 %i.w, 15
  %i.y = lshr i64 %i.w, 47
  %i.z = trunc nuw nsw i64 %i.y to i32            ; 3 uses
  %i.aa = trunc i64 %i.x to i32
  %i.ab = icmp ugt i32 %i.aa, 42920275
  %i.ac = and i32 %i.z, 3
  %i.ad = icmp eq i32 %i.ac, 0
  %.sroa.0.0.i.i.i.i.i = or i1 %i.ab, %i.ad       ; 2 uses
  %i.ae = lshr i32 %i.z, 2
  %i.af = add nuw nsw i32 %i.u, %i.z
  %i.ag = sub nuw nsw i32 %i.af, %i.ae
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.ah, 3010298776       ; 2 uses
  %i.aj = lshr i64 %i.ai, 8
  %i.ak = lshr i64 %i.ai, 40
  %i.al = trunc nuw nsw i64 %i.ak to i32          ; 2 uses
  %i.am = and i64 %i.aj, 4294967295
  %i.an = mul nuw nsw i64 %i.am, 1461
  %i.ao = lshr i64 %i.an, 34
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = zext i1 %.sroa.0.0.i.i.i.i.i to i32
  %i.ar = add nuw nsw i32 %i.ap, %i.aq
  %i.as = and i32 %i.al, 3
  %i.at = icmp eq i32 %i.as, 0
  %i.au = and i1 %.sroa.0.0.i.i.i.i.i, %i.at
  %i.av = shl nuw i32 %i.al, 10
  %i.aw = add nsw i32 %i.av, 1858256896
  %i.ax = select i1 %i.au, i32 512, i32 0
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = or i32 %i.ay, %i.ar                     ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(3) %i.bb, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0.0.insert.insert.i.i.i.i = and i64 %.sroa.09.0.copyload.i, 8795265167261695
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.b, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.az, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2268
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, i24 0), !noalias !2269
  %i.bc = load i32, ptr %i.a, align 4, !noalias !2268, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.be = load i16, ptr %i.bd, align 4, !noalias !2268, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bf, align 4, !noalias !2268
  %i.bg = sext i32 %i.bc to i128
  %i.bh = shl nsw i128 %i.bg, 74
  %i.bi = zext i16 %i.be to i128
  %i.bj = shl nuw nsw i128 %i.bi, 64
  %i.bk = or i128 %i.bj, %i.bh
  %i.bl = zext i64 %.sroa.0.0.copyload.i.i.i.i.i.i to i128
  %i.bm = or disjoint i128 %i.bk, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2268
  %i.bn = icmp sgt i128 %i.bm, 188882502916980284006778392 ; 2 uses
  %..i.i.i = select i1 %i.bn, ptr @_ZN6cookie6Cookie11set_expires12MAX_DATETIME17he34828a6b79e6fddE, ptr %i.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bo, ptr noundef nonnull align 4 dereferenceable(7) %..i.i.i, i64 7, i1 false)
  %.sroa.gep15.val = load i64, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.510.0.copyload11 = select i1 %i.bn, i64 10239341, i64 %.sroa.gep15.val
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 143
  store i8 0, ptr %.sroa.413.0..sroa_idx, align 1
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.510.0.copyload11, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN6cookie6Cookie12unset_domain17ha0dfd51427966d13E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !range !8, !noundef !5 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i", label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val4 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i"
  store i64 -9223372036854775806, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN6cookie6Cookie14fmt_parameters17h24eab9239ce66182E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr %.0.val, ptr captures(address, read_provenance) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 58 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 23 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 4                 ; 18 uses
  %i.k = alloca [16 x i8], align 8                ; 23 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [1 x i8], align 1                 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.x = load i8, ptr %i.w, align 1, !range !21, !noundef !5
  %i.y = and i8 %i.x, 1
  %or.cond.not = icmp eq i8 %i.y, 0
  br i1 %or.cond.not, label %bb.b, label %.split

bb.b:                                             ; preds = %.split, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.aa = load i8, ptr %i.z, align 2, !range !24, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.aa, 3
  br i1 %.not, label %._crit_edge, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit124

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !21
  br label %bb.c

.split:                                           ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !5, !noalias !2319, !nonnull !5
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @70, i64 noundef 10), !noalias !2319, !inline_history !1
  br i1 %i.ad, label %.thread91, label %bb.b

.thread91:                                        ; preds = %bb.af, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit180", %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit166, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139, %.split80, %.split, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177", %bb.f
  %.sroa.0.0 = phi i1 [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit166 ], [ true, %bb.f ], [ true, %.split80 ], [ true, %.split ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161 ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177" ], [ false, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit180" ], [ false, %bb.af ]
  ret i1 %.sroa.0.0

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit124: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 %i.aa, ptr %i.v, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.v, ptr %i.u, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN62_$LT$cookie..draft..SameSite$u20$as$u20$core..fmt..Display$GT$3fmt17h18f8b4ac0f90541bE", ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2320
  store ptr @72, ptr %i.i, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.u, ptr %.sroa.73.0..sroa_idx, align 8
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.84.0..sroa_idx, align 8
  %.sroa.105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.105.0..sroa_idx, align 8
  %i.ae = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i), !noalias !2320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ae, label %bb.f, label %bb.d

bb.c:                                             ; preds = %._crit_edge, %bb.e
  %i.af = phi i8 [ %.pre, %._crit_edge ], [ %i.ak, %bb.e ]
  %i.ag = and i8 %i.af, 1
  %or.cond3.not = icmp eq i8 %i.ag, 0
  br i1 %or.cond3.not, label %bb.g, label %.split80

bb.d:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit124
  %i.ah = load i8, ptr %i.v, align 1, !range !21, !noundef !5
  %i.ai = icmp eq i8 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ak = load i8, ptr %i.aj, align 8, !range !21 ; 2 uses
  %.not86 = icmp eq i8 %i.ak, 2
  %or.cond = select i1 %i.ai, i1 %.not86, i1 false
  br i1 %or.cond, label %.split79, label %bb.e

bb.e:                                             ; preds = %.split79, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.c

.split79:                                         ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !noalias !2321, !nonnull !5
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @73, i64 noundef 8), !noalias !2321, !inline_history !1
  br i1 %i.an, label %bb.f, label %bb.e

bb.f:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit124, %.split79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.thread91

bb.g:                                             ; preds = %.split80, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load i64, ptr %i.ao, align 8, !range !8, !noundef !5 ; 2 uses
  %.not87 = icmp eq i64 %i.ap, -9223372036854775806
  br i1 %.not87, label %.thread, label %bb.h

.split80:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !5, !noalias !2322, !nonnull !5
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @73, i64 noundef 8), !noalias !2322, !inline_history !1
  br i1 %i.as, label %.thread91, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %0, align 8, !range !7, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  %cond.i = icmp eq i64 %i.ap, -9223372036854775807
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !2323, !noalias !2324, !noundef !5 ; 8 uses
  br i1 %cond.i, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %.not88 = icmp eq i64 %i.at, -9223372036854775807
  %i.ax = load i64, ptr %i.au, align 8, !alias.scope !2323, !noalias !2324, !noundef !5 ; 8 uses
  br i1 %.not88, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #31, !noalias !2325
  unreachable

bb.k:                                             ; preds = %bb.i
  %.sroa.05.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.0.in.i, align 8, !alias.scope !2324, !noalias !2323, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.56.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.56.0.i = load i64, ptr %.sroa.56.0.in.i, align 8, !alias.scope !2324, !noalias !2323, !noundef !5 ; 5 uses
  %.not.i.i = icmp ugt i64 %i.ax, %i.aw
  br i1 %.not.i.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not5.i.i = icmp ult i64 %i.ax, %.sroa.56.0.i
  br i1 %.not5.i.i, label %bb.o, label %.split.i.i

bb.n:                                             ; preds = %bb.o, %.split.i.i, %bb.l
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", label %bb.p

.split.i.i:                                       ; preds = %bb.m
  %i.ba = icmp eq i64 %i.ax, %.sroa.56.0.i
  br i1 %i.ba, label %bb.n, label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !2326, !noalias !2325, !noundef !5
  %i.bd = icmp sgt i8 %i.bc, -65
  br i1 %i.bd, label %bb.n, label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not6.i.i = icmp ult i64 %i.aw, %.sroa.56.0.i
  br i1 %.not6.i.i, label %bb.q, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.p
  %i.be = icmp eq i64 %i.aw, %.sroa.56.0.i
  br i1 %i.be, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.aw
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !2326, !noalias !2325, !noundef !5
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", label %bb.r

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i": ; preds = %bb.q, %.split7.i.i, %bb.n
  %i.bi = sub nuw i64 %i.aw, %i.ax
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.ax
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139

bb.r:                                             ; preds = %bb.q, %.split7.i.i, %bb.o, %.split.i.i, %bb.k
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.05.0.i, i64 noundef %.sroa.56.0.i, i64 noundef %i.ax, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31, !noalias !2325
  unreachable

bb.s:                                             ; preds = %bb.h
  %.sroa.03.0.i = load ptr, ptr %i.au, align 8, !alias.scope !2323, !noalias !2324, !nonnull !5, !noundef !5
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139: ; preds = %bb.s, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i"
  %.sroa.03.0.pn.i = phi ptr [ %.sroa.03.0.i, %bb.s ], [ %i.bj, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i" ]
  %.sroa.54.0.pn.i = phi i64 [ %i.aw, %bb.s ], [ %i.bi, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %.sroa.03.0.pn.i, ptr %i.t, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.54.0.pn.i, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.t, ptr %i.s, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e192596122bb916E", ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2327
  store ptr @75, ptr %i.h, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %.sroa.721.0..sroa_idx, align 8
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.822.0..sroa_idx, align 8
  %.sroa.1023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.1023.0..sroa_idx, align 8
  %i.bl = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h), !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.bl, label %.thread91, label %.thread

.thread:                                          ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load i64, ptr %i.bm, align 8, !range !8, !noundef !5 ; 2 uses
  %.not90 = icmp eq i64 %i.bn, -9223372036854775806
  br i1 %.not90, label %.thread85, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.bo = load i64, ptr %0, align 8, !range !7, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  %cond.i140 = icmp eq i64 %i.bn, -9223372036854775807
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !2328, !noalias !2329, !noundef !5 ; 8 uses
  br i1 %cond.i140, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %.not91 = icmp eq i64 %i.bo, -9223372036854775807
  %i.bs = load i64, ptr %i.bp, align 8, !alias.scope !2328, !noalias !2329, !noundef !5 ; 8 uses
  br i1 %.not91, label %bb.v, label %bb.w, !prof !12

bb.v:                                             ; preds = %bb.u
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #31, !noalias !2330
  unreachable

bb.w:                                             ; preds = %bb.u
  %.sroa.05.0.in.i146 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.05.0.i147 = load ptr, ptr %.sroa.05.0.in.i146, align 8, !alias.scope !2329, !noalias !2328, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.56.0.in.i148 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.56.0.i149 = load i64, ptr %.sroa.56.0.in.i148, align 8, !alias.scope !2329, !noalias !2328, !noundef !5 ; 5 uses
  %.not.i.i150 = icmp ugt i64 %i.bs, %i.br
  br i1 %.not.i.i150, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not5.i.i151 = icmp ult i64 %i.bs, %.sroa.56.0.i149
  br i1 %.not5.i.i151, label %bb.aa, label %.split.i.i152

bb.z:                                             ; preds = %bb.aa, %.split.i.i152, %bb.x
  %i.bu = icmp eq i64 %i.br, 0
  br i1 %i.bu, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i155", label %bb.ab

.split.i.i152:                                    ; preds = %bb.y
  %i.bv = icmp eq i64 %i.bs, %.sroa.56.0.i149
  br i1 %i.bv, label %bb.z, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i147, i64 %i.bs
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !2331, !noalias !2330, !noundef !5
  %i.by = icmp sgt i8 %i.bx, -65
  br i1 %i.by, label %bb.z, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %.not6.i.i153 = icmp ult i64 %i.br, %.sroa.56.0.i149
  br i1 %.not6.i.i153, label %bb.ac, label %.split7.i.i154

.split7.i.i154:                                   ; preds = %bb.ab
  %i.bz = icmp eq i64 %i.br, %.sroa.56.0.i149
  br i1 %i.bz, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i155", label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i147, i64 %i.br
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !2331, !noalias !2330, !noundef !5
  %i.cc = icmp sgt i8 %i.cb, -65
  br i1 %i.cc, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i155", label %bb.ad

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i155": ; preds = %bb.ac, %.split7.i.i154, %bb.z
  %i.cd = sub nuw i64 %i.br, %i.bs
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i147, i64 %i.bs
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161

bb.ad:                                            ; preds = %bb.ac, %.split7.i.i154, %bb.aa, %.split.i.i152, %bb.w
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.05.0.i147, i64 noundef %.sroa.56.0.i149, i64 noundef %i.bs, i64 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31, !noalias !2330
  unreachable

bb.ae:                                            ; preds = %bb.t
  %.sroa.03.0.i141 = load ptr, ptr %i.bp, align 8, !alias.scope !2328, !noalias !2329, !nonnull !5, !noundef !5
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161: ; preds = %bb.ae, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i155"
  %.sroa.03.0.pn.i142 = phi ptr [ %.sroa.03.0.i141, %bb.ae ], [ %i.ce, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i155" ]
  %.sroa.54.0.pn.i143 = phi i64 [ %i.br, %bb.ae ], [ %i.cd, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i155" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %.sroa.03.0.pn.i142, ptr %i.r, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.54.0.pn.i143, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e192596122bb916E", ptr %.sroa.455.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2332
  store ptr @77, ptr %i.g, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.q, ptr %.sroa.727.0..sroa_idx, align 8
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.828.0..sroa_idx, align 8
  %.sroa.1029.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.1029.0..sroa_idx, align 8
  %i.cg = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !2332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %i.cg, label %.thread91, label %.thread85

.thread85:                                        ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161, %.thread
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %.not93 = icmp eq i32 %.sroa.6.0.copyload, 1
  br i1 %.not93, label %bb.af, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit166

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit166: ; preds = %.thread85
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.023.0.copyload = load i64, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.023.0.copyload, ptr %i.o, align 8
  store ptr %i.o, ptr %i.p, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.459.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2333
  store ptr @79, ptr %i.f, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.p, ptr %.sroa.733.0..sroa_idx, align 8
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.834.0..sroa_idx, align 8
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.1035.0..sroa_idx, align 8
  %i.ci = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.ci, label %.thread91, label %bb.af

bb.af:                                            ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit166, %.thread85
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 143
  %.sroa.461.0.copyload = load i8, ptr %.sroa.461.0..sroa_idx, align 1
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8 ; 6 uses
  %cond = icmp eq i8 %.sroa.461.0.copyload, 0
  br i1 %cond, label %bb.ag, label %.thread91

bb.ag:                                            ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.n, ptr noundef nonnull align 8 dereferenceable(7) %i.cj, i64 7, i1 false)
  %.sroa.527.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  store i8 0, ptr %.sroa.527.0..sroa_idx28, align 1
  %.sroa.8.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.564.0.copyload, ptr %.sroa.8.0..sroa_idx30, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  %i.ck = lshr i64 %.sroa.564.0.copyload, 32
  %i.cl = trunc i64 %i.ck to i8                   ; 4 uses
  %i.cm = lshr i64 %.sroa.564.0.copyload, 40
  %i.cn = trunc i64 %i.cm to i8                   ; 4 uses
  %i.co = lshr i64 %.sroa.564.0.copyload, 48
  %i.cp = trunc i64 %i.co to i8                   ; 4 uses
  %i.cq = icmp sgt i8 %i.cl, -60
  call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp slt i8 %i.cl, 60
  call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp sgt i8 %i.cn, -60
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp slt i8 %i.cn, 60
  call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp sgt i8 %i.cp, -26
  call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp slt i8 %i.cp, 26
  call void @llvm.assume(i1 %i.cv)
  %i.cw = or i8 %i.cn, %i.cl
  %i.cx = or i8 %i.cw, %i.cp
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2336
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.n, i24 0), !noalias !2334
  %i.cz = load i32, ptr %i.e, align 4, !noalias !2336, !noundef !5 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.db = load i16, ptr %i.da, align 4, !noalias !2336, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.012.0.copyload.i = load i64, ptr %i.dc, align 4, !noalias !2336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2336
  %i.dd = add i32 %i.cz, -10000
  %or.cond.i = icmp ult i32 %i.dd, -19999
  br i1 %or.cond.i, label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit.thread, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.de = lshr i64 %.sroa.564.0.copyload, 56
  %i.df = trunc nuw i64 %i.de to i8
  %i.dg = trunc i64 %.sroa.564.0.copyload to i32
  %.sroa.046.0.copyload47 = load i64, ptr %i.n, align 8, !alias.scope !2336
  br label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit

bb.aj:                                            ; preds = %bb.ah
  %.sroa.032.0.i = call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.dh = mul i32 %.sroa.032.0.i, 33555415
  %i.di = and i32 %i.dh, 100695055
  %i.dj = icmp samesign ult i32 %i.di, 31745
  %i.dk = shl nsw i32 %i.cz, 10
  %i.dl = select i1 %i.dj, i32 512, i32 0
  %i.dm = or disjoint i32 %i.dl, %i.dk
  %i.dn = zext i16 %i.db to i32
  %i.do = or i32 %i.dm, %i.dn                     ; 2 uses
  %i.dp = icmp ne i32 %i.do, 0
  call void @llvm.assume(i1 %i.dp)
  br label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit

_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit: ; preds = %bb.ai, %bb.aj
  %.sroa.046.sroa.0.sroa.0.0.in = phi i64 [ %.sroa.046.0.copyload47, %bb.ai ], [ %.sroa.012.0.copyload.i, %bb.aj ] ; 2 uses
  %.sroa.1161.0 = phi i8 [ %i.df, %bb.ai ], [ undef, %bb.aj ]
  %.sroa.1058.0 = phi i8 [ %i.cp, %bb.ai ], [ 0, %bb.aj ]
  %.sroa.955.0 = phi i8 [ %i.cn, %bb.ai ], [ 0, %bb.aj ]
  %.sroa.852.0 = phi i8 [ %i.cl, %bb.ai ], [ 0, %bb.aj ]
  %.sroa.749.0 = phi i32 [ %i.dg, %bb.ai ], [ %i.do, %bb.aj ]
  %i.dq = and i64 %.sroa.046.sroa.0.sroa.0.0.in, 72057594037927936
  %.not140 = icmp eq i64 %i.dq, 0
  br i1 %.not140, label %bb.ak, label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit.thread, !prof !19

bb.ak:                                            ; preds = %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.046.sroa.0.sroa.0.0.in, ptr %i.k, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %.sroa.749.0, ptr %.sroa.569.0..sroa_idx, align 8
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %.sroa.852.0, ptr %.sroa.670.0..sroa_idx, align 4
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  store i8 %.sroa.955.0, ptr %.sroa.771.0..sroa_idx, align 1
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 14
  store i8 %.sroa.1058.0, ptr %.sroa.872.0..sroa_idx, align 2
  %.sroa.973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  store i8 %.sroa.1161.0, ptr %.sroa.973.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.dr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2337
  store i64 0, ptr %i.d, align 8, !noalias !2337
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ds, align 8, !noalias !2337
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.dt, align 8, !noalias !2337
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @64, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc.i unwind label %bb.ay, !noalias !2339

.noexc.i:                                         ; preds = %bb.ak
  %i.dv = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dv, 4
  br i1 %.not.i.i.i, label %bb.al, label %bb.az

bb.al:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 24), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc23.i unwind label %bb.ay, !noalias !2339

.noexc23.i:                                       ; preds = %bb.al
  %i.dw = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.1.i.i = icmp eq i64 %i.dw, 4
  br i1 %.not.i.1.i.i, label %bb.am, label %bb.az

bb.am:                                            ; preds = %.noexc23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 48), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc24.i unwind label %bb.ay, !noalias !2339

.noexc24.i:                                       ; preds = %bb.am
  %i.dx = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.2.i.i = icmp eq i64 %i.dx, 4
  br i1 %.not.i.2.i.i, label %bb.an, label %bb.az

bb.an:                                            ; preds = %.noexc24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 72), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc25.i unwind label %bb.ay, !noalias !2339

.noexc25.i:                                       ; preds = %bb.an
  %i.dy = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.3.i.i = icmp eq i64 %i.dy, 4
  br i1 %.not.i.3.i.i, label %bb.ao, label %bb.az

bb.ao:                                            ; preds = %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 96), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc26.i unwind label %bb.ay, !noalias !2339

.noexc26.i:                                       ; preds = %bb.ao
  %i.dz = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.4.i.i = icmp eq i64 %i.dz, 4
  br i1 %.not.i.4.i.i, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 120), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc27.i unwind label %bb.ay, !noalias !2339

.noexc27.i:                                       ; preds = %bb.ap
  %i.ea = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.5.i.i = icmp eq i64 %i.ea, 4
  br i1 %.not.i.5.i.i, label %bb.aq, label %bb.az

bb.aq:                                            ; preds = %.noexc27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 144), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc28.i unwind label %bb.ay, !noalias !2339

.noexc28.i:                                       ; preds = %bb.aq
  %i.eb = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.6.i.i = icmp eq i64 %i.eb, 4
  br i1 %.not.i.6.i.i, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 168), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc29.i unwind label %bb.ay, !noalias !2339

.noexc29.i:                                       ; preds = %bb.ar
  %i.ec = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.7.i.i = icmp eq i64 %i.ec, 4
  br i1 %.not.i.7.i.i, label %bb.as, label %bb.az

bb.as:                                            ; preds = %.noexc29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 192), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc30.i unwind label %bb.ay, !noalias !2339

.noexc30.i:                                       ; preds = %bb.as
  %i.ed = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.8.i.i = icmp eq i64 %i.ed, 4
  br i1 %.not.i.8.i.i, label %bb.at, label %bb.az

bb.at:                                            ; preds = %.noexc30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 216), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc31.i unwind label %bb.ay, !noalias !2339

.noexc31.i:                                       ; preds = %bb.at
  %i.ee = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.9.i.i = icmp eq i64 %i.ee, 4
  br i1 %.not.i.9.i.i, label %bb.au, label %bb.az

bb.au:                                            ; preds = %.noexc31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 240), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc32.i unwind label %bb.ay, !noalias !2339

.noexc32.i:                                       ; preds = %bb.au
  %i.ef = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.10.i.i = icmp eq i64 %i.ef, 4
  br i1 %.not.i.10.i.i, label %bb.av, label %bb.az

bb.av:                                            ; preds = %.noexc32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 264), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc33.i unwind label %bb.ay, !noalias !2339

.noexc33.i:                                       ; preds = %bb.av
  %i.eg = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.11.i.i = icmp eq i64 %i.eg, 4
  br i1 %.not.i.11.i.i, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 288), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc34.i unwind label %bb.ay, !noalias !2339

.noexc34.i:                                       ; preds = %bb.aw
  %i.eh = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.12.i.i = icmp eq i64 %i.eh, 4
  br i1 %.not.i.12.i.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.noexc34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 312), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc35.i unwind label %bb.ay, !noalias !2339

.noexc35.i:                                       ; preds = %bb.ax
  %i.ei = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.13.i.i = icmp eq i64 %i.ei, 4
  br i1 %.not.i.13.i.i, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.be, %bb.ba, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val21.i = load i64, ptr %i.d, align 8, !noalias !2337 ; 2 uses
  %i.ek = icmp eq i64 %.val21.i, 0
  br i1 %i.ek, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i": ; preds = %bb.ay
  %.val22.i = load ptr, ptr %i.ds, align 8, !noalias !2337, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i, i64 noundef %.val21.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2339
  br label %common.resume

bb.az:                                            ; preds = %.noexc35.i, %.noexc34.i, %.noexc33.i, %.noexc32.i, %.noexc31.i, %.noexc30.i, %.noexc29.i, %.noexc28.i, %.noexc27.i, %.noexc26.i, %.noexc25.i, %.noexc24.i, %.noexc23.i, %.noexc.i
  %.lcssa.i.i = phi i64 [ %i.dv, %.noexc.i ], [ %i.dw, %.noexc23.i ], [ %i.dx, %.noexc24.i ], [ %i.dy, %.noexc25.i ], [ %i.dz, %.noexc26.i ], [ %i.ea, %.noexc27.i ], [ %i.eb, %.noexc28.i ], [ %i.ec, %.noexc29.i ], [ %i.ed, %.noexc30.i ], [ %i.ee, %.noexc31.i ], [ %i.ef, %.noexc32.i ], [ %i.eg, %.noexc33.i ], [ %i.eh, %.noexc34.i ], [ %i.ei, %.noexc35.i ]
  %.sroa.512.0.copyload.i.i.i = load i64, ptr %i.du, align 8, !noalias !2338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  %.val19.i = load i64, ptr %i.d, align 8, !noalias !2337 ; 2 uses
  %i.el = icmp eq i64 %.val19.i, 0
  br i1 %i.el, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread118

_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread118: ; preds = %bb.az
  %.val18.i124 = load ptr, ptr %i.ds, align 8, !noalias !2337, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i124, i64 noundef %.val19.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2339
  br label %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread

bb.ba:                                            ; preds = %.noexc35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2337
  %i.em = load ptr, ptr %i.ds, align 8, !noalias !2337, !nonnull !5, !noundef !5
  %i.en = load i64, ptr %i.dt, align 8, !noalias !2337, !noundef !5
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.em, i64 noundef %i.en)
          to label %bb.bb unwind label %bb.ay, !noalias !2339

bb.bb:                                            ; preds = %bb.ba
  %i.eo = load i64, ptr %i.c, align 8, !range !22, !noalias !2337, !noundef !5 ; 2 uses
  %.not17.i = icmp eq i64 %i.eo, -9223372036854775808
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !2337 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.es = load i64, ptr %i.er, align 8, !noalias !2337 ; 7 uses
  br i1 %.not17.i, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.et = icmp slt i64 %i.es, 0
  br i1 %i.et, label %bb.be, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !23

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.bc
  %i.eu = icmp eq i64 %i.es, 0
  br i1 %i.eu, label %bb.bf, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2340
  %i.ev = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2340 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.ex = ptrtoint ptr %i.ev to i64
  br label %bb.bf

bb.be:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.bc
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.bc ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #31
          to label %.noexc38.i unwind label %bb.ay, !noalias !2339

.noexc38.i:                                       ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.bd, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi i64 [ %i.ex, %bb.bd ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ]
  %i.ey = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr nonnull readonly align 1 %i.eq, i64 %i.es, i1 false), !noalias !2341
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bb
  %.sroa.54.0.i = phi ptr [ %i.ey, %bb.bf ], [ %i.eq, %bb.bb ]
  %.sroa.02.0.i = phi i64 [ %i.es, %bb.bf ], [ %i.eo, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2337
  %i.ez = ptrtoint ptr %.sroa.54.0.i to i64
  %.val.i = load i64, ptr %i.d, align 8, !noalias !2337 ; 2 uses
  %i.fa = icmp eq i64 %.val.i, 0
  br i1 %i.fa, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread110, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit

common.resume:                                    ; preds = %bb.bh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i173", %bb.ay, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i"
  %common.resume.op = phi { ptr, i32 } [ %i.ej, %bb.ay ], [ %i.ej, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i" ], [ %i.fe, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i173" ], [ %i.fe, %bb.bh ]
  resume { ptr, i32 } %common.resume.op

_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit: ; preds = %bb.bg
  %.val18.i = load ptr, ptr %i.ds, align 8, !noalias !2337, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2339
  br label %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread110

_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit.thread: ; preds = %bb.ah, %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #31
  unreachable

_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread: ; preds = %bb.az, %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fb = inttoptr i64 %.sroa.512.0.copyload.i.i.i to ptr
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h9e3ed27b33238eedE"(i64 %.lcssa.i.i, ptr %i.fb)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177"

_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread110: ; preds = %bb.bg, %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %.sroa.02.0.i, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store i64 %i.ez, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.es, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store ptr %i.l, ptr %i.m, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.579.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2342
  store ptr @83, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.6.0..sroa_idx38, align 8
  %.sroa.840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %.sroa.840.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1141.0..sroa_idx, align 8
  %i.fc = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc unwind label %bb.bh

.noexc:                                           ; preds = %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2342
  %.val116 = load i64, ptr %i.l, align 8          ; 3 uses
  %i.fd = icmp eq i64 %.val116, 0                 ; 2 uses
  br i1 %i.fc, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread110
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val118 = load i64, ptr %i.l, align 8          ; 2 uses
  %i.ff = icmp eq i64 %.val118, 0
  br i1 %i.ff, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i173"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i173": ; preds = %bb.bh
  %.val119 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val119, i64 noundef %.val118, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %common.resume

bb.bi:                                            ; preds = %.noexc
  br i1 %i.fd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i175"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i175": ; preds = %bb.bi
  %.val117 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val117, i64 noundef %.val116, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177"

bb.bj:                                            ; preds = %.noexc
  br i1 %i.fd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit180", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i178"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i178": ; preds = %bb.bj
  %.val115 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val115, i64 noundef %.val116, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit180"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit180": ; preds = %bb.bj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i178"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.thread91

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i175", %bb.bi, %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.thread91
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6cookie6Cookie14make_permanent17h89e8ca7f55dfbdaeE(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(160) initializes((120, 136)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 630720000, ptr %i.d, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 0, ptr %.sroa.56.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  %.sroa.09.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !2365, !noalias !2366 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i64 %.sroa.09.0.copyload.i to i32
  %i.e = icmp ult i32 %.sroa.01.0.extract.trunc.i.i.i, 1000000000
  tail call void @llvm.assume(i1 %i.e)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2366 ; 2 uses
  %i.f = and i32 %.sroa.2.0.copyload.i, 511
  %i.g = add nuw nsw i32 %i.f, -363521075
  %i.h = ashr i32 %.sroa.2.0.copyload.i, 10
  %i.i = add nsw i32 %i.h, 999999                 ; 3 uses
  %.neg.i.i.i = sdiv i32 %i.i, -100
  %i.j = add nsw i32 %i.g, %.neg.i.i.i
  %i.k = sdiv i32 %i.i, 400
  %i.l = add nsw i32 %i.j, %i.k
  %i.m = sext i32 %i.i to i64
  %i.n = mul nsw i64 %i.m, 1461
  %i.o = sdiv i64 %i.n, 4
  %i.p = trunc nsw i64 %i.o to i32
  %i.q = add nsw i32 %i.l, %i.p                   ; 2 uses
  %i.r = add nsw i32 %i.q, -5366185
  %or.cond.i.i.i.i = icmp ult i32 %i.r, -7304484
  br i1 %or.cond.i.i.i.i, label %_ZN4time19primitive_date_time17PrimitiveDateTime11checked_add17h7e0441fadc871513E.exit.thread.i, label %_ZN6cookie10expiration10Expiration3map17h03d683e9edbcb503E.exit, !prof !20

_ZN4time19primitive_date_time17PrimitiveDateTime11checked_add17h7e0441fadc871513E.exit.thread.i: ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #31, !noalias !2367
  unreachable

_ZN6cookie10expiration10Expiration3map17h03d683e9edbcb503E.exit: ; preds = %bb.a
  %i.s = add nsw i32 %i.q, 867417293              ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = mul nuw nsw i64 %i.t, 3853261555         ; 2 uses
  %i.v = lshr i64 %i.u, 15
  %i.w = lshr i64 %i.u, 47
  %i.x = trunc nuw nsw i64 %i.w to i32            ; 3 uses
  %i.y = trunc i64 %i.v to i32
  %i.z = icmp ugt i32 %i.y, 42920275
  %i.aa = and i32 %i.x, 3
  %i.ab = icmp eq i32 %i.aa, 0
  %.sroa.0.0.i.i.i.i.i = or i1 %i.z, %i.ab        ; 2 uses
  %i.ac = lshr i32 %i.x, 2
  %i.ad = add nuw nsw i32 %i.s, %i.x
  %i.ae = sub nuw nsw i32 %i.ad, %i.ac
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, 3010298776       ; 2 uses
  %i.ah = lshr i64 %i.ag, 8
  %i.ai = lshr i64 %i.ag, 40
  %i.aj = trunc nuw nsw i64 %i.ai to i32          ; 2 uses
  %i.ak = and i64 %i.ah, 4294967295
  %i.al = mul nuw nsw i64 %i.ak, 1461
  %i.am = lshr i64 %i.al, 34
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = zext i1 %.sroa.0.0.i.i.i.i.i to i32
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  %i.aq = and i32 %i.aj, 3
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = and i1 %.sroa.0.0.i.i.i.i.i, %i.ar
  %i.at = shl nuw i32 %i.aj, 10
  %i.au = add nsw i32 %i.at, 1858256896
  %i.av = select i1 %i.as, i32 512, i32 0
  %i.aw = or disjoint i32 %i.av, %i.au
  %i.ax = or i32 %i.aw, %i.ap                     ; 2 uses
  %i.ay = icmp ne i32 %i.ax, 0
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(3) %i.az, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0.0.insert.insert.i.i.i.i = and i64 %.sroa.09.0.copyload.i, 8795265167261695
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.b, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.ax, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2368
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, i24 0), !noalias !2369
  %i.ba = load i32, ptr %i.a, align 4, !noalias !2368, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bc = load i16, ptr %i.bb, align 4, !noalias !2368, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bd, align 4, !noalias !2368
  %i.be = sext i32 %i.ba to i128
  %i.bf = shl nsw i128 %i.be, 74
  %i.bg = zext i16 %i.bc to i128
  %i.bh = shl nuw nsw i128 %i.bg, 64
  %i.bi = or i128 %i.bh, %i.bf
  %i.bj = zext i64 %.sroa.0.0.copyload.i.i.i.i.i.i to i128
  %i.bk = or disjoint i128 %i.bi, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2368
  %i.bl = icmp sgt i128 %i.bk, 188882502916980284006778392 ; 2 uses
  %..i.i.i = select i1 %i.bl, ptr @_ZN6cookie6Cookie11set_expires12MAX_DATETIME17he34828a6b79e6fddE, ptr %i.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bm, ptr noundef nonnull align 4 dereferenceable(7) %..i.i.i, i64 7, i1 false)
  %.sroa.gep15.val = load i64, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.510.0.copyload11 = select i1 %i.bl, i64 10239341, i64 %.sroa.gep15.val
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 143
  store i8 0, ptr %.sroa.413.0..sroa_idx, align 1
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.510.0.copyload11, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN6cookie9CookieStr10to_raw_str17h06b6780dc8cf5d52E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.a, -9223372036854775807
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 7 uses
  %i.f = load i64, ptr %1, align 8, !range !22, !noundef !5
  %.not1 = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not1, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 5 uses
  %.not.i = icmp ugt i64 %i.c, %i.e
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.c, 0
end_hunk_2
begin_hunk_3_@"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h5c0bcd80f2dd2a10E":bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0.copyload, i64 noundef %.sroa.126.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2499
  br label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit.i"

"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i.i", %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit29.i"
  %switch35.i = icmp sgt i64 %.sroa.147.0.copyload, 0
  br i1 %switch35.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i30.i", label %"_ZN4core3ptr35drop_in_place$LT$cookie..Cookie$GT$17h847c2d0f7fbc3d51E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i30.i": ; preds = %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.0.copyload, i64 noundef %.sroa.147.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2499
  br label %"_ZN4core3ptr35drop_in_place$LT$cookie..Cookie$GT$17h847c2d0f7fbc3d51E.exit"

"_ZN4core3ptr35drop_in_place$LT$cookie..Cookie$GT$17h847c2d0f7fbc3d51E.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i30.i", %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit.i", %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h86438490c97dd506E.exit"
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9db674edefb3619dE"(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2535, !noalias !2536, !noundef !5 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2535, !noalias !2536, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 7 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext %3), !noalias !2537
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hffa5c287c76e4a79E.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2539
  %i.q = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.r, label %bb.l, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %.sroa.0.0.i9, 3
  %i.t = udiv i64 %i.s, 7
  %i.u = add nsw i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = lshr i64 -1, %i.v
  %i.x = add nuw nsw i64 %i.w, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.z = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.z, 8
  %.sroa.03.0.i.i = select i1 %i.y, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.x, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.aa = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 168) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  %i.ad = add nuw i64 %i.ac, 8
  %i.ae = and i64 %i.ad, -16                      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ag = add i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.j, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", !prof !23

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2540
  %i.aj = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2540 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext %3), !noalias !2540
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.thread

bb.k:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.am = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !2540
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.an = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext %3), !noalias !2541
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.thread

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ap = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 7 uses
  %i.aq = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.02.0.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.ar ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.as, i8 -1, i64 %i.af, i1 false), !noalias !2541
  store ptr %i.c, ptr %i.b, align 8, !noalias !2539
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 168, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2539
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2539
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.as, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !2539
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.ap, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2539
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.02.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2539
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2539
  %i.at = load i64, ptr %i.d, align 8, !alias.scope !2542, !noalias !2543, !noundef !5 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = ptrtoint ptr %i.as to i64
  br i1 %i.au, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge, label %.preheader.lr.ph

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !2544, !noalias !2545
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge66

.preheader.lr.ph:                                 ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !2542, !noalias !2543, !nonnull !5, !noundef !5 ; 3 uses
  %.val449 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val449, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val.i.i10 = load i64, ptr %2, align 8, !noalias !2546, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i11 = load i64, ptr %i.az, align 8, !noalias !2546, !noundef !5
  br label %.preheader

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.an, %bb.l ], [ %i.al, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %.sroa.12.045 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.046 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2539
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hcc6572b4143a0350E.exit.i

bb.m:                                             ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #32
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.p
  %i.bb = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %i.di, %bb.p ]
  %.sroa.031.065 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.031.1.lcssa, %bb.p ] ; 2 uses
  %.sroa.5.064 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.p ] ; 2 uses
  %.sroa.9.063 = phi i64 [ %i.at, %.preheader.lr.ph ], [ %i.cb, %bb.p ]
  %.sroa.13.062 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bz, %bb.p ] ; 2 uses
  %.not.i257 = icmp eq i16 %.sroa.13.062, 0
  br i1 %.not.i257, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.031.159 = phi ptr [ %i.bc, %.noexc3 ], [ %.sroa.031.065, %.preheader ] ; 2 uses
  %.sroa.5.158 = phi i64 [ %i.bf, %.noexc3 ], [ %.sroa.5.064, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.159) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.031.159, i64 16 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = icmp sgt <16 x i8> %.val50, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = add i64 %.sroa.5.158, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.be, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge66.loopexit:                           ; preds = %bb.p
  %.pre77 = load i64, ptr %i.d, align 8, !alias.scope !2542, !noalias !2543
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge, %._crit_edge66.loopexit
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %i.di, %._crit_edge66.loopexit ], [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge ] ; 2 uses
  %i.bg = phi i64 [ %.pre77, %._crit_edge66.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge ]
  %i.bh = sub i64 %.sroa.02.0.i.i, %i.bg
  store i64 %i.av, ptr %0, align 8, !alias.scope !2544, !noalias !2545
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !2547, !noalias !2548 ; 3 uses
  store i64 %i.ap, ptr %i.h, align 8, !alias.scope !2547, !noalias !2548
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bh, ptr %i.bi, align 8, !alias.scope !2549, !noalias !2550
  %i.bj = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bj, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge66
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
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
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit", label %bb.n

bb.n:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bo
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bu
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2551
  br label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit"

"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit": ; preds = %._crit_edge66, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2539
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
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !2552
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !2553

.lr.ph.i.i:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit", %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i13, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ]
  %i.cj = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ]
  %i.ck = add i64 %i.cj, 16                       ; 2 uses
  %i.cl = add i64 %i.ck, %.sroa.0.07.i.i
  %.sroa.0.0.i.i13 = and i64 %i.cl, %i.ap         ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i.i13
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.cm, align 1, !noalias !2552
  %i.cn = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.co, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !2554

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit"
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.ci, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ], [ %i.co, %.lr.ph.i.i ]
  %i.cp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.cq
  %i.cs = and i64 %i.cr, %i.ap                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !5
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %bb.o, label %bb.p, !prof !12

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
  %i.di = load ptr, ptr %0, align 8, !alias.scope !2542, !noalias !2543, !nonnull !5, !noundef !5 ; 3 uses
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
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.er, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  %.val11.i = load ptr, ptr %0, align 8, !alias.scope !2555, !nonnull !5, !noundef !5 ; 5 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread, label %.lr.ph.i.i14

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2555
  br label %bb.ac

.lr.ph.i.i14:                                     ; preds = %bb.q
  %i.do = lshr i64 %i.k, 4
  %i.dp = and i64 %i.k, 15
  %.not9.i.i.i.i = icmp ne i64 %i.dp, 0
  %i.dq = zext i1 %.not9.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.do, %i.dq ; 4 uses
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
  %.val5.i.i.epil = load <16 x i8>, ptr %i.ds, align 16, !noalias !2555
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !2555
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %._crit_edge.i.i15.unr-lcssa, %.epil.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.30.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %.val11.i, i64 %.30.i, i1 false), !noalias !2555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2555
  store ptr @_ZN4core3ops8function6FnOnce9call_once17h45a7d2d8415832f2E, ptr %i.dv, align 8, !noalias !2555
  store i64 168, ptr %i.dw, align 8, !noalias !2555
  store ptr %0, ptr %i.a, align 8, !noalias !2555
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dy, align 8
  br label %.lr.ph.i

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i14.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i14.new ], [ %i.ec, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i14.new ], [ %niter.next.1, %bb.r ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dz, align 16, !noalias !2555
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ea = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.eb = or <2 x i64> %i.ea, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eb, ptr %i.dz, align 16, !noalias !2555
  %i.ec = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.0.08.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ee, align 16, !noalias !2555
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ef = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.eg = or <2 x i64> %i.ef, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eg, ptr %i.ee, align 16, !noalias !2555
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i15.unr-lcssa, label %bb.r

.lr.ph.i:                                         ; preds = %bb.aa, %._crit_edge.i.i15
  %.sroa.0.17.i = phi i64 [ %.sroa.0.1.i, %bb.aa ], [ 1, %._crit_edge.i.i15 ] ; 3 uses
  %.sroa.0.06.i = phi i64 [ %.sroa.0.17.i, %bb.aa ], [ 0, %._crit_edge.i.i15 ] ; 8 uses
  %i.eh = load ptr, ptr %0, align 8, !alias.scope !2555, !nonnull !5, !noundef !5 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.0.06.i
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !5
  %.not.i16 = icmp eq i8 %i.ej, -128
  br i1 %.not.i16, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %.lr.ph.i
  %.neg.i = mul i64 %.sroa.0.06.i, -168
  %i.ek = getelementptr i8, ptr %i.eh, i64 %.neg.i
  %i.el = getelementptr i8, ptr %i.ek, i64 -168   ; 2 uses
  %i.em = sub nsw i64 0, %.sroa.0.06.i
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.s
  %i.en = phi ptr [ %.pre.i25, %bb.z ], [ %i.eh, %bb.s ]
  %i.eo = getelementptr inbounds [168 x i8], ptr %i.en, i64 %i.em
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -168
  %i.eq = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h60662d48bfc71a04E(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ep)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" unwind label %bb.u ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h868f3c06738f8e98E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %common.resume unwind label %bb.ab

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i": ; preds = %bb.t
  %.val.i18 = load ptr, ptr %0, align 8, !alias.scope !2555, !nonnull !5, !noundef !5 ; 7 uses
  %.val10.i = load i64, ptr %i.h, align 8, !alias.scope !2555, !noundef !5 ; 6 uses
  %.sroa.0.04.i.i19 = and i64 %.val10.i, %i.eq    ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.04.i.i19
  %.sroa.0.0.copyload.i35.i.i20 = load <16 x i8>, ptr %i.es, align 1, !noalias !2556
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i20, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.not.i.not6.i.i21 = icmp eq i16 %i.eu, 0
  br i1 %.not.not.i.not6.i.i21, label %.lr.ph.i14.i, label %._crit_edge.i13.i, !prof !2553

.lr.ph.i14.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i", %.lr.ph.i14.i
  %.sroa.0.07.i.i27 = phi i64 [ %.sroa.0.0.i.i28, %.lr.ph.i14.i ], [ %.sroa.0.04.i.i19, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ]
  %i.ev = phi i64 [ %i.ew, %.lr.ph.i14.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ]
  %i.ew = add i64 %i.ev, 16                       ; 2 uses
  %i.ex = add i64 %i.ew, %.sroa.0.07.i.i27
  %.sroa.0.0.i.i28 = and i64 %i.ex, %.val10.i     ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.0.i.i28
  %.sroa.0.0.copyload.i3.i.i29 = load <16 x i8>, ptr %i.ey, align 1, !noalias !2556
  %i.ez = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i29, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.not.i.not.i.i30 = icmp eq i16 %i.fa, 0
  br i1 %.not.not.i.not.i.i30, label %.lr.ph.i14.i, label %._crit_edge.i13.i, !prof !2554

._crit_edge.i13.i:                                ; preds = %.lr.ph.i14.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i"
  %.sroa.0.0.lcssa.i.i22 = phi i64 [ %.sroa.0.04.i.i19, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ], [ %.sroa.0.0.i.i28, %.lr.ph.i14.i ]
  %.lcssa.i.i23 = phi i16 [ %i.eu, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ], [ %i.fa, %.lr.ph.i14.i ]
  %i.fb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i23, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = add i64 %.sroa.0.0.lcssa.i.i22, %i.fc
  %i.fe = and i64 %i.fd, %.val10.i                ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noundef !5
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.v, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i, !prof !12

bb.v:                                             ; preds = %._crit_edge.i13.i
  %.val2.i.i.i26 = load <16 x i8>, ptr %.val.i18, align 16
  %i.fi = icmp slt <16 x i8> %.val2.i.i.i26, zeroinitializer
  %i.fj = bitcast <16 x i1> %i.fi to i16          ; 2 uses
  %i.fk = icmp ne i16 %i.fj, 0
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fj, i1 true)
  %i.fm = zext nneg i16 %i.fl to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i: ; preds = %bb.v, %._crit_edge.i13.i
  %.sroa.0.0.i5.i.i24 = phi i64 [ %i.fm, %bb.v ], [ %i.fe, %._crit_edge.i13.i ] ; 4 uses
  %i.fn = sub i64 %.sroa.0.06.i, %.sroa.0.04.i.i19
  %i.fo = sub i64 %.sroa.0.0.i5.i.i24, %.sroa.0.04.i.i19
  %i.fp = xor i64 %i.fo, %i.fn
  %.unshifted.i = and i64 %i.fp, %.val10.i
  %i.fq = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fq, label %bb.x, label %bb.w, !prof !17

bb.w:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %.neg9.i = mul i64 %.sroa.0.0.i5.i.i24, -168
  %i.fr = getelementptr i8, ptr %.val.i18, i64 %.neg9.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 -168   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.0.i5.i.i24 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !noundef !5
  %i.fv = lshr i64 %i.eq, 57
  %i.fw = trunc nuw nsw i64 %i.fv to i8           ; 2 uses
  %i.fx = add i64 %.sroa.0.0.i5.i.i24, -16
  %i.fy = and i64 %i.fx, %.val10.i
  store i8 %i.fw, ptr %i.ft, align 1
  %i.fz = load ptr, ptr %0, align 8, !alias.scope !2555, !nonnull !5, !noundef !5
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.fy
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store i8 %i.fw, ptr %i.gb, align 1
  %i.gc = icmp eq i8 %i.fu, -1
  br i1 %i.gc, label %bb.y, label %bb.z

bb.x:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.gd = lshr i64 %i.eq, 57
  %i.ge = trunc nuw nsw i64 %i.gd to i8           ; 2 uses
  %i.gf = add i64 %.sroa.0.06.i, -16
  %i.gg = and i64 %.val10.i, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.06.i
  store i8 %i.ge, ptr %i.gh, align 1
  %i.gi = load ptr, ptr %0, align 8, !alias.scope !2555, !nonnull !5, !noundef !5
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gg
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store i8 %i.ge, ptr %i.gk, align 1
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.gl = add i64 %.sroa.0.06.i, -16
  %i.gm = load i64, ptr %i.h, align 8, !alias.scope !2555, !noundef !5
  %i.gn = and i64 %i.gm, %i.gl
  %i.go = load ptr, ptr %0, align 8, !alias.scope !2555, !nonnull !5, !noundef !5
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gp, align 1
  %i.gq = load ptr, ptr %0, align 8, !alias.scope !2555, !nonnull !5, !noundef !5
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.gn
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store i8 -1, ptr %i.gs, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.fs, ptr noundef nonnull align 1 dereferenceable(168) %i.el, i64 168, i1 false)
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  tail call fastcc void @_ZN4core3ptr19swap_nonoverlapping17h6a7dbe84a978c788E(ptr noundef %i.el, ptr noundef %i.fs)
  %.pre.i25 = load ptr, ptr %0, align 8, !alias.scope !2557, !noalias !2558
  br label %bb.t

bb.aa:                                            ; preds = %bb.y, %bb.x, %.lr.ph.i
  %i.gt = icmp ult i64 %.sroa.0.17.i, %i.k        ; 2 uses
  %i.gu = zext i1 %i.gt to i64
  %.sroa.0.1.i = add nuw i64 %.sroa.0.17.i, %i.gu
  br i1 %i.gt, label %.lr.ph.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit
end_hunk_3
