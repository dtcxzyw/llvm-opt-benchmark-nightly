Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN17meilisearch_types10versioning13parse_version17h26fefa75a3416efaE:.lr.ph.split.i.i.i.i.i.i.i
.thread253:                                       ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169"
  %.sroa.6134.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i145, 32
  %.sroa.6134.0.extract.trunc = trunc nuw i64 %.sroa.6134.0.extract.shift to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.8199.0.copyload, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !21, !align !37, !noundef !21 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.8199.0.copyload, i64 40
  %i.fl = load i64, ptr %i.fk, align 8, !noundef !21 ; 6 uses
  switch i64 %i.fl, label %bb.ak [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"
    i64 1, label %bb.aj
  ]

bb.ai:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.3101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.au

bb.aj:                                            ; preds = %.thread253
  %i.fm = load i8, ptr %i.fj, align 1, !alias.scope !4924, !noundef !21
  switch i8 %i.fm, label %.lr.ph.i175.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"
  ]

.lr.ph.i175.preheader:                            ; preds = %bb.al, %bb.an, %bb.aj
  %.sroa.03.182.i176.ph = phi ptr [ %i.fn, %bb.al ], [ %i.fj, %bb.an ], [ %i.fj, %bb.aj ]
  %.sroa.16.181.i177.ph = phi i64 [ %i.fo, %bb.al ], [ %i.fl, %bb.an ], [ 1, %bb.aj ]
  br label %.lr.ph.i175

bb.ak:                                            ; preds = %.thread253
  %.pr.i182 = load i8, ptr %i.fj, align 1, !alias.scope !4924
  %cond.i183 = icmp eq i8 %.pr.i182, 43
  br i1 %cond.i183, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 2 uses
  %i.fo = add i64 %i.fl, -1                       ; 2 uses
  %i.fp = icmp ult i64 %i.fl, 10
  br i1 %i.fp, label %.lr.ph.i175.preheader, label %.preheader71.i184

.preheader71.i184:                                ; preds = %bb.an, %bb.al
  %.sroa.16.0.ph.i185 = phi i64 [ %i.fl, %bb.an ], [ %i.fo, %bb.al ] ; 2 uses
  %.sroa.03.0.ph.i186 = phi ptr [ %i.fj, %bb.an ], [ %i.fn, %bb.al ]
  %.not.i190442 = icmp eq i64 %.sroa.16.0.ph.i185, 0
  br i1 %.not.i190442, label %.loopexit.i180, label %.lr.ph446

bb.am:                                            ; preds = %bb.aq
  %.not.i190 = icmp eq i64 %i.fu, 0
  br i1 %.not.i190, label %.loopexit.i180, label %.lr.ph446

bb.an:                                            ; preds = %bb.ak
  %i.fq = icmp ult i64 %i.fl, 9
  br i1 %i.fq, label %.lr.ph.i175.preheader, label %.preheader71.i184

.loopexit.i180:                                   ; preds = %bb.am, %bb.ar, %.preheader71.i184
  %.sroa.019.2.i181 = phi i32 [ %i.gm, %bb.ar ], [ 0, %.preheader71.i184 ], [ %i.ge, %bb.am ]
  %i.fr = zext i32 %.sroa.019.2.i181 to i64
  %i.fs = shl nuw i64 %i.fr, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195"

.lr.ph446:                                        ; preds = %.preheader71.i184, %bb.am
  %.sroa.03.0.i189445 = phi ptr [ %i.ft, %bb.am ], [ %.sroa.03.0.ph.i186, %.preheader71.i184 ] ; 2 uses
  %.sroa.16.0.i188444 = phi i64 [ %i.fu, %bb.am ], [ %.sroa.16.0.ph.i185, %.preheader71.i184 ]
  %.sroa.019.0.i187443 = phi i32 [ %i.ge, %bb.am ], [ 0, %.preheader71.i184 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i189445, i64 1
  %i.fu = add i64 %.sroa.16.0.i188444, -1         ; 2 uses
  %i.fv = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i187443, i32 10) ; 2 uses
  %i.fw = extractvalue { i32, i1 } %i.fv, 0       ; 2 uses
  %i.fx = extractvalue { i32, i1 } %i.fv, 1
  %i.fy = load i8, ptr %.sroa.03.0.i189445, align 1, !alias.scope !4924, !noundef !21 ; 2 uses
  br i1 %i.fx, label %bb.ap, label %bb.ao, !prof !23

bb.ao:                                            ; preds = %.lr.ph446
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add nsw i32 %i.fz, -48                  ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 10
  br i1 %i.gb, label %bb.aq, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"

bb.ap:                                            ; preds = %.lr.ph446
  %i.gc = add i8 %i.fy, -48
  %i.gd = icmp ult i8 %i.gc, 10
  %spec.select.i192 = select i1 %i.gd, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195"

bb.aq:                                            ; preds = %bb.ao
  %i.ge = add i32 %i.ga, %i.fw                    ; 3 uses
  %.not66.i191 = icmp ult i32 %i.ge, %i.fw
  br i1 %.not66.i191, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread", label %bb.am

