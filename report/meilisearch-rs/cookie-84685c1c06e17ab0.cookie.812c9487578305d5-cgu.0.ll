Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/cookie-84685c1c06e17ab0.cookie.812c9487578305d5-cgu.0?download=true
inline.NumInlined: 677
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6cookie6Cookie10into_owned17h891310bdf2d377d7E:bb.a
  %.val52 = load i64, ptr %i.bi, align 8, !range !8, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val53 = load ptr, ptr %i.bj, align 8
  tail call fastcc void @"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E"(i64 %.val52, ptr %.val53) #32
  br i1 %.sroa.015.0171178187, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.split, %bb.ac, %bb.aa
  %.pn.pn.pn.pn165182184196 = phi { ptr, i32 } [ %.pn.pn.pn.pn165182185, %.split ], [ %.pn.pn.pn.pn165182184197, %bb.ac ], [ %.pn.pn.pn.pn165182184, %bb.aa ]
  resume { ptr, i32 } %.pn.pn.pn.pn165182184196

bb.ac:                                            ; preds = %.split, %bb.aa
  %.pn.pn.pn.pn165182184197 = phi { ptr, i32 } [ %.pn.pn.pn.pn165182185, %.split ], [ %.pn.pn.pn.pn165182184, %bb.aa ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val50 = load i64, ptr %i.bk, align 8, !range !8, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val51 = load ptr, ptr %i.bl, align 8
  tail call fastcc void @"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E"(i64 %.val50, ptr %.val51) #32
  br label %bb.ab
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN6cookie6Cookie10unset_path17hee879956ac52906fE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !range !8, !noundef !5 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i", label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
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
  %i.k = alloca [16 x i8], align 8                ; 20 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !5, !noalias !2319, !nonnull !5
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @70, i64 noundef 10), !noalias !2319, !inline_history !1
  br i1 %i.ad, label %.thread91, label %bb.b

.thread91:                                        ; preds = %bb.af, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit180", %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit166, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139, %.split80, %.split, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177", %bb.f
  %.sroa.0.0 = phi i1 [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit166 ], [ true, %bb.f ], [ true, %.split80 ], [ true, %.split ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161 ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177" ], [ false, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit180" ], [ false, %bb.af ]
  ret i1 %.sroa.0.0

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit124: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 %i.aa, ptr %i.v, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.v, ptr %i.u, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN62_$LT$cookie..draft..SameSite$u20$as$u20$core..fmt..Display$GT$3fmt17h18f8b4ac0f90541bE", ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %.sroa.03.0.pn.i, ptr %i.t, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.54.0.pn.i, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.t, ptr %i.s, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e192596122bb916E", ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %.sroa.03.0.pn.i142, ptr %i.r, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.54.0.pn.i143, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e192596122bb916E", ptr %.sroa.455.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
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
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.023.0.copyload = load i64, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.023.0.copyload, ptr %i.o, align 8
  store ptr %i.o, ptr %i.p, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.459.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
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
  %i.cl = trunc i64 %i.ck to i8                   ; 3 uses
  %i.cm = lshr i64 %.sroa.564.0.copyload, 40
  %i.cn = trunc i64 %i.cm to i8                   ; 3 uses
  %i.co = lshr i64 %.sroa.564.0.copyload, 48
  %i.cp = trunc i64 %i.co to i8                   ; 3 uses
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
  %1 = trunc i64 %.sroa.564.0.copyload to i32
  %.sroa.046.0.copyload47 = load i64, ptr %i.n, align 8, !alias.scope !2336
  %2 = bitcast i64 %.sroa.564.0.copyload to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit

bb.aj:                                            ; preds = %bb.ah
  %.sroa.032.0.i = call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.de = mul i32 %.sroa.032.0.i, 33555415
  %i.df = and i32 %i.de, 100695055
  %i.dg = icmp samesign ult i32 %i.df, 31745
  %i.dh = shl nsw i32 %i.cz, 10
  %i.di = select i1 %i.dg, i32 512, i32 0
  %i.dj = or disjoint i32 %i.di, %i.dh
  %i.dk = zext i16 %i.db to i32
  %i.dl = or i32 %i.dj, %i.dk                     ; 2 uses
  %i.dm = icmp ne i32 %i.dl, 0
  call void @llvm.assume(i1 %i.dm)
  br label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit

