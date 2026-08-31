Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN10serde_core2de12Deserializer24__deserialize_content_v117hf28e255d50009cc3E:bb.a
  %.not.i = icmp eq ptr %i.gx, null
  br i1 %.not.i, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %.sroa.33.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.33.0.copyload231 = load i8, ptr %.sroa.33.0..sroa_idx230, align 1, !noalias !11986
  %.sroa.35.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.35, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.35.0..sroa_idx242, i64 6, i1 false), !noalias !11986
  %.sroa.35245.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.35245.0.copyload259 = load i64, ptr %.sroa.35245.0..sroa_idx258, align 8, !noalias !11986
  %.sroa.45.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.hc = load <2 x i64>, ptr %.sroa.45.0..sroa_idx276, align 8, !noalias !11986
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.947)
  br label %.thread100

bb.cs:                                            ; preds = %bb.cp
  %i.hd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !11986, !nonnull !14, !align !240, !noundef !14
  %i.hf = ptrtoint ptr %i.he to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.947)
  %.not = icmp eq ptr %i.gx, null
  br i1 %.not, label %.thread100, label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  %i.hg = ptrtoint ptr %i.gx to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.947)
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h73ccac2b1ed295d4E"(ptr noalias noundef align 8 dereferenceable(32) %i.r), !noalias !11966, !inline_history !11987
  br label %.thread100

.thread100:                                       ; preds = %bb.ct, %bb.cr, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit", %bb.cs
  %.sroa.35245.3 = phi i64 [ %i.hf, %bb.cs ], [ %i.hf, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit" ], [ %.sroa.35245.0.copyload259, %bb.cr ], [ %i.hg, %bb.ct ]
  %.sroa.33.2 = phi i8 [ undef, %bb.cs ], [ undef, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit" ], [ %.sroa.33.0.copyload231, %bb.cr ], [ undef, %bb.ct ]
  %.sroa.0.2 = phi i8 [ 22, %bb.cs ], [ 22, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit" ], [ %i.ha, %bb.cr ], [ 22, %bb.ct ]
  %i.hh = phi <2 x i64> [ undef, %bb.cs ], [ undef, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit" ], [ %i.hc, %bb.cr ], [ undef, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11986
  br label %bb.bl

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !12185), !noalias !11966
  call void @llvm.experimental.noalias.scope.decl(metadata !12188), !noalias !11966
  %i.hi = load i64, ptr %i.gx, align 8, !range !3586, !alias.scope !12191, !noalias !12192, !noundef !14
  switch i64 %i.hi, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit" [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.hj, align 8, !alias.scope !12191, !noalias !12192, !noundef !14 ; 2 uses
  %i.hk = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.hk, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.cv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.hl, align 8, !alias.scope !12191, !noalias !12192, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #79, !noalias !12195
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit"

bb.cw:                                            ; preds = %bb.cu
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.hm)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit" unwind label %bb.cx, !noalias !12192

bb.cx:                                            ; preds = %bb.cw
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gx, i64 noundef 40, i64 noundef 8) #79, !noalias !12192
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit": ; preds = %bb.cu, %bb.cv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.cw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gx, i64 noundef 40, i64 noundef 8) #79, !noalias !12192
  br label %.thread100

bb.cy:                                            ; preds = %bb.bl
  store i8 %.sroa.0.1, ptr %0, align 8
  %.sroa.33.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.33.1, ptr %.sroa.33.0..sroa_idx232, align 1
  %.sroa.35.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.35.0..sroa_idx243, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.35, i64 6, i1 false)
  %.sroa.35245.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.35245.2, ptr %.sroa.35245.0..sroa_idx260, align 8
  %.sroa.45.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ek, ptr %.sroa.45.0..sroa_idx278, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h7f3d0a7f36796b87E.exit"

bb.da:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11986
  store i64 10, ptr %i.p, align 8, !noalias !11986
  %i.ho = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !11966, !inline_history !11987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11986
  %i.hp = ptrtoint ptr %i.ho to i64
  br label %bb.as

bb.db:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11986
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h2c0fb984edd23d8fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !11966, !inline_history !11987
  %i.hq = load i64, ptr %i.x, align 8, !range !288, !noalias !11986, !noundef !14 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  br i1 %i.hr, label %bb.dc, label %switch.lookup432

bb.dc:                                            ; preds = %bb.db
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !11986, !nonnull !14, !align !240, !noundef !14
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ht, ptr %i.hu, align 8, !alias.scope !11966, !noalias !11969
  store i8 22, ptr %0, align 8, !alias.scope !11966, !noalias !11969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11986
  br label %bb.ah

switch.lookup432:                                 ; preds = %bb.db
  %.sroa.443.0.copyload = load i64, ptr %i.hs, align 8, !noalias !11986
  %switch.cast433 = trunc nuw i64 %i.hq to i24
  %switch.shiftamt434 = shl nuw nsw i24 %switch.cast433, 3
  %switch.downshift435 = lshr i24 525322, %switch.shiftamt434
  %switch.masked436 = trunc i24 %switch.downshift435 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11986
  store i8 %switch.masked436, ptr %0, align 8
  %.sroa.35245.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.443.0.copyload, ptr %.sroa.35245.0..sroa_idx262, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h7f3d0a7f36796b87E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h7f3d0a7f36796b87E.exit": ; preds = %.loopexit111, %bb.ag, %bb.ah, %bb.aj, %bb.al, %switch.lookup, %bb.at, %bb.au, %bb.cz, %switch.lookup432
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN10serde_core2de13VariantAccess15newtype_variant17h340dc7466d69a23aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [168 x i8], align 8               ; 7 uses
  %i.o = alloca [168 x i8], align 8               ; 25 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [168 x i8], align 8               ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = alloca [192 x i8], align 8               ; 10 uses
  %i.z = alloca [200 x i8], align 8               ; 15 uses
  %.sroa.15.i.i.i.i.i.i.i = alloca [152 x i8], align 8 ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [192 x i8], align 8              ; 10 uses
  %i.ac = alloca [200 x i8], align 8              ; 15 uses
  %.sroa.11.i.i.i.i.i.i.i = alloca [152 x i8], align 8 ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.18.i.i.i.sroa.7.i.i.i.i = alloca [160 x i8], align 8 ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 10 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [192 x i8], align 8              ; 16 uses
  %.sroa.22.i.i.i.i = alloca [160 x i8], align 8  ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12214)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12216)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 16 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !12219, !noalias !12222, !noundef !14 ; 6 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !12225, !noalias !12226 ; 2 uses
  %i.bc = icmp ult i64 %.promoted.i.i.i.i.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %.loopexit60.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !12219, !noalias !12222, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.bf = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bi, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12227)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !12228, !noundef !14
  switch i8 %i.bh, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !12229

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bi = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.bi, ptr %i.az, align 8, !alias.scope !12230, !noalias !12226
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bi, %i.bb
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit60.i.i.i.i, label %bb.b

.loopexit60.i.i.i.i:                              ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !12233
  store i64 5, ptr %i.at, align 8, !noalias !12233
  %i.bj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.at), !noalias !12234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !12233
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !alias.scope !12234, !noalias !12235
  store i64 4, ptr %0, align 8, !alias.scope !12234, !noalias !12235
  br label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$20newtype_variant_seed17h4be5f455a5b27416E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !12233
  store i64 10, ptr %i.au, align 8, !noalias !12233
  %i.bl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.au), !noalias !12234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !12233
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !12234, !noalias !12235
  store i64 4, ptr %0, align 8, !alias.scope !12234, !noalias !12235
  br label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$20newtype_variant_seed17h4be5f455a5b27416E.exit"

bb.e:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.bo = load i8, ptr %i.bn, align 8, !range !1313, !alias.scope !12235, !noalias !12234, !noundef !14
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.w, label %bb.v

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12259)
  %2 = icmp ult i64 %i.bf, %i.bb
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.f, %bb.g
  %i.bq = phi i64 [ %i.bt, %bb.g ], [ %i.bf, %bb.f ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noalias !12262, !noundef !14
  switch i8 %i.bs, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !3649

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = add i64 %i.bq, 1                        ; 3 uses
  store i64 %i.bt, ptr %i.az, align 8, !alias.scope !12273, !noalias !12276
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bt, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !12277
  store i64 5, ptr %i.as, align 8, !noalias !12277
  %i.bu = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as), !noalias !12278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !12277
  br label %bb.s

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = add i64 %i.bq, 1
  store i64 %i.bv, ptr %i.az, align 8, !alias.scope !12279, !noalias !12278
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bw, align 8, !alias.scope !12282, !noalias !12278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !12277
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !12278
  %i.bx = load i64, ptr %i.ar, align 8, !range !802, !noalias !12277, !noundef !14 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !12277 ; 10 uses
  br i1 %i.by, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6226), !noalias !12278
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12277
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !12277 ; 4 uses
  %i.cc = trunc nuw i64 %i.bx to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  br i1 %i.cc, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h00a5569873c07b0fE.exit.i.i.i.i.i.i.i.i.i.i.i" [
    i64 14, label %bb.m
    i64 8, label %bb.n
  ], !prof !5994

bb.m:                                             ; preds = %bb.l
  %i.cd = load i64, ptr %i.ca, align 1
  %i.ce = xor i64 %i.cd, 8236913794008576611
  %i.cf = getelementptr i8, ptr %i.ca, i64 6
  %i.cg = load i64, ptr %i.cf, align 1
  %i.ch = xor i64 %i.cg, 7310575179138429519
  %i.ci = or i64 %i.ce, %i.ch
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.t, label %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h00a5569873c07b0fE.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.cm = load i64, ptr %i.ca, align 1
  %i.cn = icmp ne i64 %i.cm, 7957695015225681252
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.u, label %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h00a5569873c07b0fE.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !15

"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h00a5569873c07b0fE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.l
  %i.cq = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1387, i64 noundef 2), !noalias !12283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12277
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hd4db2f6aa77cc71eE.exit.i.i.i.i.i.i.i.i.i.i.i [
    i64 14, label %bb.p
    i64 8, label %bb.q
  ], !prof !5994

bb.p:                                             ; preds = %bb.o
  %i.cr = load i64, ptr %i.ca, align 1
  %i.cs = xor i64 %i.cr, 8236913794008576611
  %i.ct = getelementptr i8, ptr %i.ca, i64 6
  %i.cu = load i64, ptr %i.ct, align 1
  %i.cv = xor i64 %i.cu, 7310575179138429519
  %i.cw = or i64 %i.cs, %i.cv
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.t, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hd4db2f6aa77cc71eE.exit.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.ca, align 1
  %i.db = icmp ne i64 %i.da, 7957695015225681252
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.u, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hd4db2f6aa77cc71eE.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17hd4db2f6aa77cc71eE.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.de = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1387, i64 noundef 2), !noalias !12286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12277
  br label %bb.r

bb.r:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17hd4db2f6aa77cc71eE.exit.i.i.i.i.i.i.i.i.i.i.i, %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h00a5569873c07b0fE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h00a5569873c07b0fE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.de, %_ZN10serde_core2de7Visitor18visit_borrowed_str17hd4db2f6aa77cc71eE.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.i ]
  %i.df = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !12278
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.64.0.ph.i.i.i.i.i = phi ptr [ %i.df, %bb.r ], [ %i.bu, %.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.64.0.ph.i.i.i.i.i) ]
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50fb0e0bcca55b7dE.exit.i.i.i.i"

bb.t:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !12291
  store i8 13, ptr %i.ap, align 8, !noalias !12291
  %i.dg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ap, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !12294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !12291
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50fb0e0bcca55b7dE.exit.i.i.i.i"

bb.u:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !12295
  store i8 13, ptr %i.aq, align 8, !noalias !12295
  %i.dh = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aq, ptr noundef nonnull align 1 @6070, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !12300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !12295
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50fb0e0bcca55b7dE.exit.i.i.i.i"

"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50fb0e0bcca55b7dE.exit.i.i.i.i": ; preds = %bb.u, %bb.t, %bb.s
  %.sink.i.i.i.i.i = phi ptr [ %i.dg, %bb.t ], [ %i.dh, %bb.u ], [ %.sroa.64.0.ph.i.i.i.i.i, %bb.s ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i.i.i.i, ptr %i.di, align 8, !alias.scope !12301, !noalias !12302
  store i64 4, ptr %0, align 8, !alias.scope !12301, !noalias !12302
  br label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$20newtype_variant_seed17h4be5f455a5b27416E.exit"

bb.v:                                             ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !12235, !noalias !12234, !noundef !14
  %i.dl = add i8 %i.dk, -1                        ; 2 uses
  store i8 %i.dl, ptr %i.dj, align 1, !alias.scope !12235, !noalias !12234
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.ex, label %bb.w, !prof !121

bb.w:                                             ; preds = %bb.v, %bb.e
  %i.dn = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.az, align 8, !alias.scope !12303, !noalias !12234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12315)
  %i.do = icmp ult i64 %i.dn, %i.bb
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.w, %bb.x
  %i.dp = phi i64 [ %i.ds, %bb.x ], [ %i.dn, %bb.w ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !12318, !noundef !14
  switch i8 %i.dr, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.ah
  ], !prof !12326

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ds = add i64 %i.dp, 1                        ; 3 uses
  store i64 %i.ds, ptr %i.az, align 8, !alias.scope !12327, !noalias !12330
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !12331
  store i64 3, ptr %i.am, align 8, !noalias !12331
  %i.dt = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.am), !noalias !12332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !12331
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h59d83577237fb43aE.exit.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !12331
  store i64 17, ptr %i.an, align 8, !noalias !12331
  %i.du = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.an), !noalias !12332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !12331
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h59d83577237fb43aE.exit.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12342)
  %i.dv = add i64 %i.dp, 1
  store i64 %i.dv, ptr %i.az, align 8, !alias.scope !12345, !noalias !12348
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dw, align 8, !alias.scope !12353, !noalias !12348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !12354
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !12348
  %i.dx = load i64, ptr %i.al, align 8, !range !802, !noalias !12354, !noundef !14 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !12354 ; 9 uses
  br i1 %i.dy, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i, align 8, !noalias !12354 ; 3 uses
  %i.eb = trunc nuw i64 %i.dx to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ]
end_hunk_0
begin_hunk_1_@_ZN15index_scheduler5queue5tasks9TaskQueue12all_task_ids17hbbc02478fd8fb7aeE:bb.a
  %..sroa.08.0.copyload.i.i.i.i.i79.i = select i1 %.not.i.i.i.i.i76.i, i64 0, i64 %.sroa.010.0.copyload.i.i.i.i.i71.i
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hc67c41e228de7c81E.exit.i.i"

bb.ag:                                            ; preds = %.thread180.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53148
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hc67c41e228de7c81E.exit.i.i"

bb.ah:                                            ; preds = %.noexc.i66.i, %bb.ae
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$$GT$$GT$17h22d3b7c3988f6819E"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.i) #81
          to label %.body.i unwind label %bb.ai, !noalias !53160

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hc67c41e228de7c81E.exit.i.i": ; preds = %bb.ag, %bb.af, %.noexc3.i.i
  %.sroa.12131.0.i = phi i64 [ %.sroa.511.sroa.5.0.copyload.i.i.i.i.i75.i, %.noexc3.i.i ], [ undef, %bb.ag ], [ %..sroa.5.sroa.5.0.copyload.i.i.i.i.i78.i, %bb.af ] ; 2 uses
  %.sroa.11130.0.i = phi ptr [ %.sroa.511.sroa.0.0.copyload.i.i.i.i.i73.i, %.noexc3.i.i ], [ undef, %bb.ag ], [ %..sroa.5.sroa.026.0.copyload.i.i.i.i.i77.i, %bb.af ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.010.0.copyload.i.i.i.i.i71.i, %.noexc3.i.i ], [ undef, %bb.ag ], [ %..sroa.08.0.copyload.i.i.i.i.i79.i, %bb.af ] ; 2 uses
  %.not50.i = phi i1 [ false, %.noexc3.i.i ], [ false, %bb.ag ], [ true, %bb.af ]
  %.sroa.0129.0.i = phi i64 [ 127, %.noexc3.i.i ], [ 153, %bb.ag ], [ 152, %bb.af ]
  %i.de = phi i8 [ %i.da, %.noexc3.i.i ], [ 5, %bb.ag ], [ %i.da, %bb.af ]
  invoke fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$$GT$$GT$17h22d3b7c3988f6819E"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.i)
          to label %"_ZN4core6option15Option$LT$T$GT$7or_else17hebd303cd1016eddfE.exit.i" unwind label %bb.ac, !noalias !53017

bb.ai:                                            ; preds = %bb.ah
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !53160
  unreachable

"_ZN4core6option15Option$LT$T$GT$7or_else17hebd303cd1016eddfE.exit.i": ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hc67c41e228de7c81E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !53017
  br i1 %.not.i.i.i.i65.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hebd303cd1016eddfE.exit.i"
  br i1 %.not50.i, label %bb.bb, label %bb.az

bb.ak:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hebd303cd1016eddfE.exit.i"
  %i.dg = icmp eq ptr %i.cy, null
  br i1 %i.dg, label %"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit81.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hee993813f6ca0f7cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.j), !noalias !53017
  br label %"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit81.i"

"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit81.i": ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53017
  call void @llvm.experimental.noalias.scope.decl(metadata !53161)
  %i.dh = load i64, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !53161, !noalias !53017, !noundef !14 ; 10 uses
  %i.di = icmp ult i64 %i.dh, 288230376151711744
  call void @llvm.assume(i1 %i.di)
  %i.dj = icmp eq i64 %i.dh, 0
  br i1 %i.dj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17ha83ce89bb6cfbd69E.exit.i", label %.lr.ph.i.i82.i

.lr.ph.i.i82.i:                                   ; preds = %"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit81.i"
  %i.dk = load ptr, ptr %.sroa.4263.0..sroa_idx.i, align 8, !alias.scope !53161, !noalias !53164, !nonnull !14, !noundef !14 ; 4 uses
  br label %bb.am

bb.am:                                            ; preds = %.noexc.i83.i, %.lr.ph.i.i82.i
  %i.dl = phi i64 [ 0, %.lr.ph.i.i82.i ], [ %i.dw, %.noexc.i83.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !range !2917, !alias.scope !53167, !noalias !53170, !noundef !14 ; 3 uses
  %i.do = icmp eq i64 %i.dn, -9223372036854775808
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !53167, !noalias !53170, !noundef !14 ; 2 uses
  br i1 %i.do, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = icmp ult i64 %i.dq, 4611686018427387904
  call void @llvm.assume(i1 %i.dr)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.01.0.in.i.not.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.sroa.01.0.in.i.not.i.i.i, label %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i.i.i", label %bb.ar

"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i.i.i": ; preds = %bb.ao
  %i.ds = add nuw i64 %i.dl, 1                    ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dm, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !53170 ; 4 uses
  switch i64 %i.dn, label %bb.ap [
    i64 -9223372036854775808, label %bb.aq
    i64 0, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i"
  ]

bb.ap:                                            ; preds = %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i.i.i"
  %i.du = shl nuw i64 %i.dn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53170
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i"

bb.aq:                                            ; preds = %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !53170
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i"

bb.ar:                                            ; preds = %bb.ao
  invoke void @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hc18ddf6a5eea8937E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %.noexc.i83.i unwind label %.thread.i.i, !noalias !53171

.thread.i.i:                                      ; preds = %bb.ar
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %._crit_edge.i.i11.i.i

.noexc.i83.i:                                     ; preds = %bb.ar
  %i.dw = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %.not.i.i84.i = icmp eq i64 %i.dw, %i.dh
  br i1 %.not.i.i84.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit._crit_edge.i.i", label %bb.am

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i": ; preds = %bb.aq, %bb.ap, %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i.i.i"
  %.not1.i.i.i = icmp eq i64 %i.ds, %i.dh
  br i1 %.not1.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.thread55.i.i", label %.lr.ph.i3.i.i

.lr.ph.i3.i.i:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i", %.backedge.i.i.i
  %.sroa.15.2.i.i = phi i64 [ %.sroa.15.3.i.i, %.backedge.i.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i" ] ; 4 uses
  %i.dx = phi i64 [ %i.ei, %.backedge.i.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i" ] ; 3 uses
  %i.dy = phi i64 [ %.sroa.7.4.i.i, %.backedge.i.i.i ], [ %i.ds, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i" ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dy ; 6 uses
  %i.ea = load i64, ptr %i.dz, align 8, !range !2917, !alias.scope !53172, !noalias !53175, !noundef !14 ; 3 uses
  %i.eb = icmp eq i64 %i.ea, -9223372036854775808
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !53172, !noalias !53175, !noundef !14 ; 2 uses
  br i1 %i.eb, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i3.i.i
  %i.ee = icmp ult i64 %i.ed, 4611686018427387904
  call void @llvm.assume(i1 %i.ee)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i3.i.i
  %.sroa.01.0.in.i.not.i4.i.i = icmp eq i64 %i.ed, 0
  br i1 %.sroa.01.0.in.i.not.i4.i.i, label %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i6.i.i", label %bb.aw

"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i6.i.i": ; preds = %bb.at
  %i.ef = add i64 %i.dx, 1                        ; 6 uses
  %i.eg = getelementptr i8, ptr %i.dz, i64 8
  %.val1.i7.i.i = load ptr, ptr %i.eg, align 8, !noalias !53175 ; 4 uses
  switch i64 %i.ea, label %bb.au [
    i64 -9223372036854775808, label %bb.av
    i64 0, label %.backedge.i.i.i
  ]

bb.au:                                            ; preds = %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i6.i.i"
  %i.eh = shl nuw i64 %i.ea, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i7.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i7.i.i, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53175
  br label %.backedge.i.i.i

bb.av:                                            ; preds = %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i6.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i7.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i7.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !53175
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.noexc8.i.i, %bb.av, %bb.au, %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i6.i.i"
  %.sroa.15.3.i.i = phi i64 [ %i.ef, %bb.au ], [ %i.ef, %bb.av ], [ %i.ef, %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i6.i.i" ], [ %.sroa.15.2.i.i, %.noexc8.i.i ] ; 3 uses
  %i.ei = phi i64 [ %i.ef, %bb.au ], [ %i.ef, %bb.av ], [ %i.ef, %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17h0459b0aac88fa506E.exit.i6.i.i" ], [ %i.dx, %.noexc8.i.i ]
  %.sroa.7.4.i.i = add i64 %i.dy, 1               ; 2 uses
  %.not.i5.i.i = icmp eq i64 %.sroa.7.4.i.i, %i.dh
  br i1 %.not.i5.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.i.i", label %.lr.ph.i3.i.i

bb.aw:                                            ; preds = %bb.at
  invoke void @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hc18ddf6a5eea8937E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dz)
          to label %.noexc8.i.i unwind label %bb.ax, !noalias !53171

.noexc8.i.i:                                      ; preds = %bb.aw
  %i.ej = sub i64 %i.dy, %i.dx
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 32, i1 false), !noalias !53175
  br label %.backedge.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.i.i": ; preds = %.backedge.i.i.i
  %.not.i.i.i85.i = icmp eq i64 %.sroa.15.3.i.i, 0
  br i1 %.not.i.i.i85.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit._crit_edge.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.thread55.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.thread55.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i"
  %.sroa.15.458.i.i = phi i64 [ %.sroa.15.3.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.i.i" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7c82a4f40a6e49a4E.exit.i.i" ]
  %i.el = sub i64 %i.dh, %.sroa.15.458.i.i
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit._crit_edge.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit._crit_edge.i.i": ; preds = %.noexc.i83.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.thread55.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.i.i"
  %.pre-phi.i.i = phi i64 [ %i.el, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.thread55.i.i" ], [ %i.dh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit.i.i" ], [ %i.dh, %.noexc.i83.i ]
  store i64 %.pre-phi.i.i, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !53161, !noalias !53178
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17ha83ce89bb6cfbd69E.exit.i"

._crit_edge.i.i11.i.i:                            ; preds = %bb.ay, %bb.ax, %.thread.i.i
  %i.em = phi { ptr, i32 } [ %i.eo, %bb.ay ], [ %i.dv, %.thread.i.i ], [ %i.eo, %bb.ax ]
  %.sroa.15.023.i.i = phi i64 [ %.sroa.15.2.i.i, %bb.ay ], [ 0, %.thread.i.i ], [ 0, %bb.ax ]
  %i.en = sub i64 %i.dh, %.sroa.15.023.i.i
  store i64 %i.en, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !53161, !noalias !53183
  br label %.body86.i

bb.ax:                                            ; preds = %bb.aw
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i9.i.i = icmp eq i64 %.sroa.15.2.i.i, 0
  br i1 %.not.i.i9.i.i, label %._crit_edge.i.i11.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ep = sub i64 %i.dy, %.sroa.15.2.i.i
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.ep
  %i.er = sub i64 %i.dh, %i.dy
  %i.es = shl i64 %i.er, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr nonnull align 8 %i.dz, i64 %i.es, i1 false), !noalias !53188
  br label %._crit_edge.i.i11.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17ha83ce89bb6cfbd69E.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hc9cef2fdfef9b7d2E.exit._crit_edge.i.i", %"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit81.i"
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 16 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !53047
  store i64 152, ptr %0, align 8, !alias.scope !53014, !noalias !53047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !53017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !53017
  br label %_ZN7roaring6bitmap8multiops18try_multi_or_owned17h5b5d545aa7a150f2E.exit

bb.az:                                            ; preds = %bb.aj
  store i64 %.sroa.0129.0.i, ptr %0, align 8, !alias.scope !53014, !noalias !53047
  %.sroa.244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.244.0..sroa_idx.i, align 8, !alias.scope !53014, !noalias !53047
  %.sroa.244.sroa.2.0..sroa.244.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11130.0.i, ptr %.sroa.244.sroa.2.0..sroa.244.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !53014, !noalias !53047
  %.sroa.244.sroa.3.0..sroa.244.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12131.0.i, ptr %.sroa.244.sroa.3.0..sroa.244.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !53014, !noalias !53047
  %i.eu = icmp eq ptr %i.cy, null
  br i1 %i.eu, label %"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit88.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hee993813f6ca0f7cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.j), !noalias !53017
  br label %"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit88.i"

bb.bb:                                            ; preds = %bb.aj, %.thread197.i
  %i.ev = phi ptr [ %i.cn, %.thread197.i ], [ %i.cy, %bb.aj ] ; 2 uses
  %i.ew = phi ptr [ %i.cs, %.thread197.i ], [ %i.cz, %bb.aj ]
  %i.ex = phi ptr [ %i.cp, %.thread197.i ], [ null, %bb.aj ]
  %.sroa.12131.1193205.i = phi i64 [ %.sroa.12131.0.copyload.i, %.thread197.i ], [ %.sroa.12131.0.i, %bb.aj ]
  %.sroa.11130.1194204.i = phi ptr [ %.sroa.11130.0.copyload.i, %.thread197.i ], [ %.sroa.11130.0.i, %bb.aj ]
  %.sroa.9.1195203.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %.thread197.i ], [ %.sroa.9.0.i, %bb.aj ]
  %i.ey = phi i8 [ %i.cq, %.thread197.i ], [ %i.de, %bb.aj ]
  store i64 %.sroa.9.1195203.i, ptr %i.h, align 8, !noalias !53017
  store ptr %.sroa.11130.1194204.i, ptr %.sroa.612.sroa.7.0..sroa_idx.i, align 8, !noalias !53017
  store i64 %.sroa.12131.1193205.i, ptr %.sroa.612.sroa.8.0..sroa_idx.i, align 8, !noalias !53017
  invoke fastcc void @_ZN7roaring6bitmap8multiops21merge_container_owned17h6512220cd9432d7aE(ptr noalias noundef align 8 dereferenceable(24) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.aa unwind label %bb.ac, !noalias !53017

"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit88.i": ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53017
  call void @llvm.experimental.noalias.scope.decl(metadata !53189)
  %.val.i89.i = load ptr, ptr %.sroa.4263.0..sroa_idx.i, align 8, !alias.scope !53189, !noalias !53017, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !53189, !noalias !53017, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53192)
  %i.ez = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ez, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit88.i", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.fb, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit88.i" ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %.val.i89.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.fb = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i90.i = load i64, ptr %i.fa, align 8, !range !2917, !alias.scope !53192, !noalias !53195, !noundef !14 ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fa, i64 8
  %.val9.i.i.i91.i = load ptr, ptr %i.fc, align 8, !alias.scope !53192, !noalias !53195 ; 4 uses
  switch i64 %.val8.i.i.i90.i, label %bb.bc [
    i64 -9223372036854775808, label %bb.bd
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  ]

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fd = shl nuw i64 %.val8.i.i.i90.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i91.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i91.i, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53196
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i91.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i91.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !53196
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i": ; preds = %bb.bd, %bb.bc, %.lr.ph.i.i.i.i
  %i.fe = icmp eq i64 %i.fb, %.val1.i.i
  br i1 %i.fe, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i", %"_ZN4core3ptr452drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..tasks..TaskQueue..all_task_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17ha5c7bbce73ab1389E.exit88.i"
  %.val2.i.i = load i64, ptr %i.k, align 16, !range !9, !alias.scope !53189, !noalias !53017, !noundef !14 ; 2 uses
  %i.ff = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ff, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E.exit.i", label %bb.be

bb.be:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"
  %i.fg = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i89.i, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !53195
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E.exit.i"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E.exit.i": ; preds = %bb.be, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !53017
  br label %bb.bf

bb.bf:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E.exit.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84e69d60fcad69abE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !53017
  br label %_ZN7roaring6bitmap8multiops18try_multi_or_owned17h5b5d545aa7a150f2E.exit

bb.bg:                                            ; preds = %bb.m
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17haa3db435396e476dE"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #81, !noalias !53017
  br label %common.resume.i

_ZN7roaring6bitmap8multiops18try_multi_or_owned17h5b5d545aa7a150f2E.exit: ; preds = %bb.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17ha83ce89bb6cfbd69E.exit.i", %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !53017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue12update_index17h7b474923247db5fbE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(344) %0, i64 %.48.val, i32 %.56.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53197
  call fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hff9275776605b636E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, i64 %.48.val, i32 %.56.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3), !noalias !53202
  %i.e = load i64, ptr %i.a, align 8, !range !751, !noalias !53197, !noundef !14
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.010.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !53197 ; 3 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.511.sroa.0.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !53197 ; 2 uses
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.511.sroa.5.0.copyload.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !noalias !53197 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53197
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 127, ptr %0, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.010.0.copyload.i, ptr %.sroa.220.0..sroa_idx, align 8
  %.sroa.220.sroa.2.0..sroa.220.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.sroa.0.0.copyload.i, ptr %.sroa.220.sroa.2.0..sroa.220.0..sroa_idx.sroa_idx, align 8
  %.sroa.220.sroa.3.0..sroa.220.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.511.sroa.5.0.copyload.i, ptr %.sroa.220.sroa.3.0..sroa.220.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit60"

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.sroa.010.0.copyload.i, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i = select i1 %.not.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i
  %..sroa.5.sroa.5.0.copyload.i = select i1 %.not.i, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i
  %..sroa.08.0.copyload.i = select i1 %.not.i, i64 0, i64 %.sroa.010.0.copyload.i
  store i64 %..sroa.08.0.copyload.i, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %..sroa.5.sroa.026.0.copyload.i, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 %..sroa.5.sroa.5.0.copyload.i, ptr %.sroa.519.0..sroa_idx, align 8
  invoke void @"_ZN7roaring6bitmap3ops130_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$roaring..bitmap..RoaringBitmap$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$10sub_assign17hfc3ef7309306ad0dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @"_ZN7roaring6bitmap3ops130_$LT$impl$u20$core..ops..bit..BitOrAssign$LT$$RF$roaring..bitmap..RoaringBitmap$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17hc5985bbf05dcee8fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5)
          to label %"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16apply_index_swap28_$u7b$$u7b$closure$u7d$$u7d$17h79f6a518208c5630E.exit" unwind label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c, %bb.f, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #81
  resume { ptr, i32 } %i.h

"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16apply_index_swap28_$u7b$$u7b$closure$u7d$$u7d$17h79f6a518208c5630E.exit": ; preds = %.noexc
  %i.i = load i64, ptr %.sroa.519.0..sroa_idx, align 8, !noundef !14 ; 2 uses
  %i.j = icmp ult i64 %i.i, 288230376151711744
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16apply_index_swap28_$u7b$$u7b$closure$u7d$$u7d$17h79f6a518208c5630E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$6delete17h03a0331ffdfb6bcfE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, i64 %.48.val, i32 %.56.val, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.g unwind label %bb.d

bb.f:                                             ; preds = %"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16apply_index_swap28_$u7b$$u7b$closure$u7d$$u7d$17h79f6a518208c5630E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h2cd356b1e6b99922E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 %.48.val, i32 %.56.val, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.c, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not41 = icmp eq i32 %i.l, 5
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.526.0.copyload = load i8, ptr %.sroa.526.0..sroa_idx, align 4
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.634.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.627.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 127, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.526.0.copyload, ptr %.sroa.533.0..sroa_idx, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

end_hunk_1
begin_hunk_2_@_ZN15index_scheduler5queue7batches10BatchQueue13all_batch_ids17h8c1f38a9e0411b88E:bb.a
  %..sroa.08.0.copyload.i.i.i.i.i79.i = select i1 %.not.i.i.i.i.i76.i, i64 0, i64 %.sroa.010.0.copyload.i.i.i.i.i71.i
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha19612497bbf55b5E.exit.i.i"

bb.ag:                                            ; preds = %.thread180.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53802
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha19612497bbf55b5E.exit.i.i"

bb.ah:                                            ; preds = %.noexc.i66.i, %bb.ae
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$$GT$$GT$17h22d3b7c3988f6819E"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.i) #81
          to label %.body.i unwind label %bb.ai, !noalias !53814

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha19612497bbf55b5E.exit.i.i": ; preds = %bb.ag, %bb.af, %.noexc3.i.i
  %.sroa.12131.0.i = phi i64 [ %.sroa.511.sroa.5.0.copyload.i.i.i.i.i75.i, %.noexc3.i.i ], [ undef, %bb.ag ], [ %..sroa.5.sroa.5.0.copyload.i.i.i.i.i78.i, %bb.af ] ; 2 uses
  %.sroa.11130.0.i = phi ptr [ %.sroa.511.sroa.0.0.copyload.i.i.i.i.i73.i, %.noexc3.i.i ], [ undef, %bb.ag ], [ %..sroa.5.sroa.026.0.copyload.i.i.i.i.i77.i, %bb.af ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.010.0.copyload.i.i.i.i.i71.i, %.noexc3.i.i ], [ undef, %bb.ag ], [ %..sroa.08.0.copyload.i.i.i.i.i79.i, %bb.af ] ; 2 uses
  %.not50.i = phi i1 [ false, %.noexc3.i.i ], [ false, %bb.ag ], [ true, %bb.af ]
  %.sroa.0129.0.i = phi i64 [ 127, %.noexc3.i.i ], [ 153, %bb.ag ], [ 152, %bb.af ]
  %i.de = phi i8 [ %i.da, %.noexc3.i.i ], [ 5, %bb.ag ], [ %i.da, %bb.af ]
  invoke fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$$GT$$GT$17h22d3b7c3988f6819E"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.i)
          to label %"_ZN4core6option15Option$LT$T$GT$7or_else17hfc8d681321f9d22aE.exit.i" unwind label %bb.ac, !noalias !53671

bb.ai:                                            ; preds = %bb.ah
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !53814
  unreachable

"_ZN4core6option15Option$LT$T$GT$7or_else17hfc8d681321f9d22aE.exit.i": ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha19612497bbf55b5E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !53671
  br i1 %.not.i.i.i.i65.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hfc8d681321f9d22aE.exit.i"
  br i1 %.not50.i, label %bb.bb, label %bb.az

bb.ak:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hfc8d681321f9d22aE.exit.i"
  %i.dg = icmp eq ptr %i.cy, null
  br i1 %i.dg, label %"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit81.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hee993813f6ca0f7cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.j), !noalias !53671
  br label %"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit81.i"

"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit81.i": ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53671
  call void @llvm.experimental.noalias.scope.decl(metadata !53815)
  %i.dh = load i64, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !53815, !noalias !53671, !noundef !14 ; 10 uses
  %i.di = icmp ult i64 %i.dh, 288230376151711744
  call void @llvm.assume(i1 %i.di)
  %i.dj = icmp eq i64 %i.dh, 0
  br i1 %i.dj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h37b517d7e828cb6dE.exit.i", label %.lr.ph.i.i82.i

.lr.ph.i.i82.i:                                   ; preds = %"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit81.i"
  %i.dk = load ptr, ptr %.sroa.4263.0..sroa_idx.i, align 8, !alias.scope !53815, !noalias !53818, !nonnull !14, !noundef !14 ; 4 uses
  br label %bb.am

bb.am:                                            ; preds = %.noexc.i83.i, %.lr.ph.i.i82.i
  %i.dl = phi i64 [ 0, %.lr.ph.i.i82.i ], [ %i.dw, %.noexc.i83.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !range !2917, !alias.scope !53821, !noalias !53824, !noundef !14 ; 3 uses
  %i.do = icmp eq i64 %i.dn, -9223372036854775808
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !53821, !noalias !53824, !noundef !14 ; 2 uses
  br i1 %i.do, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = icmp ult i64 %i.dq, 4611686018427387904
  call void @llvm.assume(i1 %i.dr)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.01.0.in.i.not.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.sroa.01.0.in.i.not.i.i.i, label %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i.i.i", label %bb.ar

"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i.i.i": ; preds = %bb.ao
  %i.ds = add nuw i64 %i.dl, 1                    ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dm, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !53824 ; 4 uses
  switch i64 %i.dn, label %bb.ap [
    i64 -9223372036854775808, label %bb.aq
    i64 0, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i"
  ]

bb.ap:                                            ; preds = %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i.i.i"
  %i.du = shl nuw i64 %i.dn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53824
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i"

bb.aq:                                            ; preds = %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !53824
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i"

bb.ar:                                            ; preds = %bb.ao
  invoke void @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hc18ddf6a5eea8937E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %.noexc.i83.i unwind label %.thread.i.i, !noalias !53825

.thread.i.i:                                      ; preds = %bb.ar
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %._crit_edge.i.i11.i.i

.noexc.i83.i:                                     ; preds = %bb.ar
  %i.dw = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %.not.i.i84.i = icmp eq i64 %i.dw, %i.dh
  br i1 %.not.i.i84.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit._crit_edge.i.i", label %bb.am

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i": ; preds = %bb.aq, %bb.ap, %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i.i.i"
  %.not1.i.i.i = icmp eq i64 %i.ds, %i.dh
  br i1 %.not1.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.thread55.i.i", label %.lr.ph.i3.i.i

.lr.ph.i3.i.i:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i", %.backedge.i.i.i
  %.sroa.15.2.i.i = phi i64 [ %.sroa.15.3.i.i, %.backedge.i.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i" ] ; 4 uses
  %i.dx = phi i64 [ %i.ei, %.backedge.i.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i" ] ; 3 uses
  %i.dy = phi i64 [ %.sroa.7.4.i.i, %.backedge.i.i.i ], [ %i.ds, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i" ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dy ; 6 uses
  %i.ea = load i64, ptr %i.dz, align 8, !range !2917, !alias.scope !53826, !noalias !53829, !noundef !14 ; 3 uses
  %i.eb = icmp eq i64 %i.ea, -9223372036854775808
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !53826, !noalias !53829, !noundef !14 ; 2 uses
  br i1 %i.eb, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i3.i.i
  %i.ee = icmp ult i64 %i.ed, 4611686018427387904
  call void @llvm.assume(i1 %i.ee)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i3.i.i
  %.sroa.01.0.in.i.not.i4.i.i = icmp eq i64 %i.ed, 0
  br i1 %.sroa.01.0.in.i.not.i4.i.i, label %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i6.i.i", label %bb.aw

"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i6.i.i": ; preds = %bb.at
  %i.ef = add i64 %i.dx, 1                        ; 6 uses
  %i.eg = getelementptr i8, ptr %i.dz, i64 8
  %.val1.i7.i.i = load ptr, ptr %i.eg, align 8, !noalias !53829 ; 4 uses
  switch i64 %i.ea, label %bb.au [
    i64 -9223372036854775808, label %bb.av
    i64 0, label %.backedge.i.i.i
  ]

bb.au:                                            ; preds = %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i6.i.i"
  %i.eh = shl nuw i64 %i.ea, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i7.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i7.i.i, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53829
  br label %.backedge.i.i.i

bb.av:                                            ; preds = %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i6.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i7.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i7.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !53829
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.noexc8.i.i, %bb.av, %bb.au, %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i6.i.i"
  %.sroa.15.3.i.i = phi i64 [ %i.ef, %bb.au ], [ %i.ef, %bb.av ], [ %i.ef, %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i6.i.i" ], [ %.sroa.15.2.i.i, %.noexc8.i.i ] ; 3 uses
  %i.ei = phi i64 [ %i.ef, %bb.au ], [ %i.ef, %bb.av ], [ %i.ef, %"_ZN7roaring6bitmap8multiops18try_multi_or_owned28_$u7b$$u7b$closure$u7d$$u7d$17he2034d4d008412ebE.exit.i6.i.i" ], [ %i.dx, %.noexc8.i.i ]
  %.sroa.7.4.i.i = add i64 %i.dy, 1               ; 2 uses
  %.not.i5.i.i = icmp eq i64 %.sroa.7.4.i.i, %i.dh
  br i1 %.not.i5.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.i.i", label %.lr.ph.i3.i.i

bb.aw:                                            ; preds = %bb.at
  invoke void @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hc18ddf6a5eea8937E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dz)
          to label %.noexc8.i.i unwind label %bb.ax, !noalias !53825

.noexc8.i.i:                                      ; preds = %bb.aw
  %i.ej = sub i64 %i.dy, %i.dx
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 32, i1 false), !noalias !53829
  br label %.backedge.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.i.i": ; preds = %.backedge.i.i.i
  %.not.i.i.i85.i = icmp eq i64 %.sroa.15.3.i.i, 0
  br i1 %.not.i.i.i85.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit._crit_edge.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.thread55.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.thread55.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i"
  %.sroa.15.458.i.i = phi i64 [ %.sroa.15.3.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.i.i" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h7452e033d01acf1fE.exit.i.i" ]
  %i.el = sub i64 %i.dh, %.sroa.15.458.i.i
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit._crit_edge.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit._crit_edge.i.i": ; preds = %.noexc.i83.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.thread55.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.i.i"
  %.pre-phi.i.i = phi i64 [ %i.el, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.thread55.i.i" ], [ %i.dh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit.i.i" ], [ %i.dh, %.noexc.i83.i ]
  store i64 %.pre-phi.i.i, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !53815, !noalias !53832
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h37b517d7e828cb6dE.exit.i"

._crit_edge.i.i11.i.i:                            ; preds = %bb.ay, %bb.ax, %.thread.i.i
  %i.em = phi { ptr, i32 } [ %i.eo, %bb.ay ], [ %i.dv, %.thread.i.i ], [ %i.eo, %bb.ax ]
  %.sroa.15.023.i.i = phi i64 [ %.sroa.15.2.i.i, %bb.ay ], [ 0, %.thread.i.i ], [ 0, %bb.ax ]
  %i.en = sub i64 %i.dh, %.sroa.15.023.i.i
  store i64 %i.en, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !53815, !noalias !53837
  br label %.body86.i

bb.ax:                                            ; preds = %bb.aw
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i9.i.i = icmp eq i64 %.sroa.15.2.i.i, 0
  br i1 %.not.i.i9.i.i, label %._crit_edge.i.i11.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ep = sub i64 %i.dy, %.sroa.15.2.i.i
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.ep
  %i.er = sub i64 %i.dh, %i.dy
  %i.es = shl i64 %i.er, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr nonnull align 8 %i.dz, i64 %i.es, i1 false), !noalias !53842
  br label %._crit_edge.i.i11.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h37b517d7e828cb6dE.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17haf2a0b1f977221b5E.exit._crit_edge.i.i", %"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit81.i"
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 16 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !53701
  store i64 152, ptr %0, align 8, !alias.scope !53668, !noalias !53701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !53671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !53671
  br label %_ZN7roaring6bitmap8multiops18try_multi_or_owned17h177f1354a333fa1dE.exit

bb.az:                                            ; preds = %bb.aj
  store i64 %.sroa.0129.0.i, ptr %0, align 8, !alias.scope !53668, !noalias !53701
  %.sroa.244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.244.0..sroa_idx.i, align 8, !alias.scope !53668, !noalias !53701
  %.sroa.244.sroa.2.0..sroa.244.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11130.0.i, ptr %.sroa.244.sroa.2.0..sroa.244.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !53668, !noalias !53701
  %.sroa.244.sroa.3.0..sroa.244.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12131.0.i, ptr %.sroa.244.sroa.3.0..sroa.244.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !53668, !noalias !53701
  %i.eu = icmp eq ptr %i.cy, null
  br i1 %i.eu, label %"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit88.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hee993813f6ca0f7cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.j), !noalias !53671
  br label %"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit88.i"

bb.bb:                                            ; preds = %bb.aj, %.thread197.i
  %i.ev = phi ptr [ %i.cn, %.thread197.i ], [ %i.cy, %bb.aj ] ; 2 uses
  %i.ew = phi ptr [ %i.cs, %.thread197.i ], [ %i.cz, %bb.aj ]
  %i.ex = phi ptr [ %i.cp, %.thread197.i ], [ null, %bb.aj ]
  %.sroa.12131.1193205.i = phi i64 [ %.sroa.12131.0.copyload.i, %.thread197.i ], [ %.sroa.12131.0.i, %bb.aj ]
  %.sroa.11130.1194204.i = phi ptr [ %.sroa.11130.0.copyload.i, %.thread197.i ], [ %.sroa.11130.0.i, %bb.aj ]
  %.sroa.9.1195203.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %.thread197.i ], [ %.sroa.9.0.i, %bb.aj ]
  %i.ey = phi i8 [ %i.cq, %.thread197.i ], [ %i.de, %bb.aj ]
  store i64 %.sroa.9.1195203.i, ptr %i.h, align 8, !noalias !53671
  store ptr %.sroa.11130.1194204.i, ptr %.sroa.612.sroa.7.0..sroa_idx.i, align 8, !noalias !53671
  store i64 %.sroa.12131.1193205.i, ptr %.sroa.612.sroa.8.0..sroa_idx.i, align 8, !noalias !53671
  invoke fastcc void @_ZN7roaring6bitmap8multiops21merge_container_owned17h6512220cd9432d7aE(ptr noalias noundef align 8 dereferenceable(24) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.aa unwind label %bb.ac, !noalias !53671

"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit88.i": ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53671
  call void @llvm.experimental.noalias.scope.decl(metadata !53843)
  %.val.i89.i = load ptr, ptr %.sroa.4263.0..sroa_idx.i, align 8, !alias.scope !53843, !noalias !53671, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !53843, !noalias !53671, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53846)
  %i.ez = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ez, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit88.i", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.fb, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit88.i" ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %.val.i89.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.fb = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i90.i = load i64, ptr %i.fa, align 8, !range !2917, !alias.scope !53846, !noalias !53849, !noundef !14 ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fa, i64 8
  %.val9.i.i.i91.i = load ptr, ptr %i.fc, align 8, !alias.scope !53846, !noalias !53849 ; 4 uses
  switch i64 %.val8.i.i.i90.i, label %bb.bc [
    i64 -9223372036854775808, label %bb.bd
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  ]

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fd = shl nuw i64 %.val8.i.i.i90.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i91.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i91.i, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53850
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i91.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i91.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !53850
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i": ; preds = %bb.bd, %bb.bc, %.lr.ph.i.i.i.i
  %i.fe = icmp eq i64 %i.fb, %.val1.i.i
  br i1 %i.fe, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i", %"_ZN4core3ptr456drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$roaring..bitmap..RoaringBitmap$GT$$C$core..result..Result$LT$roaring..bitmap..RoaringBitmap$C$index_scheduler..error..Error$GT$..Ok$GT$$C$core..iter..adapters..map..Map$LT$enum_iterator..All$LT$meilisearch_types..tasks..Status$GT$$C$index_scheduler..queue..batches..BatchQueue..all_batch_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h51bcddcde4f4c6c2E.exit88.i"
  %.val2.i.i = load i64, ptr %i.k, align 16, !range !9, !alias.scope !53843, !noalias !53671, !noundef !14 ; 2 uses
  %i.ff = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ff, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E.exit.i", label %bb.be

bb.be:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"
  %i.fg = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i89.i, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !53849
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E.exit.i"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E.exit.i": ; preds = %bb.be, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !53671
  br label %bb.bf

bb.bf:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E.exit.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84e69d60fcad69abE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !53671
  br label %_ZN7roaring6bitmap8multiops18try_multi_or_owned17h177f1354a333fa1dE.exit

bb.bg:                                            ; preds = %bb.m
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17haa3db435396e476dE"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #81, !noalias !53671
  br label %common.resume.i

_ZN7roaring6bitmap8multiops18try_multi_or_owned17h177f1354a333fa1dE.exit: ; preds = %bb.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h37b517d7e828cb6dE.exit.i", %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !53671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN15index_scheduler5queue7batches10BatchQueue13update_status17h4a444ec82d02b927E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(344) %0, i64 %.16.val, i32 %.24.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i8 noundef range(i8 0, 5) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [344 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53851
  call fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h1630200aad08bd22E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, i64 %.16.val, i32 %.24.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i8 range(i8 0, 5) %2), !noalias !53855
  %i.d = load i64, ptr %i.a, align 8, !range !751, !noalias !53851, !noundef !14
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.010.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !53851 ; 3 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.511.sroa.0.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !53851 ; 2 uses
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.511.sroa.5.0.copyload.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !noalias !53851 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53851
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 127, ptr %0, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.010.0.copyload.i, ptr %.sroa.210.0..sroa_idx, align 8
  %.sroa.210.sroa.2.0..sroa.210.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.sroa.0.0.copyload.i, ptr %.sroa.210.sroa.2.0..sroa.210.0..sroa_idx.sroa_idx, align 8
  %.sroa.210.sroa.3.0..sroa.210.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.511.sroa.5.0.copyload.i, ptr %.sroa.210.sroa.3.0..sroa.210.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.sroa.010.0.copyload.i, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i = select i1 %.not.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i
  %..sroa.5.sroa.5.0.copyload.i = select i1 %.not.i, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i
  %..sroa.08.0.copyload.i = select i1 %.not.i, i64 0, i64 %.sroa.010.0.copyload.i
  store i64 %..sroa.08.0.copyload.i, ptr %i.c, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %..sroa.5.sroa.026.0.copyload.i, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 %..sroa.5.sroa.5.0.copyload.i, ptr %.sroa.518.0..sroa_idx, align 8
  invoke void @"_ZN7roaring6bitmap3ops130_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$roaring..bitmap..RoaringBitmap$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$10sub_assign17hfc3ef7309306ad0dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$20delete_matched_tasks28_$u7b$$u7b$closure$u7d$$u7d$17hb81ed88bdbc8cdcbE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$20delete_matched_tasks28_$u7b$$u7b$closure$u7d$$u7d$17hb81ed88bdbc8cdcbE.exit"
  %i.g = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #81
  resume { ptr, i32 } %i.g

"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$20delete_matched_tasks28_$u7b$$u7b$closure$u7d$$u7d$17hb81ed88bdbc8cdcbE.exit": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_ZN15index_scheduler5queue7batches10BatchQueue10put_status17hff9b36f14b8cc5d0E(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.b, i64 %.16.val, i32 %.24.val, ptr noalias noundef align 8 dereferenceable(24) %1, i8 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

bb.e:                                             ; preds = %"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$20delete_matched_tasks28_$u7b$$u7b$closure$u7d$$u7d$17hb81ed88bdbc8cdcbE.exit"
  %i.h = load i64, ptr %i.b, align 8, !range !2843, !noundef !14
  %.not14 = icmp eq i64 %i.h, 152
  br i1 %.not14, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(344) %i.b, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !53856)
  call void @llvm.experimental.noalias.scope.decl(metadata !53859)
  %.val.i.i = load ptr, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !53862, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !53862, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53863)
  %i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.k, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i" ], [ 0, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.k = add nuw i64 %.sroa.0.010.i.i.i.i, 1      ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.j, align 8, !range !2917, !alias.scope !53863, !noalias !53862, !noundef !14 ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !53863, !noalias !53862 ; 4 uses
  switch i64 %.val8.i.i.i.i, label %bb.g [
    i64 -9223372036854775808, label %bb.h
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = shl nuw i64 %.val8.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53866
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !53866
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i": ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN5milli6update3new6merger20merge_and_send_rtree17h87d306452375d24bE:bb.a
  store i40 %.sroa.10.1.extract.trunc, ptr %.sroa.461.0..sroa_idx, align 1
  invoke void @"_ZN5milli6update3new7extract3geo229_$LT$impl$u20$core..convert..From$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$u20$for$u20$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$4from17ha84a1ca6dcc8c13eE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.av, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(20) %i.ai)
          to label %bb.eq unwind label %.loopexit596

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.experimental.noalias.scope.decl(metadata !153657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !153660
  call void @llvm.experimental.noalias.scope.decl(metadata !153663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !153666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i64 72, i1 false), !noalias !153669
  store i64 0, ptr %i.bf, align 8, !alias.scope !153670, !noalias !153669
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  store i64 0, ptr %.sroa.07.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.812.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  %i.ml = load i64, ptr %i.dr, align 8, !alias.scope !153670, !noalias !153669, !noundef !14 ; 2 uses
  store i64 0, ptr %i.dr, align 8, !alias.scope !153670, !noalias !153669
  %i.mm = uitofp i64 %i.ml to float
  %i.mn = call float @llvm.log.f32(float %i.mm)
  %i.mo = fdiv float %i.mn, f0x3F8C9F54
  %i.mp = call float @llvm.ceil.f32(float %i.mo)
  %i.mq = call i64 @llvm.fptoui.sat.i64.f32(float %i.mp) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !153666
  %i.mr = mul i64 %i.mq, 88                       ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.mq, 104811045873349725
  br i1 %or.cond.i.i.i.i.i, label %bb.es, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.eq
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.et, label %bb.er

bb.er:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !153671
  %i.mt = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.mr, i64 noundef range(i64 1, 9) 8) #79, !noalias !153671 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.er ], [ 0, %bb.eq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.mr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2744) #80
          to label %.noexc.i.i unwind label %bb.ey, !noalias !153676

.noexc.i.i:                                       ; preds = %bb.es
  unreachable

bb.et:                                            ; preds = %bb.er, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.mt, %bb.er ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.mq, %bb.er ] ; 3 uses
  %i.mv = icmp samesign ule i64 %i.mq, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.mv)
  store i64 %.sroa.4.0.i.i.i, ptr %i.n, align 8, !noalias !153666
  store ptr %.sroa.10.0.i.i.i, ptr %i.ds, align 8, !noalias !153666
  store i64 0, ptr %i.dt, align 8, !noalias !153666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !153666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !153666
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false), !noalias !153666
  %i.mw = icmp eq i64 %.sroa.4.0.i.i.i, 0
  br i1 %i.mw, label %bb.eu, label %bb.fc

bb.eu:                                            ; preds = %bb.et
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4a41d8201b760b5bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2745)
          to label %._crit_edge.i.i unwind label %bb.ev, !noalias !153677

._crit_edge.i.i:                                  ; preds = %bb.eu
  %.pre.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !153680, !noalias !153682
  br label %bb.fc

bb.ev:                                            ; preds = %bb.eu
  %i.mx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$17h14d326ef49847d8aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.m) #81
          to label %.body.i.i unwind label %bb.ew, !noalias !153676

bb.ew:                                            ; preds = %bb.ev
  %i.my = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153677
  unreachable

.body.i.i:                                        ; preds = %bb.ev
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..vec..Vec$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$$GT$17h14a7f0e7ab373361E"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #81
          to label %.body330 unwind label %bb.ex, !noalias !153676

bb.ex:                                            ; preds = %.body.i.i
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i327

.body.i327:                                       ; preds = %bb.fa, %bb.ez, %bb.ex
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153676
  unreachable

bb.ey:                                            ; preds = %bb.es
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153684)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h45aa8a1e5909e72aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.o)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i" unwind label %bb.ez, !noalias !153676, !inline_history !107746

bb.ez:                                            ; preds = %bb.ey
  %i.nb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i = load i64, ptr %i.o, align 8, !range !9, !alias.scope !153687, !noalias !153666, !noundef !14 ; 2 uses
  %i.nc = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.nc, label %.body.i327, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val3.i.i.i328 = load ptr, ptr %i.nd, align 8, !alias.scope !153687, !noalias !153666, !nonnull !14, !noundef !14
  %i.ne = mul nuw i64 %.val2.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i328, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153690, !inline_history !107750
  br label %.body.i327

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i": ; preds = %bb.ey
  %.val.i.i.i329 = load i64, ptr %i.o, align 8, !range !9, !alias.scope !153687, !noalias !153666, !noundef !14 ; 2 uses
  %i.nf = icmp eq i64 %.val.i.i.i329, 0
  br i1 %i.nf, label %.body330, label %bb.fb

bb.fb:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i"
  %i.ng = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ng, align 8, !alias.scope !153687, !noalias !153666, !nonnull !14, !noundef !14
  %i.nh = mul nuw i64 %.val.i.i.i329, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153690, !inline_history !107750
  br label %.body330

bb.fc:                                            ; preds = %._crit_edge.i.i, %bb.et
  %i.ni = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %.sroa.10.0.i.i.i, %bb.et ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ni, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.m, i64 88, i1 false), !noalias !153676
  store i64 1, ptr %i.dt, align 8, !alias.scope !153680, !noalias !153682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !153666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !153660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !153666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !153666
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i321, align 8, !noalias !153660
  store ptr %i.bf, ptr %.sroa.5.0..sroa_idx.i322, align 8, !noalias !153660
  store i64 %i.ml, ptr %.sroa.6.0..sroa_idx.i323, align 8, !noalias !153660
  store i64 1, ptr %i.dv, align 8, !noalias !153660
  call void @llvm.experimental.noalias.scope.decl(metadata !153691)
  call void @llvm.experimental.noalias.scope.decl(metadata !153694)
  call void @llvm.experimental.noalias.scope.decl(metadata !153697)
  call void @llvm.experimental.noalias.scope.decl(metadata !153700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !153702
  %i.nj = load i64, ptr %i.dw, align 8, !alias.scope !153709, !noalias !153712, !noundef !14 ; 2 uses
  %.not62.i68.i.i.i.i = icmp eq i64 %i.nj, 0
  br i1 %.not62.i68.i.i.i.i, label %.loopexit.i.i.i324, label %.lr.ph63.i.lr.ph.i.i.i.i

.lr.ph63.i.lr.ph.i.i.i.i:                         ; preds = %bb.fc
  call void @llvm.experimental.noalias.scope.decl(metadata !153714)
  br label %bb.fd

bb.fd:                                            ; preds = %.backedge.i.i.i.i.i, %.lr.ph63.i.lr.ph.i.i.i.i
  %i.nk = phi i64 [ %i.nj, %.lr.ph63.i.lr.ph.i.i.i.i ], [ %i.ow, %.backedge.i.i.i.i.i ]
  %i.nl = load ptr, ptr %i.dx, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !noundef !14
  %i.nm = getelementptr [88 x i8], ptr %i.nl, i64 %i.nk ; 10 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 -16    ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !noalias !153717, !noundef !14 ; 3 uses
  %.not12.i.i.i.i.i = icmp eq i64 %i.no, 0
  br i1 %.not12.i.i.i.i.i, label %bb.fe, label %.preheader.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fd
  %i.np = getelementptr i8, ptr %i.nm, i64 -64
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i321, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153718)
  %.sroa.0.0.copyload.i.i.i.i.i.i = load double, ptr %.val.i.i.i.i.i, align 8, !alias.scope !153721, !noalias !153731 ; 2 uses
  %.sroa.4.0..0.val.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i = load double, ptr %.sroa.4.0..0.val.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !153721, !noalias !153731 ; 2 uses
  %.sroa.5.0..0.val.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i = load double, ptr %.sroa.5.0..0.val.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !153721, !noalias !153731 ; 2 uses
  %i.nq = load double, ptr %i.np, align 8, !alias.scope !153732, !noalias !153739, !noundef !14
  %i.nr = fcmp ugt double %i.nq, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ns = getelementptr i8, ptr %i.nm, i64 -56
  %i.nt = load double, ptr %i.ns, align 8, !alias.scope !153718, !noalias !153717
  %i.nu = fcmp ugt double %i.nt, %.sroa.4.0.copyload.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = select i1 %i.nr, i1 true, i1 %i.nu
  %i.nv = getelementptr i8, ptr %i.nm, i64 -48
  %i.nw = load double, ptr %i.nv, align 8, !alias.scope !153718, !noalias !153717
  %i.nx = fcmp ugt double %i.nw, %.sroa.5.0.copyload.i.i.i.i.i.i
  %or.cond5.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.nx
  br i1 %or.cond5.i.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ny = getelementptr i8, ptr %i.nm, i64 -40
  %i.nz = load double, ptr %i.ny, align 8, !alias.scope !153744, !noalias !153749, !noundef !14
  %i.oa = fcmp ult double %i.nz, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ob = getelementptr i8, ptr %i.nm, i64 -32
  %i.oc = load double, ptr %i.ob, align 8, !alias.scope !153718, !noalias !153717
  %i.od = fcmp ult double %i.oc, %.sroa.4.0.copyload.i.i.i.i.i.i
  %or.cond8.i.i.i.i.i.i = select i1 %i.oa, i1 true, i1 %i.od
  br i1 %or.cond8.i.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i"

"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i": ; preds = %bb.ff
  %i.oe = getelementptr i8, ptr %i.nm, i64 -24
  %i.of = load double, ptr %i.oe, align 8, !alias.scope !153744, !noalias !153749, !noundef !14
  %i.og = fcmp ult double %i.of, %.sroa.5.0.copyload.i.i.i.i.i.i
  br i1 %i.og, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i", %bb.fd
  %i.oh = getelementptr i8, ptr %i.nm, i64 -72    ; 3 uses
  %i.oi = load i64, ptr %i.oh, align 8, !noalias !153717, !noundef !14 ; 8 uses
  %i.oj = icmp ult i64 %i.oi, 128102389400760776
  call void @llvm.assume(i1 %i.oj)
  %i.ok = icmp ult i64 %i.no, %i.oi
  br i1 %i.ok, label %.lr.ph.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.ol = getelementptr i8, ptr %i.nm, i64 -80
  %.pre.i.i.i.i.i = load ptr, ptr %i.ol, align 8, !noalias !153717 ; 3 uses
  br label %bb.fl

"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i": ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i", %.preheader.i.i.i.i.i, %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i", %bb.ff, %bb.fe
  invoke fastcc void @"_ZN5rstar9algorithm7removal35DrainIterator$LT$T$C$R$C$Params$GT$8pop_node17hdb08a0c98b6b5eeeE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, i1 noundef zeroext true)
          to label %.noexc.i2.i unwind label %.loopexit.i.i, !noalias !153753

.noexc.i2.i:                                      ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"
  %i.om = load i64, ptr %i.i, align 8, !range !2917, !noalias !153754, !noundef !14
  %.not13.i.i.i.i.i = icmp eq i64 %i.om, -9223372036854775808
  br i1 %.not13.i.i.i.i.i, label %bb.fk, label %bb.fg

bb.fg:                                            ; preds = %.noexc.i2.i
  %i.on = load i64, ptr %i.dz, align 8, !noalias !153754, !noundef !14
  %i.oo = load ptr, ptr %.sroa.5.0..sroa_idx.i322, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !align !240, !noundef !14 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153755)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h45aa8a1e5909e72aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.oo)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i" unwind label %bb.fh, !noalias !153717, !inline_history !107746

bb.fh:                                            ; preds = %bb.fg
  %i.op = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !range !9, !alias.scope !153758, !noalias !153717, !noundef !14 ; 2 uses
  %i.oq = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.oq, label %.body.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.or, align 8, !alias.scope !153758, !noalias !153717, !nonnull !14, !noundef !14
  %i.os = mul nuw i64 %.val2.i.i.i.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %i.os, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153761, !inline_history !107750
  br label %.body.i.i.i.i.i

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i": ; preds = %bb.fg
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !range !9, !alias.scope !153758, !noalias !153717, !noundef !14 ; 2 uses
  %i.ot = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ot, label %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i", label %bb.fj

bb.fj:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i"
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ou, align 8, !alias.scope !153758, !noalias !153717, !nonnull !14, !noundef !14
  %i.ov = mul nuw i64 %.val.i.i.i.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.ov, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153761, !inline_history !107750
  br label %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i"

bb.fk:                                            ; preds = %.noexc.i2.i
  %.pre79.i.i.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !153716, !noalias !153712
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.fx, %bb.fk
  %i.ow = phi i64 [ %.pre79.i.i.i.i.i, %bb.fk ], [ %i.qu, %bb.fx ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ow, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i324, label %bb.fd

.body.i.i.i.i.i:                                  ; preds = %bb.fi, %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !153717
  br label %.body.i1.i

"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i": ; preds = %bb.fj, %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !153717
  %i.ox = load i64, ptr %.sroa.6.0..sroa_idx.i323, align 8, !alias.scope !153716, !noalias !153712, !noundef !14
  %i.oy = load ptr, ptr %.sroa.5.0..sroa_idx.i322, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !align !240, !noundef !14
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 72
  %i.pa = sub i64 %i.ox, %i.on
  store i64 %i.pa, ptr %i.oz, align 8, !noalias !153717
  br label %.loopexit.i.i.i324

bb.fl:                                            ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.pb = phi i64 [ %i.no, %.lr.ph.i.i.i.i.i ], [ %i.py, %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i" ] ; 5 uses
  %i.pc = getelementptr inbounds nuw [72 x i8], ptr %.pre.i.i.i.i.i, i64 %i.pb ; 11 uses
  %i.pd = load i64, ptr %i.pc, align 8, !range !2917, !noalias !153717, !noundef !14
  %.not14.i.i.i.i.i = icmp eq i64 %i.pd, -9223372036854775808
  br i1 %.not14.i.i.i.i.i, label %.preheader.split.i.i.i.i.i.i.i.i.i.i, label %6

6:                                                ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !153754
  call void @llvm.experimental.noalias.scope.decl(metadata !153762)
  %.not.i.i.i.i.i.i325 = icmp samesign ult i64 %i.pb, %i.oi
  br i1 %.not.i.i.i.i.i.i325, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i", label %.invoke.i.i, !prof !15

.invoke.i.i:                                      ; preds = %7, %6
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove13assert_failed17hf3c67a49ca6f5f55E"(i64 noundef %i.pb, i64 noundef %i.oi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2547) #80
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !153753

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i": ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.pc, i64 72, i1 false), !noalias !153765
  %i.pe = add nsw i64 %i.oi, -1                   ; 2 uses
  %i.pf = getelementptr inbounds nuw [72 x i8], ptr %.pre.i.i.i.i.i, i64 %i.pe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, ptr noundef nonnull align 8 dereferenceable(72) %i.pf, i64 72, i1 false), !noalias !153766
  store i64 %i.pe, ptr %i.oh, align 8, !alias.scope !153762, !noalias !153768
  %i.pg = load i64, ptr %i.l, align 8, !range !2917, !noalias !153754, !noundef !14
  %.not17.i.i.i.i.i = icmp eq i64 %i.pg, -9223372036854775808
  br i1 %.not17.i.i.i.i.i, label %bb.fr, label %bb.ft, !prof !121

.preheader.split.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.fl
  %.val21.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i321, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !align !240, !noundef !14 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153769)
  call void @llvm.experimental.noalias.scope.decl(metadata !153772)
  call void @llvm.experimental.noalias.scope.decl(metadata !153775)
  call void @llvm.experimental.noalias.scope.decl(metadata !153777)
  call void @llvm.experimental.noalias.scope.decl(metadata !153780)
  call void @llvm.experimental.noalias.scope.decl(metadata !153782)
  call void @llvm.experimental.noalias.scope.decl(metadata !153785)
  call void @llvm.experimental.noalias.scope.decl(metadata !153787)
  call void @llvm.experimental.noalias.scope.decl(metadata !153790)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ph, align 8, !alias.scope !153792, !noalias !153793, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i = load double, ptr %.val21.i.i.i.i.i, align 8, !alias.scope !153794, !noalias !153795, !noundef !14
  %i.pi = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i
  br i1 %i.pi, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.1, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.1:           ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pj, align 8, !alias.scope !153792, !noalias !153793, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pk, align 8, !alias.scope !153794, !noalias !153795, !noundef !14
  %i.pl = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.1, %.val6.i.i.i.i.i.i.i.i.i.i.1
  br i1 %i.pl, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.2, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.2:           ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pn = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.pm, align 8, !alias.scope !153792, !noalias !153793, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.pn, align 8, !alias.scope !153794, !noalias !153795, !noundef !14
  %i.po = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.2, %.val6.i.i.i.i.i.i.i.i.i.i.2
  br i1 %i.po, label %bb.fm, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

bb.fm:                                            ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.2
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pq = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !153796)
  call void @llvm.experimental.noalias.scope.decl(metadata !153799)
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.pp, align 8, !alias.scope !153801, !noalias !153802, !noundef !14
  %.val1.i.i.i.i.i.i.i.i = load i32, ptr %i.pq, align 8, !alias.scope !153803, !noalias !153804, !noundef !14
  %i.pr = icmp eq i32 %.val.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.pr, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.fm
  call void @llvm.experimental.noalias.scope.decl(metadata !153805)
  call void @llvm.experimental.noalias.scope.decl(metadata !153808)
  call void @llvm.experimental.noalias.scope.decl(metadata !153810)
  call void @llvm.experimental.noalias.scope.decl(metadata !153813)
  call void @llvm.experimental.noalias.scope.decl(metadata !153815)
  call void @llvm.experimental.noalias.scope.decl(metadata !153818)
  %i.ps = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pc, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.pt, align 8, !alias.scope !153820, !noalias !153821, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ps, align 8, !alias.scope !153822, !noalias !153823, !noundef !14
  %i.pu = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.pu, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1:         ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pc, i64 48
  %i.pw = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pv, align 8, !alias.scope !153820, !noalias !153821, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pw, align 8, !alias.scope !153822, !noalias !153823, !noundef !14
  %i.px = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.i.1, %.val6.i.i.i.i.i.i.i.i.i.i.i.1
  br i1 %i.px, label %7, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i": ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.i, %.preheader.split.i.i.i.i.i.i.i.i.i.i, %.preheader.split.i.i.i.i.i.i.i.i.i.i.1, %.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1, %bb.fm, %.preheader.split.i.i.i.i.i.i.i.i.i.i.2
  %i.py = add i64 %i.pb, 1                        ; 3 uses
  store i64 %i.py, ptr %i.nn, align 8, !noalias !153717
  %exitcond.not.i.i.i.i = icmp eq i64 %i.py, %i.oi
  br i1 %exitcond.not.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %bb.fl

7:                                                ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1
  %8 = getelementptr i8, ptr %i.nm, i64 -8        ; 2 uses
  %9 = load i64, ptr %8, align 8, !noalias !153717, !noundef !14
  %10 = add i64 %9, 1
  store i64 %10, ptr %8, align 8, !noalias !153717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !153754
  call void @llvm.experimental.noalias.scope.decl(metadata !153824)
  %.not.i23.i.i.i.i.i = icmp samesign ult i64 %i.pb, %i.oi
  br i1 %.not.i23.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i", label %.invoke.i.i, !prof !15

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i": ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.pc, i64 72, i1 false), !noalias !153827
  %i.pz = add nsw i64 %i.oi, -1                   ; 2 uses
  %i.qa = getelementptr inbounds nuw [72 x i8], ptr %.pre.i.i.i.i.i, i64 %i.pz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, ptr noundef nonnull align 8 dereferenceable(72) %i.qa, i64 72, i1 false), !noalias !153828
  store i64 %i.pz, ptr %i.oh, align 8, !alias.scope !153824, !noalias !153830
  %i.qb = load i64, ptr %i.j, align 8, !range !2917, !noalias !153754, !noundef !14
  %.not15.i.i.i.i.i = icmp eq i64 %i.qb, -9223372036854775808
  br i1 %.not15.i.i.i.i.i, label %bb.fy, label %bb.fn, !prof !15

bb.fn:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !153754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !153754
  store ptr @413, ptr %i.e, align 8, !noalias !153754
  %.sroa.48.0..sroa_idx.i.i.i.i.i326 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.48.0..sroa_idx.i.i.i.i.i326, align 8, !noalias !153754
  store ptr @415, ptr %i.f, align 8, !noalias !153754
  %i.qc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.qc, align 8, !noalias !153754
  %i.qd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.qd, align 8, !noalias !153754
  %i.qe = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.qe, align 8, !noalias !153754
  %i.qf = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.qf, align 8, !noalias !153754
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @416) #80
          to label %bb.fo unwind label %bb.fp, !noalias !153717

bb.fo:                                            ; preds = %bb.fr, %bb.fn
  unreachable

bb.fp:                                            ; preds = %bb.fn
  %i.qg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %i.j) #81
          to label %.body.i1.i unwind label %bb.fq, !noalias !153717

bb.fq:                                            ; preds = %bb.fs, %bb.fp
  %i.qh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153717
  unreachable

bb.fr:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !153754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !153754
  store ptr @418, ptr %i.g, align 8, !noalias !153754
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !153754
  store ptr @415, ptr %i.h, align 8, !noalias !153754
  %i.qi = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.qi, align 8, !noalias !153754
  %i.qj = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.qj, align 8, !noalias !153754
  %i.qk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.qk, align 8, !noalias !153754
  %i.ql = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.ql, align 8, !noalias !153754
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @419) #80
          to label %bb.fo unwind label %bb.fs, !noalias !153717

bb.fs:                                            ; preds = %bb.fr
  %i.qm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %i.l) #81
          to label %.body.i1.i unwind label %bb.fq, !noalias !153717

bb.ft:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !153754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !153754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !153754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false), !noalias !153754
  %i.qn = load i64, ptr %i.dw, align 8, !alias.scope !153831, !noalias !153834, !noundef !14 ; 3 uses
  %i.qo = load i64, ptr %i.p, align 8, !range !9, !alias.scope !153831, !noalias !153834, !noundef !14
  %i.qp = icmp eq i64 %i.qn, %i.qo
  br i1 %i.qp, label %bb.fu, label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4a41d8201b760b5bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @420)
          to label %bb.fx unwind label %bb.fv, !noalias !153837

bb.fv:                                            ; preds = %bb.fu
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$17h14d326ef49847d8aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.k) #81
          to label %.body.i1.i unwind label %bb.fw, !noalias !153717

bb.fw:                                            ; preds = %bb.fv
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153837
  unreachable

bb.fx:                                            ; preds = %bb.fu, %bb.ft
  %i.qs = load ptr, ptr %i.dx, align 8, !alias.scope !153831, !noalias !153834, !nonnull !14, !noundef !14
  %i.qt = getelementptr inbounds nuw [88 x i8], ptr %i.qs, i64 %i.qn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.qt, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.k, i64 88, i1 false), !noalias !153717
  %i.qu = add i64 %i.qn, 1                        ; 2 uses
  store i64 %i.qu, ptr %i.dw, align 8, !alias.scope !153831, !noalias !153834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !153754
  br label %.backedge.i.i.i.i.i

bb.fy:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !153754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !153702
  store i64 0, ptr %i.dv, align 8, !alias.scope !153838, !noalias !153839
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"

.loopexit.i.i.i324:                               ; preds = %.backedge.i.i.i.i.i, %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i", %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !153702
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"

.loopexit.i.i:                                    ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.body.i1.i:                                       ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.fv, %bb.fs, %bb.fp, %.body.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.qm, %bb.fs ], [ %i.qq, %bb.fv ], [ %i.op, %.body.i.i.i.i.i ], [ %i.qg, %bb.fp ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17hcb66315d368b958cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p) #81
          to label %.body330 unwind label %bb.fz, !noalias !153753

bb.fz:                                            ; preds = %.body.i1.i
  %i.qv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153753
  unreachable

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i": ; preds = %.loopexit.i.i.i324, %bb.fy
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17hcb66315d368b958cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %bb.ga unwind label %.loopexit596

bb.ga:                                            ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !153660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !153843)
  %i.qw = lshr i32 %.sroa.11.sroa.0.0.insert.insert499, 16
  %i.qx = trunc nuw i32 %i.qw to i16              ; 3 uses
  %i.qy = trunc i32 %.sroa.11.sroa.0.0.insert.insert499 to i16
  %i.qz = load ptr, ptr %i.ea, align 8, !alias.scope !153843, !nonnull !14, !noundef !14 ; 2 uses
  %i.ra = load i64, ptr %i.eb, align 8, !alias.scope !153843, !noundef !14 ; 8 uses
  switch i64 %i.ra, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.ga
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.ga ], [ %i.rl, %.lr.ph.i.i.i ] ; 4 uses
  %i.rb = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.ra
  call void @llvm.assume(i1 %i.rb)
  %i.rc = getelementptr inbounds nuw [32 x i8], ptr %i.qz, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.rd = getelementptr i8, ptr %i.rc, i64 24
  %.val20.i.i.i = load i16, ptr %i.rd, align 8, !alias.scope !153846, !noalias !153851, !noundef !14 ; 2 uses
  %i.re = icmp eq i16 %.val20.i.i.i, %i.qx
  br i1 %i.re, label %bb.gc, label %bb.gb

.lr.ph.i.i.i:                                     ; preds = %bb.ga, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.rm, %.lr.ph.i.i.i ], [ %i.ra, %bb.ga ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.rl, %.lr.ph.i.i.i ], [ 0, %bb.ga ] ; 2 uses
  %i.rf = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.rg = add i64 %i.rf, %.sroa.05.024.i.i.i      ; 3 uses
  %i.rh = icmp ult i64 %i.rg, %i.ra
  call void @llvm.assume(i1 %i.rh)
  %i.ri = getelementptr inbounds nuw [32 x i8], ptr %i.qz, i64 %i.rg
  %i.rj = getelementptr i8, ptr %i.ri, i64 24
  %.val22.i.i.i = load i16, ptr %i.rj, align 8, !alias.scope !153846, !noalias !153851, !noundef !14
  %i.rk = icmp ugt i16 %.val22.i.i.i, %i.qx
  %i.rl = select i1 %i.rk, i64 %.sroa.05.024.i.i.i, i64 %i.rg, !unpredictable !14 ; 2 uses
  %i.rm = sub nuw i64 %.sroa.01.025.i.i.i, %i.rf  ; 2 uses
  %i.rn = icmp ugt i64 %i.rm, 1
  br i1 %i.rn, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.gb:                                            ; preds = %._crit_edge.i.i.i
  %i.ro = icmp ult i16 %.val20.i.i.i, %i.qx
  %i.rp = zext i1 %i.ro to i64
  %i.rq = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.rp
  %i.rr = icmp ule i64 %i.rq, %i.ra
  call void @llvm.assume(i1 %i.rr)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gc:                                            ; preds = %._crit_edge.i.i.i
  %i.rs = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.rc, i16 noundef %i.qy)
          to label %.noexc335 unwind label %.loopexit596

.noexc335:                                        ; preds = %bb.gc
  br i1 %i.rs, label %bb.gd, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gd:                                            ; preds = %.noexc335
  %i.rt = load i64, ptr %i.rc, align 8, !range !2917, !noalias !153843, !noundef !14 ; 3 uses
  %i.ru = icmp eq i64 %i.rt, -9223372036854775808
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.rw = load i64, ptr %i.rv, align 8, !noalias !153843, !noundef !14 ; 2 uses
  br i1 %i.ru, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.rx = icmp ult i64 %i.rw, 4611686018427387904
  call void @llvm.assume(i1 %i.rx)
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.sroa.03.0.in.i = icmp eq i64 %i.rw, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i": ; preds = %bb.gf
  call void @llvm.experimental.noalias.scope.decl(metadata !153853)
  %i.ry = icmp ult i64 %i.ra, 288230376151711744
  call void @llvm.assume(i1 %i.ry)
  %.sroa.4.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i334, align 8, !noalias !153856 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.sa = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.sb = add nsw i64 %i.ra, %i.sa
  %i.sc = shl nuw nsw i64 %i.sb, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rc, ptr nonnull align 8 %i.rz, i64 %i.sc, i1 false), !noalias !153858
  %i.sd = add nsw i64 %i.ra, -1
  store i64 %i.sd, ptr %i.eb, align 8, !alias.scope !153860, !noalias !153861
  switch i64 %i.rt, label %bb.gg [
    i64 -9223372036854775808, label %bb.gh
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.gg:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.se = shl nuw i64 %i.rt, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.se, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !153843
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gh:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !153843
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.gh, %bb.gg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", %bb.gf, %.noexc335, %bb.gb, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.bz

"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h4aa99a5d15b43f31E.exit320": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17he5d54392b14c28c9E.exit.i.i.i.i.i318", %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ej

"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit315": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17he5d54392b14c28c9E.exit.i3.i313", %"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17h6b4edd2e0c29bc59E.exit.i310", %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.gi

bb.gi:                                            ; preds = %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit315", %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6357)
  br label %bb.gj

bb.gj:                                            ; preds = %.backedge.i.i.i.i, %bb.gi
  %.sroa.0.0.idx12.i.i.i.i = phi i64 [ 0, %bb.gi ], [ %.sroa.0.0.add.i.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i.i = phi i64 [ 0, %bb.gi ], [ %i.sf, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.0.idx12.i.i.i.i
  %.sroa.0.0.add.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i, 8 ; 2 uses
  %i.sf = add nuw nsw i64 %.sroa.7.011.i.i.i.i, 1
  %i.sg = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i, align 8, !alias.scope !153862, !noundef !14 ; 2 uses
  %i.sh = icmp eq ptr %i.sg, null
  br i1 %i.sh, label %.backedge.i.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.si = shl nuw i64 1, %.sroa.7.011.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17h21305d096b039e44E"(ptr nonnull %i.sg, i64 %i.si)
          to label %.backedge.i.i.i.i unwind label %.loopexit

.backedge.i.i.i.i:                                ; preds = %bb.gk, %bb.gj
  %i.sj = icmp eq i64 %.sroa.0.0.add.i.i.i.i, 504
  br i1 %i.sj, label %"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17heaa253cadc356a46E.exit", label %bb.gj

"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17heaa253cadc356a46E.exit": ; preds = %.backedge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0347)
  br label %bb.bj

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit": ; preds = %bb.bm, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", %bb.gp
  %.sroa.0125.8 = phi i8 [ 1, %bb.gp ], [ 0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i" ], [ 0, %bb.bm ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !153871)
  call void @llvm.experimental.noalias.scope.decl(metadata !153874)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h45aa8a1e5909e72aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.bf)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339" unwind label %bb.gl, !inline_history !107746

bb.gl:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
  %i.sk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i337 = load i64, ptr %i.bf, align 8, !range !9, !alias.scope !153877, !noundef !14 ; 2 uses
  %i.sl = icmp eq i64 %.val2.i.i.i337, 0
  br i1 %i.sl, label %.body342, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.sm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val3.i.i.i338 = load ptr, ptr %i.sm, align 8, !alias.scope !153877, !nonnull !14, !noundef !14
  %i.sn = mul nuw i64 %.val2.i.i.i337, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i338, i64 noundef %i.sn, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153880, !inline_history !107750
  br label %.body342

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339": ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
  %.val.i.i.i340 = load i64, ptr %i.bf, align 8, !range !9, !alias.scope !153877, !noundef !14 ; 2 uses
  %i.so = icmp eq i64 %.val.i.i.i340, 0
  br i1 %i.so, label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E.exit", label %bb.gn

bb.gn:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339"
  %i.sp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val1.i.i.i341 = load ptr, ptr %i.sp, align 8, !alias.scope !153877, !nonnull !14, !noundef !14
  %i.sq = mul nuw i64 %.val.i.i.i340, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i341, i64 noundef %i.sq, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153880, !inline_history !107750
  br label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E.exit"

bb.go:                                            ; preds = %bb.ai
  %i.sr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$17hfe77ade7e580bff7E"(ptr noalias noundef align 8 dereferenceable(136) %i.ba) #81
          to label %.thread434 unwind label %bb.r

bb.gp:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.am, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
end_hunk_3
begin_hunk_4_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h056ee9119ae7aa28E":bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !194032
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.ar:                                            ; preds = %bb.ap
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dn)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.as, !noalias !194029

bb.as:                                            ; preds = %bb.ar
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef 40, i64 noundef 8) #79, !noalias !194029
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.ar, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.aq, %bb.ap
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef 40, i64 noundef 8) #79, !noalias !194029
  br label %.thread40.i.i

.thread40.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %.thread43.i.i, %bb.al, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.db, %.thread43.i.i ], [ %i.ag, %bb.e ], [ %.sroa.729.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" ], [ %.sroa.729.0.i.i, %bb.al ]
  %i.dp = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !193918
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dp, ptr %i.dq, align 8, !alias.scope !193918, !noalias !193919
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h289b4afff8b3ad30E.exit"

bb.at:                                            ; preds = %bb.ak
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.729.0.i.i, ptr %i.dr, align 8, !alias.scope !193918, !noalias !193919
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.215.0..sroa_idx.i.i, align 8, !alias.scope !193918, !noalias !193919
  %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.11.0.copyload.i.i, ptr %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !193918, !noalias !193919
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h289b4afff8b3ad30E.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h289b4afff8b3ad30E.exit": ; preds = %.loopexit.i.i, %bb.af, %.thread40.i.i, %bb.at
  %storemerge.sink.i.i = phi i64 [ 1, %bb.af ], [ 1, %.loopexit.i.i ], [ 0, %bb.at ], [ 1, %.thread40.i.i ]
  store i64 %storemerge.sink.i.i, ptr %0, align 8, !alias.scope !193918, !noalias !193919
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05e1fcb84c428dfcE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 10 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.930.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194043)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !194046, !noalias !194049, !noundef !14 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !194052, !noalias !194053 ; 2 uses
  %i.ai = icmp ult i64 %.promoted.i.i.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !194046, !noalias !194049, !nonnull !14, !align !584, !noundef !14
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.al = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ao, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194054)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !194055, !noundef !14
  switch i8 %i.an, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !3649

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ao = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.af, align 8, !alias.scope !194056, !noalias !194053
  %exitcond.not.i.i.i = icmp eq i64 %i.ao, %i.ah
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !194059
  store i64 5, ptr %i.ae, align 8, !noalias !194059
  %i.ap = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae), !noalias !194060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !194059
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !194060, !noalias !194061
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h46e46457ba149081E.exit"

bb.d:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !1313, !alias.scope !194061, !noalias !194060, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.au = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6182), !noalias !194060
  br label %.thread40.i.i

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !194061, !noalias !194060, !noundef !14
  %i.ax = add i8 %i.aw, -1                        ; 2 uses
  store i8 %i.ax, ptr %i.av, align 1, !alias.scope !194061, !noalias !194060
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.cq, label %bb.g, !prof !121

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.az = add i64 %i.al, 1
  store i64 %i.az, ptr %i.af, align 8, !alias.scope !194062, !noalias !194060
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.930.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !194059
  store ptr %1, ptr %i.ab, align 8, !noalias !194065
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.ba, align 8, !noalias !194065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !194065
  store ptr null, ptr %i.aa, align 8, !noalias !194065
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store i64 0, ptr %i.bb, align 8, !noalias !194065
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.co, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !194069)
  call void @llvm.experimental.noalias.scope.decl(metadata !194072)
  call void @llvm.experimental.noalias.scope.decl(metadata !194075)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !194078
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17hbff30297a975e291E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.bj = load i8, ptr %i.y, align 8, !range !1313, !noalias !194078, !noundef !14
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !194078, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !194078
  br label %.loopexit40.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bn = load i8, ptr %i.bc, align 1, !range !1313, !noalias !194078, !noundef !14
  %i.bo = trunc nuw i8 %i.bn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !194078
  br i1 %i.bo, label %bb.k, label %_ZN10serde_core2de9MapAccess10next_entry17hecc46d9d34e38157E.exit.thread33.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr %i.ab, align 8, !alias.scope !194083, !noalias !194084, !nonnull !14, !align !240, !noundef !14 ; 28 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194085)
  call void @llvm.experimental.noalias.scope.decl(metadata !194088)
  call void @llvm.experimental.noalias.scope.decl(metadata !194091)
  call void @llvm.experimental.noalias.scope.decl(metadata !194094)
  call void @llvm.experimental.noalias.scope.decl(metadata !194097)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40 ; 16 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !194100, !noalias !194103, !noundef !14 ; 6 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !194110, !noalias !194111 ; 2 uses
  %i.bt = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 6 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !194100, !noalias !194103, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.m ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194112)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !194113, !noundef !14
  switch i8 %i.by, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %bb.p
  ], !prof !12229

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bz = add i64 %i.bw, 1                        ; 3 uses
  store i64 %i.bz, ptr %i.bq, align 8, !alias.scope !194114, !noalias !194111
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bz, %i.bs
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !194117
  store i64 5, ptr %i.t, align 8, !noalias !194117
  %i.ca = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !194082

.noexc5.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !194117
  br label %.loopexit40.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !194117
  store i64 10, ptr %i.u, align 8, !noalias !194117
  %i.cb = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !194082

.noexc6.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !194117
  br label %.loopexit40.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !range !1313, !alias.scope !194118, !noalias !194119, !noundef !14
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.x, label %bb.w

bb.p:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !194120)
  call void @llvm.experimental.noalias.scope.decl(metadata !194123)
  call void @llvm.experimental.noalias.scope.decl(metadata !194126)
  call void @llvm.experimental.noalias.scope.decl(metadata !194129)
  call void @llvm.experimental.noalias.scope.decl(metadata !194132)
  call void @llvm.experimental.noalias.scope.decl(metadata !194135)
  call void @llvm.experimental.noalias.scope.decl(metadata !194138)
  call void @llvm.experimental.noalias.scope.decl(metadata !194141)
  %2 = icmp ult i64 %i.bw, %i.bs
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.p, %bb.q
  %i.cf = phi i64 [ %i.ci, %bb.q ], [ %i.bw, %bb.p ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !194144, !noundef !14 ; 2 uses
  switch i8 %i.ch, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = add i64 %i.cf, 1                        ; 3 uses
  store i64 %i.ci, ptr %i.bq, align 8, !alias.scope !194156, !noalias !194159
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.bs
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !194160
  %i.cj = icmp eq i8 %i.ch, 34
  br i1 %i.cj, label %bb.r, label %bb.s, !prof !15

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !194160
  store i64 5, ptr %i.s, align 8, !noalias !194160
  %i.ck = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !194082

.noexc7.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !194160
  br label %bb.v

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cl = add i64 %i.cf, 1
  store i64 %i.cl, ptr %i.bq, align 8, !alias.scope !194161, !noalias !194164
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 0, ptr %i.cm, align 8, !alias.scope !194165, !noalias !194164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !194160
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bp)
          to label %.noexc8.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc8.i.i.i:                                    ; preds = %bb.r
  %i.cn = load i64, ptr %i.q, align 8, !range !802, !noalias !194160, !noundef !14
  %i.co = icmp eq i64 %i.cn, 2
  %i.cp = load ptr, ptr %i.bd, align 8, !noalias !194160 ; 3 uses
  br i1 %i.co, label %bb.t, label %bb.u

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6214)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !194082

bb.t:                                             ; preds = %.noexc8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !194160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !194160
  br label %bb.v

bb.u:                                             ; preds = %.noexc8.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !194160
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbe1a9e23c8b8c495E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cp, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc10.i.i.i:                                   ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !194160
  %i.cr = load i8, ptr %i.r, align 8, !range !1313, !noalias !194160, !noundef !14
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.thread15.i.i.i.i.i", !prof !121

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc10.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !194160
  br label %.noexc9.i.i.i

.noexc9.i.i.i:                                    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.ct = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cq, %bb.s ]
  %i.cu = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !194082

.noexc11.i.i.i:                                   ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !194160
  br label %bb.v

bb.v:                                             ; preds = %.noexc11.i.i.i, %bb.t, %.noexc7.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.noexc7.i.i.i ], [ %i.cu, %.noexc11.i.i.i ], [ %i.cp, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit40.i.i.i

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.thread15.i.i.i.i.i": ; preds = %.noexc10.i.i.i
  %i.cv = load i8, ptr %i.be, align 1, !range !4559, !noalias !194160, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !194160
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !194166, !noalias !194173
  %.promoted.i.i.i.pre.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !194178, !noalias !194179
  br label %bb.bz

default.unreachable:                              ; preds = %.noexc20.i.i.i
  unreachable

bb.w:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 57 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !194118, !noalias !194119, !noundef !14
  %i.cy = add i8 %i.cx, -1                        ; 2 uses
  store i8 %i.cy, ptr %i.cw, align 1, !alias.scope !194118, !noalias !194119
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.bs, label %bb.x, !prof !121

bb.x:                                             ; preds = %bb.w, %bb.o
  %i.da = add i64 %i.bw, 1                        ; 3 uses
  store i64 %i.da, ptr %i.bq, align 8, !alias.scope !194180, !noalias !194119
  call void @llvm.experimental.noalias.scope.decl(metadata !194183)
  call void @llvm.experimental.noalias.scope.decl(metadata !194186)
  call void @llvm.experimental.noalias.scope.decl(metadata !194189)
  call void @llvm.experimental.noalias.scope.decl(metadata !194192)
  %i.db = icmp ult i64 %i.da, %i.bs
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.x, %bb.y
  %i.dc = phi i64 [ %i.df, %bb.y ], [ %i.da, %bb.x ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !194195, !noundef !14
  switch i8 %i.de, label %bb.z [
    i8 32, label %bb.y
    i8 10, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 34, label %bb.aa
    i8 125, label %bb.ab
  ], !prof !12326

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.df = add i64 %i.dc, 1                        ; 3 uses
  store i64 %i.df, ptr %i.bq, align 8, !alias.scope !194203, !noalias !194206
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, %i.bs
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !194207
  store i64 3, ptr %i.n, align 8, !noalias !194207
  %i.dg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc12.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !194207
  br label %"_ZN184_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2df8064d8ef4cccdE.exit.i.i.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !194207
  store i64 17, ptr %i.o, align 8, !noalias !194207
  %i.dh = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc13.i.i.i:                                   ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !194207
  br label %"_ZN184_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2df8064d8ef4cccdE.exit.i.i.i.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !194207
  call void @llvm.experimental.noalias.scope.decl(metadata !194208)
  call void @llvm.experimental.noalias.scope.decl(metadata !194211)
  call void @llvm.experimental.noalias.scope.decl(metadata !194214)
  call void @llvm.experimental.noalias.scope.decl(metadata !194217)
  %i.di = add i64 %i.dc, 1
  store i64 %i.di, ptr %i.bq, align 8, !alias.scope !194220, !noalias !194223
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 0, ptr %i.dj, align 8, !alias.scope !194228, !noalias !194223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !194229
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bp)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc14.i.i.i:                                   ; preds = %bb.aa
  %i.dk = load i64, ptr %i.l, align 8, !range !802, !noalias !194229, !noundef !14
  %i.dl = icmp eq i64 %i.dk, 2
  %i.dm = load ptr, ptr %i.bf, align 8, !noalias !194229, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.dl, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !24266

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !194229
  br label %bb.ac

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc14.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !194229
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbe1a9e23c8b8c495E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dm, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc15.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.m, align 8, !range !1313, !noalias !194207
  %i.dn = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !194229
  br i1 %i.dn, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ad, !prof !16402

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc15.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !194207
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !194207
  store i64 10, ptr %i.p, align 8, !noalias !194207
  %i.do = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc16.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !194207
  br label %"_ZN184_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2df8064d8ef4cccdE.exit.i.i.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dp = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dm, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.dq = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc17.i.i.i:                                   ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !194207
  br label %"_ZN184_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2df8064d8ef4cccdE.exit.i.i.i.i.i.i.i.i.i.i"

bb.ad:                                            ; preds = %.noexc15.i.i.i
  %i.dr = load i8, ptr %i.bg, align 1, !range !4559, !noalias !194207, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !194207
  call void @llvm.experimental.noalias.scope.decl(metadata !194230)
  call void @llvm.experimental.noalias.scope.decl(metadata !194233)
  %i.ds = load i64, ptr %i.br, align 8, !alias.scope !194236, !noalias !194239, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !194242, !noalias !194243 ; 2 uses
  %i.dt = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ds
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ad
end_hunk_4
begin_hunk_5_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05e1fcb84c428dfcE":bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !194082
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd3a41f41d4bf9af3E.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_entry17hecc46d9d34e38157E.exit.thread33.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E.exit.i.i.i"
  %.sroa.028.0.i.i = phi i64 [ 1, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E.exit.i.i.i" ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17hecc46d9d34e38157E.exit.thread33.i.i.i ] ; 2 uses
  %.sroa.729.0.i.i = phi ptr [ %.sroa.1228.0.ph.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E.exit.i.i.i" ], [ %.sroa.729.8.copyload.i.i, %_ZN10serde_core2de9MapAccess10next_entry17hecc46d9d34e38157E.exit.thread33.i.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !194065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !194059
  %i.gg = load i8, ptr %i.ar, align 8, !range !1313, !alias.scope !194061, !noalias !194060, !noundef !14
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.cs, label %bb.cr

bb.cq:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !194059
  store i64 24, ptr %i.ad, align 8, !noalias !194059
  %i.gi = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad), !noalias !194060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !194059
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gi, ptr %i.gj, align 8, !alias.scope !194060, !noalias !194061
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h46e46457ba149081E.exit"

bb.cr:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd3a41f41d4bf9af3E.exit.i.i"
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !194061, !noalias !194060, !noundef !14
  %i.gm = add i8 %i.gl, 1
  store i8 %i.gm, ptr %i.gk, align 1, !alias.scope !194061, !noalias !194060
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd3a41f41d4bf9af3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !194059
  store i64 %.sroa.028.0.i.i, ptr %i.ac, align 8, !noalias !194059
  %.sroa.729.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.729.0.i.i, ptr %.sroa.729.0..sroa_idx.i.i, align 8, !noalias !194059
  %.sroa.930.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.930.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.930.i.i, i64 16, i1 false), !noalias !194059
  %i.gn = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.cu unwind label %bb.ct, !noalias !194060 ; 9 uses

bb.ct:                                            ; preds = %bb.cs
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$C$serde_json..error..Error$GT$$GT$17h96cffa7b3e573c03E"(ptr noalias noundef align 8 dereferenceable(32) %i.ac) #81
          to label %common.resume.i.i unwind label %bb.cz, !noalias !194060

bb.cu:                                            ; preds = %bb.cs
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.930.0..sroa_idx.i.i, align 8, !noalias !194059 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !194059 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !194059
  %i.gp = trunc nuw i64 %.sroa.028.0.i.i to i1
  br i1 %i.gp, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not.i.i = icmp eq ptr %i.gn, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.930.i.i)
  br i1 %.not.i.i, label %bb.de, label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.729.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.930.i.i)
  %.not46.i.i = icmp eq ptr %i.gn, null
  br i1 %.not46.i.i, label %.thread40.i.i, label %bb.da

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !194323
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.729.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i", label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.729.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.729.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i": ; preds = %bb.cy, %bb.cx
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.cy ], [ 0, %bb.cx ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.cy ], [ 0, %bb.cx ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !194328, !noalias !194331
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.gq, align 8, !alias.scope !194328, !noalias !194331
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.gr, align 8, !alias.scope !194328, !noalias !194331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194333
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hbbc59f18556fcaceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !194060
  %i.gs = load ptr, ptr %i.b, align 8, !noalias !194333, !noundef !14
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread43.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194333
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hbbc59f18556fcaceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !194060
  %i.gt = load ptr, ptr %i.b, align 8, !noalias !194333, !noundef !14
  %.not.i.i.i.i25.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i25.i.i, label %.thread43.i.i, label %.lr.ph.i.i.i.i.i.i

.thread43.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !194323
  br label %.thread40.i.i

bb.cz:                                            ; preds = %bb.ct
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !194060
  unreachable

bb.da:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !194338)
  call void @llvm.experimental.noalias.scope.decl(metadata !194341)
  %i.gv = load i64, ptr %i.gn, align 8, !range !3586, !alias.scope !194344, !noalias !194345, !noundef !14
  switch i64 %i.gv, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.db
    i64 1, label %bb.dc
  ]

bb.db:                                            ; preds = %bb.da
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.gw, align 8, !alias.scope !194344, !noalias !194345, !noundef !14 ; 2 uses
  %i.gx = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.gx, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.db
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !194344, !noalias !194345, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !194348
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.dc:                                            ; preds = %bb.da
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gz)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.dd, !noalias !194345

bb.dd:                                            ; preds = %bb.dc
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gn, i64 noundef 40, i64 noundef 8) #79, !noalias !194345
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.dc, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.db, %bb.da
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gn, i64 noundef 40, i64 noundef 8) #79, !noalias !194345
  br label %.thread40.i.i

.thread40.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %.thread43.i.i, %bb.cw, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.gn, %.thread43.i.i ], [ %i.au, %bb.e ], [ %.sroa.729.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" ], [ %.sroa.729.0.i.i, %bb.cw ]
  %i.hb = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !194060
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hb, ptr %i.hc, align 8, !alias.scope !194060, !noalias !194061
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h46e46457ba149081E.exit"

bb.de:                                            ; preds = %bb.cv
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.729.0.i.i, ptr %i.hd, align 8, !alias.scope !194060, !noalias !194061
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.215.0..sroa_idx.i.i, align 8, !alias.scope !194060, !noalias !194061
  %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.11.0.copyload.i.i, ptr %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !194060, !noalias !194061
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h46e46457ba149081E.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h46e46457ba149081E.exit": ; preds = %.loopexit.i.i, %bb.cq, %.thread40.i.i, %bb.de
  %storemerge.sink.i.i = phi i64 [ 1, %bb.cq ], [ 1, %.loopexit.i.i ], [ 0, %bb.de ], [ 1, %.thread40.i.i ]
  store i64 %storemerge.sink.i.i, ptr %0, align 8, !alias.scope !194060, !noalias !194061
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0624867f47c473a1E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194357)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !194360, !noalias !194363, !noundef !14 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !194367, !noalias !194368 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !194360, !noalias !194363, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194369)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !194370, !noundef !14
  switch i8 %i.y, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.bi
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !194371, !noalias !194368
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194383)
  %i.aa = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.s
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !194386, !noalias !194389, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194395)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !194396, !noundef !14
  switch i8 %i.af, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !12229

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !194397, !noalias !194400
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.d

.loopexit20.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !194401
  store i64 5, ptr %i.l, align 8, !noalias !194401
  %i.ah = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !194402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !194401
  br label %bb.bp

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !194401
  store i64 10, ptr %i.m, align 8, !noalias !194401
  %i.ai = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !194402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !194401
  br label %bb.bp

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !1313, !alias.scope !194403, !noalias !194402, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.ab, label %bb.aa

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194425)
  %2 = icmp ult i64 %i.ad, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.am = phi i64 [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !194428, !noundef !14
  switch i8 %i.ao, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.j
  ], !prof !3649

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.q, align 8, !alias.scope !194440, !noalias !194443
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !194444
  store i64 5, ptr %i.k, align 8, !noalias !194444
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !194445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !194444
  br label %bb.w

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !194446, !noalias !194445
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !194449, !noalias !194445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !194444
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !194445
  %i.at = load i64, ptr %i.j, align 8, !range !802, !noalias !194444, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !194444 ; 14 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176), !noalias !194445
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !194444
  br label %bb.w

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !194444 ; 4 uses
  %i.ay = trunc nuw i64 %i.at to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  br i1 %i.ay, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1eda33c24dff9ddbE.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i64 4, label %bb.o
    i64 3, label %bb.p
    i64 9, label %bb.q
  ], !prof !70497

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr %i.aw, align 1
  %i.ba = icmp ne i32 %i.az, 1953718636
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.x, label %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1eda33c24dff9ddbE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  %i.bd = load i16, ptr %i.aw, align 1
  %i.be = xor i16 %i.bd, 27745
  %i.bf = getelementptr i8, ptr %i.aw, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i16
  %i.bi = xor i16 %i.bh, 108
  %i.bj = or i16 %i.be, %i.bi
  %i.bk = icmp ne i16 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.y, label %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1eda33c24dff9ddbE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.q:                                             ; preds = %bb.n
  %i.bn = load i64, ptr %i.aw, align 1
  %i.bo = xor i64 %i.bn, 7164775612281090662
  %i.bp = getelementptr i8, ptr %i.aw, i64 8
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = xor i64 %i.br, 121
  %i.bt = or i64 %i.bo, %i.bs
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.z, label %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1eda33c24dff9ddbE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !15

"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1eda33c24dff9ddbE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bx = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1204, i64 noundef 3), !noalias !194450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !194444
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha4b1b83d2fe54826E.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 4, label %bb.s
    i64 3, label %bb.t
    i64 9, label %bb.u
  ], !prof !70497

bb.s:                                             ; preds = %bb.r
  %i.by = load i32, ptr %i.aw, align 1
  %i.bz = icmp ne i32 %i.by, 1953718636
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha4b1b83d2fe54826E.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cc = load i16, ptr %i.aw, align 1
  %i.cd = xor i16 %i.cc, 27745
  %i.ce = getelementptr i8, ptr %i.aw, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i16
  %i.ch = xor i16 %i.cg, 108
  %i.ci = or i16 %i.cd, %i.ch
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.y, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha4b1b83d2fe54826E.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.cm = load i64, ptr %i.aw, align 1
  %i.cn = xor i64 %i.cm, 7164775612281090662
  %i.co = getelementptr i8, ptr %i.aw, i64 8
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i64
  %i.cr = xor i64 %i.cq, 121
  %i.cs = or i64 %i.cn, %i.cr
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.z, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha4b1b83d2fe54826E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17ha4b1b83d2fe54826E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.cw = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1204, i64 noundef 3), !noalias !194453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !194444
  br label %bb.v

bb.v:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha4b1b83d2fe54826E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1eda33c24dff9ddbE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  %.sroa.1817.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1eda33c24dff9ddbE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cw, %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha4b1b83d2fe54826E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.k ]
  %i.cx = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1817.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !194445
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.612.0.ph.i.i.i.i.i.i = phi ptr [ %i.cx, %bb.v ], [ %i.aq, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aw, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.612.0.ph.i.i.i.i.i.i) ]
  br label %bb.bp

bb.x:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !194444
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h814258cf98b48fa9E.exit.i"

bb.y:                                             ; preds = %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !194444
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h814258cf98b48fa9E.exit.i"

bb.z:                                             ; preds = %bb.u, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !194444
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h814258cf98b48fa9E.exit.i"

bb.aa:                                            ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !194403, !noalias !194402, !noundef !14
  %i.da = add i8 %i.cz, -1                        ; 2 uses
  store i8 %i.da, ptr %i.cy, align 1, !alias.scope !194403, !noalias !194402
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.ba, label %bb.ab, !prof !121

bb.ab:                                            ; preds = %bb.aa, %bb.g
  %i.dc = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.dc, ptr %i.q, align 8, !alias.scope !194458, !noalias !194402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194470)
  %i.dd = icmp ult i64 %i.dc, %i.s
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ab, %bb.ac
  %i.de = phi i64 [ %i.dh, %bb.ac ], [ %i.dc, %bb.ab ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !194473, !noundef !14
  switch i8 %i.dg, label %bb.ad [
    i8 32, label %bb.ac
    i8 10, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
    i8 34, label %bb.ae
    i8 125, label %bb.ao
  ], !prof !12326

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.dh = add i64 %i.de, 1                        ; 3 uses
  store i64 %i.dh, ptr %i.q, align 8, !alias.scope !194481, !noalias !194484
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dh, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !194485
  store i64 3, ptr %i.g, align 8, !noalias !194485
  %i.di = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !194486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !194485
  br label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h367f2c4e82adc615E.exit.i.i.i.i.i"

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !194485
  store i64 17, ptr %i.h, align 8, !noalias !194485
  %i.dj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !194486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !194485
  br label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h367f2c4e82adc615E.exit.i.i.i.i.i"

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194490)
end_hunk_5
begin_hunk_6_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2887d07899cb229aE":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.928.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.928.i.i, i64 16, i1 false), !noalias !198536
  %i.wx = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.gw unwind label %bb.gv, !noalias !198537 ; 9 uses

bb.gv:                                            ; preds = %bb.gu
  %i.wy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr187drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$GT$$C$serde_json..error..Error$GT$$GT$17h5fe7299f77afb820E"(ptr noalias noundef align 8 dereferenceable(32) %i.as) #81
          to label %common.resume.i.i unwind label %bb.hb, !noalias !198537

bb.gw:                                            ; preds = %bb.gu
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.928.0..sroa_idx.i.i, align 8, !noalias !198536 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !198536 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !198536
  %i.wz = trunc nuw i64 %.sroa.026.0.i.i to i1
  br i1 %i.wz, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.not.i.i = icmp eq ptr %i.wx, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.928.i.i)
  br i1 %.not.i.i, label %bb.hg, label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.727.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.928.i.i)
  %.not44.i.i = icmp eq ptr %i.wx, null
  br i1 %.not44.i.i, label %.thread38.i.i, label %bb.hc

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !199228
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.727.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h915400bf958b46e5E.exit.i.i.i", label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !199233, !noalias !199236
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.727.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !199233, !noalias !199236
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !199233, !noalias !199236
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !199233, !noalias !199236
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.727.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !199233, !noalias !199236
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !199233, !noalias !199236
  br label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h915400bf958b46e5E.exit.i.i.i"

"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h915400bf958b46e5E.exit.i.i.i": ; preds = %bb.ha, %bb.gz
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.ha ], [ 0, %bb.gz ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.ha ], [ 0, %bb.gz ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !199233, !noalias !199236
  %i.xa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.xa, align 8, !alias.scope !199233, !noalias !199236
  %i.xb = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.xb, align 8, !alias.scope !199233, !noalias !199236
  call fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$GT$$GT$17h02bde9ec062493c4E"(ptr noalias noundef align 8 dereferenceable(72) %i.b), !noalias !198537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !199228
  br label %.thread38.i.i

bb.hb:                                            ; preds = %bb.gv
  %i.xc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !198537
  unreachable

bb.hc:                                            ; preds = %bb.gy
  call void @llvm.experimental.noalias.scope.decl(metadata !199238)
  call void @llvm.experimental.noalias.scope.decl(metadata !199241)
  %i.xd = load i64, ptr %i.wx, align 8, !range !3586, !alias.scope !199244, !noalias !199245, !noundef !14
  switch i64 %i.xd, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.hd
    i64 1, label %bb.he
  ]

bb.hd:                                            ; preds = %bb.hc
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.xe, align 8, !alias.scope !199244, !noalias !199245, !noundef !14 ; 2 uses
  %i.xf = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.xf, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.hd
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.xg, align 8, !alias.scope !199244, !noalias !199245, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !199248
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.he:                                            ; preds = %bb.hc
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.xh)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.hf, !noalias !199245

bb.hf:                                            ; preds = %bb.he
  %i.xi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wx, i64 noundef 40, i64 noundef 8) #79, !noalias !199245
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.he, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.hd, %bb.hc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wx, i64 noundef 40, i64 noundef 8) #79, !noalias !199245
  br label %.thread38.i.i

.thread38.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h915400bf958b46e5E.exit.i.i.i", %bb.gy, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.wx, %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h915400bf958b46e5E.exit.i.i.i" ], [ %i.bk, %bb.e ], [ %.sroa.727.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" ], [ %.sroa.727.0.i.i, %bb.gy ]
  %i.xj = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !198537
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.xj, ptr %i.xk, align 8, !alias.scope !198537, !noalias !198538
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hd33d962838f8aac2E.exit"

bb.hg:                                            ; preds = %bb.gx
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.727.0.i.i, ptr %i.xl, align 8, !alias.scope !198537, !noalias !198538
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.215.0..sroa_idx.i.i, align 8, !alias.scope !198537, !noalias !198538
  %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.11.0.copyload.i.i, ptr %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !198537, !noalias !198538
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hd33d962838f8aac2E.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hd33d962838f8aac2E.exit": ; preds = %.loopexit.i.i, %bb.gs, %.thread38.i.i, %bb.hg
  %storemerge.sink.i.i = phi i64 [ 1, %bb.gs ], [ 1, %.loopexit.i.i ], [ 0, %bb.hg ], [ 1, %.thread38.i.i ]
  store i64 %storemerge.sink.i.i, ptr %0, align 8, !alias.scope !198537, !noalias !198538
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h29fd5397da221eb6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.18.i.i12.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 15 uses
  %i.ab = alloca [16 x i8], align 8               ; 11 uses
  %i.ac = alloca [32 x i8], align 8               ; 14 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 8 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 8 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.23.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [40 x i8], align 8               ; 8 uses
  %i.ao = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.11.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.18.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 11 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [40 x i8], align 8               ; 10 uses
  %.sroa.24.i.i = alloca [24 x i8], align 8       ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199257)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199259)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !199262, !noalias !199265, !noundef !14 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !199268, !noalias !199269 ; 2 uses
  %i.bk = icmp ult i64 %.promoted.i.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i.i, label %.loopexit37.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !199262, !noalias !199265, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.bn = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.bq, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199270)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !199271, !noundef !14
  switch i8 %i.bp, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !12229

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bq = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bq, ptr %i.bh, align 8, !alias.scope !199272, !noalias !199269
  %exitcond.not.i.i.i = icmp eq i64 %i.bq, %i.bj
  br i1 %exitcond.not.i.i.i, label %.loopexit37.i.i, label %bb.b

.loopexit37.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !199275
  store i64 5, ptr %i.bb, align 8, !noalias !199275
  %i.br = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bb), !noalias !199276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !199275
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !199276, !noalias !199277
  store i64 3, ptr %0, align 8, !alias.scope !199276, !noalias !199277
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h902ca1ae7967aea0E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !199275
  store i64 10, ptr %i.bc, align 8, !noalias !199275
  %i.bt = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bc), !noalias !199276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !199275
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !alias.scope !199276, !noalias !199277
  store i64 3, ptr %0, align 8, !alias.scope !199276, !noalias !199277
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h902ca1ae7967aea0E.exit"

bb.e:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 11 uses
  %i.bw = load i8, ptr %i.bv, align 8, !range !1313, !alias.scope !199277, !noalias !199276, !noundef !14
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.z, label %bb.y

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199301)
  %2 = icmp ult i64 %i.bn, %i.bj
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.by = phi i64 [ %i.cb, %bb.g ], [ %i.bn, %bb.f ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !199304, !noundef !14
  switch i8 %i.ca, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !3649

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cb = add i64 %i.by, 1                        ; 3 uses
  store i64 %i.cb, ptr %i.bh, align 8, !alias.scope !199315, !noalias !199318
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cb, %i.bj
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !199319
  store i64 5, ptr %i.ba, align 8, !noalias !199319
  %i.cc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ba), !noalias !199320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !199319
  br label %bb.u

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cd = add i64 %i.by, 1
  store i64 %i.cd, ptr %i.bh, align 8, !alias.scope !199321, !noalias !199320
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ce, align 8, !alias.scope !199324, !noalias !199320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !199319
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !199320
  %i.cf = load i64, ptr %i.az, align 8, !range !802, !noalias !199319, !noundef !14 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !199319 ; 14 uses
  br i1 %i.cg, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6215), !noalias !199320
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !199319
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !199319 ; 4 uses
  %i.ck = trunc nuw i64 %i.cf to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  br i1 %i.ck, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h52e6fbdb653a4b40E.exit.i.i.i.i.i.i.i.i.i" [
    i64 21, label %bb.m
    i64 7, label %bb.n
    i64 8, label %bb.o
  ], !prof !70497

bb.m:                                             ; preds = %bb.l
  %i.cl = load i128, ptr %i.ci, align 1
  %i.cm = xor i128 %i.cl, 129482667873886227231810221880279392631
  %i.cn = getelementptr i8, ptr %i.ci, i64 5
  %i.co = load i128, ptr %i.cn, align 1
  %i.cp = xor i128 %i.co, 142826483770156853849331833961464620910
  %i.cq = or i128 %i.cm, %i.cp
  %i.cr = icmp ne i128 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.v, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h52e6fbdb653a4b40E.exit.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.ci, align 1
  %i.cv = xor i32 %i.cu, 1869049455
  %i.cw = getelementptr i8, ptr %i.ci, i64 3
  %i.cx = load i32, ptr %i.cw, align 1
  %i.cy = xor i32 %i.cx, 1735289199
  %i.cz = or i32 %i.cv, %i.cy
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.w, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h52e6fbdb653a4b40E.exit.i.i.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.l
  %i.dd = load i64, ptr %i.ci, align 1
  %i.de = icmp ne i64 %i.dd, 7234303221339941222
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.x, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h52e6fbdb653a4b40E.exit.i.i.i.i.i.i.i.i.i", !prof !15

"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h52e6fbdb653a4b40E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.dh = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ci, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1420, i64 noundef 3), !noalias !199325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !199319
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5981a159f635698eE.exit.i.i.i.i.i.i.i.i.i [
    i64 21, label %bb.q
    i64 7, label %bb.r
    i64 8, label %bb.s
  ], !prof !70497

bb.q:                                             ; preds = %bb.p
  %i.di = load i128, ptr %i.ci, align 1
  %i.dj = xor i128 %i.di, 129482667873886227231810221880279392631
  %i.dk = getelementptr i8, ptr %i.ci, i64 5
  %i.dl = load i128, ptr %i.dk, align 1
  %i.dm = xor i128 %i.dl, 142826483770156853849331833961464620910
  %i.dn = or i128 %i.dj, %i.dm
  %i.do = icmp ne i128 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.v, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5981a159f635698eE.exit.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.dr = load i32, ptr %i.ci, align 1
  %i.ds = xor i32 %i.dr, 1869049455
  %i.dt = getelementptr i8, ptr %i.ci, i64 3
  %i.du = load i32, ptr %i.dt, align 1
  %i.dv = xor i32 %i.du, 1735289199
  %i.dw = or i32 %i.ds, %i.dv
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.w, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5981a159f635698eE.exit.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.p
  %i.ea = load i64, ptr %i.ci, align 1
  %i.eb = icmp ne i64 %i.ea, 7234303221339941222
  %i.ec = zext i1 %i.eb to i32
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.x, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5981a159f635698eE.exit.i.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17h5981a159f635698eE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.ee = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ci, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1420, i64 noundef 3), !noalias !199328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !199319
  br label %bb.t

bb.t:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5981a159f635698eE.exit.i.i.i.i.i.i.i.i.i, %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h52e6fbdb653a4b40E.exit.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1817.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h52e6fbdb653a4b40E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.ee, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5981a159f635698eE.exit.i.i.i.i.i.i.i.i.i ], [ %i.cj, %bb.i ]
  %i.ef = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1817.0.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !199320
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.67.0.ph.i.i.i = phi ptr [ %i.ef, %bb.t ], [ %i.cc, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ci, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.ph.i.i.i) ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.67.0.ph.i.i.i, ptr %i.eg, align 8, !alias.scope !199333, !noalias !199334
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h73355cddb78d214dE.exit.i.i"

bb.v:                                             ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !199319
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h73355cddb78d214dE.exit.i.i"

bb.w:                                             ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !199319
  call void @llvm.experimental.noalias.scope.decl(metadata !199335)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !199338
  store i8 13, ptr %i.ay, align 8, !noalias !199338
  %i.eh = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ay, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !199339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !199338
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !alias.scope !199339, !noalias !199334
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h73355cddb78d214dE.exit.i.i"

bb.x:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !199319
  call void @llvm.experimental.noalias.scope.decl(metadata !199340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !199343
  store i8 13, ptr %i.ax, align 8, !noalias !199343
  %i.ej = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ax, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !199344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !199343
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ej, ptr %i.ek, align 8, !alias.scope !199344, !noalias !199334
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h73355cddb78d214dE.exit.i.i"

"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h73355cddb78d214dE.exit.i.i": ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.sink.i.i.i = phi i64 [ 3, %bb.w ], [ 3, %bb.x ], [ 0, %bb.v ], [ 3, %bb.u ]
  store i64 %.sink.i.i.i, ptr %0, align 8, !alias.scope !199333, !noalias !199334
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h902ca1ae7967aea0E.exit"

bb.y:                                             ; preds = %bb.e
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !199277, !noalias !199276, !noundef !14
  %i.en = add i8 %i.em, -1                        ; 2 uses
  store i8 %i.en, ptr %i.el, align 1, !alias.scope !199277, !noalias !199276
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.ii, label %bb.z, !prof !121

bb.z:                                             ; preds = %bb.y, %bb.e
  %i.ep = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.bh, align 8, !alias.scope !199345, !noalias !199276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199357)
  %i.eq = icmp ult i64 %i.ep, %i.bj
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.z, %bb.aa
  %i.er = phi i64 [ %i.eu, %bb.aa ], [ %i.ep, %bb.z ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !noalias !199360, !noundef !14
  switch i8 %i.et, label %bb.ab [
    i8 32, label %bb.aa
    i8 10, label %bb.aa
    i8 9, label %bb.aa
    i8 13, label %bb.aa
    i8 34, label %bb.ac
    i8 125, label %bb.am
  ], !prof !12326

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.eu = add i64 %i.er, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.bh, align 8, !alias.scope !199368, !noalias !199371
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.eu, %i.bj
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_6
begin_hunk_7_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h29fd5397da221eb6E":bb.a

bb.ig:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i.i12.i.i.i, i64 24, i1 false), !noalias !199853
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.sroa.15.1.i.i = phi ptr [ %i.aam, %bb.if ], [ %.sroa.12.2.i.i22.i.i.i, %bb.ig ]
  %.sroa.02.1.i.i = phi i64 [ 3, %bb.if ], [ %.sroa.09.2.i.i23.i.i.i, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i12.i.i.i)
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7195c6a42fb7a18eE.exit.i.i"

"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7195c6a42fb7a18eE.exit.i.i": ; preds = %bb.ih, %bb.fq, %.loopexit.i.i14.i.i.i, %bb.ez, %bb.bo, %.loopexit.i.i8.i.i.i, %bb.as, %bb.ar, %.loopexit.i.i.i.i.i.i, %bb.an, %bb.am, %bb.ab, %.loopexit.i.i.i.i.i
  %.sroa.15.2.i.i = phi ptr [ %i.gy, %bb.an ], [ %.sroa.15.1.i.i, %bb.ih ], [ %.sink.i.i46.i.i.i, %bb.fq ], [ %i.sq, %.loopexit.i.i14.i.i.i ], [ %i.hp, %.loopexit.i.i8.i.i.i ], [ %.sroa.15.0.i.i, %bb.ez ], [ %.sink.i.i.i.i.i, %bb.bo ], [ %i.ev, %.loopexit.i.i.i.i.i ], [ %i.ew, %bb.ab ], [ %i.hh, %bb.ar ], [ %i.hg, %.loopexit.i.i.i.i.i.i ], [ %i.gw, %bb.am ], [ %i.hj, %bb.as ] ; 4 uses
  %.sroa.02.2.i.i = phi i64 [ 3, %bb.an ], [ %.sroa.02.1.i.i, %bb.ih ], [ 3, %bb.fq ], [ 3, %.loopexit.i.i14.i.i.i ], [ 3, %.loopexit.i.i8.i.i.i ], [ %.sroa.02.0.i.i, %bb.ez ], [ 3, %bb.bo ], [ 3, %.loopexit.i.i.i.i.i ], [ 3, %bb.ab ], [ 3, %bb.ar ], [ 3, %.loopexit.i.i.i.i.i.i ], [ 3, %bb.am ], [ 3, %bb.as ] ; 4 uses
  %i.aan = load i8, ptr %i.bv, align 8, !range !1313, !alias.scope !199277, !noalias !199276, !noundef !14
  %i.aao = trunc nuw i8 %i.aan to i1
  br i1 %i.aao, label %bb.ik, label %bb.ij

"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7195c6a42fb7a18eE.exit.thread.i.i": ; preds = %bb.as
  %i.aap = load i8, ptr %i.bv, align 8, !range !1313, !alias.scope !199277, !noalias !199276, !noundef !14
  %i.aaq = trunc nuw i8 %i.aap to i1
  br i1 %i.aaq, label %.sink.split.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7195c6a42fb7a18eE.exit.thread.i.i"
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.aas = load i8, ptr %i.aar, align 1, !alias.scope !199277, !noalias !199276, !noundef !14
  %i.aat = add i8 %i.aas, 1
  store i8 %i.aat, ptr %i.aar, align 1, !alias.scope !199277, !noalias !199276
  br label %.sink.split.i.i

bb.ii:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !199275
  store i64 24, ptr %i.bg, align 8, !noalias !199275
  %i.aau = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bg), !noalias !199276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !199275
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aau, ptr %i.aav, align 8, !alias.scope !199276, !noalias !199277
  store i64 3, ptr %0, align 8, !alias.scope !199276, !noalias !199277
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h902ca1ae7967aea0E.exit"

bb.ij:                                            ; preds = %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7195c6a42fb7a18eE.exit.i.i"
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.aax = load i8, ptr %i.aaw, align 1, !alias.scope !199277, !noalias !199276, !noundef !14
  %i.aay = add i8 %i.aax, 1
  store i8 %i.aay, ptr %i.aaw, align 1, !alias.scope !199277, !noalias !199276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !199275
  %i.aaz = icmp eq i64 %.sroa.02.2.i.i, 3
  br i1 %i.aaz, label %bb.il, label %bb.im

bb.ik:                                            ; preds = %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7195c6a42fb7a18eE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !199275
  %i.aba = icmp eq i64 %.sroa.02.2.i.i, 3
  br i1 %i.aba, label %bb.ip, label %bb.im

bb.il:                                            ; preds = %bb.ij
  store i64 3, ptr %0, align 8, !alias.scope !199276, !noalias !199277
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.15.2.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !199276, !noalias !199277
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i.i, i64 24, i1 false), !noalias !199277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !199275
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h902ca1ae7967aea0E.exit"

.sink.split.i.i:                                  ; preds = %.thread.i.i, %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7195c6a42fb7a18eE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !199275
  br label %bb.im

bb.im:                                            ; preds = %.sink.split.i.i, %bb.ik, %bb.ij
  %.sroa.02.225.i.i = phi i64 [ %.sroa.02.2.i.i, %bb.ik ], [ %.sroa.02.2.i.i, %bb.ij ], [ 0, %.sink.split.i.i ] ; 3 uses
  %.sroa.15.222.i.i = phi ptr [ %.sroa.15.2.i.i, %bb.ik ], [ %.sroa.15.2.i.i, %bb.ij ], [ undef, %.sink.split.i.i ]
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i.i, i64 24, i1 false), !noalias !199275
  store i64 %.sroa.02.225.i.i, ptr %i.bf, align 8, !noalias !199275
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  store ptr %.sroa.15.222.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !199275
  call void @llvm.experimental.noalias.scope.decl(metadata !199854)
  %i.abb = load i64, ptr %i.bi, align 8, !alias.scope !199857, !noalias !199860, !noundef !14 ; 2 uses
  %.promoted.i24.i.i = load i64, ptr %i.bh, align 8, !alias.scope !199863, !noalias !199864 ; 2 uses
  %i.abc = icmp ult i64 %.promoted.i24.i.i, %i.abb
  br i1 %i.abc, label %.lr.ph.i29.i.i, label %.loopexit.i.i

.lr.ph.i29.i.i:                                   ; preds = %bb.im
  %i.abd = load ptr, ptr %i.bl, align 8, !alias.scope !199857, !noalias !199860, !nonnull !14, !align !584, !noundef !14
  br label %bb.in

bb.in:                                            ; preds = %bb.io, %.lr.ph.i29.i.i
  %i.abe = phi i64 [ %.promoted.i24.i.i, %.lr.ph.i29.i.i ], [ %i.abh, %bb.io ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199865)
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !noalias !199866, !noundef !14
  switch i8 %i.abg, label %bb.iv [
    i8 32, label %bb.io
    i8 10, label %bb.io
    i8 9, label %bb.io
    i8 13, label %bb.io
    i8 125, label %bb.iw
  ], !prof !3649

bb.io:                                            ; preds = %bb.in, %bb.in, %bb.in, %bb.in
  %i.abh = add i64 %i.abe, 1                      ; 3 uses
  store i64 %i.abh, ptr %i.bh, align 8, !alias.scope !199867, !noalias !199864
  %exitcond.not.i30.i.i = icmp eq i64 %i.abh, %i.abb
  br i1 %exitcond.not.i30.i.i, label %.loopexit.i.i, label %bb.in

bb.ip:                                            ; preds = %bb.ik
  store i64 3, ptr %0, align 8, !alias.scope !199276, !noalias !199277
  %.sroa.15.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.15.2.i.i, ptr %.sroa.15.0..sroa_idx8.i.i, align 8, !alias.scope !199276, !noalias !199277
  %.sroa.24.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa_idx11.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i.i, i64 24, i1 false), !noalias !199277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !199275
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h902ca1ae7967aea0E.exit"

.loopexit.i.i:                                    ; preds = %bb.io, %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !199275
  store i64 3, ptr %i.bd, align 8, !noalias !199275
  %i.abi = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bd)
          to label %bb.is unwind label %bb.iq, !noalias !199276

bb.iq:                                            ; preds = %bb.iv, %.loopexit.i.i
  %i.abj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abk = icmp eq i64 %.sroa.02.225.i.i, 1
  br i1 %i.abk, label %bb.ir, label %common.resume.i.i

bb.ir:                                            ; preds = %bb.iq
  invoke void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17ha3405243056ffe21E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i)
          to label %common.resume.i.i unwind label %bb.iy, !noalias !199276

bb.is:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !199275
  br label %bb.it

bb.it:                                            ; preds = %bb.ix, %bb.is
  %.sink.i.i = phi ptr [ %i.abn, %bb.ix ], [ %i.abi, %bb.is ]
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.abl, align 8, !alias.scope !199276, !noalias !199277
  store i64 3, ptr %0, align 8, !alias.scope !199276, !noalias !199277
  %i.abm = icmp eq i64 %.sroa.02.225.i.i, 1
  br i1 %i.abm, label %bb.iu, label %"_ZN4core3ptr67drop_in_place$LT$meilisearch_types..tasks..network..ImportState$GT$17h3468036a3024475fE.exit35.i.i"

bb.iu:                                            ; preds = %bb.it
  call void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17ha3405243056ffe21E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i), !noalias !199276
  br label %"_ZN4core3ptr67drop_in_place$LT$meilisearch_types..tasks..network..ImportState$GT$17h3468036a3024475fE.exit35.i.i"

bb.iv:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !199275
  store i64 10, ptr %i.be, align 8, !noalias !199275
  %i.abn = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.be)
          to label %bb.ix unwind label %bb.iq, !noalias !199276

bb.iw:                                            ; preds = %bb.in
  %i.abo = add i64 %i.abe, 1
  store i64 %i.abo, ptr %i.bh, align 8, !alias.scope !199870, !noalias !199276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false), !noalias !199277
  br label %"_ZN4core3ptr67drop_in_place$LT$meilisearch_types..tasks..network..ImportState$GT$17h3468036a3024475fE.exit35.i.i"

"_ZN4core3ptr67drop_in_place$LT$meilisearch_types..tasks..network..ImportState$GT$17h3468036a3024475fE.exit35.i.i": ; preds = %bb.iw, %bb.iu, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !199275
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h902ca1ae7967aea0E.exit"

bb.ix:                                            ; preds = %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !199275
  br label %bb.it

bb.iy:                                            ; preds = %bb.ir
  %i.abp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !199276
  unreachable

"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h902ca1ae7967aea0E.exit": ; preds = %.loopexit37.i.i, %bb.d, %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h73355cddb78d214dE.exit.i.i", %bb.ii, %bb.il, %bb.ip, %"_ZN4core3ptr67drop_in_place$LT$meilisearch_types..tasks..network..ImportState$GT$17h3468036a3024475fE.exit35.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2ad42b18a70c8f13E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199883)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !199886, !noalias !199889, !noundef !14 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !199892, !noalias !199893 ; 2 uses
  %i.r = icmp ult i64 %.promoted.i.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %.loopexit20.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !199886, !noalias !199889, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199894)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !199895, !noundef !14
  switch i8 %i.w, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !12229

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.x = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !199896, !noalias !199893
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %i.q
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i, label %bb.b

.loopexit20.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !199899
  store i64 5, ptr %i.j, align 8, !noalias !199899
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !199900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !199899
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !199900, !noalias !199901
  store i8 1, ptr %0, align 8, !alias.scope !199900, !noalias !199901
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17hbd7316b7979fd43fE.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !199899
  store i64 10, ptr %i.k, align 8, !noalias !199899
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !199900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !199899
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !199900, !noalias !199901
  store i8 1, ptr %0, align 8, !alias.scope !199900, !noalias !199901
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17hbd7316b7979fd43fE.exit"

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !1313, !alias.scope !199901, !noalias !199900, !noundef !14
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.w, label %bb.v

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199925)
  %2 = icmp ult i64 %i.u, %i.q
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.af = phi i64 [ %i.ai, %bb.g ], [ %i.u, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !199928, !noundef !14
  switch i8 %i.ah, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !3649

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ai = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.o, align 8, !alias.scope !199939, !noalias !199942
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !199943
  store i64 5, ptr %i.i, align 8, !noalias !199943
  %i.aj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !199944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !199943
  br label %bb.s

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ak = add i64 %i.af, 1
  store i64 %i.ak, ptr %i.o, align 8, !alias.scope !199945, !noalias !199944
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.al, align 8, !alias.scope !199948, !noalias !199944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !199943
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !199944
  %i.am = load i64, ptr %i.h, align 8, !range !802, !noalias !199943, !noundef !14 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !199943 ; 10 uses
  br i1 %i.an, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6217), !noalias !199944
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !199943
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !199943 ; 4 uses
  %i.ar = trunc nuw i64 %i.am to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  br i1 %i.ar, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65597af328108c8dE.exit.i.i.i.i.i.i.i.i.i" [
    i64 16, label %bb.m
    i64 15, label %bb.n
  ], !prof !5994

bb.m:                                             ; preds = %bb.l
  %i.as = load i128, ptr %i.ap, align 1
  %i.at = icmp ne i128 %i.as, 153465765051831960971512455670396904786
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.u, label %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65597af328108c8dE.exit.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.aw = load i64, ptr %i.ap, align 1
  %i.ax = xor i64 %i.aw, 8017644787150909525
  %i.ay = getelementptr i8, ptr %i.ap, i64 7
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = xor i64 %i.az, 8319395793567310703
  %i.bb = or i64 %i.ax, %i.ba
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.t, label %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65597af328108c8dE.exit.i.i.i.i.i.i.i.i.i", !prof !15

"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65597af328108c8dE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.l
  %i.bf = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1862, i64 noundef 2), !noalias !199949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !199943
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h60e403ba9f2ae1bdE.exit.i.i.i.i.i.i.i.i.i [
    i64 16, label %bb.p
    i64 15, label %bb.q
  ], !prof !5994

bb.p:                                             ; preds = %bb.o
  %i.bg = load i128, ptr %i.ap, align 1
  %i.bh = icmp ne i128 %i.bg, 153465765051831960971512455670396904786
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.u, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h60e403ba9f2ae1bdE.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bk = load i64, ptr %i.ap, align 1
  %i.bl = xor i64 %i.bk, 8017644787150909525
  %i.bm = getelementptr i8, ptr %i.ap, i64 7
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = xor i64 %i.bn, 8319395793567310703
  %i.bp = or i64 %i.bl, %i.bo
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.t, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h60e403ba9f2ae1bdE.exit.i.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17h60e403ba9f2ae1bdE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.bt = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1862, i64 noundef 2), !noalias !199952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !199943
  br label %bb.r

bb.r:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h60e403ba9f2ae1bdE.exit.i.i.i.i.i.i.i.i.i, %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65597af328108c8dE.exit.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65597af328108c8dE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.bt, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h60e403ba9f2ae1bdE.exit.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.i ]
  %i.bu = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !199944
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i = phi ptr [ %i.bu, %bb.r ], [ %i.aj, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.69.0.ph.i.i.i, ptr %i.bv, align 8, !alias.scope !199957, !noalias !199958
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hbcb81fab76390f4cE.exit.i.i"

bb.t:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !199943
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bw, align 1, !alias.scope !199957, !noalias !199958
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hbcb81fab76390f4cE.exit.i.i"

bb.u:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !199943
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.bx, align 1, !alias.scope !199957, !noalias !199958
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hbcb81fab76390f4cE.exit.i.i"

"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hbcb81fab76390f4cE.exit.i.i": ; preds = %bb.u, %bb.t, %bb.s
  %storemerge.i.i.i = phi i8 [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ]
  store i8 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !199957, !noalias !199958
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17hbd7316b7979fd43fE.exit"

bb.v:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !199901, !noalias !199900, !noundef !14
  %i.ca = add i8 %i.bz, -1                        ; 2 uses
  store i8 %i.ca, ptr %i.by, align 1, !alias.scope !199901, !noalias !199900
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.ar, label %bb.w, !prof !121

bb.w:                                             ; preds = %bb.v, %bb.e
  %i.cc = add i64 %i.u, 1                         ; 3 uses
  store i64 %i.cc, ptr %i.o, align 8, !alias.scope !199959, !noalias !199900
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199971)
  %i.cd = icmp ult i64 %i.cc, %i.q
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %bb.x
  %i.ce = phi i64 [ %i.ch, %bb.x ], [ %i.cc, %bb.w ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !199974, !noundef !14
  switch i8 %i.cg, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.ah
  ], !prof !12326

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ch = add i64 %i.ce, 1                        ; 3 uses
  store i64 %i.ch, ptr %i.o, align 8, !alias.scope !199982, !noalias !199985
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ch, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !199986
  store i64 3, ptr %i.e, align 8, !noalias !199986
  %i.ci = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !199987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !199986
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7db96e1e1055f6daE.exit.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !199986
  store i64 17, ptr %i.f, align 8, !noalias !199986
  %i.cj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !199987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !199986
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7db96e1e1055f6daE.exit.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199997)
  %i.ck = add i64 %i.ce, 1
  store i64 %i.ck, ptr %i.o, align 8, !alias.scope !200000, !noalias !200003
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cl, align 8, !alias.scope !200008, !noalias !200003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !200009
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !200003
  %i.cm = load i64, ptr %i.d, align 8, !range !802, !noalias !200009, !noundef !14 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !200009 ; 9 uses
  br i1 %i.cn, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i, align 8, !noalias !200009 ; 3 uses
  %i.cq = trunc nuw i64 %i.cm to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  br i1 %i.cq, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i, label %.sink.split.i.i.i.i.i [
end_hunk_7
begin_hunk_8_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2b2ad1a9276640e2E":bb.a

bb.lw:                                            ; preds = %bb.lv
  %.sroa.225.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.225.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.225.0..sroa_idx.i.i.i.i.i, align 8, !noalias !200105
  %.sroa.326.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.18.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.326.0..sroa_idx.i.i.i.i.i, i64 536, i1 false), !noalias !200105
  br label %.thread15.i.i.i.i.i

bb.lx:                                            ; preds = %bb.lu
  %i.aau = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.aav = load ptr, ptr %i.aau, align 8, !noalias !200105, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq ptr %i.aap, null
  br i1 %.not22.i.i.i.i.i, label %.thread15.i.i.i.i.i, label %bb.lz

bb.ly:                                            ; preds = %bb.lv
  call fastcc void @"_ZN4core3ptr66drop_in_place$LT$milli..vector..settings..SubEmbeddingSettings$GT$17h45ae03dac352458eE"(ptr noalias noundef align 8 dereferenceable(552) %i.cz), !noalias !200106
  br label %.thread15.i.i.i.i.i

.thread15.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit77.i.i.i.i.i", %bb.ly, %bb.lx, %bb.lw
  %.sroa.09.321.i.i.i.i.i = phi i64 [ 3, %bb.lx ], [ 3, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit77.i.i.i.i.i" ], [ %i.aas, %bb.lw ], [ 3, %bb.ly ]
  %.sroa.12.320.i.i.i.i.i = phi ptr [ %i.aav, %bb.lx ], [ %i.aav, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit77.i.i.i.i.i" ], [ %.sroa.225.0.copyload.i.i.i.i.i, %bb.lw ], [ %i.aap, %bb.ly ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !200105
  br label %bb.em

bb.lz:                                            ; preds = %bb.lx
  call void @llvm.experimental.noalias.scope.decl(metadata !201061)
  call void @llvm.experimental.noalias.scope.decl(metadata !201064)
  %i.aaw = load i64, ptr %i.aap, align 8, !range !3586, !alias.scope !201067, !noalias !201068, !noundef !14
  switch i64 %i.aaw, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit77.i.i.i.i.i" [
    i64 0, label %bb.ma
    i64 1, label %bb.mb
  ]

bb.ma:                                            ; preds = %bb.lz
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %.val1.i.i.i.i74.i.i.i.i.i = load i64, ptr %i.aax, align 8, !alias.scope !201067, !noalias !201068, !noundef !14 ; 2 uses
  %i.aay = icmp eq i64 %.val1.i.i.i.i74.i.i.i.i.i, 0
  br i1 %i.aay, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit77.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i75.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i75.i.i.i.i.i": ; preds = %bb.ma
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %.val.i.i.i.i76.i.i.i.i.i = load ptr, ptr %i.aaz, align 8, !alias.scope !201067, !noalias !201068, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i76.i.i.i.i.i, i64 noundef %.val1.i.i.i.i74.i.i.i.i.i, i64 noundef 1) #79, !noalias !201071
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit77.i.i.i.i.i"

bb.mb:                                            ; preds = %bb.lz
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aba)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit77.i.i.i.i.i" unwind label %bb.mc, !noalias !201068

bb.mc:                                            ; preds = %bb.mb
  %i.abb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aap, i64 noundef 40, i64 noundef 8) #79, !noalias !201068
  br label %common.resume.i.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit77.i.i.i.i.i": ; preds = %bb.mb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i75.i.i.i.i.i", %bb.ma, %bb.lz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aap, i64 noundef 40, i64 noundef 8) #79, !noalias !201068
  br label %.thread15.i.i.i.i.i

"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17hd336b2bbdd8f40d1E.exit.thread6.i.i.i": ; preds = %bb.em, %bb.f
  %.sroa.12.5.i.i.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i.i, %bb.em ], [ %i.dx, %bb.f ]
  %i.abc = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !200106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  br label %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17hd336b2bbdd8f40d1E.exit.thread.i.i.i"

"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17hd336b2bbdd8f40d1E.exit.thread.i.i.i": ; preds = %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17hd336b2bbdd8f40d1E.exit.thread6.i.i.i", %bb.dy, %.loopexit.i.i.i.i.i
  %.sroa.8.15.i.i.i = phi ptr [ %i.abc, %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17hd336b2bbdd8f40d1E.exit.thread6.i.i.i" ], [ %i.dw, %.loopexit.i.i.i.i.i ], [ %.sink.i.i.i.i.i, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5372.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5366.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5352.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5346.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5340.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5334.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5328.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6197.sroa.5.i.i.i.i.i.i)
  br label %bb.mk

bb.md:                                            ; preds = %bb.b
  %i.abd = add i64 %i.dl, 1                       ; 4 uses
  store i64 %i.abd, ptr %i.df, align 8, !alias.scope !201072, !noalias !201075
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201076)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.abd, i64 %i.dh) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201079)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.abd, %i.dh
  br i1 %exitcond.not.i9.not.i.i, label %bb.me, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.me:                                            ; preds = %bb.md
  %i.abe = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !noalias !201082, !noundef !14
  %i.abg = add i64 %i.dl, 2                       ; 3 uses
  store i64 %i.abg, ptr %i.df, align 8, !alias.scope !201085, !noalias !201086
  %.not.i.i.i = icmp eq i8 %i.abf, 117
  br i1 %.not.i.i.i, label %bb.mf, label %bb.mj, !prof !12002

bb.mf:                                            ; preds = %bb.me
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201087)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.abg, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.abg
  %i.abi = load i8, ptr %i.abh, align 1, !noalias !201089, !noundef !14
  %i.abj = add i64 %i.dl, 3                       ; 3 uses
  store i64 %i.abj, ptr %i.df, align 8, !alias.scope !201090, !noalias !201086
  %.not.i.1.i.i = icmp eq i8 %i.abi, 108
  br i1 %.not.i.1.i.i, label %bb.mh, label %bb.mj, !prof !12002

bb.mh:                                            ; preds = %bb.mg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201091)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.abj, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.abk = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1, !noalias !201093, !noundef !14
  %i.abm = add i64 %i.dl, 4
  store i64 %i.abm, ptr %i.df, align 8, !alias.scope !201094, !noalias !201086
  %.not.i.2.i.i = icmp eq i8 %i.abl, 108
  br i1 %.not.i.2.i.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h6eb16ab319575719E.exit.thread10.i", label %bb.mj, !prof !12002

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h6eb16ab319575719E.exit.thread10.i": ; preds = %bb.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %bb.mm

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.mh, %bb.mf, %bb.md
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !201095
  store i64 5, ptr %i.c, align 8, !noalias !201095
  %i.abn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !201096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !201095
  br label %bb.mk

bb.mj:                                            ; preds = %bb.mi, %bb.mg, %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !201095
  store i64 9, ptr %i.b, align 8, !noalias !201095
  %i.abo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !201096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !201095
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17hd336b2bbdd8f40d1E.exit.thread.i.i.i"
  %.sroa.7.0.ph.i = phi ptr [ %i.abo, %bb.mj ], [ %i.abn, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %.sroa.8.15.i.i.i, %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17hd336b2bbdd8f40d1E.exit.thread.i.i.i" ]
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %i.abp, align 8, !alias.scope !200053, !noalias !200056
  store i64 5, ptr %0, align 8, !alias.scope !200053, !noalias !200056
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h31d2a6a80e09421eE.exit"

bb.ml:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.5.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.18.i.i.i.i.i, i64 536, i1 false), !noalias !201097
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5372.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5366.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5352.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5346.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5340.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5334.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5328.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6197.sroa.5.i.i.i.i.i.i)
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h6eb16ab319575719E.exit.thread10.i"
  %.sroa.5.sroa.0.0.i = phi ptr [ undef, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h6eb16ab319575719E.exit.thread10.i" ], [ %.sroa.12.2.i.i.i.i.i, %bb.ml ]
  %.sroa.03.0.i = phi i64 [ 3, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h6eb16ab319575719E.exit.thread10.i" ], [ %.sroa.09.2.i.i.i.i.i, %bb.ml ]
  store i64 %.sroa.03.0.i, ptr %0, align 8, !alias.scope !200053, !noalias !200056
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !alias.scope !200053, !noalias !200056
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.5.sroa.4.i, i64 536, i1 false), !noalias !200056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h31d2a6a80e09421eE.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h31d2a6a80e09421eE.exit": ; preds = %bb.mk, %bb.mm
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2bb8757fb0471b0dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201106)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !201109, !noalias !201112, !noundef !14 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !201116, !noalias !201117 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !201109, !noalias !201112, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201118)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !201119, !noundef !14
  switch i8 %i.y, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.bb
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !201120, !noalias !201117
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201132)
  %i.aa = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.s
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !201135, !noalias !201138, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201144)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !201145, !noundef !14
  switch i8 %i.af, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !12229

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !201146, !noalias !201149
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.d

.loopexit20.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !201150
  store i64 5, ptr %i.l, align 8, !noalias !201150
  %i.ah = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !201151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !201150
  br label %bb.bi

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !201150
  store i64 10, ptr %i.m, align 8, !noalias !201150
  %i.ai = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !201151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !201150
  br label %bb.bi

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !1313, !alias.scope !201152, !noalias !201151, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.y, label %bb.x

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201174)
  %2 = icmp ult i64 %i.ad, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.am = phi i64 [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !201177, !noundef !14
  switch i8 %i.ao, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.j
  ], !prof !3649

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.q, align 8, !alias.scope !201189, !noalias !201192
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !201193
  store i64 5, ptr %i.k, align 8, !noalias !201193
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !201194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !201193
  br label %bb.u

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !201195, !noalias !201194
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !201198, !noalias !201194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !201193
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !201194
  %i.at = load i64, ptr %i.j, align 8, !range !802, !noalias !201193, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !201193 ; 12 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175), !noalias !201194
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !201193
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !201193 ; 4 uses
  %i.ay = trunc nuw i64 %i.at to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  br i1 %i.ay, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0896e9ffdebcf22dE.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i64 6, label %bb.o
    i64 11, label %bb.p
  ], !prof !5994

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr %i.aw, align 1
  %i.ba = xor i32 %i.az, 1868003682
  %i.bb = getelementptr i8, ptr %i.aw, i64 4
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = zext i16 %i.bc to i32
  %i.be = xor i32 %i.bd, 25714
  %i.bf = or i32 %i.ba, %i.be
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.w, label %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0896e9ffdebcf22dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  %i.bj = load i64, ptr %i.aw, align 1
  %i.bk = xor i64 %i.bj, 7091324932763777378
  %i.bl = getelementptr i8, ptr %i.aw, i64 3
  %i.bm = load i64, ptr %i.bl, align 1
  %i.bn = xor i64 %i.bm, 7310597160665511028
  %i.bo = or i64 %i.bk, %i.bn
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.v, label %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0896e9ffdebcf22dE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !15

"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0896e9ffdebcf22dE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n
  %i.bs = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1677, i64 noundef 2), !noalias !201199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !201193
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h2df065317b7713d1E.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 6, label %bb.r
    i64 11, label %bb.s
  ], !prof !5994

bb.r:                                             ; preds = %bb.q
  %i.bt = load i32, ptr %i.aw, align 1
  %i.bu = xor i32 %i.bt, 1868003682
  %i.bv = getelementptr i8, ptr %i.aw, i64 4
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i32
  %i.by = xor i32 %i.bx, 25714
  %i.bz = or i32 %i.bu, %i.by
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.w, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h2df065317b7713d1E.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cd = load i64, ptr %i.aw, align 1
  %i.ce = xor i64 %i.cd, 7091324932763777378
  %i.cf = getelementptr i8, ptr %i.aw, i64 3
  %i.cg = load i64, ptr %i.cf, align 1
  %i.ch = xor i64 %i.cg, 7310597160665511028
  %i.ci = or i64 %i.ce, %i.ch
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.v, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h2df065317b7713d1E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17h2df065317b7713d1E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.cm = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1677, i64 noundef 2), !noalias !201202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !201193
  br label %bb.t

bb.t:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h2df065317b7713d1E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0896e9ffdebcf22dE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bs, %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0896e9ffdebcf22dE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cm, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h2df065317b7713d1E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.k ]
  %i.cn = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !201194
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.t ], [ %i.aq, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aw, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i.i.i.i) ]
  br label %bb.bi

bb.v:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !201193
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h8293916ba6423451E.exit.i"

bb.w:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !201193
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h8293916ba6423451E.exit.i"

bb.x:                                             ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !201152, !noalias !201151, !noundef !14
  %i.cq = add i8 %i.cp, -1                        ; 2 uses
  store i8 %i.cq, ptr %i.co, align 1, !alias.scope !201152, !noalias !201151
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.at, label %bb.y, !prof !121

bb.y:                                             ; preds = %bb.x, %bb.g
  %i.cs = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.cs, ptr %i.q, align 8, !alias.scope !201207, !noalias !201151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201219)
  %i.ct = icmp ult i64 %i.cs, %i.s
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.y, %bb.z
  %i.cu = phi i64 [ %i.cx, %bb.z ], [ %i.cs, %bb.y ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !201222, !noundef !14
  switch i8 %i.cw, label %bb.aa [
    i8 32, label %bb.z
    i8 10, label %bb.z
    i8 9, label %bb.z
    i8 13, label %bb.z
    i8 34, label %bb.ab
    i8 125, label %bb.aj
  ], !prof !12326

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cx = add i64 %i.cu, 1                        ; 3 uses
  store i64 %i.cx, ptr %i.q, align 8, !alias.scope !201230, !noalias !201233
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cx, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !201234
  store i64 3, ptr %i.g, align 8, !noalias !201234
  %i.cy = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !201235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !201234
  br label %"_ZN208_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h69ac86f94141fbd1E.exit.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !201234
  store i64 17, ptr %i.h, align 8, !noalias !201234
  %i.cz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !201235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !201234
  br label %"_ZN208_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h69ac86f94141fbd1E.exit.i.i.i.i.i"

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201245)
  %i.da = add i64 %i.cu, 1
  store i64 %i.da, ptr %i.q, align 8, !alias.scope !201248, !noalias !201251
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.db, align 8, !alias.scope !201256, !noalias !201251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !201257
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !201251
  %i.dc = load i64, ptr %i.f, align 8, !range !802, !noalias !201257, !noundef !14 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !201257 ; 11 uses
  br i1 %i.dd, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i, align 8, !noalias !201257 ; 3 uses
  %i.dg = trunc nuw i64 %i.dc to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  br i1 %i.dg, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
end_hunk_8
begin_hunk_9_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h34b1e381da4fb984E":bb.a
bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.h ], [ 0, %bb.g ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3920) #80, !noalias !202275
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit.i.i.i.i": ; preds = %bb.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi i64 [ %i.an, %bb.i ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ]
  %i.ao = inttoptr i64 %.sroa.10.0.i.i.i.i.i to ptr ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !202276
  invoke void @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_decode17he366f845365a0b7dE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(323) @6017, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %.sroa.4.0.copyload.i.i, ptr noalias noundef nonnull align 1 %i.ao, i64 noundef %i.ai, i64 noundef %i.ad, i64 noundef %i.ai)
          to label %bb.l unwind label %bb.k, !noalias !202277

bb.k:                                             ; preds = %bb.n, %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit.i.i.i.i"
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ak, label %common.resume.i.i, label %common.resume.sink.split.i.i

bb.l:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit.i.i.i.i"
  %i.aq = load i64, ptr %i.e, align 8, !range !802, !noalias !202276, !noundef !14
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.011.0.copyload.i.i.i.i = load i8, ptr %i.as, align 8, !noalias !202276
  %i.at = icmp eq i8 %.sroa.011.0.copyload.i.i.i.i, 4
  br i1 %i.at, label %bb.n, label %bb.o, !prof !121

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !202276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !202276
  store ptr @3922, ptr %i.c, align 8, !noalias !202276
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.420.0..sroa_idx.i.i.i.i, align 8, !noalias !202276
  store ptr @415, ptr %i.d, align 8, !noalias !202276
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.au, align 8, !noalias !202276
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.av, align 8, !noalias !202276
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.aw, align 8, !noalias !202276
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %i.ax, align 8, !noalias !202276
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3923) #80
          to label %bb.q unwind label %bb.k, !noalias !202277

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !202276
  br i1 %i.ak, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !202278
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  unreachable

common.resume.sink.split.i.i:                     ; preds = %bb.v, %bb.k
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.bg, %bb.v ], [ %i.ap, %bb.k ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !202281
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.v, %common.resume.sink.split.i.i, %bb.k
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.bg, %bb.v ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.r:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !202282
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.z, ptr %i.ay, align 8, !noalias !202282
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.az, align 8, !noalias !202282
  store i8 5, ptr %i.f, align 8, !noalias !202282
  %i.ba = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 1 @6117, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !202282
  br label %"_ZN94_$LT$meilisearch_types..tasks..network..TaskKeysVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0b04bd07b3f2647fE.exit.i"

bb.s:                                             ; preds = %bb.l
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.5.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !202276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !202276
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.5.sroa.5.sroa.5.0.copyload.i.i.i.i, i64 %i.ai) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !202283
  invoke void @_ZN5milli10heed_codec14roaring_bitmap24cbo_roaring_bitmap_codec21CboRoaringBitmapCodec16deserialize_from17he826154b066657bcE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ao, i64 noundef %spec.select.i.i.i.i)
          to label %.noexc.i.i unwind label %bb.v, !noalias !202281

.noexc.i.i:                                       ; preds = %bb.s
  %i.bb = load i64, ptr %i.b, align 8, !range !2917, !noalias !202283, !noundef !14 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, -9223372036854775808
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !202283 ; 2 uses
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc.i.i
  %i.bf = invoke fastcc noundef nonnull align 8 ptr @"_ZN94_$LT$meilisearch_types..tasks..network..TaskKeysVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes28_$u7b$$u7b$closure$u7d$$u7d$17h308b3d4c36f0a4a6E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ao, i64 noundef %spec.select.i.i.i.i, ptr noundef nonnull %i.be)
          to label %.noexc24.i.i unwind label %bb.v, !noalias !202281

bb.u:                                             ; preds = %.noexc.i.i
  %.sroa.618.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.618.0.copyload.i.i.i = load i64, ptr %.sroa.618.0..sroa_idx.i.i.i, align 8, !noalias !202283
  br label %.noexc24.i.i

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ak, label %common.resume.i.i, label %common.resume.sink.split.i.i

.noexc24.i.i:                                     ; preds = %bb.u, %bb.t
  %.sroa.14.0.i = phi i64 [ %.sroa.618.0.copyload.i.i.i, %bb.u ], [ undef, %bb.t ] ; 2 uses
  %.sroa.517.0.copyload.sink.i.i.i = phi ptr [ %i.be, %bb.u ], [ %i.bf, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !202283
  br i1 %i.ak, label %"_ZN94_$LT$meilisearch_types..tasks..network..TaskKeysVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0b04bd07b3f2647fE.exit.i", label %bb.w

bb.w:                                             ; preds = %.noexc24.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !202287
  br label %"_ZN94_$LT$meilisearch_types..tasks..network..TaskKeysVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0b04bd07b3f2647fE.exit.i"

"_ZN94_$LT$meilisearch_types..tasks..network..TaskKeysVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0b04bd07b3f2647fE.exit.i": ; preds = %bb.w, %.noexc24.i.i, %bb.r
  %.sroa.14.1.i = phi i64 [ undef, %bb.r ], [ %.sroa.14.0.i, %.noexc24.i.i ], [ %.sroa.14.0.i, %bb.w ] ; 2 uses
  %.sroa.10.1.i = phi ptr [ %i.ba, %bb.r ], [ %.sroa.517.0.copyload.sink.i.i.i, %.noexc24.i.i ], [ %.sroa.517.0.copyload.sink.i.i.i, %bb.w ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %bb.r ], [ %i.bb, %.noexc24.i.i ], [ %i.bb, %bb.w ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !202254
  %i.bh = icmp eq i64 %.sroa.0.0.i, -9223372036854775808 ; 2 uses
  br i1 %i.ac, label %bb.x, label %bb.y

bb.x:                                             ; preds = %"_ZN94_$LT$meilisearch_types..tasks..network..TaskKeysVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0b04bd07b3f2647fE.exit.i"
  br i1 %i.bh, label %bb.z, label %bb.ab, !prof !121

bb.y:                                             ; preds = %"_ZN94_$LT$meilisearch_types..tasks..network..TaskKeysVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0b04bd07b3f2647fE.exit.i"
  br i1 %i.bh, label %bb.z, label %bb.aa, !prof !121

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.e
  %.sroa.10.0.i = phi ptr [ %.sroa.10.1.i, %bb.x ], [ %.sroa.10.1.i, %bb.y ], [ %i.aa, %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i) ]
  %i.bi = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !202255
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !alias.scope !202255, !noalias !202256
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !202255, !noalias !202256
  br label %"_ZN91_$LT$meilisearch_types..tasks..network..TaskKeys$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h5d9f6d6a3eb6d503E.exit"

bb.aa:                                            ; preds = %bb.y
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !202228, !noalias !202256
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !202228, !noalias !202256
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.1.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !alias.scope !202228, !noalias !202256
  br label %"_ZN91_$LT$meilisearch_types..tasks..network..TaskKeys$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h5d9f6d6a3eb6d503E.exit"

bb.ab:                                            ; preds = %bb.x
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !202228, !noalias !202256
  %.sroa.10.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1.i, ptr %.sroa.10.0..sroa_idx2.i, align 8, !alias.scope !202228, !noalias !202256
  %.sroa.14.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.1.i, ptr %.sroa.14.0..sroa_idx4.i, align 8, !alias.scope !202228, !noalias !202256
  br label %"_ZN91_$LT$meilisearch_types..tasks..network..TaskKeys$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h5d9f6d6a3eb6d503E.exit"

"_ZN91_$LT$meilisearch_types..tasks..network..TaskKeys$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h5d9f6d6a3eb6d503E.exit": ; preds = %.loopexit.i.i, %bb.f, %bb.z, %bb.aa, %bb.ab
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a4b4d890f8d0618E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(288) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [288 x i8], align 8              ; 8 uses
  %i.ab = alloca [288 x i8], align 8              ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202298)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !202300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202301)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !202304, !noalias !202307, !noundef !14 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !202310, !noalias !202311 ; 2 uses
  %i.ag = icmp ult i64 %.promoted.i.i.i, %i.af
  br i1 %i.ag, label %.lr.ph.i.i.i, label %.loopexit9.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !202304, !noalias !202307, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aj = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.am, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202312)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !202313, !noundef !14
  switch i8 %i.al, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !12229

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.am = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !202314, !noalias !202311
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.af
  br i1 %exitcond.not.i.i.i, label %.loopexit9.i.i, label %bb.b

.loopexit9.i.i:                                   ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !202317
  store i64 5, ptr %i.w, align 8, !noalias !202317
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w), !noalias !202318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !202317
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !202318, !noalias !202319
  store i64 -9223372036854775787, ptr %0, align 8, !alias.scope !202318, !noalias !202319
  br label %"_ZN17meilisearch_types5tasks1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$11deserialize17hc86e179e24a7fbe1E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !202317
  store i64 10, ptr %i.x, align 8, !noalias !202317
  %i.ap = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !202318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !202317
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !202318, !noalias !202319
  store i64 -9223372036854775787, ptr %0, align 8, !alias.scope !202318, !noalias !202319
  br label %"_ZN17meilisearch_types5tasks1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$11deserialize17hc86e179e24a7fbe1E.exit"

bb.e:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !1313, !alias.scope !202319, !noalias !202318, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ai, label %bb.ah

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202343)
  %2 = icmp ult i64 %i.aj, %i.af
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.au = phi i64 [ %i.ax, %bb.g ], [ %i.aj, %bb.f ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !202346, !noundef !14 ; 2 uses
  switch i8 %i.aw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ax = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ax, ptr %i.ad, align 8, !alias.scope !202357, !noalias !202360
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !202361
  %i.ay = icmp eq i8 %i.aw, 34
  br i1 %i.ay, label %bb.h, label %bb.i, !prof !15

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !202361
  store i64 5, ptr %i.v, align 8, !noalias !202361
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v), !noalias !202362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !202361
  br label %bb.m

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i"
  %i.ba = add i64 %i.au, 1
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !202363, !noalias !202362
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bb, align 8, !alias.scope !202366, !noalias !202362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !202361
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !202362
  %i.bc = load i64, ptr %i.t, align 8, !range !802, !noalias !202361, !noundef !14
  %i.bd = icmp eq i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !202361 ; 3 uses
  br i1 %i.bd, label %bb.j, label %bb.k

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i"
  %i.bg = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6225), !noalias !202362
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !202361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !202361
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !202361
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  call fastcc void @"_ZN200_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h53ebc311286b0898E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bf, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !202362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !202361
  %i.bh = load i8, ptr %i.u, align 8, !range !1313, !noalias !202361, !noundef !14
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %._crit_edge.i.i.i.i, label %bb.n, !prof !121

._crit_edge.i.i.i.i:                              ; preds = %bb.k
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !202361
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.bj = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.bg, %bb.i ]
  %i.bk = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !202362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !202361
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i = phi ptr [ %i.az, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.l ], [ %i.bf, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.121.0.ph.i.i.i.i.i, ptr %i.bl, align 8, !alias.scope !202367, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.n:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !range !86070, !noalias !202361, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !202361
  switch i8 %i.bn, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
    i8 7, label %bb.v
    i8 8, label %bb.w
    i8 9, label %bb.x
    i8 10, label %bb.y
    i8 11, label %bb.z
    i8 12, label %bb.aa
    i8 13, label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"
    i8 14, label %bb.ab
    i8 15, label %bb.ac
    i8 16, label %bb.ad
    i8 17, label %bb.af
    i8 18, label %bb.ag
    i8 19, label %bb.ae
  ]

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !202372
  store i8 13, ptr %i.s, align 8, !noalias !202372
  %i.bo = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !202372
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !alias.scope !202373, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202374)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !202377
  store i8 13, ptr %i.r, align 8, !noalias !202377
  %i.bq = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !202377
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !alias.scope !202378, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.q:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !202382
  store i8 13, ptr %i.q, align 8, !noalias !202382
  %i.bs = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !202382
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !alias.scope !202383, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.r:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202384)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !202387
  store i8 13, ptr %i.p, align 8, !noalias !202387
  %i.bu = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !202387
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !alias.scope !202388, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.s:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !202392
  store i8 13, ptr %i.o, align 8, !noalias !202392
  %i.bw = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !202392
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !202393, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.t:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202394)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !202397
  store i8 13, ptr %i.n, align 8, !noalias !202397
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !202397
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !alias.scope !202398, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.u:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !202402
  store i8 13, ptr %i.m, align 8, !noalias !202402
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !202402
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !alias.scope !202403, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.v:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !202407
  store i8 13, ptr %i.l, align 8, !noalias !202407
  %i.cc = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !202407
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !alias.scope !202408, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.w:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !202412
  store i8 13, ptr %i.k, align 8, !noalias !202412
  %i.ce = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !202412
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !alias.scope !202413, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.x:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !202417
  store i8 13, ptr %i.j, align 8, !noalias !202417
  %i.cg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !202417
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !202418, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.y:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !202422
  store i8 13, ptr %i.i, align 8, !noalias !202422
  %i.ci = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !202423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !202422
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !202423, !noalias !202368
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9a8d574509d677b9E.exit.i.i"

bb.z:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !202424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !202427
  store i8 13, ptr %i.h, align 8, !noalias !202427
end_hunk_9
begin_hunk_10_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3b18556bb1690521E":bb.a
  store i64 %i.ai, ptr %i.d, align 8, !noalias !202821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !202821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !202821
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hc05b461c180a0fd1E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef align 8 dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ag)
          to label %bb.n unwind label %bb.i, !noalias !202825

bb.m:                                             ; preds = %bb.j
  %.sroa.726.8.copyload.i.i = load ptr, ptr %i.e, align 8, !noalias !202826
  %.sroa.927.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.8..sroa_idx.i.i, i64 16, i1 false), !noalias !202826
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hdab1c1d9a2a26a82E.exit.i.i"

bb.n:                                             ; preds = %bb.l
  %i.ak = load i64, ptr %i.b, align 8, !range !4423, !alias.scope !202827, !noalias !202821, !noundef !14
  %i.al = icmp eq i64 %i.ak, -9223372036854775803
  br i1 %i.al, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hac7f4c13cf586152E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.b)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i.i.i" unwind label %bb.i, !noalias !202825

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i.i.i": ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !202821
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.ab, %bb.t, %bb.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.bh, %bb.ab ], [ %i.au, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.p:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !202825
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hdab1c1d9a2a26a82E.exit.i.i": ; preds = %bb.m, %bb.k
  %.sroa.025.0.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.m ]
  %.sroa.726.0.i.i = phi ptr [ %i.aj, %bb.k ], [ %.sroa.726.8.copyload.i.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !202821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !202815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !202815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !202815
  %i.an = load i8, ptr %i.v, align 8, !range !1313, !alias.scope !202817, !noalias !202816, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !202815
  store i64 24, ptr %i.i, align 8, !noalias !202815
  %i.ap = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !202816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !202815
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h51f4a3648abeebfaE.exit"

bb.r:                                             ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hdab1c1d9a2a26a82E.exit.i.i"
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !202817, !noalias !202816, !noundef !14
  %i.as = add i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1, !alias.scope !202817, !noalias !202816
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hdab1c1d9a2a26a82E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !202815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !202815
  store i64 %.sroa.025.0.i.i, ptr %i.g, align 8, !noalias !202815
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.726.0.i.i, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !noalias !202815
  %.sroa.927.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.i.i, i64 16, i1 false), !noalias !202815
  %i.at = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.u unwind label %bb.t, !noalias !202816 ; 10 uses

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr172drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$serde_json..error..Error$GT$$GT$17h7a4382fc2f57be82E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #81
          to label %common.resume.i.i unwind label %bb.x, !noalias !202816

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !202815
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.at, ptr %i.av, align 8, !noalias !202815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !202815
  %i.aw = load i64, ptr %i.h, align 8, !range !751, !noalias !202815, !noundef !14
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %bb.ad, label %.thread40.i.i, !prof !12002

bb.w:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !202815, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  %.not43.i.i = icmp eq ptr %i.at, null
  br i1 %.not43.i.i, label %.thread37.i.i, label %bb.y

.thread40.i.i:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h952f81855aa7b444E"(ptr noalias noundef align 8 dereferenceable(24) %i.ba), !noalias !202816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !202815
  br label %bb.ac

bb.x:                                             ; preds = %bb.t
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !202816
  unreachable

.thread37.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !202815
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !202830)
  call void @llvm.experimental.noalias.scope.decl(metadata !202833)
  %i.bc = load i64, ptr %i.at, align 8, !range !3586, !alias.scope !202836, !noalias !202837, !noundef !14
  switch i64 %i.bc, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.z
    i64 1, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !202836, !noalias !202837, !noundef !14 ; 2 uses
  %i.be = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.be, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !202836, !noalias !202837, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !202840
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.aa:                                            ; preds = %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bg)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.ab, !noalias !202837

bb.ab:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef 40, i64 noundef 8) #79, !noalias !202837
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.aa, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.z, %bb.y
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef 40, i64 noundef 8) #79, !noalias !202837
  br label %.thread37.i.i

bb.ac:                                            ; preds = %.thread37.i.i, %.thread40.i.i, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.at, %.thread40.i.i ], [ %i.y, %bb.e ], [ %i.az, %.thread37.i.i ]
  %i.bi = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !202816
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h51f4a3648abeebfaE.exit"

bb.ad:                                            ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.bj, align 8, !noalias !202815
  %.sroa.29.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.215.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx.i.i, i64 16, i1 false), !noalias !202817
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !202815
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h51f4a3648abeebfaE.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h51f4a3648abeebfaE.exit": ; preds = %.loopexit.i.i, %bb.q, %bb.ac, %bb.ad
  %.sink9.i = phi ptr [ %i.u, %.loopexit.i.i ], [ %i.ap, %bb.q ], [ %i.bi, %bb.ac ], [ %.sroa.08.0.copyload.i.i, %bb.ad ]
  %.sink.i = phi i64 [ 1, %.loopexit.i.i ], [ 1, %bb.q ], [ 1, %bb.ac ], [ 0, %bb.ad ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink9.i, ptr %i.bk, align 8, !alias.scope !202816, !noalias !202817
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !202816, !noalias !202817
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3b48841459d8e4b3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202851)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !202854, !noalias !202857, !noundef !14 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !202860, !noalias !202861 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit19.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !202854, !noalias !202857, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202862)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !202863, !noundef !14
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !12229

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !202864, !noalias !202861
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit19.i.i, label %bb.b

.loopexit19.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !202867
  store i64 5, ptr %i.l, align 8, !noalias !202867
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !202868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !202867
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !202868, !noalias !202869
  store i8 1, ptr %0, align 8, !alias.scope !202868, !noalias !202869
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !202867
  store i64 10, ptr %i.m, align 8, !noalias !202867
  %i.ac = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !202868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !202867
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !202868, !noalias !202869
  store i8 1, ptr %0, align 8, !alias.scope !202868, !noalias !202869
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit"

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !1313, !alias.scope !202869, !noalias !202868, !noundef !14
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.v, label %bb.u

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202893)
  %2 = icmp ult i64 %i.w, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.ah = phi i64 [ %i.ak, %bb.g ], [ %i.w, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !202896, !noundef !14 ; 2 uses
  switch i8 %i.aj, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.q, align 8, !alias.scope !202907, !noalias !202910
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !202911
  %i.al = icmp eq i8 %i.aj, 34
  br i1 %i.al, label %bb.h, label %bb.i, !prof !15

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !202911
  store i64 5, ptr %i.k, align 8, !noalias !202911
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !202912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !202911
  br label %bb.m

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i"
  %i.an = add i64 %i.ah, 1
  store i64 %i.an, ptr %i.q, align 8, !alias.scope !202913, !noalias !202912
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ao, align 8, !alias.scope !202916, !noalias !202912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !202911
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !202912
  %i.ap = load i64, ptr %i.i, align 8, !range !802, !noalias !202911, !noundef !14
  %i.aq = icmp eq i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !202911 ; 3 uses
  br i1 %i.aq, label %bb.j, label %bb.k

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i"
  %i.at = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6227), !noalias !202912
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !202911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !202911
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !202911
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call fastcc void @"_ZN223_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h8b87140c2af503d9E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.as, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !202912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !202911
  %i.au = load i8, ptr %i.j, align 8, !range !1313, !noalias !202911, !noundef !14
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %._crit_edge.i.i.i.i, label %bb.n, !prof !121

._crit_edge.i.i.i.i:                              ; preds = %bb.k
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !202911
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.aw = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.at, %bb.i ]
  %i.ax = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !202912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !202911
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i = phi ptr [ %i.am, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.l ], [ %i.as, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.121.0.ph.i.i.i.i.i, ptr %i.ay, align 8, !alias.scope !202917, !noalias !202918
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he66ae2a1d10add43E.exit.i.i"

bb.n:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !583, !noalias !202911, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !202911
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  switch i8 %i.ba, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.t
  ]

default.unreachable:                              ; preds = %bb.af, %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.bb, align 1, !alias.scope !202917, !noalias !202918
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he66ae2a1d10add43E.exit.i.i"

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.bb, align 1, !alias.scope !202917, !noalias !202918
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he66ae2a1d10add43E.exit.i.i"

bb.q:                                             ; preds = %bb.n
  store i8 2, ptr %i.bb, align 1, !alias.scope !202917, !noalias !202918
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he66ae2a1d10add43E.exit.i.i"

bb.r:                                             ; preds = %bb.n
  store i8 3, ptr %i.bb, align 1, !alias.scope !202917, !noalias !202918
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he66ae2a1d10add43E.exit.i.i"

bb.s:                                             ; preds = %bb.n
  store i8 4, ptr %i.bb, align 1, !alias.scope !202917, !noalias !202918
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he66ae2a1d10add43E.exit.i.i"

bb.t:                                             ; preds = %bb.n
  store i8 5, ptr %i.bb, align 1, !alias.scope !202917, !noalias !202918
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he66ae2a1d10add43E.exit.i.i"

"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he66ae2a1d10add43E.exit.i.i": ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m
  %.sink.i.i.i = phi i8 [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.m ]
  store i8 %.sink.i.i.i, ptr %0, align 8, !alias.scope !202917, !noalias !202918
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit"

bb.u:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !202869, !noalias !202868, !noundef !14
  %i.be = add i8 %i.bd, -1                        ; 2 uses
  store i8 %i.be, ptr %i.bc, align 1, !alias.scope !202869, !noalias !202868
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.as, label %bb.v, !prof !121

bb.v:                                             ; preds = %bb.u, %bb.e
  %i.bg = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !202919, !noalias !202868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202931)
  %i.bh = icmp ult i64 %i.bg, %i.s
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v, %bb.w
  %i.bi = phi i64 [ %i.bl, %bb.w ], [ %i.bg, %bb.v ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !202934, !noundef !14
  switch i8 %i.bk, label %bb.x [
    i8 32, label %bb.w
    i8 10, label %bb.w
    i8 9, label %bb.w
    i8 13, label %bb.w
    i8 34, label %bb.y
    i8 125, label %bb.z
  ], !prof !12326

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bl = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.q, align 8, !alias.scope !202942, !noalias !202945
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bl, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !202946
  store i64 3, ptr %i.f, align 8, !noalias !202946
  %i.bm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !202947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !202946
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !202946
  store i64 17, ptr %i.g, align 8, !noalias !202946
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !202947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !202946
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !202946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202957)
  %i.bo = add i64 %i.bi, 1
  store i64 %i.bo, ptr %i.q, align 8, !alias.scope !202960, !noalias !202963
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bp, align 8, !alias.scope !202968, !noalias !202963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !202969
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !202963
  %i.bq = load i64, ptr %i.d, align 8, !range !802, !noalias !202969, !noundef !14
  %i.br = icmp eq i64 %i.bq, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !202969, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.br, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.thread.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.i.i.i.i.i", !prof !24266

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.thread.i.i.i.i.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !202969
  br label %bb.aa

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.i.i.i.i.i": ; preds = %bb.y
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i, align 8, !noalias !202969
  call fastcc void @"_ZN223_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h8b87140c2af503d9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i), !noalias !202947
  %.pre.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !1313, !noalias !202946
  %i.bu = trunc nuw i8 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !202969
  br i1 %i.bu, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.i._crit_edge.i.i.i.i", label %bb.ab, !prof !16402

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.i.i.i.i.i"
  %.phi.trans.insert.i.i15.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre.i.i16.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i, align 8, !noalias !202946
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !202946
  store i64 10, ptr %i.h, align 8, !noalias !202946
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !202947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !202946
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.aa:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.thread.i.i.i.i.i"
  %i.bw = phi ptr [ %.pre.i.i16.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.i._crit_edge.i.i.i.i" ], [ %i.bt, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h613641c47ac6b180E.exit.thread.i.i.i.i.i" ]
  %i.bx = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !202947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !202946
end_hunk_10
begin_hunk_11_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3b48841459d8e4b3E":bb.a

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.cg = add i64 %i.cd, 1                        ; 3 uses
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !202986, !noalias !202983
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cg, %i.ca
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.ac

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !202989
  store i64 3, ptr %i.b, align 8, !noalias !202989
  %i.ch = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !202947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !202989
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !202989
  store i64 6, ptr %i.c, align 8, !noalias !202989
  %i.ci = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !202947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !202989
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.af:                                            ; preds = %bb.ac
  %i.cj = add i64 %i.cd, 1
  store i64 %i.cj, ptr %i.q, align 8, !alias.scope !202990, !noalias !202947
  %i.ck = call fastcc noundef align 8 ptr @"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h1fb3aa380eadb51aE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !202993 ; 7 uses
  %.not25.i.i.i = icmp eq ptr %i.ck, null         ; 6 uses
  switch i8 %i.bz, label %default.unreachable [
    i8 0, label %bb.ag
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.aj
    i8 4, label %bb.ak
    i8 5, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  br i1 %.not25.i.i.i, label %bb.am, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.ah:                                            ; preds = %bb.af
  br i1 %.not25.i.i.i, label %bb.an, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.ai:                                            ; preds = %bb.af
  br i1 %.not25.i.i.i, label %bb.ao, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.aj:                                            ; preds = %bb.af
  br i1 %.not25.i.i.i, label %bb.ap, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.ak:                                            ; preds = %bb.af
  br i1 %.not25.i.i.i, label %bb.aq, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.al:                                            ; preds = %bb.af
  br i1 %.not25.i.i.i, label %bb.ar, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.am:                                            ; preds = %bb.ag
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.an:                                            ; preds = %bb.ah
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.ao:                                            ; preds = %bb.ai
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.ap:                                            ; preds = %bb.aj
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.aq:                                            ; preds = %bb.ak
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

bb.ar:                                            ; preds = %bb.al
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"

"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i": ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %.loopexit.i.i.i.i.i.i, %bb.aa, %bb.z, %bb.x, %.loopexit.i.i.i.i.i
  %.sroa.128.0.i.i = phi ptr [ %i.ck, %bb.ak ], [ undef, %bb.am ], [ %i.bn, %bb.x ], [ undef, %bb.an ], [ %i.ck, %bb.ag ], [ undef, %bb.ao ], [ %i.ck, %bb.ah ], [ undef, %bb.ap ], [ %i.ck, %bb.ai ], [ undef, %bb.aq ], [ %i.ck, %bb.aj ], [ undef, %bb.ar ], [ %i.ci, %bb.ae ], [ %i.ch, %.loopexit.i.i.i.i.i.i ], [ %i.bv, %bb.z ], [ %i.bx, %bb.aa ], [ %i.bm, %.loopexit.i.i.i.i.i ], [ %i.ck, %bb.al ] ; 2 uses
  %.sroa.5.0.i.i = phi i8 [ undef, %bb.ak ], [ 0, %bb.am ], [ undef, %bb.x ], [ 1, %bb.an ], [ undef, %bb.ag ], [ 2, %bb.ao ], [ undef, %bb.ah ], [ 3, %bb.ap ], [ undef, %bb.ai ], [ 4, %bb.aq ], [ undef, %bb.aj ], [ 5, %bb.ar ], [ undef, %bb.ae ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %bb.z ], [ undef, %bb.aa ], [ undef, %.loopexit.i.i.i.i.i ], [ undef, %bb.al ] ; 3 uses
  %.sink.i11.i.i = phi i1 [ true, %bb.ak ], [ false, %bb.am ], [ true, %bb.x ], [ false, %bb.an ], [ true, %bb.ag ], [ false, %bb.ao ], [ true, %bb.ah ], [ false, %bb.ap ], [ true, %bb.ai ], [ false, %bb.aq ], [ true, %bb.aj ], [ false, %bb.ar ], [ true, %bb.ae ], [ true, %.loopexit.i.i.i.i.i.i ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %.loopexit.i.i.i.i.i ], [ true, %bb.al ] ; 2 uses
  %i.cl = load i8, ptr %i.ae, align 8, !range !1313, !alias.scope !202869, !noalias !202868, !noundef !14
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.au, label %bb.at

bb.as:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !202867
  store i64 24, ptr %i.p, align 8, !noalias !202867
  %i.cn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !202868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !202867
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !alias.scope !202868, !noalias !202869
  store i8 1, ptr %0, align 8, !alias.scope !202868, !noalias !202869
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit"

bb.at:                                            ; preds = %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !202869, !noalias !202868, !noundef !14
  %i.cr = add i8 %i.cq, 1
  store i8 %i.cr, ptr %i.cp, align 1, !alias.scope !202869, !noalias !202868
  br i1 %.sink.i11.i.i, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h50f3f31ac851a33dE.exit.i.i"
  br i1 %.sink.i11.i.i, label %bb.az, label %bb.aw

bb.av:                                            ; preds = %bb.at
  store i8 1, ptr %0, align 8, !alias.scope !202868, !noalias !202869
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !202868, !noalias !202869
  %.sroa.128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.128.0.i.i, ptr %.sroa.128.0..sroa_idx.i.i, align 8, !alias.scope !202868, !noalias !202869
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit"

bb.aw:                                            ; preds = %bb.au, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !202994)
  %i.cs = load i64, ptr %i.r, align 8, !alias.scope !202997, !noalias !203000, !noundef !14 ; 2 uses
  %.promoted.i17.i.i = load i64, ptr %i.q, align 8, !alias.scope !203003, !noalias !203004 ; 2 uses
  %i.ct = icmp ult i64 %.promoted.i17.i.i, %i.cs
  br i1 %i.ct, label %.lr.ph.i22.i.i, label %.loopexit.i.i

.lr.ph.i22.i.i:                                   ; preds = %bb.aw
  %i.cu = load ptr, ptr %i.u, align 8, !alias.scope !202997, !noalias !203000, !nonnull !14, !align !584, !noundef !14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph.i22.i.i
  %i.cv = phi i64 [ %.promoted.i17.i.i, %.lr.ph.i22.i.i ], [ %i.cy, %bb.ay ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203005)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !203006, !noundef !14
  switch i8 %i.cx, label %bb.bb [
    i8 32, label %bb.ay
    i8 10, label %bb.ay
    i8 9, label %bb.ay
    i8 13, label %bb.ay
    i8 125, label %bb.ba
  ], !prof !3649

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax, %bb.ax
  %i.cy = add i64 %i.cv, 1                        ; 3 uses
  store i64 %i.cy, ptr %i.q, align 8, !alias.scope !203007, !noalias !203004
  %exitcond.not.i23.i.i = icmp eq i64 %i.cy, %i.cs
  br i1 %exitcond.not.i23.i.i, label %.loopexit.i.i, label %bb.ax

bb.az:                                            ; preds = %bb.au
  store i8 1, ptr %0, align 8, !alias.scope !202868, !noalias !202869
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 1, !alias.scope !202868, !noalias !202869
  %.sroa.128.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.128.0.i.i, ptr %.sroa.128.0..sroa_idx9.i.i, align 8, !alias.scope !202868, !noalias !202869
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit"

.loopexit.i.i:                                    ; preds = %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !202867
  store i64 3, ptr %i.n, align 8, !noalias !202867
  %i.cz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !202868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !202867
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !alias.scope !202868, !noalias !202869
  store i8 1, ptr %0, align 8, !alias.scope !202868, !noalias !202869
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit"

bb.ba:                                            ; preds = %bb.ax
  %i.db = add i64 %i.cv, 1
  store i64 %i.db, ptr %i.q, align 8, !alias.scope !203010, !noalias !202868
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i.i, ptr %i.dc, align 1, !alias.scope !202868, !noalias !202869
  store i8 0, ptr %0, align 8, !alias.scope !202868, !noalias !202869
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit"

bb.bb:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !202867
  store i64 10, ptr %i.o, align 8, !noalias !202867
  %i.dd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !202868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !202867
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !alias.scope !202868, !noalias !202869
  store i8 1, ptr %0, align 8, !alias.scope !202868, !noalias !202869
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit"

"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17he3795d5585120c38E.exit": ; preds = %.loopexit19.i.i, %bb.d, %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17he66ae2a1d10add43E.exit.i.i", %bb.as, %bb.av, %bb.az, %.loopexit.i.i, %bb.ba, %bb.bb
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3ca0caaa961fa2a2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203023)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !203026, !noalias !203029, !noundef !14 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !203032, !noalias !203033 ; 2 uses
  %i.q = icmp ult i64 %.promoted.i.i.i, %i.p
  br i1 %i.q, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !203026, !noalias !203029, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.t = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203034)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !203035, !noundef !14
  switch i8 %i.v, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 34, label %bb.e
    i8 91, label %bb.f
  ], !prof !12229

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.n, align 8, !alias.scope !203036, !noalias !203033
  %exitcond.not.i.i.i = icmp eq i64 %i.w, %i.p
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !203039
  store i64 5, ptr %i.m, align 8, !noalias !203039
  %i.x = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !203040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !203039
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !203040, !noalias !203041
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !203040, !noalias !203041
  br label %"_ZN7roaring6bitmap5serde88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$11deserialize17hb0676ebe5b61f417E.exit"

bb.d:                                             ; preds = %bb.b
  %i.z = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6205), !noalias !203040
  br label %bb.at

bb.e:                                             ; preds = %bb.b
  %i.aa = add i64 %i.t, 1
  store i64 %i.aa, ptr %i.n, align 8, !alias.scope !203042, !noalias !203040
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ab, align 8, !alias.scope !203041, !noalias !203040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !203039
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$13parse_str_raw17hfbae946a49ab53cbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !203040
  %i.ac = load i64, ptr %i.l, align 8, !range !802, !noalias !203039, !noundef !14 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !203039 ; 4 uses
  br i1 %i.ad, label %bb.ap, label %bb.aq

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203048)
  %2 = icmp ult i64 %i.t, %i.p
  br i1 %2, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %i.ag = phi i64 [ %i.aj, %bb.g ], [ %i.t, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !203051, !noundef !14
  switch i8 %i.ai, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 91, label %bb.h
  ], !prof !3649

bb.g:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aj = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.aj, ptr %i.n, align 8, !alias.scope !203057, !noalias !203060
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aj, %i.p
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !203061
  store i64 5, ptr %i.k, align 8, !noalias !203061
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !203062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !203061
  br label %bb.aw

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !range !1313, !alias.scope !203063, !noalias !203062, !noundef !14
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6205), !noalias !203062
  br label %.thread47.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !203063, !noalias !203062, !noundef !14
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !alias.scope !203063, !noalias !203062
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.z, label %bb.k, !prof !121

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.at = add i64 %i.ag, 1
  store i64 %i.at, ptr %i.n, align 8, !alias.scope !203064, !noalias !203062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !203061
  store ptr %1, ptr %i.h, align 8, !noalias !203067
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.au, align 8, !noalias !203067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !203067
  store i64 0, ptr %i.g, align 8, !noalias !203067
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.av, align 8, !noalias !203067
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdf5f47f87db7a5c9E.exit.i.i.i.i", %bb.k
  %storemerge.i.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdf5f47f87db7a5c9E.exit.i.i.i.i" ]
  store i64 %storemerge.i.i.i.i, ptr %i.aw, align 8, !noalias !203067
  call void @llvm.experimental.noalias.scope.decl(metadata !203071)
  call void @llvm.experimental.noalias.scope.decl(metadata !203074)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !203077
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17hd72221b623066d80E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !203080

.noexc.i.i.i.i:                                   ; preds = %bb.l
  %i.az = load i8, ptr %i.e, align 8, !range !1313, !noalias !203077, !noundef !14
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !203077, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !203077
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i.i.i.i
  %i.bd = load i8, ptr %i.ax, align 1, !range !1313, !noalias !203077, !noundef !14
  %i.be = trunc nuw i8 %i.bd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !203077
  br i1 %i.be, label %bb.o, label %_ZN10serde_core2de9SeqAccess12next_element17h45404f0b173f5ec9E.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !203077
  %i.bf = load ptr, ptr %i.h, align 8, !alias.scope !203081, !noalias !203082, !nonnull !14, !align !240, !noundef !14
  invoke fastcc void @"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$11deserialize17hd3b9f9122589f8f7E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !203080

.noexc7.i.i.i.i:                                  ; preds = %bb.o
  %i.bg = load i8, ptr %i.d, align 8, !range !1313, !noalias !203077, !noundef !14
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.noexc7.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !203077, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !203077
  br label %bb.s

.loopexit.i.i.i.i:                                ; preds = %bb.u, %bb.o, %bb.l
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w, %_ZN10serde_core2de9SeqAccess12next_element17h45404f0b173f5ec9E.exit.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203083)
  %.val.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !9, !alias.scope !203083, !noalias !203067, !noundef !14 ; 2 uses
  %i.bk = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bk, label %common.resume.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !203083, !noalias !203067, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !203086
  br label %common.resume.i.i.i

bb.s:                                             ; preds = %bb.p, %bb.m
  %.sroa.1315.0.ph.i.i.i.i = phi ptr [ %i.bj, %bb.p ], [ %i.bc, %bb.m ] ; 2 uses
  %.val.i8.i.i.i.i = load i64, ptr %i.g, align 8, !range !9, !alias.scope !203087, !noalias !203067, !noundef !14 ; 2 uses
  %i.bl = icmp eq i64 %.val.i8.i.i.i.i, 0
  br i1 %i.bl, label %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h1706170751984b30E.exit.i.i.i", label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit10.sink.split.i.i.i.i"

bb.t:                                             ; preds = %.noexc7.i.i.i.i
  %i.bm = load i8, ptr %i.ay, align 1, !noalias !203077, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !203077
  %i.bn = load i64, ptr %i.aw, align 8, !alias.scope !203090, !noalias !203093, !noundef !14 ; 3 uses
  %i.bo = load i64, ptr %i.g, align 8, !range !9, !alias.scope !203090, !noalias !203093, !noundef !14
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.u, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdf5f47f87db7a5c9E.exit.i.i.i.i"

bb.u:                                             ; preds = %bb.t
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1726)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdf5f47f87db7a5c9E.exit.i.i.i.i" unwind label %.loopexit.i.i.i.i, !noalias !203080

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdf5f47f87db7a5c9E.exit.i.i.i.i": ; preds = %bb.u, %bb.t
  %i.bq = load ptr, ptr %i.av, align 8, !alias.scope !203090, !noalias !203093, !nonnull !14, !noundef !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 %i.bm, ptr %i.br, align 1, !noalias !203080
  %i.bs = add i64 %i.bn, 1
  br label %bb.l

_ZN10serde_core2de9SeqAccess12next_element17h45404f0b173f5ec9E.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !203067
  %i.bt = load ptr, ptr %i.av, align 8, !noalias !203067, !nonnull !14, !noundef !14
  %i.bu = load i64, ptr %i.aw, align 8, !noalias !203067, !noundef !14
  invoke fastcc void @"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21deserialize_from_impl17h928a84a3e5a0a8baE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bu)
          to label %bb.v unwind label %.loopexit.split-lp.i.i.i.i, !noalias !203080

bb.v:                                             ; preds = %_ZN10serde_core2de9SeqAccess12next_element17h45404f0b173f5ec9E.exit.i.i.i.i
  %i.bv = load i64, ptr %i.f, align 8, !range !2917, !noalias !203067, !noundef !14 ; 3 uses
  %i.bw = icmp eq i64 %i.bv, -9223372036854775808
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !203095 ; 2 uses
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h32ce3fa71878bd28E"(ptr noundef nonnull %i.by)
          to label %bb.y unwind label %.loopexit.split-lp.i.i.i.i, !noalias !203080

bb.x:                                             ; preds = %bb.v
  %.sroa.10.0..sroa_idx34.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.10.0.copyload35.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx34.i.i.i, align 8, !noalias !203095
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ %i.by, %bb.x ], [ %i.bz, %bb.w ] ; 2 uses
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.10.0.copyload35.i.i.i, %bb.x ], [ undef, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !203067
  %.val.i12.i.i.i.i = load i64, ptr %i.g, align 8, !range !9, !alias.scope !203096, !noalias !203067, !noundef !14 ; 2 uses
  %i.ca = icmp eq i64 %.val.i12.i.i.i.i, 0
  br i1 %i.ca, label %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h1706170751984b30E.exit.i.i.i", label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit10.sink.split.i.i.i.i"

common.resume.i.i.i:                              ; preds = %bb.ao, %bb.ac, %bb.r, %bb.q
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %bb.q ], [ %i.cy, %bb.ao ], [ %lpad.phi.i.i.i.i, %bb.r ], [ %i.ci, %bb.ac ]
  resume { ptr, i32 } %common.resume.op.i.i.i

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit10.sink.split.i.i.i.i": ; preds = %bb.y, %bb.s
  %.sroa.8.1.i.i.i = phi ptr [ %.sroa.1315.0.ph.i.i.i.i, %bb.s ], [ %.sroa.8.0.i.i.i, %bb.y ]
  %.sroa.030.1.i.i.i = phi i64 [ -9223372036854775808, %bb.s ], [ %i.bv, %bb.y ]
  %.sroa.10.1.i.i.i = phi i64 [ undef, %bb.s ], [ %.sroa.10.0.i.i.i, %bb.y ]
  %.val.i12.sink.i.i.i.i = phi i64 [ %.val.i8.i.i.i.i, %bb.s ], [ %.val.i12.i.i.i.i, %bb.y ]
  %.val1.i13.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !203067, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i13.i.i.i.i, i64 noundef %.val.i12.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !203080
  br label %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h1706170751984b30E.exit.i.i.i"

"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h1706170751984b30E.exit.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit10.sink.split.i.i.i.i", %bb.y, %bb.s
  %.sroa.8.2.i.i.i = phi ptr [ %.sroa.1315.0.ph.i.i.i.i, %bb.s ], [ %.sroa.8.1.i.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit10.sink.split.i.i.i.i" ], [ %.sroa.8.0.i.i.i, %bb.y ] ; 8 uses
  %.sroa.030.2.i.i.i = phi i64 [ -9223372036854775808, %bb.s ], [ %.sroa.030.1.i.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit10.sink.split.i.i.i.i" ], [ %i.bv, %bb.y ] ; 5 uses
  %.sroa.10.2.i.i.i = phi i64 [ undef, %bb.s ], [ %.sroa.10.1.i.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit10.sink.split.i.i.i.i" ], [ %.sroa.10.0.i.i.i, %bb.y ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !203067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !203061
  %i.cb = load i8, ptr %i.al, align 8, !range !1313, !alias.scope !203063, !noalias !203062, !noundef !14
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !203061
  store i64 24, ptr %i.j, align 8, !noalias !203061
  %i.cd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !203062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !203061
  br label %bb.aw

bb.aa:                                            ; preds = %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h1706170751984b30E.exit.i.i.i"
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !203063, !noalias !203062, !noundef !14
  %i.cg = add i8 %i.cf, 1
  store i8 %i.cg, ptr %i.ce, align 1, !alias.scope !203063, !noalias !203062
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h1706170751984b30E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !203061
end_hunk_11
begin_hunk_12_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h4f4cc6235247731bE":bb.a
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !205640, !noalias !205641
  store i64 2, ptr %0, align 8, !alias.scope !205640, !noalias !205641
  br label %"_ZN17meilisearch_types9task_view1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..task_view..DetailsView$GT$11deserialize17h01c61cc8fb7bc973E.exit"

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !1313, !alias.scope !205641, !noalias !205640, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.v = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6201), !noalias !205640
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !205641, !noalias !205640, !noundef !14
  %i.y = add i8 %i.x, -1                          ; 2 uses
  store i8 %i.y, ptr %i.w, align 1, !alias.scope !205641, !noalias !205640
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.h, label %bb.g, !prof !121

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.aa = add i64 %i.m, 1
  store i64 %i.aa, ptr %i.g, align 8, !alias.scope !205642, !noalias !205640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !205639
  call fastcc void @"_ZN199_$LT$meilisearch_types..task_view.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..task_view..DetailsView$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h47904927bf571333E"(ptr noalias noundef align 8 captures(address) dereferenceable(800) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.ab = load i8, ptr %i.s, align 8, !range !1313, !alias.scope !205641, !noalias !205640, !noundef !14
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !205639
  store i64 24, ptr %i.e, align 8, !noalias !205639
  %i.ad = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !205640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !205639
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !205640, !noalias !205641
  store i64 2, ptr %0, align 8, !alias.scope !205640, !noalias !205641
  br label %"_ZN17meilisearch_types9task_view1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..task_view..DetailsView$GT$11deserialize17h01c61cc8fb7bc973E.exit"

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !205641, !noalias !205640, !noundef !14
  %i.ah = add i8 %i.ag, 1
  store i8 %i.ah, ptr %i.af, align 1, !alias.scope !205641, !noalias !205640
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !205639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !205639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %i.b, ptr noundef nonnull align 8 dereferenceable(800) %i.d, i64 800, i1 false), !noalias !205639
  %i.ai = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.l unwind label %bb.k, !noalias !205640 ; 10 uses

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$meilisearch_types..task_view..DetailsView$C$serde_json..error..Error$GT$$GT$17hd1f8977006ab93d6E"(ptr noalias noundef align 8 dereferenceable(800) %i.b) #81
          to label %common.resume.i.i unwind label %bb.o, !noalias !205640

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %i.c, ptr noundef nonnull align 8 dereferenceable(800) %i.d, i64 800, i1 false), !noalias !205639
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  store ptr %i.ai, ptr %i.ak, align 8, !noalias !205639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !205639
  %i.al = load i64, ptr %i.c, align 8, !range !802, !noalias !205639, !noundef !14 ; 2 uses
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.u, label %.thread.thread.i.i

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !205639, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !205639
  %.not37.i.i = icmp eq ptr %i.ai, null
  br i1 %.not37.i.i, label %.thread.thread47.i.i, label %bb.p

.thread.thread.i.i:                               ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !205639
  call void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..task_view..DetailsView$GT$17hf8a155d966a5236fE"(ptr noalias noundef nonnull align 8 dereferenceable(800) %i.c), !noalias !205640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !205639
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !205640
  unreachable

.thread.thread47.i.i:                             ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !205639
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !205645)
  call void @llvm.experimental.noalias.scope.decl(metadata !205648)
  %i.aq = load i64, ptr %i.ai, align 8, !range !3586, !alias.scope !205651, !noalias !205652, !noundef !14
  switch i64 %i.aq, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.q
    i64 1, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !205651, !noalias !205652, !noundef !14 ; 2 uses
  %i.as = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.as, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !205651, !noalias !205652, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !205655
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.r:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.au)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.s, !noalias !205652

common.resume.i.i:                                ; preds = %bb.s, %bb.k
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.aj, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 40, i64 noundef 8) #79, !noalias !205652
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.r, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.q, %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 40, i64 noundef 8) #79, !noalias !205652
  br label %.thread.thread47.i.i

bb.t:                                             ; preds = %.thread.thread47.i.i, %.thread.thread.i.i, %bb.e
  %.sroa.9.2.i.i = phi ptr [ %i.ao, %.thread.thread47.i.i ], [ %i.v, %bb.e ], [ %i.ai, %.thread.thread.i.i ]
  %i.aw = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !205640
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !205640, !noalias !205641
  store i64 2, ptr %0, align 8, !alias.scope !205640, !noalias !205641
  br label %"_ZN17meilisearch_types9task_view1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..task_view..DetailsView$GT$11deserialize17h01c61cc8fb7bc973E.exit"

bb.u:                                             ; preds = %bb.m
  %.sroa.211.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.211.0.copyload.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i, align 8, !noalias !205639
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.318.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %.sroa.318.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(784) %i.ay, i64 784, i1 false), !noalias !205641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !205639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !205639
  store i64 %i.al, ptr %0, align 8, !alias.scope !205640, !noalias !205641
  %.sroa.217.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.211.0.copyload.i.i, ptr %.sroa.217.0..sroa_idx.i.i, align 8, !alias.scope !205640, !noalias !205641
  br label %"_ZN17meilisearch_types9task_view1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..task_view..DetailsView$GT$11deserialize17h01c61cc8fb7bc973E.exit"

"_ZN17meilisearch_types9task_view1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..task_view..DetailsView$GT$11deserialize17h01c61cc8fb7bc973E.exit": ; preds = %.loopexit.i.i, %bb.h, %bb.t, %bb.u
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h501749ff0cc883cdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [192 x i8], align 8              ; 13 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205666)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !205669, !noalias !205672, !noundef !14 ; 8 uses
  %.promoted.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !205675, !noalias !205676 ; 3 uses
  %i.af = icmp ult i64 %.promoted.i.i.i, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !205669, !noalias !205672, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ai = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.al, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205677)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !205678, !noundef !14
  switch i8 %i.ak, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.az
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.ac, align 8, !alias.scope !205679, !noalias !205676
  %exitcond.not.i.i.i = icmp eq i64 %i.al, %i.ae
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.thread.i.i": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !205682
  br label %.loopexit9.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.ai, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !205698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205699)
  %i.am = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.ae
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !205702, !noalias !205705, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ap = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205709)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !205710, !noundef !14
  switch i8 %i.ar, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !12229

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.as = add i64 %i.ap, 1                        ; 3 uses
  store i64 %i.as, ptr %i.ac, align 8, !alias.scope !205711, !noalias !205714
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i, label %bb.d

.loopexit9.i.i.i.i.i:                             ; preds = %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !205715
  store i64 5, ptr %i.w, align 8, !noalias !205715
  %i.at = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w), !noalias !205716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !205715
  br label %bb.ax

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !205715
  store i64 10, ptr %i.x, align 8, !noalias !205715
  %i.au = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !205716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !205715
  br label %bb.ax

bb.g:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !range !1313, !alias.scope !205717, !noalias !205716, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.ah, label %bb.ag

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205739)
  %2 = icmp ult i64 %i.ap, %i.ae
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.ay = phi i64 [ %i.bb, %bb.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !205742, !noundef !14 ; 2 uses
  switch i8 %i.ba, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = add i64 %i.ay, 1                        ; 3 uses
  store i64 %i.bb, ptr %i.ac, align 8, !alias.scope !205754, !noalias !205757
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.ae
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !205758
  %i.bc = icmp eq i8 %i.ba, 34
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !15

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !205758
  store i64 5, ptr %i.v, align 8, !noalias !205758
  %i.bd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v), !noalias !205759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !205758
  br label %bb.o

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.be = add i64 %i.ay, 1
  store i64 %i.be, ptr %i.ac, align 8, !alias.scope !205760, !noalias !205759
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bf, align 8, !alias.scope !205763, !noalias !205759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !205758
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !205759
  %i.bg = load i64, ptr %i.t, align 8, !range !802, !noalias !205758, !noundef !14
  %i.bh = icmp eq i64 %i.bg, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !205758 ; 3 uses
  br i1 %i.bh, label %bb.l, label %bb.m

bb.k:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bk = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6212), !noalias !205759
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !205758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !205758
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !205758
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  call fastcc void @"_ZN192_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Details$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h3cdc6c6d3816f295E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bj, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !205759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !205758
  %i.bl = load i8, ptr %i.u, align 8, !range !1313, !noalias !205758, !noundef !14
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %._crit_edge.i.i.i.i.i.i.i, label %bb.p, !prof !121

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.m
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !205758
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.k
  %i.bn = phi ptr [ %.pre.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.bk, %bb.k ]
  %i.bo = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !205759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !205758
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.n ], [ %i.bj, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i) ]
  br label %bb.ax

bb.p:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !range !82269, !noalias !205758, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !205758
  switch i8 %i.bq, label %default.unreachable [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
    i8 5, label %bb.v
    i8 6, label %bb.w
    i8 7, label %bb.x
    i8 8, label %bb.y
    i8 9, label %bb.z
    i8 10, label %bb.aa
    i8 11, label %bb.ab
    i8 12, label %bb.ac
    i8 13, label %bb.ad
    i8 14, label %bb.ae
    i8 15, label %bb.af
  ]

default.unreachable:                              ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !205764
  store i8 13, ptr %i.s, align 8, !noalias !205764
  %i.br = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !205764
  br label %bb.ax

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !205768
  store i8 13, ptr %i.r, align 8, !noalias !205768
  %i.bs = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !205768
  br label %bb.ax

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !205772
  store i8 13, ptr %i.q, align 8, !noalias !205772
  %i.bt = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !205772
  br label %bb.ax

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !205776
  store i8 13, ptr %i.p, align 8, !noalias !205776
  %i.bu = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !205776
  br label %bb.ax

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !205780
  store i8 13, ptr %i.o, align 8, !noalias !205780
  %i.bv = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !205780
  br label %bb.ax

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !205784
  store i8 13, ptr %i.n, align 8, !noalias !205784
  %i.bw = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !205784
  br label %bb.ax

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !205788
  store i8 13, ptr %i.m, align 8, !noalias !205788
  %i.bx = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !205788
  br label %bb.ax

bb.x:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !205792
  store i8 13, ptr %i.l, align 8, !noalias !205792
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !205792
  br label %bb.ax

bb.y:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !205796
  store i8 13, ptr %i.k, align 8, !noalias !205796
  %i.bz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !205796
  br label %bb.ax

bb.z:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !205800
  store i8 13, ptr %i.j, align 8, !noalias !205800
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !205800
  br label %bb.ax

bb.aa:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !205804
  store i8 13, ptr %i.i, align 8, !noalias !205804
  %i.cb = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !205804
  br label %bb.ax

bb.ab:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !205808
  store i8 13, ptr %i.h, align 8, !noalias !205808
  %i.cc = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !205808
  br label %bb.ax

bb.ac:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !205812
  store i8 13, ptr %i.g, align 8, !noalias !205812
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !205812
  br label %bb.ax

bb.ad:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !205816
  store i8 13, ptr %i.f, align 8, !noalias !205816
  %i.ce = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !205816
  br label %bb.ax

bb.ae:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !205820
  store i8 13, ptr %i.e, align 8, !noalias !205820
  %i.cf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !205820
  br label %bb.ax

bb.af:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !205824
  store i8 13, ptr %i.d, align 8, !noalias !205824
  %i.cg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 @6070, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !205829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !205824
  br label %bb.ax

bb.ag:                                            ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !205717, !noalias !205716, !noundef !14
  %i.cj = add i8 %i.ci, -1                        ; 2 uses
  store i8 %i.cj, ptr %i.ch, align 1, !alias.scope !205717, !noalias !205716
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.ai, label %bb.ah, !prof !121

end_hunk_12
begin_hunk_13_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h984968db83a4ab3dE":bb.a
  store ptr %.sroa.730.0.i.i.i.i.i, ptr %.sroa.730.0..sroa_idx.i.i.i.i.i, align 8, !noalias !210544
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.sroa.8.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !210544
  %i.lj = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hf374ac2f2ec1a968E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.dn unwind label %bb.dm, !noalias !210545 ; 10 uses

bb.dm:                                            ; preds = %bb.dl
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$core..result..Result$LT$alloc..vec..Vec$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$C$serde_json..error..Error$GT$$GT$17he03ec7388ce9880eE"(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #81
          to label %common.resume.i.i.i.i.i unwind label %bb.dq, !noalias !210545

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !210544
  %i.ll = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.lj, ptr %i.ll, align 8, !noalias !210544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !210544
  %i.lm = load i64, ptr %i.af, align 8, !range !2917, !noalias !210544, !noundef !14 ; 2 uses
  %i.ln = icmp eq i64 %i.lm, -9223372036854775808
  br i1 %i.ln, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.not.i.i.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.i.i, label %bb.ee, label %.thread50.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.lo = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !210544, !nonnull !14, !align !240, !noundef !14
  %.not54.i.i.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not54.i.i.i.i.i, label %.thread46.i.i.i.i.i, label %bb.dr

.thread50.i.i.i.i.i:                              ; preds = %bb.do
  call fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$GT$17hb15f3e11711051d6E"(ptr noalias noundef align 8 dereferenceable(24) %i.af), !noalias !210545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !210544
  br label %bb.dv

bb.dq:                                            ; preds = %bb.dm
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !210545
  unreachable

.thread46.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i", %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !210544
  br label %bb.dv

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !210879)
  call void @llvm.experimental.noalias.scope.decl(metadata !210882)
  %i.lr = load i64, ptr %i.lj, align 8, !range !3586, !alias.scope !210885, !noalias !210886, !noundef !14
  switch i64 %i.lr, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i" [
    i64 0, label %bb.ds
    i64 1, label %bb.dt
  ]

bb.ds:                                            ; preds = %bb.dr
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ls, align 8, !alias.scope !210885, !noalias !210886, !noundef !14 ; 2 uses
  %i.lt = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lt, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ds
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lu, align 8, !alias.scope !210885, !noalias !210886, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !210889
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i"

bb.dt:                                            ; preds = %bb.dr
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lv)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i" unwind label %bb.du, !noalias !210886

bb.du:                                            ; preds = %bb.dt
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lj, i64 noundef 40, i64 noundef 8) #79, !noalias !210886
  br label %common.resume.i.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i": ; preds = %bb.dt, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.ds, %bb.dr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lj, i64 noundef 40, i64 noundef 8) #79, !noalias !210886
  br label %.thread46.i.i.i.i.i

bb.dv:                                            ; preds = %.thread46.i.i.i.i.i, %.thread50.i.i.i.i.i, %bb.g
  %.sroa.9.2.i.i.i.i.i = phi ptr [ %i.lj, %.thread50.i.i.i.i.i ], [ %i.bd, %bb.g ], [ %i.lp, %.thread46.i.i.i.i.i ]
  %i.lx = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !210545
  br label %bb.ed

bb.dw:                                            ; preds = %bb.b
  %i.ly = add i64 %i.ao, 1                        ; 4 uses
  store i64 %i.ly, ptr %i.ai, align 8, !alias.scope !210890, !noalias !210893
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210894)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ly, i64 %i.ak) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210897)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.ly, %i.ak
  br i1 %exitcond.not.i9.not.i.i, label %bb.dx, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.dx:                                            ; preds = %bb.dw
  %i.lz = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !noalias !210900, !noundef !14
  %i.mb = add i64 %i.ao, 2                        ; 3 uses
  store i64 %i.mb, ptr %i.ai, align 8, !alias.scope !210903, !noalias !210904
  %.not.i.i.i = icmp eq i8 %i.ma, 117
  br i1 %.not.i.i.i, label %bb.dy, label %bb.ec, !prof !12002

bb.dy:                                            ; preds = %bb.dx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210905)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.mb, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mc = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !noalias !210907, !noundef !14
  %i.me = add i64 %i.ao, 3                        ; 3 uses
  store i64 %i.me, ptr %i.ai, align 8, !alias.scope !210908, !noalias !210904
  %.not.i.1.i.i = icmp eq i8 %i.md, 108
  br i1 %.not.i.1.i.i, label %bb.ea, label %bb.ec, !prof !12002

bb.ea:                                            ; preds = %bb.dz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210909)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.me, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.mf = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !noalias !210911, !noundef !14
  %i.mh = add i64 %i.ao, 4
  store i64 %i.mh, ptr %i.ai, align 8, !alias.scope !210912, !noalias !210904
  %.not.i.2.i.i = icmp eq i8 %i.mg, 108
  br i1 %.not.i.2.i.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hee255abf0587e2bbE.exit.thread11.i", label %bb.ec, !prof !12002

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.ea, %bb.dy, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !210913
  store i64 5, ptr %i.c, align 8, !noalias !210913
  %i.mi = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !210914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !210913
  br label %bb.ed

bb.ec:                                            ; preds = %bb.eb, %bb.dz, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !210913
  store i64 9, ptr %i.b, align 8, !noalias !210913
  %i.mj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !210914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !210913
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", %bb.dv, %bb.dj, %.loopexit.i.i.i.i.i
  %.sroa.7.0.ph.i = phi ptr [ %i.mj, %bb.ec ], [ %i.mi, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %i.az, %.loopexit.i.i.i.i.i ], [ %i.lf, %bb.dj ], [ %i.lx, %bb.dv ]
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %i.mk, align 8, !alias.scope !210492, !noalias !210495
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !210492, !noalias !210495
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h4eafbdbfa62ace8cE.exit"

bb.ee:                                            ; preds = %bb.do
  %.sroa.212.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.212.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i, align 8, !noalias !210544
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.3.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !210544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !210544
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hee255abf0587e2bbE.exit.thread11.i"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hee255abf0587e2bbE.exit.thread11.i": ; preds = %bb.ee, %bb.eb
  %.sroa.5.sroa.0.0.i = phi ptr [ %.sroa.212.0.copyload.i.i.i.i.i, %bb.ee ], [ undef, %bb.eb ]
  %.sroa.5.sroa.4.0.i = phi i64 [ %.sroa.3.0.copyload.i.i.i.i.i, %bb.ee ], [ undef, %bb.eb ]
  %.sroa.03.0.i = phi i64 [ %i.lm, %bb.ee ], [ -9223372036854775808, %bb.eb ]
  store i64 %.sroa.03.0.i, ptr %0, align 8, !alias.scope !210492, !noalias !210495
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !alias.scope !210492, !noalias !210495
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.4.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i, align 8, !alias.scope !210492, !noalias !210495
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h4eafbdbfa62ace8cE.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h4eafbdbfa62ace8cE.exit": ; preds = %bb.ed, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hee255abf0587e2bbE.exit.thread11.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9981dd0ce0558fd1E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210925)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !210928, !noalias !210931, !noundef !14 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !210934, !noalias !210935 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit19.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !210928, !noalias !210931, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210936)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !210937, !noundef !14
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !12229

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !210938, !noalias !210935
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit19.i.i, label %bb.b

.loopexit19.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !210941
  store i64 5, ptr %i.l, align 8, !noalias !210941
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !210942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !210941
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !210942, !noalias !210943
  store i8 1, ptr %0, align 8, !alias.scope !210942, !noalias !210943
  br label %"_ZN17meilisearch_types8features1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$11deserialize17h51a62dfb7fb3244eE.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !210941
  store i64 10, ptr %i.m, align 8, !noalias !210941
  %i.ac = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !210942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !210941
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !210942, !noalias !210943
  store i8 1, ptr %0, align 8, !alias.scope !210942, !noalias !210943
  br label %"_ZN17meilisearch_types8features1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$11deserialize17h51a62dfb7fb3244eE.exit"

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !1313, !alias.scope !210943, !noalias !210942, !noundef !14
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.t, label %bb.s

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210967)
  %2 = icmp ult i64 %i.w, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.ah = phi i64 [ %i.ak, %bb.g ], [ %i.w, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !210970, !noundef !14 ; 2 uses
  switch i8 %i.aj, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.q, align 8, !alias.scope !210981, !noalias !210984
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !210985
  %i.al = icmp eq i8 %i.aj, 34
  br i1 %i.al, label %bb.h, label %bb.i, !prof !15

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !210985
  store i64 5, ptr %i.k, align 8, !noalias !210985
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !210986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !210985
  br label %bb.m

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i"
  %i.an = add i64 %i.ah, 1
  store i64 %i.an, ptr %i.q, align 8, !alias.scope !210987, !noalias !210986
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ao, align 8, !alias.scope !210990, !noalias !210986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !210985
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !210986
  %i.ap = load i64, ptr %i.i, align 8, !range !802, !noalias !210985, !noundef !14
  %i.aq = icmp eq i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !210985 ; 3 uses
  br i1 %i.aq, label %bb.j, label %bb.k

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i"
  %i.at = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6222), !noalias !210986
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !210985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !210985
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !210985
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call fastcc void @"_ZN211_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h55ab320de8afee3bE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.as, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !210986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !210985
  %i.au = load i8, ptr %i.j, align 8, !range !1313, !noalias !210985, !noundef !14
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %._crit_edge.i.i.i.i, label %bb.n, !prof !121

._crit_edge.i.i.i.i:                              ; preds = %bb.k
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !210985
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.aw = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.at, %bb.i ]
  %i.ax = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !210986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !210985
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i = phi ptr [ %i.am, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.l ], [ %i.as, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.121.0.ph.i.i.i.i.i, ptr %i.ay, align 8, !alias.scope !210991, !noalias !210992
  br label %"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf0a17276cc0463f0E.exit.i.i"

bb.n:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !1331, !noalias !210985, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !210985
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  switch i8 %i.ba, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
  ]

default.unreachable:                              ; preds = %bb.ad, %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.bb, align 1, !alias.scope !210991, !noalias !210992
  br label %"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf0a17276cc0463f0E.exit.i.i"

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.bb, align 1, !alias.scope !210991, !noalias !210992
  br label %"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf0a17276cc0463f0E.exit.i.i"

bb.q:                                             ; preds = %bb.n
  store i8 2, ptr %i.bb, align 1, !alias.scope !210991, !noalias !210992
  br label %"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf0a17276cc0463f0E.exit.i.i"

bb.r:                                             ; preds = %bb.n
  store i8 3, ptr %i.bb, align 1, !alias.scope !210991, !noalias !210992
  br label %"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf0a17276cc0463f0E.exit.i.i"

"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf0a17276cc0463f0E.exit.i.i": ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.m
  %.sink.i.i.i = phi i8 [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 1, %bb.m ]
  store i8 %.sink.i.i.i, ptr %0, align 8, !alias.scope !210991, !noalias !210992
  br label %"_ZN17meilisearch_types8features1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$11deserialize17h51a62dfb7fb3244eE.exit"

bb.s:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !210943, !noalias !210942, !noundef !14
  %i.be = add i8 %i.bd, -1                        ; 2 uses
  store i8 %i.be, ptr %i.bc, align 1, !alias.scope !210943, !noalias !210942
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.am, label %bb.t, !prof !121

bb.t:                                             ; preds = %bb.s, %bb.e
  %i.bg = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !210993, !noalias !210942
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211005)
  %i.bh = icmp ult i64 %i.bg, %i.s
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t, %bb.u
  %i.bi = phi i64 [ %i.bl, %bb.u ], [ %i.bg, %bb.t ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !211008, !noundef !14
  switch i8 %i.bk, label %bb.v [
    i8 32, label %bb.u
    i8 10, label %bb.u
    i8 9, label %bb.u
    i8 13, label %bb.u
    i8 34, label %bb.w
    i8 125, label %bb.x
  ], !prof !12326

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bl = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.q, align 8, !alias.scope !211016, !noalias !211019
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bl, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !211020
  store i64 3, ptr %i.f, align 8, !noalias !211020
  %i.bm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !211021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !211020
  br label %"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2342ab58904292a6E.exit.i.i"

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !211020
  store i64 17, ptr %i.g, align 8, !noalias !211020
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !211021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !211020
  br label %"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2342ab58904292a6E.exit.i.i"

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !211020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211031)
  %i.bo = add i64 %i.bi, 1
  store i64 %i.bo, ptr %i.q, align 8, !alias.scope !211034, !noalias !211037
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bp, align 8, !alias.scope !211042, !noalias !211037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !211043
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !211037
  %i.bq = load i64, ptr %i.d, align 8, !range !802, !noalias !211043, !noundef !14
  %i.br = icmp eq i64 %i.bq, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !211043, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.br, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.thread.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.i.i.i.i.i", !prof !24266

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.thread.i.i.i.i.i": ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !211043
  br label %bb.y

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.i.i.i.i.i": ; preds = %bb.w
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i, align 8, !noalias !211043
  call fastcc void @"_ZN211_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h55ab320de8afee3bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i), !noalias !211021
  %.pre.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !1313, !noalias !211020
  %i.bu = trunc nuw i8 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !211043
  br i1 %i.bu, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.i._crit_edge.i.i.i.i", label %bb.z, !prof !16402

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.i.i.i.i.i"
  %.phi.trans.insert.i.i15.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre.i.i16.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i, align 8, !noalias !211020
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !211020
  store i64 10, ptr %i.h, align 8, !noalias !211020
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !211021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !211020
  br label %"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2342ab58904292a6E.exit.i.i"

bb.y:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.thread.i.i.i.i.i"
  %i.bw = phi ptr [ %.pre.i.i16.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.i._crit_edge.i.i.i.i" ], [ %i.bt, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.thread.i.i.i.i.i" ]
  %i.bx = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !211021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !211020
  br label %"_ZN206_$LT$meilisearch_types..features.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..features..ChatCompletionSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2342ab58904292a6E.exit.i.i"

bb.z:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h024fdf94b3eb7866E.exit.i.i.i.i.i"
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !range !1331, !noalias !211020, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !211020
  call void @llvm.experimental.noalias.scope.decl(metadata !211044)
  call void @llvm.experimental.noalias.scope.decl(metadata !211047)
  %i.ca = load i64, ptr %i.r, align 8, !alias.scope !211050, !noalias !211053, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !211056, !noalias !211057 ; 2 uses
end_hunk_13
begin_hunk_14_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hac1ed497433634dbE":bb.a
  store i64 %i.t, ptr %i.al, align 8, !noalias !212279
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.v, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !212279
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.sroa.11.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !212279
  %i.am = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.am, ptr %i.q, align 8, !noalias !212279
  %i.an = icmp eq ptr %i.s, %i.j
  br i1 %i.an, label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.i.i.i", label %bb.e

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.thread.i.i.i": ; preds = %bb.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b4986a54636c755E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !212279
  br label %bb.q

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.i.i.i": ; preds = %bb.n
  %.sroa.03.0.copyload5.pr.i.i.i = load i64, ptr %i.c, align 8, !noalias !212330 ; 2 uses
  %.sroa.5.0.copyload9.i.i.i = load ptr, ptr %i.p, align 8, !noalias !212330 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !212279
  %i.ao = icmp eq i64 %.sroa.03.0.copyload5.pr.i.i.i, -9223372036854775808
  br i1 %i.ao, label %bb.q, label %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_seq17h7857c6f3230ccb0eE.exit.i"

bb.o:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !212279
  br label %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_seq17h7857c6f3230ccb0eE.exit.i"

bb.p:                                             ; preds = %bb.a
  %i.ap = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h3293eb1f1b408262E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126), !noalias !212277
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.i.i.i", %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.thread.i.i.i"
  %.sroa.7.0.ph.i = phi ptr [ %i.v, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.thread.i.i.i" ], [ %i.ap, %bb.p ], [ %.sroa.5.0.copyload9.i.i.i, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.i.i.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.ph.i) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %i.aq, align 8, !alias.scope !212268, !noalias !212271
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !212268, !noalias !212271
  br label %"_ZN5milli18attribute_patterns1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..attribute_patterns..AttributePatterns$GT$11deserialize17h75cbc1866b886c3bE.exit"

"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_seq17h7857c6f3230ccb0eE.exit.i": ; preds = %bb.o, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.i.i.i"
  %.sroa.11.0.i = phi i64 [ 0, %bb.o ], [ %i.am, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.i.i.i" ]
  %.sroa.7.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.o ], [ %.sroa.5.0.copyload9.i.i.i, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.i.i.i" ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.o ], [ %.sroa.03.0.copyload5.pr.i.i.i, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h45d4da7f3c06cee7E.exit.i.i.i" ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !212268, !noalias !212271
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !212268, !noalias !212271
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !212268, !noalias !212271
  br label %"_ZN5milli18attribute_patterns1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..attribute_patterns..AttributePatterns$GT$11deserialize17h75cbc1866b886c3bE.exit"

"_ZN5milli18attribute_patterns1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..attribute_patterns..AttributePatterns$GT$11deserialize17h75cbc1866b886c3bE.exit": ; preds = %bb.q, %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_seq17h7857c6f3230ccb0eE.exit.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17haeb63ca629add04aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212341)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !212344, !noalias !212347, !noundef !14 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !212350, !noalias !212351 ; 2 uses
  %i.y = icmp ult i64 %.promoted.i.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !212344, !noalias !212347, !nonnull !14, !align !584, !noundef !14
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ab = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212352)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !212353, !noundef !14
  switch i8 %i.ad, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !3649

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.v, align 8, !alias.scope !212354, !noalias !212351
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, %i.x
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !212357
  store i64 5, ptr %i.u, align 8, !noalias !212357
  %i.af = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !212358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !212357
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !212358, !noalias !212359
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !212358, !noalias !212359
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h203a4d323f95e326E.exit"

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !1313, !alias.scope !212359, !noalias !212358, !noundef !14
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123), !noalias !212358
  br label %.thread53.i.i

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !212359, !noalias !212358, !noundef !14
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.al, align 1, !alias.scope !212359, !noalias !212358
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.ln, label %bb.g, !prof !121

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ap = add i64 %i.ab, 1
  store i64 %i.ap, ptr %i.v, align 8, !alias.scope !212360, !noalias !212358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !212357
  store ptr %1, ptr %i.s, align 8, !noalias !212363
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 1, ptr %i.aq, align 8, !noalias !212363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !212363
  store i64 0, ptr %i.r, align 8, !noalias !212363
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ar, align 8, !noalias !212363
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.ma, %bb.lq, %bb.li, %bb.lh
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.lh ], [ %i.fi, %bb.ma ], [ %lpad.phi.i.i.i, %bb.li ], [ %i.ez, %bb.lq ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.lm, %bb.g
  %storemerge.i.i.i = phi i64 [ 0, %bb.g ], [ %i.eq, %bb.lm ]
  store i64 %storemerge.i.i.i, ptr %i.as, align 8, !noalias !212363
  call void @llvm.experimental.noalias.scope.decl(metadata !212367)
  call void @llvm.experimental.noalias.scope.decl(metadata !212370)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !212373
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17hd72221b623066d80E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !212376

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ay = load i8, ptr %i.q, align 8, !range !1313, !noalias !212373, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !212373, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !212373
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bc = load i8, ptr %i.at, align 1, !range !1313, !noalias !212373, !noundef !14
  %i.bd = trunc nuw i8 %i.bc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !212373
  br i1 %i.bd, label %bb.k, label %.thread36.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.s, align 8, !alias.scope !212377, !noalias !212378, !nonnull !14, !align !240, !noundef !14 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212379)
  call void @llvm.experimental.noalias.scope.decl(metadata !212382)
  call void @llvm.experimental.noalias.scope.decl(metadata !212385)
  call void @llvm.experimental.noalias.scope.decl(metadata !212388)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !212391, !noalias !212394, !noundef !14 ; 6 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !212400, !noalias !212401 ; 2 uses
  %i.bi = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !212391, !noalias !212394, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.m ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212402)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !212403, !noundef !14
  switch i8 %i.bn, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %bb.p
  ], !prof !12229

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bo = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bo, ptr %i.bf, align 8, !alias.scope !212404, !noalias !212401
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bo, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i:                      ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !212407
  store i64 5, ptr %i.l, align 8, !noalias !212407
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212376

.noexc7.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !212407
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !212407
  store i64 10, ptr %i.m, align 8, !noalias !212407
  %i.bq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212376

.noexc8.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !212407
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !1313, !alias.scope !212408, !noalias !212409, !noundef !14
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.x, label %bb.w

bb.p:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !212410)
  call void @llvm.experimental.noalias.scope.decl(metadata !212413)
  call void @llvm.experimental.noalias.scope.decl(metadata !212416)
  call void @llvm.experimental.noalias.scope.decl(metadata !212419)
  call void @llvm.experimental.noalias.scope.decl(metadata !212422)
  call void @llvm.experimental.noalias.scope.decl(metadata !212425)
  call void @llvm.experimental.noalias.scope.decl(metadata !212428)
  call void @llvm.experimental.noalias.scope.decl(metadata !212431)
  %2 = icmp ult i64 %i.bl, %i.bh
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p, %bb.q
  %i.bu = phi i64 [ %i.bx, %bb.q ], [ %i.bl, %bb.p ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !212434, !noundef !14 ; 2 uses
  switch i8 %i.bw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = add i64 %i.bu, 1                        ; 3 uses
  store i64 %i.bx, ptr %i.bf, align 8, !alias.scope !212445, !noalias !212448
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !212450
  %i.by = icmp eq i8 %i.bw, 34
  br i1 %i.by, label %bb.r, label %bb.s, !prof !15

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !212450
  store i64 5, ptr %i.k, align 8, !noalias !212450
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212376

.noexc9.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !212450
  br label %bb.v

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ca = add i64 %i.bu, 1
  store i64 %i.ca, ptr %i.bf, align 8, !alias.scope !212451, !noalias !212454
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cb, align 8, !alias.scope !212455, !noalias !212454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !212450
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !212376

.noexc10.i.i.i:                                   ; preds = %bb.r
  %i.cc = load i64, ptr %i.i, align 8, !range !802, !noalias !212450, !noundef !14
  %i.cd = icmp eq i64 %i.cc, 2
  %i.ce = load ptr, ptr %i.au, align 8, !noalias !212450 ; 3 uses
  br i1 %i.cd, label %bb.t, label %bb.u

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212376

bb.t:                                             ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !212450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !212450
  br label %bb.v

bb.u:                                             ; preds = %.noexc10.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !212450
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h119f28009eb093e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !212376

.noexc12.i.i.i:                                   ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !212450
  %i.cg = load i8, ptr %i.j, align 8, !range !1313, !noalias !212450, !noundef !14
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %switch.lookup, !prof !121

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc12.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !212450
  br label %.noexc11.i.i.i

.noexc11.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.ci = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.s ]
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212376

.noexc13.i.i.i:                                   ; preds = %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !212450
  br label %bb.v

bb.v:                                             ; preds = %.noexc13.i.i.i, %bb.t, %.noexc9.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.noexc9.i.i.i ], [ %i.cj, %.noexc13.i.i.i ], [ %i.ce, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i

switch.lookup:                                    ; preds = %.noexc12.i.i.i
  %i.ck = load i8, ptr %i.av, align 1, !range !85906, !noalias !212450, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !212450
  %switch.tableidx = xor i8 %i.ck, -128
  %i.cl = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17haeb63ca629add04aE", i64 %i.cl
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.thread.i.i.i

default.unreachable:                              ; preds = %.noexc22.i.i.i
  unreachable

bb.w:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 57 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !212408, !noalias !212409, !noundef !14
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !alias.scope !212408, !noalias !212409
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.la, label %bb.x, !prof !121

bb.x:                                             ; preds = %bb.w, %bb.o
  %i.cq = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.cq, ptr %i.bf, align 8, !alias.scope !212456, !noalias !212409
  call void @llvm.experimental.noalias.scope.decl(metadata !212459)
  call void @llvm.experimental.noalias.scope.decl(metadata !212462)
  call void @llvm.experimental.noalias.scope.decl(metadata !212465)
  call void @llvm.experimental.noalias.scope.decl(metadata !212468)
  %i.cr = icmp ult i64 %i.cq, %i.bh
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.x, %bb.y
  %i.cs = phi i64 [ %i.cv, %bb.y ], [ %i.cq, %bb.x ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !212471, !noundef !14
  switch i8 %i.cu, label %bb.z [
    i8 32, label %bb.y
    i8 10, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 34, label %bb.aa
    i8 125, label %bb.ab
  ], !prof !12326

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = add i64 %i.cs, 1                        ; 3 uses
  store i64 %i.cv, ptr %i.bf, align 8, !alias.scope !212478, !noalias !212481
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cv, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !212483
  store i64 3, ptr %i.f, align 8, !noalias !212483
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !212376

.noexc14.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !212483
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !212483
  store i64 17, ptr %i.g, align 8, !noalias !212483
  %i.cx = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !212376

.noexc15.i.i.i:                                   ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !212483
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !212483
  call void @llvm.experimental.noalias.scope.decl(metadata !212484)
  call void @llvm.experimental.noalias.scope.decl(metadata !212487)
  call void @llvm.experimental.noalias.scope.decl(metadata !212490)
  call void @llvm.experimental.noalias.scope.decl(metadata !212493)
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.bf, align 8, !alias.scope !212496, !noalias !212499
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cz, align 8, !alias.scope !212504, !noalias !212499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !212505
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !212376

.noexc16.i.i.i:                                   ; preds = %bb.aa
  %i.da = load i64, ptr %i.d, align 8, !range !802, !noalias !212505, !noundef !14
  %i.db = icmp eq i64 %i.da, 2
  %i.dc = load ptr, ptr %i.aw, align 8, !noalias !212505, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.db, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !24266

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !212505
  br label %bb.ac

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !noalias !212505
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h119f28009eb093e8E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dc, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !212376

.noexc17.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !1313, !noalias !212483
  %i.dd = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !212505
  br i1 %i.dd, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", label %bb.ad, !prof !16402

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc17.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i, align 8, !noalias !212483
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !212483
  store i64 10, ptr %i.h, align 8, !noalias !212483
  %i.de = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !212376

.noexc18.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !212483
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.df = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.dc, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.dg = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !212376

.noexc19.i.i.i:                                   ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !212483
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ad:                                            ; preds = %.noexc17.i.i.i
  %i.dh = load i8, ptr %i.ax, align 1, !range !85906, !noalias !212483, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !212483
  call void @llvm.experimental.noalias.scope.decl(metadata !212506)
  call void @llvm.experimental.noalias.scope.decl(metadata !212509)
  %i.di = load i64, ptr %i.bg, align 8, !alias.scope !212512, !noalias !212515, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !212518, !noalias !212519 ; 2 uses
  %i.dj = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.di
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_14
begin_hunk_15_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17haeb63ca629add04aE":bb.a

_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i: ; preds = %bb.lc, %bb.lb, %.noexc25.i.i.i, %.noexc24.i.i.i, %.noexc23.i.i.i, %bb.v, %.noexc8.i.i.i, %.noexc7.i.i.i, %bb.i
  %.sroa.1228.0.i.i.i = phi ptr [ %i.bb, %bb.i ], [ %i.eg, %.noexc24.i.i.i ], [ %i.dv, %.noexc23.i.i.i ], [ %i.bq, %.noexc8.i.i.i ], [ %i.bp, %.noexc7.i.i.i ], [ %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %i.eh, %.noexc25.i.i.i ], [ %.sroa.1458.0.i.i.i.i.i.i.i.i, %bb.lb ], [ %.sroa.1458.0.i.i.i.i.i.i.i.i, %bb.lc ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.r, align 8, !noalias !212363 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ej, label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i", label %bb.lj

bb.lj:                                            ; preds = %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i
  %.val4.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !212363, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !212376
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i"

bb.lk:                                            ; preds = %bb.le
  %i.ek = add i64 %i.ec, 1
  store i64 %i.ek, ptr %i.bf, align 8, !alias.scope !212546, !noalias !212409
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %switch.lookup, %bb.lk
  %.sroa.9.0.ph35.i.i.i = phi i8 [ %.sroa.5.0.i.i.i.i.i.i.i.i, %bb.lk ], [ %switch.load, %switch.lookup ]
  %i.el = load i64, ptr %i.as, align 8, !alias.scope !212549, !noalias !212363, !noundef !14 ; 3 uses
  %i.em = load i64, ptr %i.r, align 8, !range !9, !alias.scope !212549, !noalias !212363, !noundef !14
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %.thread.i.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4731b467761b7e7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1724)
          to label %bb.lm unwind label %.loopexit.i.i.i, !noalias !212376

.thread36.i.i.i:                                  ; preds = %bb.j
  %.sroa.032.0.copyload33.i.i = load i64, ptr %i.r, align 8, !noalias !212552
  %.sroa.734.0.copyload36.i.i = load ptr, ptr %i.ar, align 8, !noalias !212552
  %.sroa.8.0.copyload38.i.i = load i64, ptr %i.as, align 8, !noalias !212552
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i"

bb.lm:                                            ; preds = %bb.ll, %.thread.i.i.i
  %i.eo = load ptr, ptr %i.ar, align 8, !alias.scope !212549, !noalias !212363, !nonnull !14, !noundef !14
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.el
  store i8 %.sroa.9.0.ph35.i.i.i, ptr %i.ep, align 1, !noalias !212376
  %i.eq = add i64 %i.el, 1
  br label %bb.h

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i": ; preds = %.thread36.i.i.i, %bb.lj, %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i
  %.sroa.8.0.i.i = phi i64 [ undef, %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i ], [ undef, %bb.lj ], [ %.sroa.8.0.copyload38.i.i, %.thread36.i.i.i ]
  %.sroa.734.0.i.i = phi ptr [ %.sroa.1228.0.i.i.i, %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i ], [ %.sroa.1228.0.i.i.i, %bb.lj ], [ %.sroa.734.0.copyload36.i.i, %.thread36.i.i.i ] ; 6 uses
  %.sroa.032.0.i.i = phi i64 [ -9223372036854775808, %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i ], [ -9223372036854775808, %bb.lj ], [ %.sroa.032.0.copyload33.i.i, %.thread36.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !212363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !212357
  %i.er = load i8, ptr %i.ah, align 8, !range !1313, !alias.scope !212359, !noalias !212358, !noundef !14
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.lp, label %bb.lo

bb.ln:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !212357
  store i64 24, ptr %i.t, align 8, !noalias !212357
  %i.et = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !212358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !212357
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.et, ptr %i.eu, align 8, !alias.scope !212358, !noalias !212359
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !212358, !noalias !212359
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h203a4d323f95e326E.exit"

bb.lo:                                            ; preds = %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i"
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !212359, !noalias !212358, !noundef !14
  %i.ex = add i8 %i.ew, 1
  store i8 %i.ex, ptr %i.ev, align 1, !alias.scope !212359, !noalias !212358
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i"
  %i.ey = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hf374ac2f2ec1a968E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.lr unwind label %bb.lq, !noalias !212358 ; 9 uses

bb.lq:                                            ; preds = %bb.lp
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr133drop_in_place$LT$core..result..Result$LT$alloc..vec..Vec$LT$meilisearch_types..locales..Locale$GT$$C$serde_json..error..Error$GT$$GT$17h65fb743d1cb0a9f1E"(i64 %.sroa.032.0.i.i, ptr %.sroa.734.0.i.i) #81
          to label %common.resume.i.i unwind label %bb.lw, !noalias !212358

bb.lr:                                            ; preds = %bb.lp
  %i.fa = icmp eq i64 %.sroa.032.0.i.i, -9223372036854775808
  %.not62.i.i = icmp eq ptr %i.ey, null           ; 2 uses
  br i1 %i.fa, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  br i1 %.not62.i.i, label %bb.mb, label %bb.lu

bb.lt:                                            ; preds = %bb.lr
  br i1 %.not62.i.i, label %.thread53.i.i, label %bb.lx

bb.lu:                                            ; preds = %bb.ls
  %i.fb = icmp eq i64 %.sroa.032.0.i.i, 0
  br i1 %i.fb, label %.thread53.i.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.734.0.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.734.0.i.i, i64 noundef %.sroa.032.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !212358
  br label %.thread53.i.i

bb.lw:                                            ; preds = %bb.lq
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !212358
  unreachable

bb.lx:                                            ; preds = %bb.lt
  call void @llvm.experimental.noalias.scope.decl(metadata !212553)
  call void @llvm.experimental.noalias.scope.decl(metadata !212556)
  %i.fd = load i64, ptr %i.ey, align 8, !range !3586, !alias.scope !212559, !noalias !212560, !noundef !14
  switch i64 %i.fd, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.ly
    i64 1, label %bb.lz
  ]

bb.ly:                                            ; preds = %bb.lx
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.fe, align 8, !alias.scope !212559, !noalias !212560, !noundef !14 ; 2 uses
  %i.ff = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ff, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ly
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.fg, align 8, !alias.scope !212559, !noalias !212560, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !212563
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.lz:                                            ; preds = %bb.lx
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fh)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.ma, !noalias !212560

bb.ma:                                            ; preds = %bb.lz
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef 40, i64 noundef 8) #79, !noalias !212560
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.lz, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.ly, %bb.lx
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef 40, i64 noundef 8) #79, !noalias !212560
  br label %.thread53.i.i

.thread53.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %bb.lv, %bb.lu, %bb.lt, %bb.e
  %.sroa.9.2.i.i = phi ptr [ %.sroa.734.0.i.i, %bb.lt ], [ %i.ak, %bb.e ], [ %.sroa.734.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" ], [ %i.ey, %bb.lu ], [ %i.ey, %bb.lv ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2.i.i) ]
  %i.fj = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !212358
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fj, ptr %i.fk, align 8, !alias.scope !212358, !noalias !212359
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !212358, !noalias !212359
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h203a4d323f95e326E.exit"

bb.mb:                                            ; preds = %bb.ls
  store i64 %.sroa.032.0.i.i, ptr %0, align 8, !alias.scope !212358, !noalias !212359
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.734.0.i.i, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !alias.scope !212358, !noalias !212359
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i.i, ptr %.sroa.319.0..sroa_idx.i.i, align 8, !alias.scope !212358, !noalias !212359
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h203a4d323f95e326E.exit"

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h203a4d323f95e326E.exit": ; preds = %.loopexit.i.i, %bb.ln, %.thread53.i.i, %bb.mb
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hafaa21a75d0cb862E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212574)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !212577, !noalias !212580, !noundef !14 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !212583, !noalias !212584 ; 2 uses
  %i.ag = icmp ult i64 %.promoted.i.i.i, %i.af
  br i1 %i.ag, label %.lr.ph.i.i.i, label %.loopexit21.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !212577, !noalias !212580, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aj = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.am, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212585)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !212586, !noundef !14
  switch i8 %i.al, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !12229

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.am = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !212587, !noalias !212584
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.af
  br i1 %exitcond.not.i.i.i, label %.loopexit21.i.i, label %bb.b

.loopexit21.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !212590
  store i64 5, ptr %i.y, align 8, !noalias !212590
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y), !noalias !212591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !212590
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !212591, !noalias !212592
  store i8 1, ptr %0, align 8, !alias.scope !212591, !noalias !212592
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h0e8ea9940cf0a068E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !212590
  store i64 10, ptr %i.z, align 8, !noalias !212590
  %i.ap = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z), !noalias !212591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !212590
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !212591, !noalias !212592
  store i8 1, ptr %0, align 8, !alias.scope !212591, !noalias !212592
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h0e8ea9940cf0a068E.exit"

bb.e:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !1313, !alias.scope !212592, !noalias !212591, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.w, label %bb.v

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212616)
  %2 = icmp ult i64 %i.aj, %i.af
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.au = phi i64 [ %i.ax, %bb.g ], [ %i.aj, %bb.f ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !212619, !noundef !14
  switch i8 %i.aw, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !3649

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ax = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ax, ptr %i.ad, align 8, !alias.scope !212630, !noalias !212633
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !212634
  store i64 5, ptr %i.x, align 8, !noalias !212634
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !212635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !212634
  br label %bb.s

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.az = add i64 %i.au, 1
  store i64 %i.az, ptr %i.ad, align 8, !alias.scope !212636, !noalias !212635
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ba, align 8, !alias.scope !212639, !noalias !212635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !212634
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !212635
  %i.bb = load i64, ptr %i.w, align 8, !range !802, !noalias !212634, !noundef !14 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !212634 ; 10 uses
  br i1 %i.bc, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bf = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6224), !noalias !212635
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !212634
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !212634 ; 4 uses
  %i.bg = trunc nuw i64 %i.bb to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  br i1 %i.bg, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hd9f7540328a454a4E.exit.i.i.i.i.i.i.i.i.i" [
    i64 7, label %bb.m
    i64 8, label %bb.n
  ], !prof !5994

bb.m:                                             ; preds = %bb.l
  %i.bh = load i32, ptr %i.be, align 1
  %i.bi = xor i32 %i.bh, 1869049455
  %i.bj = getelementptr i8, ptr %i.be, i64 3
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = xor i32 %i.bk, 1735289199
  %i.bm = or i32 %i.bi, %i.bl
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.u, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hd9f7540328a454a4E.exit.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.bq = load i64, ptr %i.be, align 1
  %i.br = icmp ne i64 %i.bq, 7234303221339941222
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hd9f7540328a454a4E.exit.i.i.i.i.i.i.i.i.i", !prof !15

"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hd9f7540328a454a4E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.l
  %i.bu = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.be, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1419, i64 noundef 2), !noalias !212640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !212634
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9274d98770fb1bfcE.exit.i.i.i.i.i.i.i.i.i [
    i64 7, label %bb.p
    i64 8, label %bb.q
  ], !prof !5994

bb.p:                                             ; preds = %bb.o
  %i.bv = load i32, ptr %i.be, align 1
  %i.bw = xor i32 %i.bv, 1869049455
  %i.bx = getelementptr i8, ptr %i.be, i64 3
  %i.by = load i32, ptr %i.bx, align 1
  %i.bz = xor i32 %i.by, 1735289199
  %i.ca = or i32 %i.bw, %i.bz
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.u, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9274d98770fb1bfcE.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %i.be, align 1
  %i.cf = icmp ne i64 %i.ce, 7234303221339941222
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.t, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9274d98770fb1bfcE.exit.i.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17h9274d98770fb1bfcE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.ci = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.be, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1419, i64 noundef 2), !noalias !212643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !212634
  br label %bb.r

bb.r:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9274d98770fb1bfcE.exit.i.i.i.i.i.i.i.i.i, %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hd9f7540328a454a4E.exit.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hd9f7540328a454a4E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.ci, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9274d98770fb1bfcE.exit.i.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.i ]
  %i.cj = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !212635
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.66.0.ph.i.i.i = phi ptr [ %i.cj, %bb.r ], [ %i.ay, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.be, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.66.0.ph.i.i.i) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.66.0.ph.i.i.i, ptr %i.ck, align 8, !alias.scope !212648, !noalias !212649
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf356d95c980ef69fE.exit.i.i"

bb.t:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !212634
  call void @llvm.experimental.noalias.scope.decl(metadata !212650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !212653
  store i8 13, ptr %i.v, align 8, !noalias !212653
  %i.cl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.v, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !212654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !212653
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !alias.scope !212654, !noalias !212649
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf356d95c980ef69fE.exit.i.i"

bb.u:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !212634
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.cn, align 1, !alias.scope !212648, !noalias !212649
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf356d95c980ef69fE.exit.i.i"

"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf356d95c980ef69fE.exit.i.i": ; preds = %bb.u, %bb.t, %bb.s
  %.sink.i.i.i = phi i8 [ 1, %bb.t ], [ 0, %bb.u ], [ 1, %bb.s ]
  store i8 %.sink.i.i.i, ptr %0, align 8, !alias.scope !212648, !noalias !212649
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h0e8ea9940cf0a068E.exit"

bb.v:                                             ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !212592, !noalias !212591, !noundef !14
  %i.cq = add i8 %i.cp, -1                        ; 2 uses
  store i8 %i.cq, ptr %i.co, align 1, !alias.scope !212592, !noalias !212591
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.cr, label %bb.w, !prof !121

bb.w:                                             ; preds = %bb.v, %bb.e
  %i.cs = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.cs, ptr %i.ad, align 8, !alias.scope !212655, !noalias !212591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212667)
  %i.ct = icmp ult i64 %i.cs, %i.af
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %bb.x
  %i.cu = phi i64 [ %i.cx, %bb.x ], [ %i.cs, %bb.w ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !212670, !noundef !14
  switch i8 %i.cw, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.ah
  ], !prof !12326

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cx = add i64 %i.cu, 1                        ; 3 uses
  store i64 %i.cx, ptr %i.ad, align 8, !alias.scope !212678, !noalias !212681
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cx, %i.af
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !212682
  store i64 3, ptr %i.s, align 8, !noalias !212682
  %i.cy = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !212683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !212682
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7393608738aa2b2aE.exit.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !212682
  store i64 17, ptr %i.t, align 8, !noalias !212682
  %i.cz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !212683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !212682
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7393608738aa2b2aE.exit.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212693)
  %i.da = add i64 %i.cu, 1
  store i64 %i.da, ptr %i.ad, align 8, !alias.scope !212696, !noalias !212699
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.db, align 8, !alias.scope !212704, !noalias !212699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !212705
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !212699
  %i.dc = load i64, ptr %i.r, align 8, !range !802, !noalias !212705, !noundef !14 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !212705 ; 9 uses
  br i1 %i.dd, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i, align 8, !noalias !212705 ; 3 uses
  %i.dg = trunc nuw i64 %i.dc to i1
end_hunk_15
begin_hunk_16_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hb21e1c3a9437f0fdE":bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !212930, !noalias !212933, !nonnull !14, !align !584, !noundef !14
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.cd = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.cg, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212938)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !212939, !noundef !14
  switch i8 %i.cf, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !3649

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.cg = add i64 %i.cd, 1                        ; 3 uses
  store i64 %i.cg, ptr %i.bx, align 8, !alias.scope !212940, !noalias !212937
  %exitcond.not.i.i.i = icmp eq i64 %i.cg, %i.bz
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !212943
  store i64 5, ptr %i.bw, align 8, !noalias !212943
  %i.ch = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bw), !noalias !212944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !212943
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h48eb47489a031d28E.exit"

bb.d:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !range !1313, !alias.scope !212945, !noalias !212944, !noundef !14
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.cl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6200), !noalias !212944
  br label %bb.lf

bb.f:                                             ; preds = %bb.d
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !212945, !noalias !212944, !noundef !14
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !alias.scope !212945, !noalias !212944
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.kt, label %bb.g, !prof !121

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.cq = add i64 %i.cd, 1
  store i64 %i.cq, ptr %i.bx, align 8, !alias.scope !212946, !noalias !212944
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.927.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !212943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !212943
  store ptr %1, ptr %i.bs, align 8, !noalias !212949
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 1, ptr %i.cr, align 8, !noalias !212949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !212949
  store ptr null, ptr %i.br, align 8, !noalias !212949
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !noalias !212949
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.73.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5109.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.645.0..sroa_idx46.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 14 uses
  %.sroa.748.0..sroa_idx49.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 14 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.95.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %.sroa.156.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.167.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.183.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.3.sroa.5.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.3.sroa.6.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.3.sroa.7.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %.sink62.i.sroa.gep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %.sink62.i.sroa.gep92.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %.sink61.i.sroa.gep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sink61.i.sroa.gep94.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.sroa.842.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.845.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %.sroa.948.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %.sroa.1154.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.02.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.02.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.02.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %.sroa.76.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  br label %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17he25c8a2554d0fec9E.exit.i.i.i.outer"

"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17he25c8a2554d0fec9E.exit.i.i.i.outer": ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17ha3859f81fdd49b26E.exit.thread.i.i.i", %bb.g
  %.ph3044 = phi ptr [ %i.ajx, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17ha3859f81fdd49b26E.exit.thread.i.i.i" ], [ null, %bb.g ] ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.ph3044, null
  br label %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17he25c8a2554d0fec9E.exit.i.i.i"

"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17he25c8a2554d0fec9E.exit.i.i.i": ; preds = %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17he25c8a2554d0fec9E.exit.i.i.i.backedge", %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17he25c8a2554d0fec9E.exit.i.i.i.outer"
  call void @llvm.experimental.noalias.scope.decl(metadata !212953)
  call void @llvm.experimental.noalias.scope.decl(metadata !212956)
  call void @llvm.experimental.noalias.scope.decl(metadata !212959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !212962
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17hbff30297a975e291E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %.noexc.i.i.i unwind label %bb.if, !noalias !212966

.noexc.i.i.i:                                     ; preds = %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17he25c8a2554d0fec9E.exit.i.i.i"
  %i.dy = load i8, ptr %i.bp, align 8, !range !1313, !noalias !212962, !noundef !14
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !212962, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !212962
  br label %bb.ig

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ec = load i8, ptr %i.ct, align 1, !range !1313, !noalias !212962, !noundef !14
  %i.ed = trunc nuw i8 %i.ec to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !212962
  br i1 %i.ed, label %bb.j, label %_ZN10serde_core2de9MapAccess10next_entry17h5a82cbcea2ea1f1bE.exit.thread28.i.i.i

_ZN10serde_core2de9MapAccess10next_entry17h5a82cbcea2ea1f1bE.exit.thread28.i.i.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false), !noalias !212967
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h69f1ff98dc722414E.exit.i.i"

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !212962
  %i.ee = load ptr, ptr %i.bs, align 8, !alias.scope !212968, !noalias !212969, !nonnull !14, !align !240, !noundef !14 ; 53 uses
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_string17h00c9baf95e8d7dc2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ee)
          to label %.noexc5.i.i.i unwind label %bb.if, !noalias !212966

.noexc5.i.i.i:                                    ; preds = %bb.j
  %i.ef = load i64, ptr %i.bo, align 8, !range !2917, !noalias !212962, !noundef !14 ; 16 uses
  %i.eg = icmp eq i64 %i.ef, -9223372036854775808
  %i.eh = load ptr, ptr %i.cu, align 8, !noalias !212970 ; 15 uses
  br i1 %i.eg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !212962
  br label %bb.ig

bb.l:                                             ; preds = %.noexc5.i.i.i
  %.sroa.14.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !212970 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !212962
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !212971)
  call void @llvm.experimental.noalias.scope.decl(metadata !212974)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 40 ; 21 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !212977, !noalias !212980, !noundef !14 ; 8 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !212985, !noalias !212986 ; 2 uses
  %i.el = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.ek
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 5 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !212977, !noalias !212980, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i
  %i.eo = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.er, %bb.n ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212987)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !212988, !noundef !14
  switch i8 %i.eq, label %bb.o [
    i8 32, label %bb.n
    i8 10, label %bb.n
    i8 9, label %bb.n
    i8 13, label %bb.n
    i8 58, label %bb.p
  ], !prof !3649

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.er = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.er, ptr %i.ei, align 8, !alias.scope !212989, !noalias !212986
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.er, %i.ek
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.m

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.l, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !212992
  store i64 3, ptr %i.bm, align 8, !noalias !212992
  %i.es = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bm)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

.noexc.i.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !212992
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h26734238b196f8bfE.exit.thread.i.i.i.i.i"

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !212992
  store i64 6, ptr %i.bn, align 8, !noalias !212992
  %i.et = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bn)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

.noexc7.i.i.i.i.i:                                ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !212992
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h26734238b196f8bfE.exit.thread.i.i.i.i.i"

bb.p:                                             ; preds = %bb.m
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.ei, align 8, !alias.scope !212994, !noalias !212997
  call void @llvm.experimental.noalias.scope.decl(metadata !212998)
  call void @llvm.experimental.noalias.scope.decl(metadata !213001)
  call void @llvm.experimental.noalias.scope.decl(metadata !213004)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !213007)
  %i.ev = icmp ult i64 %i.eu, %i.ek
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit47.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.p, %bb.q
  %i.ew = phi i64 [ %i.ez, %bb.q ], [ %i.eu, %bb.p ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !noalias !213010, !noundef !14
  switch i8 %i.ey, label %bb.r [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
    i8 123, label %bb.s
    i8 34, label %bb.t
  ], !prof !12229

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ez = add i64 %i.ew, 1                        ; 3 uses
  store i64 %i.ez, ptr %i.ei, align 8, !alias.scope !213018, !noalias !213021
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ez, %i.ek
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit47.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit47.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !213022
  store i64 5, ptr %i.bg, align 8, !noalias !213022
  %i.fa = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bg)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

.noexc8.i.i.i.i.i:                                ; preds = %.loopexit47.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !213022
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h26734238b196f8bfE.exit.thread111.i.i.i.i.i"

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !213022
  store i64 10, ptr %i.bh, align 8, !noalias !213022
  %i.fb = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bh)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

.noexc9.i.i.i.i.i:                                ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !213022
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h26734238b196f8bfE.exit.thread111.i.i.i.i.i"

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 56 ; 11 uses
  %i.fd = load i8, ptr %i.fc, align 8, !range !1313, !alias.scope !213023, !noalias !213024, !noundef !14
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ai, label %bb.ah

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !213025)
  call void @llvm.experimental.noalias.scope.decl(metadata !213028)
  call void @llvm.experimental.noalias.scope.decl(metadata !213031)
  call void @llvm.experimental.noalias.scope.decl(metadata !213034)
  call void @llvm.experimental.noalias.scope.decl(metadata !213037)
  call void @llvm.experimental.noalias.scope.decl(metadata !213040)
  call void @llvm.experimental.noalias.scope.decl(metadata !213043)
  call void @llvm.experimental.noalias.scope.decl(metadata !213046)
  %2 = icmp ult i64 %i.ew, %i.ek
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.t, %bb.u
  %i.ff = phi i64 [ %i.fi, %bb.u ], [ %i.ew, %bb.t ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !213049, !noundef !14
  switch i8 %i.fh, label %bb.w [
    i8 32, label %bb.u
    i8 10, label %bb.u
    i8 9, label %bb.u
    i8 13, label %bb.u
    i8 34, label %bb.v
  ], !prof !3649

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fi = add i64 %i.ff, 1                        ; 3 uses
  store i64 %i.fi, ptr %i.ei, align 8, !alias.scope !213061, !noalias !213064
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fi, %i.ek
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !213065
  store i64 5, ptr %i.bf, align 8, !noalias !213065
  %i.fj = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bf)
          to label %.noexc10.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

.noexc10.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !213065
  br label %.noexc15.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fk = add i64 %i.ff, 1
  store i64 %i.fk, ptr %i.ei, align 8, !alias.scope !213066, !noalias !213069
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 0, ptr %i.fl, align 8, !alias.scope !213070, !noalias !213069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !213065
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.em, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ee)
          to label %.noexc11.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

.noexc11.i.i.i.i.i:                               ; preds = %bb.v
  %i.fm = load i64, ptr %i.be, align 8, !range !802, !noalias !213065, !noundef !14 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !213065 ; 9 uses
  br i1 %i.fn, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6213)
          to label %.noexc12.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

bb.x:                                             ; preds = %.noexc11.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !213065
  br label %.noexc15.i.i.i.i.i

bb.y:                                             ; preds = %.noexc11.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !213065 ; 3 uses
  %i.fr = trunc nuw i64 %i.fm to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  br i1 %i.fr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h88c68d64fe007fb4E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i" [
    i64 7, label %bb.aa
    i64 8, label %bb.ab
  ], !prof !5994

bb.aa:                                            ; preds = %bb.z
  %i.fs = load i32, ptr %i.fp, align 1
  %i.ft = xor i32 %i.fs, 1869049455
  %i.fu = getelementptr i8, ptr %i.fp, i64 3
  %i.fv = load i32, ptr %i.fu, align 1
  %i.fw = xor i32 %i.fv, 1735289199
  %i.fx = or i32 %i.ft, %i.fw
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ag, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h88c68d64fe007fb4E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.z
  %i.gb = load i64, ptr %i.fp, align 1
  %i.gc = icmp ne i64 %i.gb, 7234303221339941222
  %i.gd = zext i1 %i.gc to i32
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.af, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h88c68d64fe007fb4E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i", !prof !15

"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h88c68d64fe007fb4E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i": ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.gf = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fp, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1419, i64 noundef 2)
          to label %.noexc12.sink.split.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

bb.ac:                                            ; preds = %bb.y
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h88c68d64fe007fb4E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i" [
    i64 7, label %bb.ad
    i64 8, label %bb.ae
  ], !prof !5994

bb.ad:                                            ; preds = %bb.ac
  %i.gg = load i32, ptr %i.fp, align 1
  %i.gh = xor i32 %i.gg, 1869049455
  %i.gi = getelementptr i8, ptr %i.fp, i64 3
  %i.gj = load i32, ptr %i.gi, align 1
  %i.gk = xor i32 %i.gj, 1735289199
  %i.gl = or i32 %i.gh, %i.gk
  %i.gm = icmp ne i32 %i.gl, 0
  %i.gn = zext i1 %i.gm to i32
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.ag, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h88c68d64fe007fb4E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"

bb.ae:                                            ; preds = %bb.ac
  %i.gp = load i64, ptr %i.fp, align 1
  %i.gq = icmp ne i64 %i.gp, 7234303221339941222
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.af, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h88c68d64fe007fb4E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i", !prof !15

.noexc12.sink.split.i.i.i.i.i:                    ; preds = %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h88c68d64fe007fb4E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !213065
  br label %.noexc12.i.i.i.i.i

.noexc12.i.i.i.i.i:                               ; preds = %.noexc12.sink.split.i.i.i.i.i, %bb.w
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fq, %bb.w ], [ %i.gf, %.noexc12.sink.split.i.i.i.i.i ]
  %i.gt = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee)
          to label %.noexc15.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

.noexc15.i.i.i.i.i:                               ; preds = %.noexc12.i.i.i.i.i, %bb.x, %.noexc10.i.i.i.i.i
  %.sroa.63.0.ph.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fp, %bb.x ], [ %i.fj, %.noexc10.i.i.i.i.i ], [ %i.gt, %.noexc12.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.ph.i.i.i.i.i.i.i.i.i.i) ]
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h26734238b196f8bfE.exit.thread111.i.i.i.i.i"

bb.af:                                            ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !213065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !213071
  store i8 13, ptr %i.bd, align 8, !noalias !213071
  %i.gu = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bd, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132)
          to label %.noexc16.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

.noexc16.i.i.i.i.i:                               ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !213071
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h26734238b196f8bfE.exit.thread111.i.i.i.i.i"

bb.ag:                                            ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !213065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !213074
  store i8 13, ptr %i.bc, align 8, !noalias !213074
  %i.gv = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bc, ptr noundef nonnull align 1 @6068, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132)
          to label %.noexc17.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !212993

.noexc17.i.i.i.i.i:                               ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !213074
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h26734238b196f8bfE.exit.thread111.i.i.i.i.i"

bb.ah:                                            ; preds = %bb.s
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ee, i64 57 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !alias.scope !213023, !noalias !213024, !noundef !14
  %i.gy = add i8 %i.gx, -1                        ; 2 uses
  store i8 %i.gy, ptr %i.gw, align 1, !alias.scope !213023, !noalias !213024
  %i.gz = icmp eq i8 %i.gy, 0
  br i1 %i.gz, label %bb.hm, label %bb.ai, !prof !121

bb.ai:                                            ; preds = %bb.ah, %bb.s
  %i.ha = add i64 %i.ew, 1                        ; 3 uses
  store i64 %i.ha, ptr %i.ei, align 8, !alias.scope !213077, !noalias !213024
  call void @llvm.experimental.noalias.scope.decl(metadata !213080)
  call void @llvm.experimental.noalias.scope.decl(metadata !213083)
  call void @llvm.experimental.noalias.scope.decl(metadata !213086)
  call void @llvm.experimental.noalias.scope.decl(metadata !213089)
  %i.hb = icmp ult i64 %i.ha, %i.ek
  br i1 %i.hb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ai, %bb.aj
  %i.hc = phi i64 [ %i.hf, %bb.aj ], [ %i.ha, %bb.ai ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !noalias !213092, !noundef !14
  switch i8 %i.he, label %bb.ak [
    i8 32, label %bb.aj
    i8 10, label %bb.aj
    i8 9, label %bb.aj
    i8 13, label %bb.aj
    i8 34, label %bb.al
    i8 125, label %bb.at
  ], !prof !12326

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hf = add i64 %i.hc, 1                        ; 3 uses
  store i64 %i.hf, ptr %i.ei, align 8, !alias.scope !213100, !noalias !213103
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hf, %i.ek
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !213104
  store i64 3, ptr %i.az, align 8, !noalias !213104
  %i.hg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.az)
          to label %.noexc18.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i.i.i, !noalias !212993

.noexc18.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !213104
  br label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h3a4992aee46aa006E.exit.i.i.i.i.i.i.i.i.i"

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !213104
  store i64 17, ptr %i.ba, align 8, !noalias !213104
  %i.hh = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ba)
          to label %.noexc19.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i.i.i, !noalias !212993

.noexc19.i.i.i.i.i:                               ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !213104
  br label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h3a4992aee46aa006E.exit.i.i.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !213105)
  call void @llvm.experimental.noalias.scope.decl(metadata !213108)
  call void @llvm.experimental.noalias.scope.decl(metadata !213111)
  call void @llvm.experimental.noalias.scope.decl(metadata !213114)
  %i.hi = add i64 %i.hc, 1
  store i64 %i.hi, ptr %i.ei, align 8, !alias.scope !213117, !noalias !213120
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 0, ptr %i.hj, align 8, !alias.scope !213125, !noalias !213120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !213126
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.em, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ee)
          to label %.noexc20.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i.i.i, !noalias !212993

end_hunk_16
begin_hunk_17_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hb3cc58b5bc220a1bE":bb.a
          to label %bb.bt unwind label %bb.bs, !noalias !214148 ; 9 uses

bb.bs:                                            ; preds = %bb.br
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$meilisearch_types..dynamic_search_rules..TimeCondition$C$serde_json..error..Error$GT$$GT$17h461a58b8af91fa11E"(i8 %.sroa.618.0.i.i.i.i.i, ptr %.sroa.1319.0.i.i.i.i.i) #81
          to label %common.resume.i.i.i.i.i unwind label %bb.ab, !noalias !214148

bb.bt:                                            ; preds = %bb.br
  %i.hd = icmp eq i8 %.sroa.618.0.i.i.i.i.i, 2
  br i1 %i.hd, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i, label %bb.ca, label %"_ZN17meilisearch_types20dynamic_search_rules1_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..TimeCondition$GT$11deserialize17hc4152a74d4f6bdc2E.exit.thread12.i.i.i"

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1319.0.i.i.i.i.i) ]
  %.not64.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not64.i.i.i.i.i, label %"_ZN17meilisearch_types20dynamic_search_rules1_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..TimeCondition$GT$11deserialize17hc4152a74d4f6bdc2E.exit.thread12.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !214363)
  call void @llvm.experimental.noalias.scope.decl(metadata !214366)
  %i.he = load i64, ptr %i.hb, align 8, !range !3586, !alias.scope !214369, !noalias !214370, !noundef !14
  switch i64 %i.he, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit56.i.i.i.i.i" [
    i64 0, label %bb.bx
    i64 1, label %bb.by
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %.val1.i.i.i.i53.i.i.i.i.i = load i64, ptr %i.hf, align 8, !alias.scope !214369, !noalias !214370, !noundef !14 ; 2 uses
  %i.hg = icmp eq i64 %.val1.i.i.i.i53.i.i.i.i.i, 0
  br i1 %i.hg, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit56.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i54.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i54.i.i.i.i.i": ; preds = %bb.bx
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.val.i.i.i.i55.i.i.i.i.i = load ptr, ptr %i.hh, align 8, !alias.scope !214369, !noalias !214370, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i55.i.i.i.i.i, i64 noundef %.val1.i.i.i.i53.i.i.i.i.i, i64 noundef 1) #79, !noalias !214373
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit56.i.i.i.i.i"

bb.by:                                            ; preds = %bb.bw
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.hi)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit56.i.i.i.i.i" unwind label %bb.bz, !noalias !214370

bb.bz:                                            ; preds = %bb.by
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef 40, i64 noundef 8) #79, !noalias !214370
  br label %common.resume.i.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit56.i.i.i.i.i": ; preds = %bb.by, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i54.i.i.i.i.i", %bb.bx, %bb.bw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef 40, i64 noundef 8) #79, !noalias !214370
  br label %"_ZN17meilisearch_types20dynamic_search_rules1_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..TimeCondition$GT$11deserialize17hc4152a74d4f6bdc2E.exit.thread12.i.i.i"

"_ZN17meilisearch_types20dynamic_search_rules1_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..TimeCondition$GT$11deserialize17hc4152a74d4f6bdc2E.exit.thread12.i.i.i": ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit56.i.i.i.i.i", %bb.bv, %bb.bu, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i", %bb.aa, %bb.z, %bb.f
  %.sroa.12.3.i.i.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.hb, %bb.bu ], [ %.sroa.1319.0.i.i.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit56.i.i.i.i.i" ], [ %.sroa.1319.0.i.i.i.i.i, %bb.bv ], [ %.sroa.93.0.i.i.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i" ], [ %.sroa.93.0.i.i.i.i.i, %bb.aa ], [ %i.ce, %bb.z ]
  %i.hk = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hacfe37a6d0f6329eE(ptr noalias noundef nonnull align 8 %.sroa.12.3.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !214148
  br label %"_ZN17meilisearch_types20dynamic_search_rules1_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..TimeCondition$GT$11deserialize17hc4152a74d4f6bdc2E.exit.thread.i.i.i"

"_ZN17meilisearch_types20dynamic_search_rules1_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..TimeCondition$GT$11deserialize17hc4152a74d4f6bdc2E.exit.thread.i.i.i": ; preds = %"_ZN17meilisearch_types20dynamic_search_rules1_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..TimeCondition$GT$11deserialize17hc4152a74d4f6bdc2E.exit.thread12.i.i.i", %bb.bp, %bb.u, %.loopexit.i.i.i.i.i
  %.sroa.9.111.i.i.i = phi ptr [ %i.hk, %"_ZN17meilisearch_types20dynamic_search_rules1_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..TimeCondition$GT$11deserialize17hc4152a74d4f6bdc2E.exit.thread12.i.i.i" ], [ %i.an, %.loopexit.i.i.i.i.i ], [ %i.gx, %bb.bp ], [ %i.ca, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037.i.i.i.i.i.i), !noalias !214126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028.i.i.i.i.i.i), !noalias !214126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i.i.i.i.i.i), !noalias !214126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.i.i.i.i), !noalias !214126
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.111.i.i.i, ptr %i.hl, align 8, !alias.scope !214374, !noalias !214375
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 3, ptr %i.hm, align 1, !alias.scope !214374, !noalias !214375
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h12fd8e5f4840654dE.exit"

bb.ca:                                            ; preds = %bb.bu, %bb.z
  %.sroa.02.i.sink.i.i.i.i = phi ptr [ %.sroa.02.i.i.i.i.i, %bb.z ], [ %.sroa.028.i.i.i.i.i.i, %bb.bu ]
  %.sroa.019.i.i.sink.i.i.i.i = phi ptr [ %.sroa.019.i.i.i.i.i.i, %bb.z ], [ %.sroa.037.i.i.i.i.i.i, %bb.bu ]
  %.sroa.18.sroa.7.1.i.i.i.i.i = phi i64 [ %.sroa.14.0.i.i.i.i.i, %bb.z ], [ %.sroa.22.0.i.i.i.i.i, %bb.bu ]
  %.sroa.18.sroa.6.1.i.i.i.i.i = phi i8 [ %.sroa.13.0.i.i.i.i.i, %bb.z ], [ %.sroa.21.0.i.i.i.i.i, %bb.bu ]
  %.sroa.12.1.i.i.i.i.i = phi ptr [ %.sroa.93.0.i.i.i.i.i, %bb.z ], [ %.sroa.1319.0.i.i.i.i.i, %bb.bu ]
  %.sroa.6.1.i.i.i.i.i = phi i8 [ %.sroa.6.035.i.i.i.i.i, %bb.z ], [ %.sroa.618.0.i.i.i.i.i, %bb.bu ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.02.i.sink.i.i.i.i, i64 7, i1 false), !noalias !214375
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.66.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.019.i.i.sink.i.i.i.i, i64 7, i1 false), !noalias !214375
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037.i.i.i.i.i.i), !noalias !214126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028.i.i.i.i.i.i), !noalias !214126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i.i.i.i.i.i), !noalias !214126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.i.i.i.i), !noalias !214126
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.6.1.i.i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i, align 1, !alias.scope !214374, !noalias !214375
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.1.i.i.i.i.i, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !214374, !noalias !214375
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %.sroa.18.sroa.6.1.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !alias.scope !214374, !noalias !214375
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.18.sroa.7.1.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !214374, !noalias !214375
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h12fd8e5f4840654dE.exit"

bb.cb:                                            ; preds = %bb.b
  %i.hn = add i64 %i.ac, 1                        ; 4 uses
  store i64 %i.hn, ptr %i.w, align 8, !alias.scope !214376, !noalias !214379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214380)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 %i.y) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214386)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.hn, %i.y
  br i1 %exitcond.not.i9.not.i.i, label %bb.cc, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i"

bb.cc:                                            ; preds = %bb.cb
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !214389, !noundef !14
  %i.hq = add i64 %i.ac, 2                        ; 3 uses
  store i64 %i.hq, ptr %i.w, align 8, !alias.scope !214393, !noalias !214394
  %.not.i.i.i = icmp eq i8 %i.hp, 117
  br i1 %.not.i.i.i, label %bb.cd, label %bb.ch, !prof !12002

bb.cd:                                            ; preds = %bb.cc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214397)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.hq, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !noalias !214399, !noundef !14
  %i.ht = add i64 %i.ac, 3                        ; 3 uses
  store i64 %i.ht, ptr %i.w, align 8, !alias.scope !214400, !noalias !214394
  %.not.i.1.i.i = icmp eq i8 %i.hs, 108
  br i1 %.not.i.1.i.i, label %bb.cf, label %bb.ch, !prof !12002

bb.cf:                                            ; preds = %bb.ce
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214403)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.ht, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !noalias !214405, !noundef !14
  %i.hw = add i64 %i.ac, 4
  store i64 %i.hw, ptr %i.w, align 8, !alias.scope !214406, !noalias !214394
  %.not.i.2.i.i = icmp eq i8 %i.hv, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h0c2b1a0767e611d5E.exit.i.i", label %bb.ch, !prof !12002

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i": ; preds = %bb.cf, %bb.cd, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !214407
  store i64 5, ptr %i.c, align 8, !noalias !214407
  %i.hx = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hfaa1805a6d08e511E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !214408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !214407
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cg, %bb.ce, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !214407
  store i64 9, ptr %i.b, align 8, !noalias !214407
  %i.hy = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hfaa1805a6d08e511E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !214408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !214407
  br label %bb.ci

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h0c2b1a0767e611d5E.exit.i.i": ; preds = %bb.cg
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 2, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1, !alias.scope !214409, !noalias !214412
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h12fd8e5f4840654dE.exit"

bb.ci:                                            ; preds = %bb.ch, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.hx, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i" ], [ %i.hy, %bb.ch ]
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.hz, align 8, !alias.scope !214379, !noalias !214412
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 3, ptr %i.ia, align 1, !alias.scope !214379, !noalias !214412
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h12fd8e5f4840654dE.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h12fd8e5f4840654dE.exit": ; preds = %"_ZN17meilisearch_types20dynamic_search_rules1_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..TimeCondition$GT$11deserialize17hc4152a74d4f6bdc2E.exit.thread.i.i.i", %bb.ca, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h0c2b1a0767e611d5E.exit.i.i", %bb.ci
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hb87f460e32f22961E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214421)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !214424, !noalias !214427, !noundef !14 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !214431, !noalias !214432 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !214424, !noalias !214427, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214433)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !214434, !noundef !14
  switch i8 %i.y, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.bi
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !214435, !noalias !214432
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214447)
  %i.aa = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.s
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !214450, !noalias !214453, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214459)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !214460, !noundef !14
  switch i8 %i.af, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !12229

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !214461, !noalias !214464
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.d

.loopexit20.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !214465
  store i64 5, ptr %i.l, align 8, !noalias !214465
  %i.ah = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !214466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !214465
  br label %bb.bp

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !214465
  store i64 10, ptr %i.m, align 8, !noalias !214465
  %i.ai = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !214466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !214465
  br label %bb.bp

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !1313, !alias.scope !214467, !noalias !214466, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.ab, label %bb.aa

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214489)
  %2 = icmp ult i64 %i.ad, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.am = phi i64 [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !214492, !noundef !14
  switch i8 %i.ao, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.j
  ], !prof !3649

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.q, align 8, !alias.scope !214504, !noalias !214507
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !214508
  store i64 5, ptr %i.k, align 8, !noalias !214508
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !214509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !214508
  br label %bb.w

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !214510, !noalias !214509
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !214513, !noalias !214509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !214508
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !214509
  %i.at = load i64, ptr %i.j, align 8, !range !802, !noalias !214508, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !214508 ; 12 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165), !noalias !214509
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !214508
  br label %bb.w

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !214508 ; 4 uses
  %i.ay = trunc nuw i64 %i.at to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  br i1 %i.ay, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0a7dbb24b0e77e91E.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i64 8, label %bb.o
    i64 9, label %bb.q
  ], !prof !5994

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.aw, align 1
  %i.ba = icmp ne i64 %i.az, 7810759557946635125
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %i.aw, align 1
  %i.be = icmp ne i64 %i.bd, 8317096714585665382
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.y, label %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0a7dbb24b0e77e91E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.q:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.aw, align 1
  %i.bi = xor i64 %i.bh, 7018100692182265702
  %i.bj = getelementptr i8, ptr %i.aw, i64 8
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = xor i64 %i.bl, 110
  %i.bn = or i64 %i.bi, %i.bm
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.z, label %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0a7dbb24b0e77e91E.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !15

"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0a7dbb24b0e77e91E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.n
  %i.br = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1814, i64 noundef 3), !noalias !214514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !214508
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hce522c41dad6abc7E.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 8, label %bb.s
    i64 9, label %bb.u
  ], !prof !5994

bb.s:                                             ; preds = %bb.r
  %i.bs = load i64, ptr %i.aw, align 1
  %i.bt = icmp ne i64 %i.bs, 7810759557946635125
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load i64, ptr %i.aw, align 1
  %i.bx = icmp ne i64 %i.bw, 8317096714585665382
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.y, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hce522c41dad6abc7E.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.ca = load i64, ptr %i.aw, align 1
  %i.cb = xor i64 %i.ca, 7018100692182265702
  %i.cc = getelementptr i8, ptr %i.aw, i64 8
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i64
  %i.cf = xor i64 %i.ce, 110
  %i.cg = or i64 %i.cb, %i.cf
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.z, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hce522c41dad6abc7E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17hce522c41dad6abc7E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.r
  %i.ck = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1814, i64 noundef 3), !noalias !214517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !214508
  br label %bb.v

bb.v:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17hce522c41dad6abc7E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0a7dbb24b0e77e91E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  %.sroa.1817.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0a7dbb24b0e77e91E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ck, %_ZN10serde_core2de7Visitor18visit_borrowed_str17hce522c41dad6abc7E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.k ]
  %i.cl = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1817.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !214509
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.612.0.ph.i.i.i.i.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.aq, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aw, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.612.0.ph.i.i.i.i.i.i) ]
  br label %bb.bp

bb.x:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !214508
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h17340240a84c8ebbE.exit.i"

bb.y:                                             ; preds = %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !214508
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h17340240a84c8ebbE.exit.i"

bb.z:                                             ; preds = %bb.u, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !214508
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h17340240a84c8ebbE.exit.i"

bb.aa:                                            ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !214467, !noalias !214466, !noundef !14
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !alias.scope !214467, !noalias !214466
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.ba, label %bb.ab, !prof !121

bb.ab:                                            ; preds = %bb.aa, %bb.g
  %i.cq = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.cq, ptr %i.q, align 8, !alias.scope !214522, !noalias !214466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214534)
  %i.cr = icmp ult i64 %i.cq, %i.s
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ab, %bb.ac
  %i.cs = phi i64 [ %i.cv, %bb.ac ], [ %i.cq, %bb.ab ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !214537, !noundef !14
  switch i8 %i.cu, label %bb.ad [
    i8 32, label %bb.ac
    i8 10, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
    i8 34, label %bb.ae
    i8 125, label %bb.ao
  ], !prof !12326

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cv = add i64 %i.cs, 1                        ; 3 uses
  store i64 %i.cv, ptr %i.q, align 8, !alias.scope !214545, !noalias !214548
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cv, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !214549
  store i64 3, ptr %i.g, align 8, !noalias !214549
  %i.cw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !214550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !214549
  br label %"_ZN201_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb952c2c48e1c9cc7E.exit.i.i.i.i.i"

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !214549
  store i64 17, ptr %i.h, align 8, !noalias !214549
  %i.cx = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !214550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !214549
  br label %"_ZN201_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb952c2c48e1c9cc7E.exit.i.i.i.i.i"

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214560)
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.q, align 8, !alias.scope !214563, !noalias !214566
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cz, align 8, !alias.scope !214571, !noalias !214566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !214572
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !214566
  %i.da = load i64, ptr %i.f, align 8, !range !802, !noalias !214572, !noundef !14 ; 2 uses
  %i.db = icmp eq i64 %i.da, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !214572 ; 11 uses
  br i1 %i.db, label %bb.ap, label %bb.af

end_hunk_17
begin_hunk_18_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcc73a3fe9fe9a5e4E":bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cy, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !216502
  br label %.body.i.i.i

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h1ee7ea461bb3ca93E.exit.thread.i.i.i": ; preds = %bb.fw, %.loopexit121.i.i.i.i.i.i, %bb.eo, %bb.dv
  %i.vo = phi ptr [ %i.nd, %bb.fw ], [ %i.co, %.loopexit121.i.i.i.i.i.i ], [ %i.co, %bb.eo ], [ %i.lp, %bb.dv ]
  %i.vp = load i64, ptr %i.bp, align 8, !alias.scope !216274, !noalias !216307, !noundef !14
  %i.vq = add i64 %i.vp, 1
  store i64 %i.vq, ptr %i.bp, align 8, !alias.scope !216274, !noalias !216307
  br label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h4d5aa2e701cb9cc9E.exit.i.i.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h1ee7ea461bb3ca93E.exit.i.i.i": ; preds = %bb.ds, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb36d16c7d14a2f25E.exit.i.i.i.i.i"
  %i.vr = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i1288 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %i.vr, i64 80, i1 false), !noalias !216507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.vr, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.an, i64 80, i1 false), !noalias !216508
  %.pr.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !216511, !noalias !215995
  %i.vs = icmp ugt i64 %.pr.i.i.i, -9223372036854775804
  br i1 %i.vs, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h4d5aa2e701cb9cc9E.exit.i.i.i", label %bb.gb

bb.gb:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h1ee7ea461bb3ca93E.exit.i.i.i"
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hac7f4c13cf586152E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.am)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h4d5aa2e701cb9cc9E.exit.i.i.i" unwind label %bb.dl, !noalias !216012

"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h4d5aa2e701cb9cc9E.exit.i.i.i": ; preds = %bb.gb, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h1ee7ea461bb3ca93E.exit.i.i.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h1ee7ea461bb3ca93E.exit.thread.i.i.i"
  %i.vt = phi ptr [ %i.co, %bb.gb ], [ %i.co, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h1ee7ea461bb3ca93E.exit.i.i.i" ], [ %i.vo, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h1ee7ea461bb3ca93E.exit.thread.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !215995
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.go, %bb.gg, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.wp, %bb.go ], [ %i.wc, %bb.gg ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.gc:                                            ; preds = %.body.i.i.i
  %i.vu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !216012
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h750998ac7e6696c1E.exit.i.i": ; preds = %bb.dm, %_ZN10serde_core2de9MapAccess10next_entry17hfcbfaaf716f71408E.exit.thread25.i.i.i
  %.sroa.025.0.i.i = phi i64 [ 1, %bb.dm ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17hfcbfaaf716f71408E.exit.thread25.i.i.i ]
  %.sroa.726.0.i.i = phi ptr [ %.sroa.9.0.ph.i.i.i, %bb.dm ], [ %i.co, %_ZN10serde_core2de9MapAccess10next_entry17hfcbfaaf716f71408E.exit.thread25.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !215995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !215989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !215989
  %i.vv = load i8, ptr %i.bf, align 8, !range !1313, !alias.scope !215991, !noalias !215990, !noundef !14
  %i.vw = trunc nuw i8 %i.vv to i1
  br i1 %i.vw, label %bb.gf, label %bb.ge

bb.gd:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !215989
  store i64 24, ptr %i.as, align 8, !noalias !215989
  %i.vx = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as), !noalias !215990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !215989
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h99b7200b9ec3921aE.exit"

bb.ge:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h750998ac7e6696c1E.exit.i.i"
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.vz = load i8, ptr %i.vy, align 1, !alias.scope !215991, !noalias !215990, !noundef !14
  %i.wa = add i8 %i.vz, 1
  store i8 %i.wa, ptr %i.vy, align 1, !alias.scope !215991, !noalias !215990
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h750998ac7e6696c1E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !215989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !215989
  store i64 %.sroa.025.0.i.i, ptr %i.aq, align 8, !noalias !215989
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.726.0.i.i, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !noalias !215989
  %.sroa.927.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.i.i, i64 16, i1 false), !noalias !215989
  %i.wb = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.gh unwind label %bb.gg, !noalias !215990 ; 10 uses

bb.gg:                                            ; preds = %bb.gf
  %i.wc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr225drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..ExportIndexSettings$GT$$C$serde_json..error..Error$GT$$GT$17h96d9ccb1381be780E"(ptr noalias noundef align 8 dereferenceable(32) %i.aq) #81
          to label %common.resume.i.i unwind label %bb.gk, !noalias !215990

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !215989
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.wb, ptr %i.wd, align 8, !noalias !215989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !215989
  %i.we = load i64, ptr %i.ar, align 8, !range !751, !noalias !215989, !noundef !14
  %i.wf = trunc nuw i64 %i.we to i1
  br i1 %i.wf, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.not.i.i = icmp eq ptr %i.wb, null
  br i1 %.not.i.i, label %bb.gq, label %.thread40.i.i, !prof !12002

bb.gj:                                            ; preds = %bb.gh
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !noalias !215989, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  %.not43.i.i = icmp eq ptr %i.wb, null
  br i1 %.not43.i.i, label %.thread37.i.i, label %bb.gl

.thread40.i.i:                                    ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call fastcc void @"_ZN4core3ptr170drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h7e965524325b2168E"(ptr noalias noundef align 8 dereferenceable(24) %i.wi), !noalias !215990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !215989
  br label %bb.gp

bb.gk:                                            ; preds = %bb.gg
  %i.wj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !215990
  unreachable

.thread37.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !215989
  br label %bb.gp

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.experimental.noalias.scope.decl(metadata !216514)
  call void @llvm.experimental.noalias.scope.decl(metadata !216517)
  %i.wk = load i64, ptr %i.wb, align 8, !range !3586, !alias.scope !216520, !noalias !216521, !noundef !14
  switch i64 %i.wk, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.gm
    i64 1, label %bb.gn
  ]

bb.gm:                                            ; preds = %bb.gl
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.wl, align 8, !alias.scope !216520, !noalias !216521, !noundef !14 ; 2 uses
  %i.wm = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.wm, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.gm
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.wn, align 8, !alias.scope !216520, !noalias !216521, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !216524
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.gn:                                            ; preds = %bb.gl
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.wo)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.go, !noalias !216521

bb.go:                                            ; preds = %bb.gn
  %i.wp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wb, i64 noundef 40, i64 noundef 8) #79, !noalias !216521
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.gn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.gm, %bb.gl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wb, i64 noundef 40, i64 noundef 8) #79, !noalias !216521
  br label %.thread37.i.i

bb.gp:                                            ; preds = %.thread37.i.i, %.thread40.i.i, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.wb, %.thread40.i.i ], [ %i.bi, %bb.e ], [ %i.wh, %.thread37.i.i ]
  %i.wq = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !215990
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h99b7200b9ec3921aE.exit"

bb.gq:                                            ; preds = %bb.gi
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.wr, align 8, !noalias !215989
  %.sroa.29.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.215.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx.i.i, i64 16, i1 false), !noalias !215991
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !215989
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h99b7200b9ec3921aE.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h99b7200b9ec3921aE.exit": ; preds = %.loopexit.i.i, %bb.gd, %bb.gp, %bb.gq
  %.sink980.i = phi ptr [ %i.be, %.loopexit.i.i ], [ %i.vx, %bb.gd ], [ %i.wq, %bb.gp ], [ %.sroa.08.0.copyload.i.i, %bb.gq ]
  %.sink.i = phi i64 [ 1, %.loopexit.i.i ], [ 1, %bb.gd ], [ 1, %bb.gp ], [ 0, %bb.gq ]
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink980.i, ptr %i.ws, align 8, !alias.scope !215990, !noalias !215991
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !215990, !noalias !215991
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcea8b92016fb95deE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216535)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !216538, !noalias !216541, !noundef !14 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !216544, !noalias !216545 ; 2 uses
  %i.r = icmp ult i64 %.promoted.i.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %.loopexit20.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !216538, !noalias !216541, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216546)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !216547, !noundef !14
  switch i8 %i.w, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !12229

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.x = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !216548, !noalias !216545
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %i.q
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i, label %bb.b

.loopexit20.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !216551
  store i64 5, ptr %i.j, align 8, !noalias !216551
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !216552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !216551
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !216552, !noalias !216553
  store i8 1, ptr %0, align 8, !alias.scope !216552, !noalias !216553
  br label %"_ZN5milli6update15index_documents1_111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$11deserialize17hf35e33e3a8552efbE.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !216551
  store i64 10, ptr %i.k, align 8, !noalias !216551
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !216552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !216551
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !216552, !noalias !216553
  store i8 1, ptr %0, align 8, !alias.scope !216552, !noalias !216553
  br label %"_ZN5milli6update15index_documents1_111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$11deserialize17hf35e33e3a8552efbE.exit"

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !1313, !alias.scope !216553, !noalias !216552, !noundef !14
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.w, label %bb.v

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216577)
  %2 = icmp ult i64 %i.u, %i.q
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.af = phi i64 [ %i.ai, %bb.g ], [ %i.u, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !216580, !noundef !14
  switch i8 %i.ah, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !3649

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ai = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.o, align 8, !alias.scope !216591, !noalias !216594
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !216595
  store i64 5, ptr %i.i, align 8, !noalias !216595
  %i.aj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !216596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !216595
  br label %bb.s

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ak = add i64 %i.af, 1
  store i64 %i.ak, ptr %i.o, align 8, !alias.scope !216597, !noalias !216596
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.al, align 8, !alias.scope !216600, !noalias !216596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !216595
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !216596
  %i.am = load i64, ptr %i.h, align 8, !range !802, !noalias !216595, !noundef !14 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !216595 ; 10 uses
  br i1 %i.an, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6218), !noalias !216596
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !216595
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !216595 ; 4 uses
  %i.ar = trunc nuw i64 %i.am to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  br i1 %i.ar, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h07759ed20f2dac39E.exit.i.i.i.i.i.i.i.i.i" [
    i64 6, label %bb.m
    i64 4, label %bb.n
  ], !prof !5994

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.ap, align 1
  %i.at = xor i32 %i.as, 1634038339
  %i.au = getelementptr i8, ptr %i.ap, i64 4
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = zext i16 %i.av to i32
  %i.ax = xor i32 %i.aw, 25972
  %i.ay = or i32 %i.at, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.u, label %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h07759ed20f2dac39E.exit.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %i.ap, align 1
  %i.bd = icmp ne i32 %i.bc, 1885956947
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.t, label %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h07759ed20f2dac39E.exit.i.i.i.i.i.i.i.i.i", !prof !15

"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h07759ed20f2dac39E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.l
  %i.bg = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1867, i64 noundef 2), !noalias !216601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !216595
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17head04f6c47ff59e2E.exit.i.i.i.i.i.i.i.i.i [
    i64 6, label %bb.p
    i64 4, label %bb.q
  ], !prof !5994

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr %i.ap, align 1
  %i.bi = xor i32 %i.bh, 1634038339
  %i.bj = getelementptr i8, ptr %i.ap, i64 4
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = zext i16 %i.bk to i32
  %i.bm = xor i32 %i.bl, 25972
  %i.bn = or i32 %i.bi, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17head04f6c47ff59e2E.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.br = load i32, ptr %i.ap, align 1
  %i.bs = icmp ne i32 %i.br, 1885956947
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17head04f6c47ff59e2E.exit.i.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17head04f6c47ff59e2E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.bv = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1867, i64 noundef 2), !noalias !216604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !216595
  br label %bb.r

bb.r:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17head04f6c47ff59e2E.exit.i.i.i.i.i.i.i.i.i, %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h07759ed20f2dac39E.exit.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h07759ed20f2dac39E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.bv, %_ZN10serde_core2de7Visitor18visit_borrowed_str17head04f6c47ff59e2E.exit.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.i ]
  %i.bw = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !216596
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.aj, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.69.0.ph.i.i.i, ptr %i.bx, align 8, !alias.scope !216609, !noalias !216610
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17haa2e7bc933c7f9beE.exit.i.i"

bb.t:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !216595
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.by, align 1, !alias.scope !216609, !noalias !216610
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17haa2e7bc933c7f9beE.exit.i.i"

bb.u:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !216595
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.bz, align 1, !alias.scope !216609, !noalias !216610
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17haa2e7bc933c7f9beE.exit.i.i"

"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17haa2e7bc933c7f9beE.exit.i.i": ; preds = %bb.u, %bb.t, %bb.s
  %storemerge.i.i.i = phi i8 [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ]
  store i8 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !216609, !noalias !216610
  br label %"_ZN5milli6update15index_documents1_111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$11deserialize17hf35e33e3a8552efbE.exit"

bb.v:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !216553, !noalias !216552, !noundef !14
  %i.cc = add i8 %i.cb, -1                        ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !alias.scope !216553, !noalias !216552
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.ar, label %bb.w, !prof !121

bb.w:                                             ; preds = %bb.v, %bb.e
  %i.ce = add i64 %i.u, 1                         ; 3 uses
  store i64 %i.ce, ptr %i.o, align 8, !alias.scope !216611, !noalias !216552
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216623)
  %i.cf = icmp ult i64 %i.ce, %i.q
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %bb.x
  %i.cg = phi i64 [ %i.cj, %bb.x ], [ %i.ce, %bb.w ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !216626, !noundef !14
  switch i8 %i.ci, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.ah
  ], !prof !12326

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cj = add i64 %i.cg, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.o, align 8, !alias.scope !216634, !noalias !216637
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cj, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !216638
  store i64 3, ptr %i.e, align 8, !noalias !216638
  %i.ck = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !216639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !216638
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hcee908a0d600d2c3E.exit.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !216638
  store i64 17, ptr %i.f, align 8, !noalias !216638
  %i.cl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !216639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !216638
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hcee908a0d600d2c3E.exit.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216649)
  %i.cm = add i64 %i.cg, 1
  store i64 %i.cm, ptr %i.o, align 8, !alias.scope !216652, !noalias !216655
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cn, align 8, !alias.scope !216660, !noalias !216655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !216661
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !216655
  %i.co = load i64, ptr %i.d, align 8, !range !802, !noalias !216661, !noundef !14 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !216661 ; 9 uses
  br i1 %i.cp, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i, align 8, !noalias !216661 ; 3 uses
  %i.cs = trunc nuw i64 %i.co to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  br i1 %i.cs, label %bb.ab, label %bb.ae

end_hunk_18
begin_hunk_19_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he2fe2f8d96387eb3E":bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !218176, !noalias !218177, !noundef !14 ; 2 uses
  %i.bz = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.bz, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ai
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !218176, !noalias !218177, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !218180
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cb)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.ak, !noalias !218177

bb.ak:                                            ; preds = %bb.aj
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef 40, i64 noundef 8) #79, !noalias !218177
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.aj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.ai, %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef 40, i64 noundef 8) #79, !noalias !218177
  br label %.thread37.i.i

bb.al:                                            ; preds = %.thread37.i.i, %.thread40.i.i, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.bo, %.thread40.i.i ], [ %i.ab, %bb.e ], [ %i.bu, %.thread37.i.i ]
  %i.cd = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !218116
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h333c2b2e93bd535eE.exit"

bb.am:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.ce, align 8, !noalias !218115
  %.sroa.29.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.215.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx.i.i, i64 16, i1 false), !noalias !218117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !218115
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h333c2b2e93bd535eE.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h333c2b2e93bd535eE.exit": ; preds = %.loopexit.i.i, %bb.z, %bb.al, %bb.am
  %.sink29.i = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.bk, %bb.z ], [ %i.cd, %bb.al ], [ %.sroa.08.0.copyload.i.i, %bb.am ]
  %.sink.i = phi i64 [ 1, %.loopexit.i.i ], [ 1, %bb.z ], [ 1, %bb.al ], [ 0, %bb.am ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink29.i, ptr %i.cf, align 8, !alias.scope !218116, !noalias !218117
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !218116, !noalias !218117
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he46df4242adef74bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218191)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !218194, !noalias !218197, !noundef !14 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !218200, !noalias !218201 ; 2 uses
  %i.y = icmp ult i64 %.promoted.i.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !218194, !noalias !218197, !nonnull !14, !align !584, !noundef !14
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ab = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218202)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !218203, !noundef !14
  switch i8 %i.ad, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !3649

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.v, align 8, !alias.scope !218204, !noalias !218201
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, %i.x
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !218207
  store i64 5, ptr %i.u, align 8, !noalias !218207
  %i.af = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !218208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !218207
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !218208, !noalias !218209
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !218208, !noalias !218209
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h24a3e73b6b85fd92E.exit"

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !1313, !alias.scope !218209, !noalias !218208, !noundef !14
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6202), !noalias !218208
  br label %.thread51.i.i

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !218209, !noalias !218208, !noundef !14
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.al, align 1, !alias.scope !218209, !noalias !218208
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.ff, label %bb.g, !prof !121

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ap = add i64 %i.ab, 1
  store i64 %i.ap, ptr %i.v, align 8, !alias.scope !218210, !noalias !218208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !218207
  store ptr %1, ptr %i.s, align 8, !noalias !218213
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 1, ptr %i.aq, align 8, !noalias !218213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !218213
  store i64 0, ptr %i.r, align 8, !noalias !218213
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ar, align 8, !noalias !218213
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.fs, %bb.fi, %bb.fa, %bb.ez
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.ez ], [ %i.fh, %bb.fs ], [ %lpad.phi.i.i.i, %bb.fa ], [ %i.ey, %bb.fi ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.fe, %bb.g
  %storemerge.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ep, %bb.fe ]
  store i64 %storemerge.i.i.i, ptr %i.as, align 8, !noalias !218213
  call void @llvm.experimental.noalias.scope.decl(metadata !218217)
  call void @llvm.experimental.noalias.scope.decl(metadata !218220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !218223
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17hd72221b623066d80E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !218226

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ay = load i8, ptr %i.q, align 8, !range !1313, !noalias !218223, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !218223, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !218223
  br label %.loopexit45.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bc = load i8, ptr %i.at, align 1, !range !1313, !noalias !218223, !noundef !14
  %i.bd = trunc nuw i8 %i.bc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !218223
  br i1 %i.bd, label %bb.k, label %_ZN10serde_core2de9SeqAccess12next_element17hca54228af5b94139E.exit.thread32.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.s, align 8, !alias.scope !218227, !noalias !218228, !nonnull !14, !align !240, !noundef !14 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218229)
  call void @llvm.experimental.noalias.scope.decl(metadata !218232)
  call void @llvm.experimental.noalias.scope.decl(metadata !218235)
  call void @llvm.experimental.noalias.scope.decl(metadata !218238)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !218241, !noalias !218244, !noundef !14 ; 6 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !218250, !noalias !218251 ; 2 uses
  %i.bi = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !218241, !noalias !218244, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.m ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218252)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !218253, !noundef !14
  switch i8 %i.bn, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %bb.p
  ], !prof !12229

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bo = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bo, ptr %i.bf, align 8, !alias.scope !218254, !noalias !218251
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bo, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i:                      ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !218257
  store i64 5, ptr %i.l, align 8, !noalias !218257
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !218226

.noexc4.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !218257
  br label %.loopexit45.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !218257
  store i64 10, ptr %i.m, align 8, !noalias !218257
  %i.bq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !218226

.noexc5.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !218257
  br label %.loopexit45.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !1313, !alias.scope !218258, !noalias !218259, !noundef !14
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.w, label %bb.v

bb.p:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !218260)
  call void @llvm.experimental.noalias.scope.decl(metadata !218263)
  call void @llvm.experimental.noalias.scope.decl(metadata !218266)
  call void @llvm.experimental.noalias.scope.decl(metadata !218269)
  call void @llvm.experimental.noalias.scope.decl(metadata !218272)
  call void @llvm.experimental.noalias.scope.decl(metadata !218275)
  call void @llvm.experimental.noalias.scope.decl(metadata !218278)
  call void @llvm.experimental.noalias.scope.decl(metadata !218281)
  %2 = icmp ult i64 %i.bl, %i.bh
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p, %bb.q
  %i.bu = phi i64 [ %i.bx, %bb.q ], [ %i.bl, %bb.p ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !218284, !noundef !14 ; 2 uses
  switch i8 %i.bw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = add i64 %i.bu, 1                        ; 3 uses
  store i64 %i.bx, ptr %i.bf, align 8, !alias.scope !218296, !noalias !218299
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !218300
  %i.by = icmp eq i8 %i.bw, 34
  br i1 %i.by, label %bb.r, label %bb.s, !prof !15

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !218300
  store i64 5, ptr %i.k, align 8, !noalias !218300
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !218226

.noexc6.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !218300
  br label %_ZN10serde_core2de10EnumAccess7variant17h60b1748cb9ee5d48E.exit.thread.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ca = add i64 %i.bu, 1
  store i64 %i.ca, ptr %i.bf, align 8, !alias.scope !218301, !noalias !218304
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cb, align 8, !alias.scope !218305, !noalias !218304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !218300
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc7.i.i.i unwind label %.loopexit.i.i.i, !noalias !218226

.noexc7.i.i.i:                                    ; preds = %bb.r
  %i.cc = load i64, ptr %i.i, align 8, !range !802, !noalias !218300, !noundef !14
  %i.cd = icmp eq i64 %i.cc, 2
  %i.ce = load ptr, ptr %i.au, align 8, !noalias !218300 ; 3 uses
  br i1 %i.cd, label %bb.t, label %bb.u

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6221)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !218226

bb.t:                                             ; preds = %.noexc7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !218300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !218300
  br label %_ZN10serde_core2de10EnumAccess7variant17h60b1748cb9ee5d48E.exit.thread.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %.noexc7.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !218300
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h5e2252c4d245f952E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc9.i.i.i unwind label %.loopexit.i.i.i, !noalias !218226

.noexc9.i.i.i:                                    ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !218300
  %i.cg = load i8, ptr %i.j, align 8, !range !1313, !noalias !218300, !noundef !14
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17hca54228af5b94139E.exit.thread37.i.i.i, !prof !121

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc9.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !218300
  br label %.noexc8.i.i.i

.noexc8.i.i.i:                                    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.ci = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.s ]
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !218226

.noexc10.i.i.i:                                   ; preds = %.noexc8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !218300
  br label %_ZN10serde_core2de10EnumAccess7variant17h60b1748cb9ee5d48E.exit.thread.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de10EnumAccess7variant17h60b1748cb9ee5d48E.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i, %bb.t, %.noexc6.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.noexc6.i.i.i ], [ %i.cj, %.noexc10.i.i.i ], [ %i.ce, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit45.i.i.i

_ZN10serde_core2de9SeqAccess12next_element17hca54228af5b94139E.exit.thread37.i.i.i: ; preds = %.noexc9.i.i.i
  %i.ck = load i8, ptr %i.av, align 1, !range !97625, !noalias !218300, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !218300
  br label %bb.fc

default.unreachable:                              ; preds = %.noexc19.i.i.i
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 57 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !218258, !noalias !218259, !noundef !14
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 1, !alias.scope !218258, !noalias !218259
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.es, label %bb.w, !prof !121

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cp = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.cp, ptr %i.bf, align 8, !alias.scope !218306, !noalias !218259
  call void @llvm.experimental.noalias.scope.decl(metadata !218309)
  call void @llvm.experimental.noalias.scope.decl(metadata !218312)
  call void @llvm.experimental.noalias.scope.decl(metadata !218315)
  call void @llvm.experimental.noalias.scope.decl(metadata !218318)
  %i.cq = icmp ult i64 %i.cp, %i.bh
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.w, %bb.x
  %i.cr = phi i64 [ %i.cu, %bb.x ], [ %i.cp, %bb.w ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !218321, !noundef !14
  switch i8 %i.ct, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.aa
  ], !prof !12326

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = add i64 %i.cr, 1                        ; 3 uses
  store i64 %i.cu, ptr %i.bf, align 8, !alias.scope !218328, !noalias !218331
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cu, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !218333
  store i64 3, ptr %i.f, align 8, !noalias !218333
  %i.cv = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !218226

.noexc11.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !218333
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hc383c41ff5f53afaE.exit.i.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !218333
  store i64 17, ptr %i.g, align 8, !noalias !218333
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !218226

.noexc12.i.i.i:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !218333
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hc383c41ff5f53afaE.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !218333
  call void @llvm.experimental.noalias.scope.decl(metadata !218334)
  call void @llvm.experimental.noalias.scope.decl(metadata !218337)
  call void @llvm.experimental.noalias.scope.decl(metadata !218340)
  call void @llvm.experimental.noalias.scope.decl(metadata !218343)
  %i.cx = add i64 %i.cr, 1
  store i64 %i.cx, ptr %i.bf, align 8, !alias.scope !218346, !noalias !218349
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !218354, !noalias !218349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !218355
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i, !noalias !218226

.noexc13.i.i.i:                                   ; preds = %bb.z
  %i.cz = load i64, ptr %i.d, align 8, !range !802, !noalias !218355, !noundef !14
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = load ptr, ptr %i.aw, align 8, !noalias !218355, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.da, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !24266

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !218355
  br label %bb.ab

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc13.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !noalias !218355
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h5e2252c4d245f952E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.db, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !218226

.noexc14.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !1313, !noalias !218333
  %i.dc = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !218355
  br i1 %i.dc, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", label %bb.ac, !prof !16402

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc14.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i, align 8, !noalias !218333
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !218333
  store i64 10, ptr %i.h, align 8, !noalias !218333
  %i.dd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !218226

.noexc15.i.i.i:                                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !218333
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hc383c41ff5f53afaE.exit.i.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.de = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.db, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h160636a994c2ba27E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.df = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !218226

.noexc16.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !218333
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hc383c41ff5f53afaE.exit.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %.noexc14.i.i.i
  %i.dg = load i8, ptr %i.ax, align 1, !range !97625, !noalias !218333, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !218333
  call void @llvm.experimental.noalias.scope.decl(metadata !218356)
  call void @llvm.experimental.noalias.scope.decl(metadata !218359)
  %i.dh = load i64, ptr %i.bg, align 8, !alias.scope !218362, !noalias !218365, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !218368, !noalias !218369 ; 2 uses
  %i.di = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ac
  %i.dj = load ptr, ptr %i.bj, align 8, !alias.scope !218362, !noalias !218365, !nonnull !14, !align !584, !noundef !14
  br label %bb.ad
end_hunk_19
begin_hunk_20_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he50885fed53d7499E":bb.a
  %i.qu = or i32 %.sroa.8419.0.i.i.i.i.i.i, %i.qs
  %i.qv = icmp ne i32 %i.qu, 0
  %.not572.i.i.i.i.i.i = or i1 %i.qt, %i.qv
  %i.qw = select i1 %.sroa.14421.0.i.i.i.i.i.i, i1 %.not572.i.i.i.i.i.i, i1 false
  %.sroa.01.0.i253.i.i.i.i.i.i = select i1 %i.qw, i32 -2147483648, i32 0
  store i32 %.sroa.01.0.i253.i.i.i.i.i.i, ptr %i.gb, align 4, !noalias !218602
  store i32 %.sroa.8419.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !noalias !218602
  store i64 %.sroa.0417.0.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !noalias !218602
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.ep:                                            ; preds = %bb.en
  %i.qx = sub i64 0, %i.px
  br label %bb.eo

bb.eq:                                            ; preds = %bb.ef
  %.not.i.i.i.i.i.i = icmp eq i32 %i.po, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call void @_ZN12rust_decimal3ops3add13unaligned_add17h5453f7c561988ab5E(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, i1 noundef zeroext %i.og, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %i.og), !noalias !218608
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i

bb.es:                                            ; preds = %bb.eq
  call void @_ZN12rust_decimal3ops3add13unaligned_add17h5453f7c561988ab5E(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r, i1 noundef zeroext false, i32 noundef %i.po, i32 noundef %i.po, i1 noundef zeroext %i.og), !noalias !218608
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i

_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i: ; preds = %bb.eo, %_ZN12rust_decimal3ops3add12reduce_scale17h38e79fa23ffa2597E.exit304.i.i.i.i.i.i, %bb.ee, %bb.ec, %bb.eb, %bb.ea, %bb.dy, %bb.du, %bb.dt, %bb.dr, %bb.do, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !218510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !218510
  br label %bb.et

_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i: ; preds = %bb.es, %bb.er
  %.pr.i.i.i.i.i.i = load i32, ptr %i.s, align 4, !noalias !218510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !218510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !218510
  %.not210.i.i.i.i.i.i = icmp eq i32 %.pr.i.i.i.i.i.i, 0
  br i1 %.not210.i.i.i.i.i.i, label %bb.et, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i, %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread557.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !218510
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hce5b5b4a5cde2433E.exit.thread.i.i.i.i"

bb.et:                                            ; preds = %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i, %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.gb, i64 16, i1 false), !noalias !218510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !218510
  %i.qy = icmp ne ptr %.sroa.0.2605.i.i.i.i.i.i, %i.fp ; 2 uses
  %.sroa.0.2.idx.i.i.i.i.i.i = zext i1 %i.qy to i64
  %.sroa.0.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.2605.i.i.i.i.i.i, i64 %.sroa.0.2.idx.i.i.i.i.i.i ; 2 uses
  br i1 %i.qy, label %bb.ag, label %.thread.i.i.i.i.i.i

"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hce5b5b4a5cde2433E.exit.thread.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i, %bb.dk, %bb.dj, %bb.bc, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h7192f11131807672E.exit.i.i.i.i.i.i", %bb.ay, %._crit_edge.thread.i.i.i.i.i.i, %bb.ae, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.i.i.i.i.i.i", %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.thread.i.i.i.i.i.i"
  %.sroa.22.sroa.0.sroa.10.sroa.0.0.ph.i.i.i.i.i = phi i32 [ 0, %bb.dk ], [ 0, %.loopexit.i.i.i.i.i.i ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.i.i.i.i.i.i" ], [ %.sroa.22.sroa.0.sroa.10.0.extract.shift19.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i ], [ %.sroa.22.sroa.0.sroa.10.0.extract.shift21.i.i.i.i.i, %bb.ay ], [ 0, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h7192f11131807672E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.thread.i.i.i.i.i.i" ], [ %i.iz, %bb.bc ], [ %.sroa.22.sroa.0.sroa.10.0.extract.shift29.i.i.i.i.i, %bb.dj ], [ %.sroa.22.sroa.0.sroa.10.0.extract.shift.i.i.i.i.i, %bb.ae ]
  %.sroa.22.sroa.0.sroa.0.0.ph.i.i.i.i.i = phi i8 [ undef, %bb.dk ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.i.i.i.i.i.i" ], [ %.sroa.22.sroa.0.sroa.0.0.extract.trunc12.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i ], [ %.sroa.22.sroa.0.sroa.0.0.extract.trunc13.i.i.i.i.i, %bb.ay ], [ undef, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h7192f11131807672E.exit.i.i.i.i.i.i" ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.thread.i.i.i.i.i.i" ], [ %i.gk, %bb.bc ], [ %.sroa.22.sroa.0.sroa.0.0.extract.trunc18.i.i.i.i.i, %bb.dj ], [ %.sroa.22.sroa.0.sroa.0.0.extract.trunc.i.i.i.i.i, %bb.ae ]
  %.sroa.22.sroa.11.0.ph.i.i.i.i.i = phi i64 [ 0, %bb.dk ], [ 0, %.loopexit.i.i.i.i.i.i ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.i.i.i.i.i.i" ], [ 0, %._crit_edge.thread.i.i.i.i.i.i ], [ 0, %bb.ay ], [ 0, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h7192f11131807672E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.thread.i.i.i.i.i.i" ], [ %i.ja, %bb.bc ], [ %.sroa.22.sroa.11.0.extract.shift10.i.i.i.i.i, %bb.dj ], [ 0, %bb.ae ]
  %.sroa.31.0.ph.i.i.i.i.i = phi i32 [ undef, %bb.dk ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.i.i.i.i.i.i" ], [ undef, %._crit_edge.thread.i.i.i.i.i.i ], [ undef, %bb.ay ], [ undef, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h7192f11131807672E.exit.i.i.i.i.i.i" ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.6179.0.copyload.i.i.i.i.i.i, %bb.bc ], [ undef, %bb.dj ], [ undef, %bb.ae ]
  %.sroa.301.0.ph.i.i.i.i.i = phi i32 [ undef, %bb.dk ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.i.i.i.i.i.i" ], [ undef, %._crit_edge.thread.i.i.i.i.i.i ], [ undef, %bb.ay ], [ undef, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h7192f11131807672E.exit.i.i.i.i.i.i" ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.thread.i.i.i.i.i.i" ], [ %i.gj, %bb.bc ], [ undef, %bb.dj ], [ undef, %bb.ae ]
  %.sroa.30.0.ph.i.i.i.i.i = phi i64 [ undef, %bb.dk ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.i.i.i.i.i.i" ], [ undef, %._crit_edge.thread.i.i.i.i.i.i ], [ undef, %bb.ay ], [ undef, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h7192f11131807672E.exit.i.i.i.i.i.i" ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.30.9.copyload.i.i.i.i.i, %bb.bc ], [ %.sroa.30.8.copyload.i.i.i.i.i, %bb.dj ], [ undef, %bb.ae ]
  %i.qz = phi <2 x i32> [ <i32 0, i32 3>, %bb.dk ], [ <i32 0, i32 3>, %.loopexit.i.i.i.i.i.i ], [ <i32 0, i32 2>, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.i.i.i.i.i.i" ], [ <i32 0, i32 1>, %._crit_edge.thread.i.i.i.i.i.i ], [ <i32 0, i32 1>, %bb.ay ], [ <i32 0, i32 3>, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h7192f11131807672E.exit.i.i.i.i.i.i" ], [ <i32 0, i32 2>, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd2d25d6aa7e9011bE.exit.thread.i.i.i.i.i.i" ], [ <i32 1, i32 undef>, %bb.bc ], [ zeroinitializer, %bb.dj ], [ <i32 0, i32 1>, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !218510
  store <2 x i32> %i.qz, ptr %i.w, align 8, !noalias !218609
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.sroa.0.sroa.10.0.insert.shift.i.i.i.i.i = shl nuw i32 %.sroa.22.sroa.0.sroa.10.sroa.0.0.ph.i.i.i.i.i, 8
  %.sroa.22.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i = zext i8 %.sroa.22.sroa.0.sroa.0.0.ph.i.i.i.i.i to i32
  %.sroa.22.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.22.sroa.0.sroa.10.0.insert.shift.i.i.i.i.i, %.sroa.22.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i
  %.sroa.22.sroa.11.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.22.sroa.11.0.ph.i.i.i.i.i, 32
  %.sroa.22.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.22.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i to i64
  %.sroa.22.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.22.sroa.11.0.insert.shift.i.i.i.i.i, %.sroa.22.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.22.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !noalias !218609
  %.sroa.30.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.30.0.ph.i.i.i.i.i, ptr %.sroa.30.0..sroa_idx.i.i.i.i.i, align 8, !noalias !218609
  %.sroa.301.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 %.sroa.301.0.ph.i.i.i.i.i, ptr %.sroa.301.0..sroa_idx.i.i.i.i.i, align 8, !noalias !218609
  %.sroa.31.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i32 %.sroa.31.0.ph.i.i.i.i.i, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 4, !noalias !218609
  %i.ra = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17he52e82bc821ff77aE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.w), !noalias !218478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !218486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !218477
  br label %bb.eu

bb.eu:                                            ; preds = %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hce5b5b4a5cde2433E.exit.thread.i.i.i.i", %bb.g
  %.sroa.10.0.i.i.i.i.i = phi ptr [ %i.ra, %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hce5b5b4a5cde2433E.exit.thread.i.i.i.i" ], [ %i.ax, %bb.g ]
  %i.rb = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !218478
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.h, %.loopexit.i.i.i.i.i
  %.sroa.7.1.in.i.i.ph.i.i.i = phi ptr [ %i.rb, %bb.eu ], [ %i.aw, %bb.h ], [ %i.aq, %.loopexit.i.i.i.i.i ]
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.1.in.i.i.ph.i.i.i, ptr %i.rc, align 8, !alias.scope !218478, !noalias !218610
  store i64 2, ptr %0, align 8, !alias.scope !218478, !noalias !218610
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h04f3c12f2a0607eaE.exit"

bb.ew:                                            ; preds = %"_ZN9byte_unit4byte7decimal39_$LT$impl$u20$byte_unit..byte..Byte$GT$22from_decimal_with_unit17h40034aba9ccb11c4E.exit.i.i.i.i.i.i"
  %i.rd = extractvalue { i64, i64 } %i.oc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !218510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !218486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !218477
  store i64 1, ptr %0, align 8, !alias.scope !218478, !noalias !218610
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.rd, ptr %i.re, align 8, !alias.scope !218478, !noalias !218610
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h04f3c12f2a0607eaE.exit"

bb.ex:                                            ; preds = %bb.b
  %i.rf = add i64 %i.af, 1                        ; 4 uses
  store i64 %i.rf, ptr %i.z, align 8, !alias.scope !218611, !noalias !218614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218615)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.rf, i64 %i.ab) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218618)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.rf, %i.ab
  br i1 %exitcond.not.i9.not.i.i, label %bb.ey, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.ey:                                            ; preds = %bb.ex
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !noalias !218621, !noundef !14
  %i.ri = add i64 %i.af, 2                        ; 3 uses
  store i64 %i.ri, ptr %i.z, align 8, !alias.scope !218624, !noalias !218625
  %.not.i.i.i = icmp eq i8 %i.rh, 117
  br i1 %.not.i.i.i, label %bb.ez, label %bb.fd, !prof !12002

bb.ez:                                            ; preds = %bb.ey
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218626)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.ri, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !noalias !218628, !noundef !14
  %i.rl = add i64 %i.af, 3                        ; 3 uses
  store i64 %i.rl, ptr %i.z, align 8, !alias.scope !218629, !noalias !218625
  %.not.i.1.i.i = icmp eq i8 %i.rk, 108
  br i1 %.not.i.1.i.i, label %bb.fb, label %bb.fd, !prof !12002

bb.fb:                                            ; preds = %bb.fa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218630)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.rl, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !noalias !218632, !noundef !14
  %i.ro = add i64 %i.af, 4
  store i64 %i.ro, ptr %i.z, align 8, !alias.scope !218633, !noalias !218625
  %.not.i.2.i.i = icmp eq i8 %i.rn, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h362ecac508787030E.exit.i.i", label %bb.fd, !prof !12002

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.fb, %bb.ez, %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !218634
  store i64 5, ptr %i.c, align 8, !noalias !218634
  %i.rp = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !218635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218634
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fc, %bb.fa, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !218634
  store i64 9, ptr %i.b, align 8, !noalias !218634
  %i.rq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !218635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !218634
  br label %bb.fe

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h362ecac508787030E.exit.i.i": ; preds = %bb.fc
  store i64 0, ptr %0, align 8, !alias.scope !218636, !noalias !218639
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h04f3c12f2a0607eaE.exit"

bb.fe:                                            ; preds = %bb.fd, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.rp, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %i.rq, %bb.fd ]
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.rr, align 8, !alias.scope !218614, !noalias !218639
  store i64 2, ptr %0, align 8, !alias.scope !218614, !noalias !218639
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h04f3c12f2a0607eaE.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h04f3c12f2a0607eaE.exit": ; preds = %bb.ev, %bb.ew, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h362ecac508787030E.exit.i.i", %bb.fe
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he90c950e8123bd0dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218648)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !218651, !noalias !218654, !noundef !14 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !218658, !noalias !218659 ; 3 uses
  %i.v = icmp ult i64 %.promoted.i.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !218651, !noalias !218654, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.y = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218660)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !218661, !noundef !14
  switch i8 %i.aa, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.av
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !218662, !noalias !218659
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i.i, label %.loopexit19.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.y, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218674)
  %i.ac = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.u
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !218677, !noalias !218680, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.af = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218686)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !218687, !noundef !14
  switch i8 %i.ah, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !12229

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ai = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !218688, !noalias !218691
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i, label %bb.d

.loopexit19.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !218692
  store i64 5, ptr %i.n, align 8, !noalias !218692
  %i.aj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !218693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !218692
  br label %bb.bc

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !218692
  store i64 10, ptr %i.o, align 8, !noalias !218692
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !218693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !218692
  br label %bb.bc

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !range !1313, !alias.scope !218694, !noalias !218693, !noundef !14
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.q, label %bb.p

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218716)
  %2 = icmp ult i64 %i.af, %i.u
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.ao = phi i64 [ %i.ar, %bb.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !218719, !noundef !14 ; 2 uses
  switch i8 %i.aq, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.ao, 1                        ; 3 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !218731, !noalias !218734
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !218735
  %i.as = icmp eq i8 %i.aq, 34
  br i1 %i.as, label %bb.j, label %bb.k, !prof !15

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !218735
  store i64 5, ptr %i.m, align 8, !noalias !218735
  %i.at = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !218736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !218735
  br label %bb.o

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !218737, !noalias !218736
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.av, align 8, !alias.scope !218740, !noalias !218736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !218735
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !218736
  %i.aw = load i64, ptr %i.k, align 8, !range !802, !noalias !218735, !noundef !14
  %i.ax = icmp eq i64 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !218735 ; 3 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.k:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ba = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172), !noalias !218736
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !218735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !218735
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !218735
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  call fastcc void @"_ZN197_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h7e6ce19249278da2E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.az, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !218736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !218735
  %i.bb = load i8, ptr %i.l, align 8, !range !1313, !noalias !218735, !noundef !14
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %._crit_edge.i.i.i.i.i.i.i, label %switch.lookup.i.i.i, !prof !121

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.m
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !218735
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.k
  %i.bd = phi ptr [ %.pre.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ba, %bb.k ]
  %i.be = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !218736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !218735
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.be, %bb.n ], [ %i.az, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i) ]
  br label %bb.bc

switch.lookup.i.i.i:                              ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !range !583, !noalias !218735, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !218735
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h9a131dead12e8295E.exit.i"

default.unreachable:                              ; preds = %bb.aa
  unreachable

bb.p:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !218694, !noalias !218693, !noundef !14
  %i.bj = add i8 %i.bi, -1                        ; 2 uses
  store i8 %i.bj, ptr %i.bh, align 1, !alias.scope !218694, !noalias !218693
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.an, label %bb.q, !prof !121

bb.q:                                             ; preds = %bb.p, %bb.g
  %i.bl = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.s, align 8, !alias.scope !218741, !noalias !218693
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218753)
  %i.bm = icmp ult i64 %i.bl, %i.u
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.q, %bb.r
  %i.bn = phi i64 [ %i.bq, %bb.r ], [ %i.bl, %bb.q ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !218756, !noundef !14
  switch i8 %i.bp, label %bb.s [
    i8 32, label %bb.r
    i8 10, label %bb.r
    i8 9, label %bb.r
    i8 13, label %bb.r
    i8 34, label %bb.t
    i8 125, label %bb.u
  ], !prof !12326

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bq = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bq, ptr %i.s, align 8, !alias.scope !218764, !noalias !218767
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bq, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !218768
  store i64 3, ptr %i.h, align 8, !noalias !218768
  %i.br = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !218769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !218768
  br label %"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h14961497ecef09c7E.exit.i.i.i.i.i"

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !218768
  store i64 17, ptr %i.i, align 8, !noalias !218768
  %i.bs = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !218769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !218768
  br label %"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h14961497ecef09c7E.exit.i.i.i.i.i"

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !218768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218779)
  %i.bt = add i64 %i.bn, 1
  store i64 %i.bt, ptr %i.s, align 8, !alias.scope !218782, !noalias !218785
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bu, align 8, !alias.scope !218790, !noalias !218785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !218791
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !218785
  %i.bv = load i64, ptr %i.f, align 8, !range !802, !noalias !218791, !noundef !14
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !218791, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.bw, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.thread.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.i.i.i.i.i.i.i.i", !prof !24266

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.thread.i.i.i.i.i.i.i.i": ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !218791
  br label %bb.v

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.t
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i, align 8, !noalias !218791
  call fastcc void @"_ZN197_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h7e6ce19249278da2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.by, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i), !noalias !218769
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.g, align 8, !range !1313, !noalias !218768
  %i.bz = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !218791
  br i1 %i.bz, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.i._crit_edge.i.i.i.i.i.i.i", label %bb.w, !prof !16402

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.i._crit_edge.i.i.i.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.i.i.i.i.i.i.i.i"
  %.phi.trans.insert.i.i15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i.i16.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i, align 8, !noalias !218768
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !218768
  store i64 10, ptr %i.j, align 8, !noalias !218768
  %i.ca = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !218769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !218768
  br label %"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h14961497ecef09c7E.exit.i.i.i.i.i"

bb.v:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.i._crit_edge.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.thread.i.i.i.i.i.i.i.i"
  %i.cb = phi ptr [ %.pre.i.i16.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.i._crit_edge.i.i.i.i.i.i.i" ], [ %i.by, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.thread.i.i.i.i.i.i.i.i" ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !218769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !218768
  br label %"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h14961497ecef09c7E.exit.i.i.i.i.i"

bb.w:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2c2e6829c278d7bdE.exit.i.i.i.i.i.i.i.i"
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !range !583, !noalias !218768, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !218768
  call void @llvm.experimental.noalias.scope.decl(metadata !218792)
  call void @llvm.experimental.noalias.scope.decl(metadata !218795)
  %i.cf = load i64, ptr %i.t, align 8, !alias.scope !218798, !noalias !218801, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !218804, !noalias !218805 ; 2 uses
  %i.cg = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.w
  %i.ch = load ptr, ptr %i.ad, align 8, !alias.scope !218798, !noalias !218801, !nonnull !14, !align !584, !noundef !14
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ci = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.y ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218806)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !218807, !noundef !14
  switch i8 %i.ck, label %bb.z [
    i8 32, label %bb.y
    i8 10, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 58, label %bb.aa
  ], !prof !3649

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %i.cl = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cl, ptr %i.s, align 8, !alias.scope !218808, !noalias !218805
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cl, %i.cf
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %bb.x

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !218811
  store i64 3, ptr %i.d, align 8, !noalias !218811
end_hunk_20
begin_hunk_21_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17heb5abbe29bc5d900E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.18.i.i.i.i.i.i.i.i, i64 144, i1 false), !noalias !218892
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i.i.i.i)
  store i64 %.sroa.09.2.i.i.i.i.i.i.i.i, ptr %i.bd, align 8, !noalias !218892
  store ptr %.sroa.12.2.i.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !218892
  %i.tl = load i64, ptr %i.cg, align 8, !alias.scope !219495, !noalias !219498, !noundef !14 ; 3 uses
  %i.tm = load i64, ptr %i.be, align 8, !range !9, !alias.scope !219495, !noalias !219498, !noundef !14
  %i.tn = icmp eq i64 %i.tl, %i.tm
  br i1 %i.tn, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hfcf75468d01ca3a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1724)
          to label %bb.hj unwind label %bb.hh, !noalias !219500

bb.hh:                                            ; preds = %bb.hg
  %i.to = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$meilisearch_types..keys..Key$GT$17h8ace339ef729f747E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(160) %i.bd) #81, !noalias !218905
  br label %.body.i.i.i

bb.hi:                                            ; preds = %bb.j
  %.sroa.029.0.copyload30.i.i = load i64, ptr %i.be, align 8, !noalias !219501
  %.sroa.731.0.copyload33.i.i = load ptr, ptr %i.cf, align 8, !noalias !219501
  %.sroa.8.0.copyload35.i.i = load i64, ptr %i.cg, align 8, !noalias !219501
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7620a10acd88b606E.exit.i.i"

bb.hj:                                            ; preds = %bb.hg, %bb.hf
  %i.tp = load ptr, ptr %i.cf, align 8, !alias.scope !219495, !noalias !219498, !nonnull !14, !noundef !14
  %i.tq = getelementptr inbounds nuw [160 x i8], ptr %i.tp, i64 %i.tl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.tq, ptr noundef nonnull readonly align 8 dereferenceable(160) %i.bd, i64 160, i1 false), !noalias !218905
  %i.tr = add i64 %i.tl, 1
  store i64 %i.tr, ptr %i.cg, align 8, !alias.scope !219495, !noalias !219498
  br label %bb.h

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7620a10acd88b606E.exit.i.i": ; preds = %bb.hi, %bb.he, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i.i"
  %.sroa.731.0.i.i = phi ptr [ %.sroa.9.0.ph.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i.i" ], [ %.sroa.9.0.ph.i.i.i, %bb.he ], [ %.sroa.731.0.copyload33.i.i, %bb.hi ] ; 8 uses
  %.sroa.029.0.i.i = phi i64 [ -9223372036854775808, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i.i" ], [ -9223372036854775808, %bb.he ], [ %.sroa.029.0.copyload30.i.i, %bb.hi ] ; 5 uses
  %.sroa.8.0.i.i = phi i64 [ undef, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i.i" ], [ undef, %bb.he ], [ %.sroa.8.0.copyload35.i.i, %bb.hi ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !218892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !218886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !218886
  %i.ts = load i8, ptr %i.bv, align 8, !range !1313, !alias.scope !218888, !noalias !218887, !noundef !14
  %i.tt = trunc nuw i8 %i.ts to i1
  br i1 %i.tt, label %bb.hm, label %bb.hl

bb.hk:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !218886
  store i64 24, ptr %i.bh, align 8, !noalias !218886
  %i.tu = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bh), !noalias !218887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !218886
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tu, ptr %i.tv, align 8, !alias.scope !218887, !noalias !218888
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !218887, !noalias !218888
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hd042d4265ab2b6ecE.exit"

bb.hl:                                            ; preds = %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7620a10acd88b606E.exit.i.i"
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.tx = load i8, ptr %i.tw, align 1, !alias.scope !218888, !noalias !218887, !noundef !14
  %i.ty = add i8 %i.tx, 1
  store i8 %i.ty, ptr %i.tw, align 1, !alias.scope !218888, !noalias !218887
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h7620a10acd88b606E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !218886
  store i64 %.sroa.029.0.i.i, ptr %i.bg, align 8, !noalias !218886
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.731.0.i.i, ptr %.sroa.731.0..sroa_idx.i.i, align 8, !noalias !218886
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !218886
  %i.tz = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hf374ac2f2ec1a968E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.ho unwind label %bb.hn, !noalias !218887 ; 10 uses

bb.hn:                                            ; preds = %bb.hm
  %i.ua = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..result..Result$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Key$GT$$C$serde_json..error..Error$GT$$GT$17hc0cf2309d5c8940aE"(ptr noalias noundef align 8 dereferenceable(24) %i.bg) #81
          to label %common.resume.i.i unwind label %bb.ht, !noalias !218887

bb.ho:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !218886
  %i.ub = icmp eq i64 %.sroa.029.0.i.i, -9223372036854775808
  br i1 %i.ub, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %.not.i.i = icmp eq ptr %i.tz, null
  br i1 %.not.i.i, label %bb.hy, label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.731.0.i.i) ]
  %.not56.i.i = icmp eq ptr %i.tz, null
  br i1 %.not56.i.i, label %.thread47.i.i, label %bb.hu

bb.hr:                                            ; preds = %bb.hp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.731.0.i.i) ]
  %i.uc = icmp eq i64 %.sroa.8.0.i.i, 0
  br i1 %i.uc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.hr, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.ue, %.lr.ph.i.i.i.i.i ], [ 0, %bb.hr ] ; 2 uses
  %i.ud = getelementptr inbounds nuw [160 x i8], ptr %.sroa.731.0.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %i.ue = add nuw i64 %.sroa.0.07.i.i.i.i.i, 1    ; 2 uses
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$meilisearch_types..keys..Key$GT$17h8ace339ef729f747E"(ptr noalias noundef readonly align 8 dereferenceable(160) %i.ud), !noalias !219502
  %i.uf = icmp eq i64 %i.ue, %.sroa.8.0.i.i
  br i1 %i.uf, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.hr
  %i.ug = icmp eq i64 %.sroa.029.0.i.i, 0
  br i1 %i.ug, label %.thread47.i.i, label %bb.hs

bb.hs:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i"
  %i.uh = mul nuw i64 %.sroa.029.0.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.731.0.i.i, i64 noundef %i.uh, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !219502
  br label %.thread47.i.i

bb.ht:                                            ; preds = %bb.hn
  %i.ui = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !218887
  unreachable

bb.hu:                                            ; preds = %bb.hq
  call void @llvm.experimental.noalias.scope.decl(metadata !219505)
  call void @llvm.experimental.noalias.scope.decl(metadata !219508)
  %i.uj = load i64, ptr %i.tz, align 8, !range !3586, !alias.scope !219511, !noalias !219512, !noundef !14
  switch i64 %i.uj, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.hv
    i64 1, label %bb.hw
  ]

bb.hv:                                            ; preds = %bb.hu
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.uk, align 8, !alias.scope !219511, !noalias !219512, !noundef !14 ; 2 uses
  %i.ul = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ul, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.hv
  %i.um = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.um, align 8, !alias.scope !219511, !noalias !219512, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !219515
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.hw:                                            ; preds = %bb.hu
  %i.un = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.un)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.hx, !noalias !219512

bb.hx:                                            ; preds = %bb.hw
  %i.uo = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tz, i64 noundef 40, i64 noundef 8) #79, !noalias !219512
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.hw, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.hv, %bb.hu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tz, i64 noundef 40, i64 noundef 8) #79, !noalias !219512
  br label %.thread47.i.i

.thread47.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %bb.hs, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i", %bb.hq, %bb.e
  %.sroa.9.2.i.i = phi ptr [ %.sroa.731.0.i.i, %bb.hq ], [ %i.by, %bb.e ], [ %.sroa.731.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" ], [ %i.tz, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h482b22e2137cf9bbE.exit.i.i.i" ], [ %i.tz, %bb.hs ]
  %i.up = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !218887
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.up, ptr %i.uq, align 8, !alias.scope !218887, !noalias !218888
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !218887, !noalias !218888
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hd042d4265ab2b6ecE.exit"

bb.hy:                                            ; preds = %bb.hp
  store i64 %.sroa.029.0.i.i, ptr %0, align 8, !alias.scope !218887, !noalias !218888
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.731.0.i.i, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !alias.scope !218887, !noalias !218888
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i.i, ptr %.sroa.319.0..sroa_idx.i.i, align 8, !alias.scope !218887, !noalias !218888
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hd042d4265ab2b6ecE.exit"

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hd042d4265ab2b6ecE.exit": ; preds = %.loopexit.i.i, %bb.hk, %.thread47.i.i, %bb.hy
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hee6f8f74449dc349E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219524)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !219527, !noalias !219530, !noundef !14 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !219534, !noalias !219535 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !219527, !noalias !219530, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219536)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !219537, !noundef !14
  switch i8 %i.y, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.bb
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !219538, !noalias !219535
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219550)
  %i.aa = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.s
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !219553, !noalias !219556, !nonnull !14, !align !584, !noundef !14 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219562)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !219563, !noundef !14
  switch i8 %i.af, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !12229

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !219564, !noalias !219567
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.d

.loopexit20.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !219568
  store i64 5, ptr %i.l, align 8, !noalias !219568
  %i.ah = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !219569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !219568
  br label %bb.bi

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !219568
  store i64 10, ptr %i.m, align 8, !noalias !219568
  %i.ai = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !219569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !219568
  br label %bb.bi

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !1313, !alias.scope !219570, !noalias !219569, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.y, label %bb.x

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219592)
  %2 = icmp ult i64 %i.ad, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.am = phi i64 [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !219595, !noundef !14
  switch i8 %i.ao, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.j
  ], !prof !3649

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.q, align 8, !alias.scope !219607, !noalias !219610
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !219611
  store i64 5, ptr %i.k, align 8, !noalias !219611
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !219612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !219611
  br label %bb.u

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !219613, !noalias !219612
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !219616, !noalias !219612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !219611
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !219612
  %i.at = load i64, ptr %i.j, align 8, !range !802, !noalias !219611, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !219611 ; 10 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174), !noalias !219612
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !219611
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !219611 ; 4 uses
  %i.ay = trunc nuw i64 %i.at to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  br i1 %i.ay, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbc87463ff45b9a88E.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i64 12, label %bb.o
    i64 8, label %bb.p
  ], !prof !5994

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.aw, align 1
  %i.ba = xor i64 %i.az, 7453010399162822249
  %i.bb = getelementptr i8, ptr %i.aw, i64 8
  %i.bc = load i32, ptr %i.bb, align 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = xor i64 %i.bd, 1701669204
  %i.bf = or i64 %i.ba, %i.be
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.w, label %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbc87463ff45b9a88E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  %i.bj = load i64, ptr %i.aw, align 1
  %i.bk = icmp ne i64 %i.bj, 7234307546238118244
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbc87463ff45b9a88E.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !15

"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbc87463ff45b9a88E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n
  %i.bn = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1674, i64 noundef 2), !noalias !219617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !219611
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9740c86d71c731acE.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 12, label %bb.r
    i64 8, label %bb.s
  ], !prof !5994

bb.r:                                             ; preds = %bb.q
  %i.bo = load i64, ptr %i.aw, align 1
  %i.bp = xor i64 %i.bo, 7453010399162822249
  %i.bq = getelementptr i8, ptr %i.aw, i64 8
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = zext i32 %i.br to i64
  %i.bt = xor i64 %i.bs, 1701669204
  %i.bu = or i64 %i.bp, %i.bt
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.w, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9740c86d71c731acE.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.by = load i64, ptr %i.aw, align 1
  %i.bz = icmp ne i64 %i.by, 7234307546238118244
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.v, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9740c86d71c731acE.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17h9740c86d71c731acE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.cc = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1674, i64 noundef 2), !noalias !219620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !219611
  br label %bb.t

bb.t:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9740c86d71c731acE.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbc87463ff45b9a88E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbc87463ff45b9a88E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cc, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h9740c86d71c731acE.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.k ]
  %i.cd = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !219612
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.t ], [ %i.aq, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aw, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i.i.i.i) ]
  br label %bb.bi

bb.v:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !219611
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hc17f79bd3941d4abE.exit.i"

bb.w:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !219611
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hc17f79bd3941d4abE.exit.i"

bb.x:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !219570, !noalias !219569, !noundef !14
  %i.cg = add i8 %i.cf, -1                        ; 2 uses
  store i8 %i.cg, ptr %i.ce, align 1, !alias.scope !219570, !noalias !219569
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.at, label %bb.y, !prof !121

bb.y:                                             ; preds = %bb.x, %bb.g
  %i.ci = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ci, ptr %i.q, align 8, !alias.scope !219625, !noalias !219569
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219637)
  %i.cj = icmp ult i64 %i.ci, %i.s
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.y, %bb.z
  %i.ck = phi i64 [ %i.cn, %bb.z ], [ %i.ci, %bb.y ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !219640, !noundef !14
  switch i8 %i.cm, label %bb.aa [
    i8 32, label %bb.z
    i8 10, label %bb.z
    i8 9, label %bb.z
    i8 13, label %bb.z
    i8 34, label %bb.ab
    i8 125, label %bb.aj
  ], !prof !12326

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cn = add i64 %i.ck, 1                        ; 3 uses
  store i64 %i.cn, ptr %i.q, align 8, !alias.scope !219648, !noalias !219651
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cn, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !219652
  store i64 3, ptr %i.g, align 8, !noalias !219652
  %i.co = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !219653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !219652
  br label %"_ZN206_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5f7153d761759da2E.exit.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !219652
  store i64 17, ptr %i.h, align 8, !noalias !219652
  %i.cp = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !219653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !219652
  br label %"_ZN206_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5f7153d761759da2E.exit.i.i.i.i.i"

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219663)
  %i.cq = add i64 %i.ck, 1
  store i64 %i.cq, ptr %i.q, align 8, !alias.scope !219666, !noalias !219669
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cr, align 8, !alias.scope !219674, !noalias !219669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !219675
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !219669
  %i.cs = load i64, ptr %i.f, align 8, !range !802, !noalias !219675, !noundef !14 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !219675 ; 9 uses
  br i1 %i.ct, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i, align 8, !noalias !219675 ; 3 uses
  %i.cw = trunc nuw i64 %i.cs to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  br i1 %i.cw, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i [
    i64 12, label %bb.ae
    i64 8, label %bb.af
  ], !prof !5994

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load i64, ptr %i.cv, align 1
  %i.cy = xor i64 %i.cx, 7453010399162822249
  %i.cz = getelementptr i8, ptr %i.cv, i64 8
  %i.da = load i32, ptr %i.cz, align 1
end_hunk_21
begin_hunk_22_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hee6f8f74449dc349E":bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf07c467a5d0e21e3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.930.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219752)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !219755, !noalias !219758, !noundef !14 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !219762, !noalias !219763 ; 3 uses
  %i.ah = icmp ult i64 %.promoted.i.i.i, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !219755, !noalias !219758, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ak = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.an, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219764)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !219765, !noundef !14
  switch i8 %i.am, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.cm
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.an = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.an, ptr %i.ae, align 8, !alias.scope !219766, !noalias !219763
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ag
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.ak, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219778)
  %i.ao = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.ag
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !219781, !noalias !219784, !nonnull !14, !align !584, !noundef !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ar = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.au, %bb.e ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219790)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !219791, !noundef !14
  switch i8 %i.at, label %bb.g [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.f
  ], !prof !3649

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.au = add i64 %i.ar, 1                        ; 3 uses
  store i64 %i.au, ptr %i.ae, align 8, !alias.scope !219792, !noalias !219795
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.au, %i.ag
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.d

.loopexit.i.i.i.i.i:                              ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !219796
  store i64 5, ptr %i.ad, align 8, !noalias !219796
  %i.av = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad), !noalias !219797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !219796
  br label %bb.ct

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !range !1313, !alias.scope !219798, !noalias !219797, !noundef !14
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @121), !noalias !219797
  br label %.thread40.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !219798, !noalias !219797, !noundef !14
  %i.bc = add i8 %i.bb, -1                        ; 2 uses
  store i8 %i.bc, ptr %i.ba, align 1, !alias.scope !219798, !noalias !219797
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.bw, label %bb.i, !prof !121

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.be = add i64 %i.ar, 1
  store i64 %i.be, ptr %i.ae, align 8, !alias.scope !219799, !noalias !219797
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.930.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !219796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !219796
  store ptr %1, ptr %i.aa, align 8, !noalias !219802
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 1, ptr %i.bf, align 8, !noalias !219802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !219802
  store ptr null, ptr %i.z, align 8, !noalias !219802
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 0, ptr %i.bg, align 8, !noalias !219802
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h2f1082e539c842e7E.exit.i.i.i.i.i.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !219806)
  call void @llvm.experimental.noalias.scope.decl(metadata !219809)
  call void @llvm.experimental.noalias.scope.decl(metadata !219812)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !219815
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17hbff30297a975e291E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bq, !noalias !219819

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  %i.bl = load i8, ptr %i.x, align 8, !range !1313, !noalias !219815, !noundef !14
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !219815, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !219815
  br label %bb.br

bb.l:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.bp = load i8, ptr %i.bh, align 1, !range !1313, !noalias !219815, !noundef !14
  %i.bq = trunc nuw i8 %i.bp to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !219815
  br i1 %i.bq, label %bb.m, label %_ZN10serde_core2de9MapAccess10next_entry17h2f1082e539c842e7E.exit.thread12.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !219815
  %i.br = load ptr, ptr %i.aa, align 8, !alias.scope !219820, !noalias !219821, !nonnull !14, !align !240, !noundef !14 ; 28 uses
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_string17h00c9baf95e8d7dc2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br)
          to label %.noexc6.i.i.i.i.i.i unwind label %bb.bq, !noalias !219819

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.m
  %i.bs = load i64, ptr %i.w, align 8, !range !2917, !noalias !219815, !noundef !14 ; 6 uses
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808
  %i.bu = load ptr, ptr %i.bi, align 8, !noalias !219822 ; 4 uses
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc6.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !219815
  br label %bb.br

bb.o:                                             ; preds = %.noexc6.i.i.i.i.i.i
  %.sroa.14.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !219822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !219815
  call void @llvm.experimental.noalias.scope.decl(metadata !219823)
  call void @llvm.experimental.noalias.scope.decl(metadata !219826)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 15 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !219829, !noalias !219832, !noundef !14 ; 8 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !219837, !noalias !219838 ; 2 uses
  %i.by = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.bx
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !219829, !noalias !219832, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ce, %bb.q ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !219839)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !219840, !noundef !14
  switch i8 %i.cd, label %bb.r [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
    i8 58, label %bb.s
  ], !prof !3649

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.ce = add i64 %i.cb, 1                        ; 3 uses
  store i64 %i.ce, ptr %i.bv, align 8, !alias.scope !219841, !noalias !219838
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ce, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.p

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.o, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !219844
  store i64 3, ptr %i.u, align 8, !noalias !219844
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !219845

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !219844
  br label %.loopexit21.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !219844
  store i64 6, ptr %i.v, align 8, !noalias !219844
  %i.cg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc12.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !219845

.noexc12.i.i.i.i.i.i.i.i:                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !219844
  br label %.loopexit21.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.p
  %i.ch = add i64 %i.cb, 1                        ; 3 uses
  store i64 %i.ch, ptr %i.bv, align 8, !alias.scope !219846, !noalias !219849
  call void @llvm.experimental.noalias.scope.decl(metadata !219850)
  call void @llvm.experimental.noalias.scope.decl(metadata !219853)
  call void @llvm.experimental.noalias.scope.decl(metadata !219856)
  call void @llvm.experimental.noalias.scope.decl(metadata !219859)
  %i.ci = icmp ult i64 %i.ch, %i.bx
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.s, %bb.t
  %i.cj = phi i64 [ %i.cm, %bb.t ], [ %i.ch, %bb.s ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !219862, !noundef !14
  switch i8 %i.cl, label %bb.u [
    i8 32, label %bb.t
    i8 10, label %bb.t
    i8 9, label %bb.t
    i8 13, label %bb.t
    i8 123, label %bb.v
    i8 34, label %bb.w
  ], !prof !12229

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = add i64 %i.cj, 1                        ; 3 uses
  store i64 %i.cm, ptr %i.bv, align 8, !alias.scope !219870, !noalias !219873
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cm, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit20.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !219874
  store i64 5, ptr %i.p, align 8, !noalias !219874
  %i.cn = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc13.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !219845

.noexc13.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit20.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !219874
  br label %.loopexit21.i.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !219874
  store i64 10, ptr %i.q, align 8, !noalias !219874
  %i.co = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc14.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !219845

.noexc14.i.i.i.i.i.i.i.i:                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !219874
  br label %.loopexit21.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !1313, !alias.scope !219875, !noalias !219876, !noundef !14
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.al, label %bb.ak

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !219877)
  call void @llvm.experimental.noalias.scope.decl(metadata !219880)
  call void @llvm.experimental.noalias.scope.decl(metadata !219883)
  call void @llvm.experimental.noalias.scope.decl(metadata !219886)
  call void @llvm.experimental.noalias.scope.decl(metadata !219889)
  call void @llvm.experimental.noalias.scope.decl(metadata !219892)
  call void @llvm.experimental.noalias.scope.decl(metadata !219895)
  call void @llvm.experimental.noalias.scope.decl(metadata !219898)
  %2 = icmp ult i64 %i.cj, %i.bx
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.w, %bb.x
  %i.cs = phi i64 [ %i.cv, %bb.x ], [ %i.cj, %bb.w ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !219901, !noundef !14
  switch i8 %i.cu, label %bb.z [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.y
  ], !prof !3649

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = add i64 %i.cs, 1                        ; 3 uses
  store i64 %i.cv, ptr %i.bv, align 8, !alias.scope !219913, !noalias !219916
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cv, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !219917
  store i64 5, ptr %i.o, align 8, !noalias !219917
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc15.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !219845

.noexc15.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !219917
  br label %.noexc20.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cx = add i64 %i.cs, 1
  store i64 %i.cx, ptr %i.bv, align 8, !alias.scope !219918, !noalias !219921
  %i.cy = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !219922, !noalias !219921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !219917
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br)
          to label %.noexc16.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !219845

.noexc16.i.i.i.i.i.i.i.i:                         ; preds = %bb.y
  %i.cz = load i64, ptr %i.n, align 8, !range !802, !noalias !219917, !noundef !14 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = load ptr, ptr %i.bj, align 8, !noalias !219917 ; 11 uses
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164)
          to label %.noexc17.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !219845

bb.aa:                                            ; preds = %.noexc16.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !219917
  br label %.noexc20.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc16.i.i.i.i.i.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !219917 ; 3 uses
  %i.dd = trunc nuw i64 %i.cz to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 5 ; 2 uses
  br i1 %i.dd, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h55975fd8ea223c8cE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !93489

bb.ad:                                            ; preds = %bb.ac
  %i.de = load i32, ptr %i.db, align 1
  %i.df = xor i32 %i.de, 1752198241
  %i.dg = getelementptr i8, ptr %i.db, i64 4
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = xor i32 %i.di, 97
  %i.dk = or i32 %i.df, %i.dj
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.do = load i32, ptr %i.db, align 1
  %i.dp = xor i32 %i.do, 1853189987
  %i.dq = getelementptr i8, ptr %i.db, i64 4
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = xor i32 %i.ds, 116
  %i.du = or i32 %i.dp, %i.dt
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.ai, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h55975fd8ea223c8cE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !15

bb.af:                                            ; preds = %bb.ab
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ag, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h55975fd8ea223c8cE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !93489

bb.ag:                                            ; preds = %bb.af
  %i.dy = load i32, ptr %i.db, align 1
  %i.dz = xor i32 %i.dy, 1752198241
  %i.ea = getelementptr i8, ptr %i.db, i64 4
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i32
  %i.ed = xor i32 %i.ec, 97
  %i.ee = or i32 %i.dz, %i.ed
  %i.ef = icmp ne i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = load i32, ptr %i.db, align 1
  %i.ej = xor i32 %i.ei, 1853189987
  %i.ek = getelementptr i8, ptr %i.db, i64 4
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i32
  %i.en = xor i32 %i.em, 116
  %i.eo = or i32 %i.ej, %i.en
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = zext i1 %i.ep to i32
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ai, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h55975fd8ea223c8cE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !15

_ZN10serde_core2de7Visitor18visit_borrowed_str17h55975fd8ea223c8cE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.af, %bb.ae, %bb.ac
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.i.i.i.i.i.i = phi i64 [ 5, %bb.ah ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ 5, %bb.ae ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ac ]
  %i.es = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.db, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1213, i64 noundef 2)
          to label %.noexc17.sink.split.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !219845

.noexc17.sink.split.i.i.i.i.i.i.i.i:              ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h55975fd8ea223c8cE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !219917
  br label %.noexc17.i.i.i.i.i.i.i.i

.noexc17.i.i.i.i.i.i.i.i:                         ; preds = %.noexc17.sink.split.i.i.i.i.i.i.i.i, %bb.z
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.z ], [ %i.es, %.noexc17.sink.split.i.i.i.i.i.i.i.i ]
  %i.et = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br)
          to label %.noexc20.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !219845

.noexc20.i.i.i.i.i.i.i.i:                         ; preds = %.noexc17.i.i.i.i.i.i.i.i, %bb.aa, %.noexc15.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.db, %bb.aa ], [ %i.cw, %.noexc15.i.i.i.i.i.i.i.i ], [ %i.et, %.noexc17.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit21.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !219917
  br label %_ZN10serde_core2de9MapAccess10next_entry17h2f1082e539c842e7E.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !219917
  br label %_ZN10serde_core2de9MapAccess10next_entry17h2f1082e539c842e7E.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %i.br, i64 57 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !219875, !noalias !219876, !noundef !14
  %i.ew = add i8 %i.ev, -1                        ; 2 uses
  store i8 %i.ew, ptr %i.eu, align 1, !alias.scope !219875, !noalias !219876
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.bf, label %bb.al, !prof !121

bb.al:                                            ; preds = %bb.ak, %bb.v
  %i.ey = add i64 %i.cj, 1                        ; 3 uses
  store i64 %i.ey, ptr %i.bv, align 8, !alias.scope !219923, !noalias !219876
  call void @llvm.experimental.noalias.scope.decl(metadata !219926)
  call void @llvm.experimental.noalias.scope.decl(metadata !219929)
  call void @llvm.experimental.noalias.scope.decl(metadata !219932)
  call void @llvm.experimental.noalias.scope.decl(metadata !219935)
  %i.ez = icmp ult i64 %i.ey, %i.bx
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.al, %bb.am
  %i.fa = phi i64 [ %i.fd, %bb.am ], [ %i.ey, %bb.al ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !219938, !noundef !14
  switch i8 %i.fc, label %bb.an [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 34, label %bb.ao
    i8 125, label %bb.aw
  ], !prof !12326

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fd = add i64 %i.fa, 1                        ; 3 uses
  store i64 %i.fd, ptr %i.bv, align 8, !alias.scope !219946, !noalias !219949
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fd, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !219950
  store i64 3, ptr %i.k, align 8, !noalias !219950
  %i.fe = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc21.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !219845

.noexc21.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !219950
  br label %"_ZN219_$LT$meilisearch_types..facet_values_sort.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..facet_values_sort..FacetValuesSort$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h21a1327650ae1987E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !219950
  store i64 17, ptr %i.l, align 8, !noalias !219950
  %i.ff = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc22.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !219845

.noexc22.i.i.i.i.i.i.i.i:                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !219950
  br label %"_ZN219_$LT$meilisearch_types..facet_values_sort.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..facet_values_sort..FacetValuesSort$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h21a1327650ae1987E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !219951)
  call void @llvm.experimental.noalias.scope.decl(metadata !219954)
  call void @llvm.experimental.noalias.scope.decl(metadata !219957)
  call void @llvm.experimental.noalias.scope.decl(metadata !219960)
  %i.fg = add i64 %i.fa, 1
  store i64 %i.fg, ptr %i.bv, align 8, !alias.scope !219963, !noalias !219966
  %i.fh = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 0, ptr %i.fh, align 8, !alias.scope !219971, !noalias !219966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !219972
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br)
          to label %.noexc23.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !219845

.noexc23.i.i.i.i.i.i.i.i:                         ; preds = %bb.ao
  %i.fi = load i64, ptr %i.j, align 8, !range !802, !noalias !219972, !noundef !14 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 2
  %i.fk = load ptr, ptr %i.bk, align 8, !noalias !219972 ; 11 uses
  br i1 %i.fj, label %.noexc25.i.i.i.i.i.i.i.i, label %bb.ap

end_hunk_22