.lr.ph.i175:                                      ; preds = %.lr.ph.i175.preheader, %bb.ar
  %.sroa.03.182.i176 = phi ptr [ %i.gl, %bb.ar ], [ %.sroa.03.182.i176.ph, %.lr.ph.i175.preheader ] ; 2 uses
  %.sroa.16.181.i177 = phi i64 [ %i.gk, %bb.ar ], [ %.sroa.16.181.i177.ph, %.lr.ph.i175.preheader ]
  %.sroa.019.180.i178 = phi i32 [ %i.gm, %bb.ar ], [ 0, %.lr.ph.i175.preheader ]
  %i.gf = load i8, ptr %.sroa.03.182.i176, align 1, !alias.scope !4924, !noundef !21
  %i.gg = zext i8 %i.gf to i32
  %i.gh = add nsw i32 %i.gg, -48                  ; 2 uses
  %i.gi = icmp ult i32 %i.gh, 10
  br i1 %i.gi, label %bb.ar, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"

bb.ar:                                            ; preds = %.lr.ph.i175
  %i.gj = mul i32 %.sroa.019.180.i178, 10
  %i.gk = add nsw i64 %.sroa.16.181.i177, -1      ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i176, i64 1
  %i.gm = add i32 %i.gh, %i.gj                    ; 2 uses
  %.not67.i179 = icmp eq i64 %i.gk, 0
  br i1 %.not67.i179, label %.loopexit.i180, label %.lr.ph.i175

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195": ; preds = %bb.ap, %.loopexit.i180
  %.sroa.8.0.insert.insert.i171 = phi i64 [ %i.fs, %.loopexit.i180 ], [ %spec.select.i192, %bb.ap ] ; 3 uses
  %i.gn = trunc i64 %.sroa.8.0.insert.insert.i171 to i1
  br i1 %i.gn, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread", label %.thread259

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread": ; preds = %bb.aq, %bb.ao, %.lr.ph.i175, %bb.aj, %bb.aj, %.thread253, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195"
  %.sroa.8.0.insert.insert.i171258 = phi i64 [ %.sroa.8.0.insert.insert.i171, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195" ], [ 257, %bb.aj ], [ 257, %.lr.ph.i175 ], [ 1, %.thread253 ], [ 257, %bb.aj ], [ 257, %bb.ao ], [ 513, %bb.aq ]
  %.sroa.4136.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i171258, 8
  %.sroa.4136.0.extract.trunc = trunc i64 %.sroa.4136.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 %.sroa.4136.0.extract.trunc, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4925
  store ptr @125, ptr %i.a, align 8, !noalias !4926
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4229.0..sroa_idx, align 8, !noalias !4926
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.5230.0..sroa_idx, align 8, !noalias !4926
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6231.0..sroa_idx, align 8, !noalias !4926
  %.sroa.7232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7232.0..sroa_idx, align 8, !noalias !4926
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.as unwind label %bb.w

.thread259:                                       ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195"
  %.sroa.6138.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i171, 32
  %.sroa.6138.0.extract.trunc = trunc nuw i64 %.sroa.6138.0.extract.shift to i32
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6130.0.extract.trunc, ptr %i.go, align 4
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6134.0.extract.trunc, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.6138.0.extract.trunc, ptr %.sroa.559.0..sroa_idx, align 4
  store i32 7, ptr %0, align 8
  %i.gp = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.gp, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197", label %bb.at

bb.as:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.3119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.au

bb.at:                                            ; preds = %.thread259
  %i.gq = shl nuw i64 %.sroa.0.0.copyload, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8199.0.copyload, i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197": ; preds = %bb.aw, %bb.av, %bb.at, %.thread259
  ret void

bb.au:                                            ; preds = %bb.ai, %bb.as, %bb.y
  store i32 1, ptr %0, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.sroa.8199.0.copyload244 = phi ptr [ %.sroa.8199.0.copyload243, %bb.ax ], [ %.sroa.8199.0.copyload, %bb.au ] ; 2 uses
  %.sroa.0.0.copyload240 = phi i64 [ %.sroa.0.0.copyload239, %bb.ax ], [ %.sroa.0.0.copyload, %bb.au ] ; 2 uses
  %i.gr = icmp eq i64 %.sroa.0.0.copyload240, 0
  br i1 %i.gr, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gs = shl nuw i64 %.sroa.0.0.copyload240, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8199.0.copyload244) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8199.0.copyload244, i64 noundef %i.gs, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197"

bb.ax:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.456.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.456, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.456.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  store i32 1, ptr %0, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.456.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.456, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.456)
  br label %bb.av
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @_ZN17meilisearch_types10versioning19create_version_file17h2a2e1462d1959992E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8.i = alloca [7 x i8], align 1           ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 4                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [56 x i8], align 8                ; 13 uses
  %.sroa.0109 = alloca [24 x i8], align 8         ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.12 = alloca [15 x i8], align 1           ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 16 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [4 x i8], align 4                 ; 2 uses
  %i.y = alloca [4 x i8], align 4                 ; 2 uses
  %i.z = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.z, align 4
  store i32 %3, ptr %i.y, align 4
  store i32 %4, ptr %i.x, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @119, i64 noundef 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 6, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @129, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 4, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store i8 0, ptr %i.af, align 8
  store i32 0, ptr %i.s, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 49 ; 2 uses
  store i8 0, ptr %i.ag, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !5018)
  call void @llvm.experimental.noalias.scope.decl(metadata !5019)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5020
  %i.ah = invoke noundef zeroext i1 @_ZN3std4path4Path11is_absolute17hf19889a9c7aed189E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5021