_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit: ; preds = %bb.ai, %bb.aj
  %.sroa.046.sroa.0.sroa.0.0.in = phi i64 [ %.sroa.046.0.copyload47, %bb.ai ], [ %.sroa.012.0.copyload.i, %bb.aj ] ; 2 uses
  %.sroa.749.0 = phi i32 [ %1, %bb.ai ], [ %i.dl, %bb.aj ]
  %4 = phi <4 x i8> [ %3, %bb.ai ], [ <i8 0, i8 0, i8 0, i8 undef>, %bb.aj ]
  %i.dn = and i64 %.sroa.046.sroa.0.sroa.0.0.in, 72057594037927936
  %.not140 = icmp eq i64 %i.dn, 0
  br i1 %.not140, label %bb.ak, label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit.thread, !prof !19

bb.ak:                                            ; preds = %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.046.sroa.0.sroa.0.0.in, ptr %i.k, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %.sroa.749.0, ptr %.sroa.569.0..sroa_idx, align 8
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store <4 x i8> %4, ptr %.sroa.670.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.do, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2337
  store i64 0, ptr %i.d, align 8, !noalias !2337
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dp, align 8, !noalias !2337
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.dq, align 8, !noalias !2337
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @64, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc.i unwind label %bb.ay, !noalias !2339

.noexc.i:                                         ; preds = %bb.ak
  %i.ds = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ds, 4
  br i1 %.not.i.i.i, label %bb.al, label %bb.az

bb.al:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 24), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc23.i unwind label %bb.ay, !noalias !2339

.noexc23.i:                                       ; preds = %bb.al
  %i.dt = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.1.i.i = icmp eq i64 %i.dt, 4
  br i1 %.not.i.1.i.i, label %bb.am, label %bb.az

bb.am:                                            ; preds = %.noexc23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 48), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc24.i unwind label %bb.ay, !noalias !2339

.noexc24.i:                                       ; preds = %bb.am
  %i.du = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.2.i.i = icmp eq i64 %i.du, 4
  br i1 %.not.i.2.i.i, label %bb.an, label %bb.az

bb.an:                                            ; preds = %.noexc24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 72), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc25.i unwind label %bb.ay, !noalias !2339

.noexc25.i:                                       ; preds = %bb.an
  %i.dv = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.3.i.i = icmp eq i64 %i.dv, 4
  br i1 %.not.i.3.i.i, label %bb.ao, label %bb.az

bb.ao:                                            ; preds = %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 96), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc26.i unwind label %bb.ay, !noalias !2339

.noexc26.i:                                       ; preds = %bb.ao
  %i.dw = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.4.i.i = icmp eq i64 %i.dw, 4
  br i1 %.not.i.4.i.i, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 120), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc27.i unwind label %bb.ay, !noalias !2339

.noexc27.i:                                       ; preds = %bb.ap
  %i.dx = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.5.i.i = icmp eq i64 %i.dx, 4
  br i1 %.not.i.5.i.i, label %bb.aq, label %bb.az

bb.aq:                                            ; preds = %.noexc27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 144), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc28.i unwind label %bb.ay, !noalias !2339

.noexc28.i:                                       ; preds = %bb.aq
  %i.dy = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.6.i.i = icmp eq i64 %i.dy, 4
  br i1 %.not.i.6.i.i, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 168), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc29.i unwind label %bb.ay, !noalias !2339

.noexc29.i:                                       ; preds = %bb.ar
  %i.dz = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.7.i.i = icmp eq i64 %i.dz, 4
  br i1 %.not.i.7.i.i, label %bb.as, label %bb.az

bb.as:                                            ; preds = %.noexc29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 192), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc30.i unwind label %bb.ay, !noalias !2339

.noexc30.i:                                       ; preds = %bb.as
  %i.ea = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.8.i.i = icmp eq i64 %i.ea, 4
  br i1 %.not.i.8.i.i, label %bb.at, label %bb.az

bb.at:                                            ; preds = %.noexc30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 216), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc31.i unwind label %bb.ay, !noalias !2339