.body.i.i:                                        ; preds = %bb.ac, %bb.ab, %bb.n, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.2.i.i, %bb.ab ], [ %.sroa.7.2.i.i, %bb.n ], [ %.sroa.7.2.i.i, %bb.ac ], [ %.sroa.7.2.i.i, %.loopexit.i.i ], [ %.sroa.7.1.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.7.2.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.061.0.i.i = phi i64 [ %.sroa.061.2.i.i, %bb.ab ], [ %.sroa.061.2.i.i, %bb.n ], [ %.sroa.061.2.i.i, %bb.ac ], [ %.sroa.061.2.i.i, %.loopexit.i.i ], [ %.sroa.061.1.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.061.2.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.017.0.i.i = phi i8 [ %.sroa.017.2.i.i, %bb.ab ], [ %.sroa.017.2.i.i, %bb.n ], [ %.sroa.017.2.i.i, %bb.ac ], [ %.sroa.017.2.i.i, %.loopexit.i.i ], [ %.sroa.017.1.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.017.2.i.i, %.loopexit.split-lp.loopexit.i.i ]
  %.pn.i.i = phi { ptr, i32 } [ %i.cs, %bb.ab ], [ %lpad.thr_comm.i.i.i.i, %bb.n ], [ %i.cs, %bb.ac ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp86.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit85.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %i.ai = trunc nuw i8 %.sroa.017.0.i.i to i1
  %i.aj = icmp ne i64 %.sroa.061.0.i.i, 0
  %or.cond82.not.i.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond82.not.i.i, label %bb.al, label %bb.by

.loopexit.i.i:                                    ; preds = %bb.u
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.aj, %_ZN3std4path4Path4join17hf0a2c10ae0280e75E.exit.i.i, %bb.z, %_ZN9getrandom8backends27linux_android_with_fallback10fill_inner17h2253fd23c107375eE.exit.i.i.i, %bb.v, %bb.s
  %lpad.loopexit85.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h4a5884ff49e5228aE.exit.i.i.i", %bb.j, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i", %bb.c, %bb.a
  %.sroa.7.1.ph.ph.i.i = phi ptr [ undef, %bb.a ], [ %.sroa.7.2.i.i, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h4a5884ff49e5228aE.exit.i.i.i" ], [ %.sroa.7.2.i.i, %bb.j ], [ %.sroa.7.2.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i" ], [ undef, %bb.c ]
  %.sroa.061.1.ph.ph.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.061.2.i.i, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h4a5884ff49e5228aE.exit.i.i.i" ], [ %.sroa.061.2.i.i, %bb.j ], [ %.sroa.061.2.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i" ], [ undef, %bb.c ]
  %.sroa.017.1.ph.ph.i.i = phi i8 [ 0, %bb.a ], [ %.sroa.017.2.i.i, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h4a5884ff49e5228aE.exit.i.i.i" ], [ %.sroa.017.2.i.i, %bb.j ], [ %.sroa.017.2.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i" ], [ 0, %bb.c ]
  %lpad.loopexit.split-lp86.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.ah, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit45.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5022
  invoke void @_ZN3std3env11current_dir17hc9190a9b245afa63E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5023

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.q, align 8, !range !25, !noalias !5022, !noundef !21 ; 5 uses
  %i.al = icmp eq i64 %i.ak, -9223372036854775808
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !5022 ; 5 uses
  br i1 %i.al, label %.critedge.i.i, label %bb.e

.critedge.i.i:                                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5022
  br label %.thread121

bb.e:                                             ; preds = %bb.d
  %.sroa.622.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.622.0.copyload.i.i = load i64, ptr %.sroa.622.0..sroa_idx.i.i, align 8, !noalias !5022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5022
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.an, i64 noundef %.sroa.622.0.copyload.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i unwind label %bb.f, !noalias !5023

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %i.ak, 0
  br i1 %i.ap, label %bb.by, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5023
  br label %bb.by

_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i: ; preds = %bb.e
  %.sroa.061.0.copyload.i.i = load i64, ptr %i.p, align 8, !noalias !5022 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !5022, !nonnull !21, !noundef !21 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !5022 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5022
  %i.aq = icmp eq i64 %i.ak, 0
  br i1 %i.aq, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit45.i.i", label %bb.h

bb.h:                                             ; preds = %_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5023
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit45.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit45.i.i": ; preds = %bb.h, %_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i, %bb.b
  %.sroa.7.2.i.i = phi ptr [ undef, %bb.b ], [ %.sroa.7.0.copyload.i.i, %bb.h ], [ %.sroa.7.0.copyload.i.i, %_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i ] ; 12 uses
  %.sroa.061.2.i.i = phi i64 [ undef, %bb.b ], [ %.sroa.061.0.copyload.i.i, %bb.h ], [ %.sroa.061.0.copyload.i.i, %_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i ] ; 12 uses
  %.sroa.6.0.i.i = phi i64 [ %1, %bb.b ], [ %.sroa.11.0.copyload.i.i, %bb.h ], [ %.sroa.11.0.copyload.i.i, %_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i ] ; 8 uses
  %.sroa.060.0.i.i = phi ptr [ %0, %bb.b ], [ %.sroa.7.0.copyload.i.i, %bb.h ], [ %.sroa.7.0.copyload.i.i, %_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i ] ; 2 uses
  %.sroa.017.2.i.i = phi i8 [ 0, %bb.b ], [ 1, %bb.h ], [ 1, %_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5022
  %i.ar = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN8fastrand10global_rng3RNG29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h41d85fc82138e0e9E") ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !range !35, !noalias !5024, !noundef !21
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %._ZN4core3ops8function6FnOnce9call_once17h0b6b5b2a97d29695E.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i", !prof !49

._ZN4core3ops8function6FnOnce9call_once17h0b6b5b2a97d29695E.exit_crit_edge.i.i.i: ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit45.i.i"
  %.pre.i.i.i = load i64, ptr %i.ar, align 8, !noalias !5022
  br label %bb.i

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit45.i.i"
  %i.av = invoke { i64, i64 } @_ZN8fastrand10global_rng11random_seed17h4b5a2dc88f0ebb58E()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5023 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i"
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = extractvalue { i64, i64 } %i.av, 1
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.ax, i64 %i.ay, i64 1078321422319462234
  store i8 1, ptr %i.as, align 8, !noalias !5025
  br label %bb.i

bb.i:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h0b6b5b2a97d29695E.exit_crit_edge.i.i.i
  %i.az = phi i64 [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h0b6b5b2a97d29695E.exit_crit_edge.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %.noexc.i.i ]
  %i.ba = add i64 %i.az, 3257665815644502181      ; 3 uses
  %i.bb = zext i64 %i.ba to i128
  %i.bc = xor i64 %i.ba, -8378864009470890807
  %i.bd = zext i64 %i.bc to i128
  %i.be = mul nuw i128 %i.bd, %i.bb               ; 2 uses
  %i.bf = lshr i128 %i.be, 64
  %i.bg = xor i128 %i.bf, %i.be
  %i.bh = trunc i128 %i.bg to i64
  store i64 %i.ba, ptr %i.ar, align 8, !noalias !5022
  store i64 %i.bh, ptr %i.o, align 8, !noalias !5022
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.bk = load i8, ptr %i.af, align 8, !range !35, !alias.scope !5026, !noalias !5027
  %i.bl = load i32, ptr %i.s, align 8, !range !63, !alias.scope !5026, !noalias !5027
  %i.bm = trunc nuw i32 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.0.0.i.i.i = select i1 %i.bm, ptr %i.bn, ptr null
  %i.bo = load i8, ptr %i.ag, align 1, !range !35, !alias.scope !5026, !noalias !5027
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.k

bb.j:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$core..result..Result$LT$tempfile..file..NamedTempFile$C$std..io..error..Error$GT$$GT$17ha7a3f8a02e86c67fE.exit.i"
  %i.br = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2045, i64 noundef 30)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5023 ; 3 uses

bb.k:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$core..result..Result$LT$tempfile..file..NamedTempFile$C$std..io..error..Error$GT$$GT$17ha7a3f8a02e86c67fE.exit.i", %bb.i
end_hunk_0
begin_hunk_1_@_ZN17meilisearch_types10versioning19create_version_file17h2a2e1462d1959992E:bb.a
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.6114.0.copyload = load i64, ptr %.sroa.6114.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5052)
  call void @llvm.experimental.noalias.scope.decl(metadata !5053)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5054
  %i.er = load ptr, ptr %i.b, align 8, !alias.scope !5053, !noalias !5055, !nonnull !21, !align !37, !noundef !21 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !5053, !noalias !5055, !noundef !21 ; 3 uses
  %i.eu = invoke noundef ptr @_ZN8tempfile4file3imp8platform7persist17h057a8b1cbc700ba0E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.er, i64 noundef %i.et, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5113.0.copyload, i64 noundef %.sroa.6114.0.copyload, i1 noundef zeroext true)
          to label %bb.bg unwind label %bb.bf, !noalias !5056 ; 3 uses

bb.be:                                            ; preds = %bb.bf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5113.0.copyload, i64 noundef %.sroa.0112.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5056
  br label %bb.bm

bb.bf:                                            ; preds = %bb.bi, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit77"
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = icmp eq i64 %.sroa.0112.0.copyload, 0
  br i1 %i.ew, label %bb.bm, label %bb.be

bb.bg:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit77"
  %.not.i.i78 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i78, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.6.8..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.8.copyload8.i = load i8, ptr %.sroa.6.8..sroa_idx7.i, align 8, !alias.scope !5057, !noalias !5058
  %.sroa.0109.17..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0109, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0109.17..sroa_idx, i64 7, i1 false), !noalias !5059
  br label %"_ZN4core3ptr61drop_in_place$LT$alloc..boxed..Box$LT$std..path..Path$GT$$GT$17h1eb2e7fa2a9318f8E.exit.i.i"

bb.bi:                                            ; preds = %bb.bg
  store i64 0, ptr %i.a, align 8, !noalias !5056
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !5056
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !5056
  %i.ex = invoke { ptr, i64 } @_ZN3std3ffi6os_str8OsString17into_boxed_os_str17h464c67547c0e3b4fE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.bj unwind label %bb.bf, !noalias !5056 ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.ey = icmp eq i64 %i.et, 0
  br i1 %i.ey, label %"_ZN4core3ptr61drop_in_place$LT$alloc..boxed..Box$LT$std..path..Path$GT$$GT$17h1eb2e7fa2a9318f8E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.bj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.er, i64 noundef %i.et, i64 noundef 1) #52, !noalias !5056
  br label %"_ZN4core3ptr61drop_in_place$LT$alloc..boxed..Box$LT$std..path..Path$GT$$GT$17h1eb2e7fa2a9318f8E.exit.i.i"