.noexc31.i:                                       ; preds = %bb.at
  %i.eb = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.9.i.i = icmp eq i64 %i.eb, 4
  br i1 %.not.i.9.i.i, label %bb.au, label %bb.az

bb.au:                                            ; preds = %.noexc31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 240), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc32.i unwind label %bb.ay, !noalias !2339

.noexc32.i:                                       ; preds = %bb.au
  %i.ec = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.10.i.i = icmp eq i64 %i.ec, 4
  br i1 %.not.i.10.i.i, label %bb.av, label %bb.az

bb.av:                                            ; preds = %.noexc32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 264), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc33.i unwind label %bb.ay, !noalias !2339

.noexc33.i:                                       ; preds = %bb.av
  %i.ed = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.11.i.i = icmp eq i64 %i.ed, 4
  br i1 %.not.i.11.i.i, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 288), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc34.i unwind label %bb.ay, !noalias !2339

.noexc34.i:                                       ; preds = %bb.aw
  %i.ee = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.12.i.i = icmp eq i64 %i.ee, 4
  br i1 %.not.i.12.i.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.noexc34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2338
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @64, i64 312), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.j)
          to label %.noexc35.i unwind label %bb.ay, !noalias !2339

.noexc35.i:                                       ; preds = %bb.ax
  %i.ef = load i64, ptr %i.b, align 8, !range !16, !noalias !2338, !noundef !5 ; 2 uses
  %.not.i.13.i.i = icmp eq i64 %i.ef, 4
  br i1 %.not.i.13.i.i, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.be, %bb.ba, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val21.i = load i64, ptr %i.d, align 8, !noalias !2337 ; 2 uses
  %i.eh = icmp eq i64 %.val21.i, 0
  br i1 %i.eh, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i": ; preds = %bb.ay
  %.val22.i = load ptr, ptr %i.dp, align 8, !noalias !2337, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i, i64 noundef %.val21.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2339
  br label %common.resume

bb.az:                                            ; preds = %.noexc35.i, %.noexc34.i, %.noexc33.i, %.noexc32.i, %.noexc31.i, %.noexc30.i, %.noexc29.i, %.noexc28.i, %.noexc27.i, %.noexc26.i, %.noexc25.i, %.noexc24.i, %.noexc23.i, %.noexc.i
  %.lcssa.i.i = phi i64 [ %i.ds, %.noexc.i ], [ %i.dt, %.noexc23.i ], [ %i.du, %.noexc24.i ], [ %i.dv, %.noexc25.i ], [ %i.dw, %.noexc26.i ], [ %i.dx, %.noexc27.i ], [ %i.dy, %.noexc28.i ], [ %i.dz, %.noexc29.i ], [ %i.ea, %.noexc30.i ], [ %i.eb, %.noexc31.i ], [ %i.ec, %.noexc32.i ], [ %i.ed, %.noexc33.i ], [ %i.ee, %.noexc34.i ], [ %i.ef, %.noexc35.i ]
  %.sroa.512.0.copyload.i.i.i = load i64, ptr %i.dr, align 8, !noalias !2338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  %.val19.i = load i64, ptr %i.d, align 8, !noalias !2337 ; 2 uses
  %i.ei = icmp eq i64 %.val19.i, 0
  br i1 %i.ei, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread118

_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread118: ; preds = %bb.az
  %.val18.i124 = load ptr, ptr %i.dp, align 8, !noalias !2337, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i124, i64 noundef %.val19.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2339
  br label %_ZN4time10formatting11formattable6sealed6Sealed6format17h79c55fce2372abb4E.exit.thread

bb.ba:                                            ; preds = %.noexc35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2337
  %i.ej = load ptr, ptr %i.dp, align 8, !noalias !2337, !nonnull !5, !noundef !5
  %i.ek = load i64, ptr %i.dq, align 8, !noalias !2337, !noundef !5
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ej, i64 noundef %i.ek)
          to label %bb.bb unwind label %bb.ay, !noalias !2339

bb.bb:                                            ; preds = %bb.ba
  %i.el = load i64, ptr %i.c, align 8, !range !22, !noalias !2337, !noundef !5 ; 2 uses
  %.not17.i = icmp eq i64 %i.el, -9223372036854775808
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !noalias !2337 ; 2 uses
end_hunk_0