"_ZN4core3ptr61drop_in_place$LT$alloc..boxed..Box$LT$std..path..Path$GT$$GT$17h1eb2e7fa2a9318f8E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.bj, %bb.bh
  %.sroa.6.0.i = phi i8 [ %.sroa.6.8.copyload8.i, %bb.bh ], [ 2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ 2, %bb.bj ] ; 2 uses
  %i.ez = icmp eq i64 %.sroa.0112.0.copyload, 0
  br i1 %i.ez, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$alloc..boxed..Box$LT$std..path..Path$GT$$GT$17h1eb2e7fa2a9318f8E.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5113.0.copyload, i64 noundef %.sroa.0112.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5056
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bm
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !5055
  unreachable

bb.bm:                                            ; preds = %bb.bf, %bb.be
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$tempfile..file..TempPath$GT$17h8eef3b17fc415854E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #55
          to label %.thread130 unwind label %bb.bl, !noalias !5055

bb.bn:                                            ; preds = %bb.bk, %"_ZN4core3ptr61drop_in_place$LT$alloc..boxed..Box$LT$std..path..Path$GT$$GT$17h1eb2e7fa2a9318f8E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5054
  %.not.i = icmp eq i8 %.sroa.6.0.i, 2
  br i1 %.not.i, label %bb.bp, label %bb.bo

.thread130:                                       ; preds = %bb.bm
  %i.fb = call noundef i32 @close(i32 noundef %.sroa.6110.0.copyload) #52, !noalias !5054 ; 0 uses
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit91"

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0109, i64 16, i1 false)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0109)
  %i.fc = ptrtoint ptr %i.eu to i64
  store i64 %i.fc, ptr %i.r, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 %.sroa.6.0.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.426.sroa.2.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i32 %.sroa.6110.0.copyload, ptr %.sroa.426.sroa.2.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %i.fd = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hff756cbb126c293fE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit"

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0109)
  %i.fe = call noundef i32 @close(i32 noundef %.sroa.6110.0.copyload) #52 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit": ; preds = %bb.bo, %bb.bw, %bb.bx, %bb.bp
  %.sroa.0.0 = phi ptr [ null, %bb.bp ], [ %i.fd, %bb.bo ], [ %.sroa.0.2.ph, %bb.bw ], [ %.sroa.0.2.ph, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret ptr %.sroa.0.0

bb.bq:                                            ; preds = %bb.bc
  %i.ff = icmp eq i64 %.sroa.094.0.copyload, 0
  br i1 %i.ff, label %.thread148, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.094.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5060
  br label %.thread148

.thread148:                                       ; preds = %bb.br, %bb.bq
  invoke void @"_ZN66_$LT$tempfile..file..TempPath$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf88e6a3d7e6813b4E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %.thread148
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %.val3.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5061, !noundef !21 ; 2 uses
  %i.fh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.fh, label %bb.bu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i84"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i84": ; preds = %bb.bs
  %.val2.i.i = load ptr, ptr %i.v, align 8, !alias.scope !5061, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val3.i.i, i64 noundef 1) #52
  br label %bb.bu

bb.bt:                                            ; preds = %.thread148
  %.val1.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5061, !noundef !21 ; 2 uses
  %i.fi = icmp eq i64 %.val1.i.i, 0
  br i1 %i.fi, label %"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17h2e827f2f680c92d7E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i": ; preds = %bb.bt
  %.val.i.i86 = load ptr, ptr %i.v, align 8, !alias.scope !5061, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i86, i64 noundef %.val1.i.i, i64 noundef 1) #52
  br label %"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17h2e827f2f680c92d7E.exit"

bb.bu:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i84", %bb.bs
  %.val1.i85 = load i32, ptr %i.dj, align 8, !range !65, !alias.scope !5062, !noundef !21
  %i.fj = call noundef i32 @close(i32 noundef %.val1.i85) #52 ; 0 uses
  br label %bb.by

"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17h2e827f2f680c92d7E.exit": ; preds = %bb.bt, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i"
  %.val.i87 = load i32, ptr %i.dj, align 8, !range !65, !alias.scope !5062, !noundef !21
  %i.fk = call noundef i32 @close(i32 noundef %.val.i87) #52 ; 0 uses
  br label %bb.bw

bb.bv:                                            ; preds = %.thread126
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

.thread126:                                       ; preds = %.body72, %bb.bb, %.thread133
  %.pn129 = phi { ptr, i32 } [ %i.di, %.thread133 ], [ %eh.lpad-body73, %bb.bb ], [ %eh.lpad-body73, %.body72 ]
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17h2e827f2f680c92d7E"(ptr noalias noundef align 8 dereferenceable(32) %i.v) #55
          to label %bb.by unwind label %bb.bv

bb.bw:                                            ; preds = %bb.ao, %"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17h2e827f2f680c92d7E.exit"
  %.sroa.0.2.ph = phi ptr [ %i.ep, %"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17h2e827f2f680c92d7E.exit" ], [ %i.df, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.val63 = load i64, ptr %i.w, align 8           ; 2 uses
  %i.fm = icmp eq i64 %.val63, 0
  br i1 %i.fm, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit", label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fn = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val64 = load ptr, ptr %i.fn, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val64, i64 noundef %.val63, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit91": ; preds = %bb.bz, %bb.by, %.thread130
  %.pn60118 = phi { ptr, i32 } [ %i.ev, %.thread130 ], [ %.pn60.ph, %bb.bz ], [ %.pn60.ph, %bb.by ]
  resume { ptr, i32 } %.pn60118

bb.by:                                            ; preds = %.thread126, %bb.am, %bb.bu, %.body.i.i, %bb.f, %bb.g, %bb.al
  %.pn60.ph = phi { ptr, i32 } [ %.pn129, %.thread126 ], [ %.pn.i.i, %bb.al ], [ %.pn.i.i, %.body.i.i ], [ %i.ao, %bb.f ], [ %i.ao, %bb.g ], [ %i.dd, %bb.am ], [ %i.fg, %bb.bu ] ; 2 uses
  %.val = load i64, ptr %i.w, align 8             ; 2 uses
  %i.fo = icmp eq i64 %.val, 0
  br i1 %i.fo, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit91", label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val62 = load ptr, ptr %i.fp, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit91"
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @_ZN17meilisearch_types10versioning27create_current_version_file17h2dda9f1b5d623ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr @_ZN17meilisearch_types10versioning19create_version_file17h2a2e1462d1959992E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef 1, i32 noundef 53, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN17meilisearch_types11archive_ext14check_symlinks10visit_dirs17h237ac5f66c93dde0E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 13 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = tail call noundef zeroext i1 @_ZN3std4path4Path6is_dir17hfb38c9607b9eeb66E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5106
  call void @_ZN3std3sys2fs8read_dir17hd192aa9267736d08E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1), !noalias !5107
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !51, !noalias !5106, !noundef !21 ; 2 uses
  %.sink2.i = load ptr, ptr %i.a, align 8, !noalias !5106, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5106
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %bb.c, label %bb.d

.sink.split.sink.split:                           ; preds = %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h587a3eacbb900323E.exit50", %bb.j
  %.sroa.0.0.ph.ph = phi ptr [ null, %bb.j ], [ %.sroa.0.3, %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h587a3eacbb900323E.exit50" ]
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hde34f2c2e678ef7eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h587a3eacbb900323E.exit50", %bb.j
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.3, %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h587a3eacbb900323E.exit50" ], [ null, %bb.j ], [ %.sroa.0.0.ph.ph, %.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sink2.i, %bb.b ], [ %.sroa.0.0.ph, %.sink.split ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sink2.i, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = icmp eq i32 %2, 0
  %i.o = add i32 %2, -1
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h587a3eacbb900323E.exit", %bb.d
  invoke void @"_ZN75_$LT$std..fs..ReadDir$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25a0c1b7795dd0d8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.ad, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i46", %bb.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i", %bb.g, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit"
  %.pn30 = phi { ptr, i32 } [ %.pn, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit" ], [ %i.am, %bb.ab ], [ %i.s, %bb.g ], [ %i.am, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i" ], [ %i.as, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i46" ], [ %i.as, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5108)
  call void @llvm.experimental.noalias.scope.decl(metadata !5109)
  call void @llvm.experimental.noalias.scope.decl(metadata !5110)
  call void @llvm.experimental.noalias.scope.decl(metadata !5111)
  %i.p = load ptr, ptr %i.e, align 8, !alias.scope !5112, !nonnull !21, !noundef !21
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !5112
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %"_ZN4core3ptr37drop_in_place$LT$std..fs..ReadDir$GT$17hdcd2a36c139ad758E.exit"

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hde34f2c2e678ef7eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %"_ZN4core3ptr37drop_in_place$LT$std..fs..ReadDir$GT$17hdcd2a36c139ad758E.exit" unwind label %bb.ae

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.d, align 8, !range !32, !noundef !21
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.03.0.copyload = load ptr, ptr %i.k, align 8 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = icmp eq ptr %.sroa.03.0.copyload, null
  br i1 %i.v, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !5113)
  call void @llvm.experimental.noalias.scope.decl(metadata !5114)
  call void @llvm.experimental.noalias.scope.decl(metadata !5115)
  call void @llvm.experimental.noalias.scope.decl(metadata !5116)
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !5117, !nonnull !21, !noundef !21
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !5117
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %.sink.split.sink.split, label %.sink.split

bb.k:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  br label %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h587a3eacbb900323E.exit50"

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  store ptr %.sroa.03.0.copyload, ptr %i.c, align 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN3std2fs8DirEntry4path17h6a1ecac780b01e6aE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.n unwind label %bb.m

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit": ; preds = %bb.p, %bb.o, %bb.m
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %lpad.phi, %bb.o ], [ %lpad.phi, %bb.p ]
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h587a3eacbb900323E"(ptr noalias noundef align 8 dereferenceable(40) %i.c) #55
          to label %.body unwind label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit"

bb.n:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.l, align 8, !nonnull !21, !noundef !21 ; 5 uses
  %i.ab = load i64, ptr %i.m, align 8, !noundef !21 ; 2 uses
  %i.ac = invoke noundef zeroext i1 @_ZN3std4path4Path6is_dir17hfb38c9607b9eeb66E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ab)
          to label %bb.q unwind label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.r, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val35 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.ad = icmp eq i64 %.val35, 0
  br i1 %i.ad, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %.val35, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit"

bb.q:                                             ; preds = %bb.n
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = invoke fastcc noundef ptr @"_ZN17meilisearch_types11archive_ext14check_symlinks28_$u7b$$u7b$closure$u7d$$u7d$17h3a0fe2a10f9f4d0dE"(ptr noundef nonnull align 1 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.t unwind label %.loopexit  ; 2 uses

bb.s:                                             ; preds = %bb.q
  br i1 %i.n, label %bb.y, label %bb.x

bb.t:                                             ; preds = %bb.r
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.u, label %.loopexit3

bb.u:                                             ; preds = %bb.z, %bb.t
  %.val33 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.af = icmp eq i64 %.val33, 0
  br i1 %i.af, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit38", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %.val33, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit38"

.loopexit3:                                       ; preds = %bb.z, %bb.t, %bb.y
  %.sroa.0.1 = phi ptr [ %i.ai, %bb.y ], [ %i.ah, %bb.z ], [ %i.ae, %bb.t ] ; 2 uses
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ag = icmp eq i64 %.val, 0
  br i1 %i.ag, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit39", label %bb.w

bb.w:                                             ; preds = %.loopexit3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit39"

bb.x:                                             ; preds = %bb.s
  %i.ah = invoke fastcc noundef ptr @_ZN17meilisearch_types11archive_ext14check_symlinks10visit_dirs17h237ac5f66c93dde0E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i32 noundef %i.o, ptr noundef nonnull align 1 %3)
          to label %bb.z unwind label %.loopexit  ; 2 uses

bb.y:                                             ; preds = %bb.s
  %i.ai = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 21, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @131, i64 noundef 22)
          to label %.loopexit3 unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  %.not28 = icmp eq ptr %i.ah, null
  br i1 %.not28, label %bb.u, label %.loopexit3

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit38": ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !5118)
end_hunk_1
begin_hunk_2_@_ZN6anyhow5error12object_boxed17he8638371b0a64aedE:bb.a
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1197, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17h1f48d03281863b2bE(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #12 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !21
  %i.b = icmp eq i128 %i.a, 158724243405762285776467595339081520723
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17hbb5e0726eea0338fE(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #12 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !21
  %i.b = icmp eq i128 %i.a, -39801400162364798007274513592457367403
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN6anyhow5error17object_drop_front17h5de59e3773c1baeeE(ptr noundef nonnull %0, ptr noalias readonly align 8 captures(none) dead_on_return %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h6e876e8489d913f4E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.a)
          to label %"_ZN4core3ptr152drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$tempfile..file..PersistError$GT$$GT$$GT$$GT$17hef28a9bf78aa086dE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 96, i64 noundef 8) #52
  resume { ptr, i32 } %i.b

"_ZN4core3ptr152drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$tempfile..file..PersistError$GT$$GT$$GT$$GT$17hef28a9bf78aa086dE.exit": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 96, i64 noundef 8) #52
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN6anyhow5error17object_drop_front17he35b92fba8fad830E(ptr noundef nonnull %0, ptr noalias readonly align 8 captures(none) dead_on_return %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h6e876e8489d913f4E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.a)
          to label %"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$$GT$17h0412f7e954341591E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #52
  resume { ptr, i32 } %i.b

"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$$GT$17h0412f7e954341591E.exit": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #52
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17h687408c6bce508f8E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !24465
  %i.c = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !24465 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e, !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr49drop_in_place$LT$tempfile..file..PersistError$GT$17h44402f65130b2d28E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #55
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

.body:                                            ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h6e876e8489d913f4E"(ptr noalias noundef align 8 dereferenceable(48) %i.g) #55
          to label %bb.j unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h6e876e8489d913f4E"(ptr noalias noundef align 8 dereferenceable(48) %i.h)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 96, i64 noundef 8) #52
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 96, i64 noundef 8) #52
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @1193, 1
  ret { ptr, ptr } %i.k

bb.h:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.i:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.e, %bb.j ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 96, i64 noundef 8) #52
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17h6b58d7f94f070062E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.d = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #52 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h83b702f883e6a7bfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #55
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

.body:                                            ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h6e876e8489d913f4E"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #55
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h6e876e8489d913f4E"(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #52
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @1191, 1
  ret { ptr, ptr } %i.l

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #52
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h9d1e5c701961a2d0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1198, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !24468
  %i.d = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !24468 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8b1c2bd8e09ffe94E.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr81drop_in_place$LT$anyhow..error..ErrorImpl$LT$tempfile..file..PersistError$GT$$GT$17h1209a90437b6acd2E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a) #55
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8b1c2bd8e09ffe94E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha1dfd40d3fcfe3fcE"(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1199, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !24471
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !24471 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc58c3fc810d2c9b2E.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17hc5d6f96db4012eecE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #55
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc58c3fc810d2c9b2E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h9d9ce0e1e84245deE"(ptr noundef nonnull %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hf340158f599dd0d9E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hf340158f599dd0d9E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha1dfd40d3fcfe3fcE"(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h83b702f883e6a7bfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #55
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hff756cbb126c293fE"(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h9f1b5d87860089eaE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h9f1b5d87860089eaE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h9d1e5c701961a2d0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr49drop_in_place$LT$tempfile..file..PersistError$GT$17h44402f65130b2d28E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) #55
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init28_$u7b$$u7b$closure$u7d$$u7d$17hc06b3036289c6263E"(ptr noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #29 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #57
          to label %bb.f unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %1, align 8, !invariant.load !21 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !43, !invariant.load !21 ; 2 uses
  %i.g = icmp ult i64 %i.f, -9223372036854775807
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h4a2a78b4a81a41a8E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.f) #52
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h4a2a78b4a81a41a8E.exit"

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !43, !invariant.load !21 ; 2 uses
  %i.n = icmp ult i64 %i.m, -9223372036854775807
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.m) #52
  br label %.body

bb.f:                                             ; preds = %bb.a
  unreachable

.body:                                            ; preds = %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h4a2a78b4a81a41a8E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.d
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr nofree noundef nonnull align 8 captures(none) %0, i64 %.0.val, ptr %.16.val, ptr %.16.val1, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %.not = icmp eq i64 %1, 0
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val1, i64 32 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %i.c, i64 %1 acq_rel, align 8
  %i.f = add i64 %i.e, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.g = add i64 %.0.val, 1
  %i.h = icmp eq i64 %.sroa.01.0, %i.g
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = icmp eq ptr %.16.val, %i.j
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = cmpxchg ptr %i.i, ptr %.16.val, ptr %.16.val1 release acquire, align 8
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  br i1 %i.m, label %bb.h, label %"_ZN77_$LT$papaya..raw..utils..MapGuard$LT$G$GT$$u20$as$u20$seize..guard..Guard$GT$12defer_retire17h45e2371b8b7c977eE.exit"

bb.g:                                             ; preds = %bb.d, %bb.e, %"_ZN77_$LT$papaya..raw..utils..MapGuard$LT$G$GT$$u20$as$u20$seize..guard..Guard$GT$12defer_retire17h45e2371b8b7c977eE.exit"
  %.sroa.0.0 = phi i1 [ true, %"_ZN77_$LT$papaya..raw..utils..MapGuard$LT$G$GT$$u20$as$u20$seize..guard..Guard$GT$12defer_retire17h45e2371b8b7c977eE.exit" ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.16.val1, i64 128
  store atomic i8 2, ptr %i.n seq_cst, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24490)
  %i.o = load ptr, ptr %2, align 8, !alias.scope !24491, !nonnull !21, !align !27, !noundef !21 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !24491
  %i.q = load <2 x i64>, ptr %i.p, align 8, !alias.scope !24491
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !24491 ; 3 uses
  %i.r = icmp ult i64 %.sroa.5.0.copyload.i.i, 59
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.5.0.copyload.i.i ; 2 uses
  %i.t = load atomic ptr, ptr %i.s acquire, align 8, !noalias !24492 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.j, !prof !23

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24492
  store <2 x i64> %i.q, ptr %i.b, align 16, !noalias !24491
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx4.i.i, align 16, !noalias !24491
  %i.v = call noundef ptr @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$10initialize17hdae4c4e45f8b430bE"(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull align 8 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b), !noalias !24492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24492
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.v, %bb.i ], [ %i.t, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw [256 x i8], ptr %.sroa.01.0.i.i.i.i, i64 %.sroa.4.0.copyload.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.y = load atomic i8, ptr %i.x monotonic, align 1, !noalias !24492
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  call void @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$5write17hdb34ddca1c2a63b7E"(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull align 128 %i.w), !noalias !24492
  br label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h3e77440369e5b937E.exit.i.i.i"

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i) ]
  br label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h3e77440369e5b937E.exit.i.i.i"

"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h3e77440369e5b937E.exit.i.i.i": ; preds = %bb.l, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 952 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !24493, !noundef !21
  %i.ac = call fastcc noundef ptr @_ZN5seize3raw9collector10LocalBatch11get_or_init17ha7dd5c386622c674E(ptr noalias noundef align 8 dereferenceable(8) %i.w, i64 noundef %i.ab), !noalias !24493 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, inttoptr (i64 -1 to ptr)
  br i1 %i.ad, label %bb.o, label %bb.m

bb.m:                                             ; preds = %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h3e77440369e5b937E.exit.i.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !24494, !noalias !24495, !noundef !21 ; 4 uses
  %i.ag = load i64, ptr %i.ac, align 8, !range !22, !alias.scope !24494, !noalias !24495, !noundef !21
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7501f1b3c840e57E.exit.i.i.i"

bb.n:                                             ; preds = %bb.m
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha6f19cb3bc5769f2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1143), !noalias !24495
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7501f1b3c840e57E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7501f1b3c840e57E.exit.i.i.i": ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !24494, !noalias !24495, !nonnull !21, !noundef !21
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.af ; 4 uses
  store ptr @_ZN4core3ops8function6FnOnce9call_once17h39a95578889b43d0E, ptr %i.ak, align 8, !noalias !24493
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.16.val, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !24493
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !24493
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.ac, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !24493
  %i.al = add nsw i64 %i.af, 1                    ; 2 uses
  store i64 %i.al, ptr %i.ae, align 8, !alias.scope !24494, !noalias !24495
  %i.am = icmp slt i64 %i.af, 288230376151711743
  call void @llvm.assume(i1 %i.am)
  %i.an = load i64, ptr %i.aa, align 8, !noalias !24493, !noundef !21
  %.not.i.i.i = icmp ult i64 %i.al, %i.an
  br i1 %.not.i.i.i, label %"_ZN77_$LT$papaya..raw..utils..MapGuard$LT$G$GT$$u20$as$u20$seize..guard..Guard$GT$12defer_retire17h45e2371b8b7c977eE.exit", label %bb.w

bb.o:                                             ; preds = %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h3e77440369e5b937E.exit.i.i.i"
  %i.ao = icmp eq ptr %.16.val, null
  br i1 %i.ao, label %bb.q, label %bb.p

end_hunk_2
