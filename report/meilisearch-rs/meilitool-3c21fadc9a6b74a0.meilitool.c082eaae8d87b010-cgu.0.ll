Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN10serde_core2de12Deserializer24__deserialize_content_v117hfa5ef25d87a405ddE:bb.a
  %.not.i = icmp eq ptr %i.gx, null
  br i1 %.not.i, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %.sroa.33.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.33.0.copyload231 = load i8, ptr %.sroa.33.0..sroa_idx230, align 1, !noalias !2430
  %.sroa.35.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.35, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.35.0..sroa_idx242, i64 6, i1 false), !noalias !2430
  %.sroa.35245.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.35245.0.copyload259 = load i64, ptr %.sroa.35245.0..sroa_idx258, align 8, !noalias !2430
  %.sroa.45.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.hc = load <2 x i64>, ptr %.sroa.45.0..sroa_idx276, align 8, !noalias !2430
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.947)
  br label %.thread100

bb.cs:                                            ; preds = %bb.cp
  %i.hd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !2430, !nonnull !15, !align !569, !noundef !15
  %i.hf = ptrtoint ptr %i.he to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.947)
  %.not = icmp eq ptr %i.gx, null
  br i1 %.not, label %.thread100, label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  %i.hg = ptrtoint ptr %i.gx to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.947)
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.r), !noalias !2410, !inline_history !2431
  br label %.thread100

.thread100:                                       ; preds = %bb.ct, %bb.cr, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit", %bb.cs
  %.sroa.35245.3 = phi i64 [ %i.hf, %bb.cs ], [ %i.hf, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit" ], [ %.sroa.35245.0.copyload259, %bb.cr ], [ %i.hg, %bb.ct ]
  %.sroa.33.2 = phi i8 [ undef, %bb.cs ], [ undef, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit" ], [ %.sroa.33.0.copyload231, %bb.cr ], [ undef, %bb.ct ]
  %.sroa.0.2 = phi i8 [ 22, %bb.cs ], [ 22, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit" ], [ %i.ha, %bb.cr ], [ 22, %bb.ct ]
  %i.hh = phi <2 x i64> [ undef, %bb.cs ], [ undef, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit" ], [ %i.hc, %bb.cr ], [ undef, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2430
  br label %bb.bl

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !2630), !noalias !2410
  call void @llvm.experimental.noalias.scope.decl(metadata !2633), !noalias !2410
  %i.hi = load i64, ptr %i.gx, align 8, !range !1131, !alias.scope !2636, !noalias !2637, !noundef !15
  switch i64 %i.hi, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit" [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.hj, align 8, !alias.scope !2636, !noalias !2637, !noundef !15 ; 2 uses
  %i.hk = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.hk, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.cv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.hl, align 8, !alias.scope !2636, !noalias !2637, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #45, !noalias !2640
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit"

bb.cw:                                            ; preds = %bb.cu
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.hm)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit" unwind label %bb.cx, !noalias !2637

bb.cx:                                            ; preds = %bb.cw
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gx, i64 noundef 40, i64 noundef 8) #45, !noalias !2637
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit": ; preds = %bb.cu, %bb.cv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.cw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gx, i64 noundef 40, i64 noundef 8) #45, !noalias !2637
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
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17had28dc0126b844d0E.exit"

bb.da:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2430
  store i64 10, ptr %i.p, align 8, !noalias !2430
  %i.ho = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !2410, !inline_history !2431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2430
  %i.hp = ptrtoint ptr %i.ho to i64
  br label %bb.as

bb.db:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2430
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hc7bd29bf746f345dE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !2410, !inline_history !2431
  %i.hq = load i64, ptr %i.x, align 8, !range !2512, !noalias !2430, !noundef !15 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  br i1 %i.hr, label %bb.dc, label %switch.lookup432

bb.dc:                                            ; preds = %bb.db
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !2430, !nonnull !15, !align !569, !noundef !15
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ht, ptr %i.hu, align 8, !alias.scope !2410, !noalias !2413
  store i8 22, ptr %0, align 8, !alias.scope !2410, !noalias !2413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2430
  br label %bb.ah

switch.lookup432:                                 ; preds = %bb.db
  %.sroa.443.0.copyload = load i64, ptr %i.hs, align 8, !noalias !2430
  %switch.cast433 = trunc nuw i64 %i.hq to i24
  %switch.shiftamt434 = shl nuw nsw i24 %switch.cast433, 3
  %switch.downshift435 = lshr i24 525322, %switch.shiftamt434
  %switch.masked436 = trunc i24 %switch.downshift435 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2430
  store i8 %switch.masked436, ptr %0, align 8
  %.sroa.35245.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.443.0.copyload, ptr %.sroa.35245.0..sroa_idx262, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17had28dc0126b844d0E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17had28dc0126b844d0E.exit": ; preds = %.loopexit111, %bb.ag, %bb.ah, %bb.aj, %bb.al, %switch.lookup, %bb.at, %bb.au, %bb.cz, %switch.lookup432
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN10serde_core2de13VariantAccess15newtype_variant17hae9cd73e4f1aeceeE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 16 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !2664, !noalias !2667, !noundef !15 ; 6 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !2670, !noalias !2671 ; 2 uses
  %i.bc = icmp ult i64 %.promoted.i.i.i.i.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %.loopexit60.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !2664, !noalias !2667, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.bf = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bi, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !2673, !noundef !15
  switch i8 %i.bh, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !2674

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bi = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.bi, ptr %i.az, align 8, !alias.scope !2675, !noalias !2671
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bi, %i.bb
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit60.i.i.i.i, label %bb.b

.loopexit60.i.i.i.i:                              ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2678
  store i64 5, ptr %i.at, align 8, !noalias !2678
  %i.bj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.at), !noalias !2679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2678
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !alias.scope !2679, !noalias !2680
  store i64 4, ptr %0, align 8, !alias.scope !2679, !noalias !2680
  br label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$20newtype_variant_seed17h9def5a61fa9a0381E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2678
  store i64 10, ptr %i.au, align 8, !noalias !2678
  %i.bl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.au), !noalias !2679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2678
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !2679, !noalias !2680
  store i64 4, ptr %0, align 8, !alias.scope !2679, !noalias !2680
  br label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$20newtype_variant_seed17h9def5a61fa9a0381E.exit"

bb.e:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.bo = load i8, ptr %i.bn, align 8, !range !447, !alias.scope !2680, !noalias !2679, !noundef !15
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.w, label %bb.v

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  %2 = icmp ult i64 %i.bf, %i.bb
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.f, %bb.g
  %i.bq = phi i64 [ %i.bt, %bb.g ], [ %i.bf, %bb.f ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noalias !2707, !noundef !15
  switch i8 %i.bs, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !1195

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = add i64 %i.bq, 1                        ; 3 uses
  store i64 %i.bt, ptr %i.az, align 8, !alias.scope !2718, !noalias !2721
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bt, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2722
  store i64 5, ptr %i.as, align 8, !noalias !2722
  %i.bu = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as), !noalias !2723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2722
  br label %bb.s

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = add i64 %i.bq, 1
  store i64 %i.bv, ptr %i.az, align 8, !alias.scope !2724, !noalias !2723
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bw, align 8, !alias.scope !2727, !noalias !2723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2722
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !2723
  %i.bx = load i64, ptr %i.ar, align 8, !range !1177, !noalias !2722, !noundef !15 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !2722 ; 10 uses
  br i1 %i.by, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2656), !noalias !2723
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2722
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2722 ; 4 uses
  %i.cc = trunc nuw i64 %i.bx to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  br i1 %i.cc, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h331c17c0dab2c324E.exit.i.i.i.i.i.i.i.i.i.i.i" [
    i64 14, label %bb.m
    i64 8, label %bb.n
  ], !prof !935

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
  br i1 %i.cl, label %bb.t, label %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h331c17c0dab2c324E.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.cm = load i64, ptr %i.ca, align 1
  %i.cn = icmp ne i64 %i.cm, 7957695015225681252
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.u, label %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h331c17c0dab2c324E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h331c17c0dab2c324E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.l
  %i.cq = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @380, i64 noundef 2), !noalias !2728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2722
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h961f89330796c48bE.exit.i.i.i.i.i.i.i.i.i.i.i [
    i64 14, label %bb.p
    i64 8, label %bb.q
  ], !prof !935

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
  br i1 %i.cz, label %bb.t, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h961f89330796c48bE.exit.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.ca, align 1
  %i.db = icmp ne i64 %i.da, 7957695015225681252
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.u, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h961f89330796c48bE.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h961f89330796c48bE.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.de = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @380, i64 noundef 2), !noalias !2731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2722
  br label %bb.r

bb.r:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h961f89330796c48bE.exit.i.i.i.i.i.i.i.i.i.i.i, %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h331c17c0dab2c324E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %"_ZN194_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h331c17c0dab2c324E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.de, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h961f89330796c48bE.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.i ]
  %i.df = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !2723
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.64.0.ph.i.i.i.i.i = phi ptr [ %i.df, %bb.r ], [ %i.bu, %.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.64.0.ph.i.i.i.i.i) ]
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1144e52b36e783b1E.exit.i.i.i.i"

bb.t:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2736
  store i8 13, ptr %i.ap, align 8, !noalias !2736
  %i.dg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ap, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !2739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2736
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1144e52b36e783b1E.exit.i.i.i.i"

bb.u:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2740
  store i8 13, ptr %i.aq, align 8, !noalias !2740
  %i.dh = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aq, ptr noundef nonnull align 1 @2613, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !2745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2740
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1144e52b36e783b1E.exit.i.i.i.i"

"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1144e52b36e783b1E.exit.i.i.i.i": ; preds = %bb.u, %bb.t, %bb.s
  %.sink.i.i.i.i.i = phi ptr [ %i.dg, %bb.t ], [ %i.dh, %bb.u ], [ %.sroa.64.0.ph.i.i.i.i.i, %bb.s ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i.i.i.i, ptr %i.di, align 8, !alias.scope !2746, !noalias !2747
  store i64 4, ptr %0, align 8, !alias.scope !2746, !noalias !2747
  br label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$20newtype_variant_seed17h9def5a61fa9a0381E.exit"

bb.v:                                             ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !2680, !noalias !2679, !noundef !15
  %i.dl = add i8 %i.dk, -1                        ; 2 uses
  store i8 %i.dl, ptr %i.dj, align 1, !alias.scope !2680, !noalias !2679
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.ew, label %bb.w, !prof !122

bb.w:                                             ; preds = %bb.v, %bb.e
  %i.dn = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.az, align 8, !alias.scope !2748, !noalias !2679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2760)
  %i.do = icmp ult i64 %i.dn, %i.bb
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.w, %bb.x
  %i.dp = phi i64 [ %i.ds, %bb.x ], [ %i.dn, %bb.w ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !2763, !noundef !15
  switch i8 %i.dr, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.ah
  ], !prof !2771

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ds = add i64 %i.dp, 1                        ; 3 uses
  store i64 %i.ds, ptr %i.az, align 8, !alias.scope !2772, !noalias !2775
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2776
  store i64 3, ptr %i.am, align 8, !noalias !2776
  %i.dt = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.am), !noalias !2777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2776
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h71e9472bc746ef4cE.exit.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2776
  store i64 17, ptr %i.an, align 8, !noalias !2776
  %i.du = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.an), !noalias !2777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2776
  br label %"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h71e9472bc746ef4cE.exit.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2787)
  %i.dv = add i64 %i.dp, 1
  store i64 %i.dv, ptr %i.az, align 8, !alias.scope !2790, !noalias !2793
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dw, align 8, !alias.scope !2798, !noalias !2793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2799
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !2793
  %i.dx = load i64, ptr %i.al, align 8, !range !1177, !noalias !2799, !noundef !15 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !2799 ; 9 uses
  br i1 %i.dy, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i, align 8, !noalias !2799 ; 3 uses
  %i.eb = trunc nuw i64 %i.dx to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ]
end_hunk_0
begin_hunk_1_@"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0c7c5217fc49d1d5E":bb.a

bb.d:                                             ; preds = %bb.a, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h3701e4db79a86a16E.exit"
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.f

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h3701e4db79a86a16E.exit": ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hdaaa4522e66ae6bfE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !569, !noundef !15
  %i.b = tail call noundef ptr @_ZN3std2io5Write9write_all17hcf329d865592c0d0E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !50922, !noundef !15
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h3701e4db79a86a16E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h3701e4db79a86a16E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h3701e4db79a86a16E.exit"
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.f

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h3701e4db79a86a16E.exit": ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5flush17h14d9e18ad957714dE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h59962579c781702aE"(ptr noalias noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5flush17h466677d1ed9bc577E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN84_$LT$meilisearch_types..versioning..VersionFileError$u20$as$u20$core..fmt..Debug$GT$3fmt17h2164738e1480c72dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i32, ptr %0, align 8, !range !26644, !noundef !15
  switch i32 %i.g, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2577, i64 noundef 18)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.f, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2578, i64 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @649, i64 noundef 7, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @996)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.m, ptr %i.e, align 8
  %i.n = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1731, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1599, i64 noundef 5, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1249, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1600, i64 noundef 5, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1249, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1601, i64 noundef 5, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1232)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.q, ptr %i.d, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2579, i64 noundef 21, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1599, i64 noundef 5, ptr noundef nonnull align 1 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1249, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1600, i64 noundef 5, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1249, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1601, i64 noundef 5, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1232)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.u, ptr %i.c, align 8
  %i.v = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2580, i64 noundef 25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1599, i64 noundef 5, ptr noundef nonnull align 1 %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1249, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1600, i64 noundef 5, ptr noundef nonnull align 1 %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1249, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1601, i64 noundef 5, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1232)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.b, align 8
  %i.x = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2581, i64 noundef 30, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1219)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.a, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2583, i64 noundef 11, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2582)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %bb.e ], [ %i.v, %bb.f ], [ %i.x, %bb.g ], [ %i.z, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN85_$LT$meilitool..upgrade..v1_12..VariableNameStep$u20$as$u20$milli..progress..Step$GT$4name17h81270787e512b3ffE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2585)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @"_ZN85_$LT$meilitool..upgrade..v1_12..VariableNameStep$u20$as$u20$milli..progress..Step$GT$5total17h41a04b8eccbcca5bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !noundef !15
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @"_ZN85_$LT$meilitool..upgrade..v1_12..VariableNameStep$u20$as$u20$milli..progress..Step$GT$7current17hec8c859d758a269bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !15
  ret i32 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0fccbbb97f0895ffE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50933)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !50936, !noalias !50939, !noundef !15 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !50943, !noalias !50944 ; 3 uses
  %i.v = icmp ult i64 %.promoted.i.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !50936, !noalias !50939, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.y = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50945)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !50946, !noundef !15
  switch i8 %i.aa, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.av
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !50947, !noalias !50944
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i.i, label %.loopexit19.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.y, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50959)
  %i.ac = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.u
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !50962, !noalias !50965, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.af = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50971)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !50972, !noundef !15
  switch i8 %i.ah, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !2674

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ai = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !50973, !noalias !50976
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i, label %bb.d

.loopexit19.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !50977
  store i64 5, ptr %i.n, align 8, !noalias !50977
  %i.aj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !50978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !50977
  br label %bb.bc

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !50977
  store i64 10, ptr %i.o, align 8, !noalias !50977
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !50978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !50977
  br label %bb.bc

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !range !447, !alias.scope !50979, !noalias !50978, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.q, label %bb.p

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51001)
  %2 = icmp ult i64 %i.af, %i.u
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.ao = phi i64 [ %i.ar, %bb.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !51004, !noundef !15 ; 2 uses
  switch i8 %i.aq, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.ao, 1                        ; 3 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !51016, !noalias !51019
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !51020
  %i.as = icmp eq i8 %i.aq, 34
  br i1 %i.as, label %bb.j, label %bb.k, !prof !16

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !51020
  store i64 5, ptr %i.m, align 8, !noalias !51020
  %i.at = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !51021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !51020
  br label %bb.o

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !51022, !noalias !51021
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.av, align 8, !alias.scope !51025, !noalias !51021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !51020
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !51021
  %i.aw = load i64, ptr %i.k, align 8, !range !1177, !noalias !51020, !noundef !15
  %i.ax = icmp eq i64 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !51020 ; 3 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.k:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ba = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66), !noalias !51021
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !51020
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !51020
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  call fastcc void @"_ZN197_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0141cb143f8254d1E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.az, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !51021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51020
  %i.bb = load i8, ptr %i.l, align 8, !range !447, !noalias !51020, !noundef !15
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %._crit_edge.i.i.i.i.i.i.i, label %switch.lookup.i.i.i, !prof !122

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.m
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !51020
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.k
  %i.bd = phi ptr [ %.pre.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ba, %bb.k ]
  %i.be = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !51021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !51020
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.be, %bb.n ], [ %i.az, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i) ]
  br label %bb.bc

switch.lookup.i.i.i:                              ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !range !1118, !noalias !51020, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !51020
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h06c628dc4f4b5753E.exit.i"

default.unreachable:                              ; preds = %bb.aa
  unreachable

bb.p:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !50979, !noalias !50978, !noundef !15
  %i.bj = add i8 %i.bi, -1                        ; 2 uses
  store i8 %i.bj, ptr %i.bh, align 1, !alias.scope !50979, !noalias !50978
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.an, label %bb.q, !prof !122

bb.q:                                             ; preds = %bb.p, %bb.g
  %i.bl = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.s, align 8, !alias.scope !51026, !noalias !50978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51038)
  %i.bm = icmp ult i64 %i.bl, %i.u
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.q, %bb.r
  %i.bn = phi i64 [ %i.bq, %bb.r ], [ %i.bl, %bb.q ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !51041, !noundef !15
  switch i8 %i.bp, label %bb.s [
    i8 32, label %bb.r
    i8 10, label %bb.r
    i8 9, label %bb.r
    i8 13, label %bb.r
    i8 34, label %bb.t
    i8 125, label %bb.u
  ], !prof !2771

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bq = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bq, ptr %i.s, align 8, !alias.scope !51049, !noalias !51052
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bq, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !51053
  store i64 3, ptr %i.h, align 8, !noalias !51053
  %i.br = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !51054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !51053
  br label %"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h455a5ba7e7a584fbE.exit.i.i.i.i.i"

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !51053
  store i64 17, ptr %i.i, align 8, !noalias !51053
  %i.bs = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !51054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !51053
  br label %"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h455a5ba7e7a584fbE.exit.i.i.i.i.i"

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51064)
  %i.bt = add i64 %i.bn, 1
  store i64 %i.bt, ptr %i.s, align 8, !alias.scope !51067, !noalias !51070
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bu, align 8, !alias.scope !51075, !noalias !51070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !51076
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !51070
  %i.bv = load i64, ptr %i.f, align 8, !range !1177, !noalias !51076, !noundef !15
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !51076, !nonnull !15, !noundef !15 ; 2 uses
  br i1 %i.bw, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.thread.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.i.i.i.i.i.i.i.i", !prof !5452

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !51076
  br label %bb.v

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.t
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i, align 8, !noalias !51076
  call fastcc void @"_ZN197_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0141cb143f8254d1E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.by, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i), !noalias !51054
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.g, align 8, !range !447, !noalias !51053
  %i.bz = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !51076
  br i1 %i.bz, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.i._crit_edge.i.i.i.i.i.i.i", label %bb.w, !prof !4913

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.i._crit_edge.i.i.i.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.i.i.i.i.i.i.i.i"
  %.phi.trans.insert.i.i15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i.i16.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i, align 8, !noalias !51053
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !51053
  store i64 10, ptr %i.j, align 8, !noalias !51053
  %i.ca = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !51054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51053
  br label %"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h455a5ba7e7a584fbE.exit.i.i.i.i.i"

bb.v:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.i._crit_edge.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.thread.i.i.i.i.i.i.i.i"
  %i.cb = phi ptr [ %.pre.i.i16.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.i._crit_edge.i.i.i.i.i.i.i" ], [ %i.by, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.thread.i.i.i.i.i.i.i.i" ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !51054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51053
  br label %"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h455a5ba7e7a584fbE.exit.i.i.i.i.i"

bb.w:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had2efacc20d13b67E.exit.i.i.i.i.i.i.i.i"
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !range !1118, !noalias !51053, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51053
  call void @llvm.experimental.noalias.scope.decl(metadata !51077)
  call void @llvm.experimental.noalias.scope.decl(metadata !51080)
  %i.cf = load i64, ptr %i.t, align 8, !alias.scope !51083, !noalias !51086, !noundef !15 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !51089, !noalias !51090 ; 2 uses
  %i.cg = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.w
  %i.ch = load ptr, ptr %i.ad, align 8, !alias.scope !51083, !noalias !51086, !nonnull !15, !align !533, !noundef !15
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ci = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.y ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51091)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !51092, !noundef !15
  switch i8 %i.ck, label %bb.z [
    i8 32, label %bb.y
    i8 10, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 58, label %bb.aa
  ], !prof !1195

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %i.cl = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cl, ptr %i.s, align 8, !alias.scope !51093, !noalias !51090
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cl, %i.cf
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %bb.x

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !51096
  store i64 3, ptr %i.d, align 8, !noalias !51096
end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h13915150fc5b9feeE":bb.a

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i": ; preds = %bb.cv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.cu, %bb.ct
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nk, i64 noundef 40, i64 noundef 8) #45, !noalias !51559
  br label %.thread37.i.i

bb.cx:                                            ; preds = %.thread37.i.i, %.thread40.i.i, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.nk, %.thread40.i.i ], [ %i.ah, %bb.e ], [ %i.nq, %.thread37.i.i ]
  %i.nz = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !51216
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h9ae0afeaab5b5a71E.exit"

bb.cy:                                            ; preds = %bb.cq
  %i.oa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.oa, align 8, !noalias !51215
  %.sroa.29.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.215.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx.i.i, i64 16, i1 false), !noalias !51217
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !51215
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h9ae0afeaab5b5a71E.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h9ae0afeaab5b5a71E.exit": ; preds = %.loopexit44.i.i, %bb.cl, %bb.cx, %bb.cy
  %.sink309.i = phi ptr [ %i.ad, %.loopexit44.i.i ], [ %i.ng, %bb.cl ], [ %i.nz, %bb.cx ], [ %.sroa.08.0.copyload.i.i, %bb.cy ]
  %.sink.i = phi i64 [ 1, %.loopexit44.i.i ], [ 1, %bb.cl ], [ 1, %bb.cx ], [ 0, %bb.cy ]
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink309.i, ptr %i.ob, align 8, !alias.scope !51216, !noalias !51217
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !51216, !noalias !51217
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h14b97106cd021e37E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.sroa.4.i = alloca [16 x i8], align 8   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51571)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !51574, !noalias !51577, !noundef !15 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !51581, !noalias !51582 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !51574, !noalias !51577, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51583)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !51584, !noundef !15
  switch i8 %i.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !51585, !noalias !51582
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i": ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51588
  call fastcc void @"_ZN10serde_core2de5impls107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$11deserialize17he48219f550b30542E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !51592
  %i.n = load i64, ptr %i.c, align 8, !range !966, !noalias !51588, !noundef !15
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !51593 ; 2 uses
  br i1 %i.o, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hbf7421b9a7305664E.exit.thread12.i", label %bb.l

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hbf7421b9a7305664E.exit.thread12.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51588
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hbf7421b9a7305664E.exit.thread.i"

bb.d:                                             ; preds = %bb.b
  %i.r = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !51594, !noalias !51597
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51598)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.f) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51601)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.r, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.e, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !51604, !noundef !15
  %i.u = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.u, ptr %i.d, align 8, !alias.scope !51607, !noalias !51608
  %.not.i.i.i = icmp eq i8 %i.t, 117
  br i1 %.not.i.i.i, label %bb.f, label %bb.j, !prof !2446

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51609)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.u, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !51611, !noundef !15
  %i.x = add i64 %i.j, 3                          ; 3 uses
  store i64 %i.x, ptr %i.d, align 8, !alias.scope !51612, !noalias !51608
  %.not.i.1.i.i = icmp eq i8 %i.w, 108
  br i1 %.not.i.1.i.i, label %bb.h, label %bb.j, !prof !2446

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51613)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.x, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !51615, !noundef !15
  %i.aa = add i64 %i.j, 4
  store i64 %i.aa, ptr %i.d, align 8, !alias.scope !51616, !noalias !51608
  %.not.i.2.i.i = icmp eq i8 %i.z, 108
  br i1 %.not.i.2.i.i, label %bb.k, label %bb.j, !prof !2446

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51617
  store i64 5, ptr %i.b, align 8, !noalias !51617
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !51618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51617
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hbf7421b9a7305664E.exit.thread.i"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51617
  store i64 9, ptr %i.a, align 8, !noalias !51617
  %i.ac = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !51618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51617
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hbf7421b9a7305664E.exit.thread.i"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hbf7421b9a7305664E.exit.thread.i": ; preds = %bb.j, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hbf7421b9a7305664E.exit.thread12.i"
  %.sroa.6.16.i = phi ptr [ %i.q, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hbf7421b9a7305664E.exit.thread12.i" ], [ %i.ac, %bb.j ], [ %i.ab, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.16.i, ptr %i.ad, align 8, !alias.scope !51563, !noalias !51566
  store i64 3, ptr %0, align 8, !alias.scope !51563, !noalias !51566
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h2dba496dff2e5829E.exit"

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %bb.m

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx.i, i64 16, i1 false), !noalias !51619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51588
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.5.sroa.0.0.i = phi ptr [ %i.q, %bb.l ], [ undef, %bb.k ]
  %.sroa.01.0.i = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  store i64 %.sroa.01.0.i, ptr %0, align 8, !alias.scope !51563, !noalias !51566
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !51563, !noalias !51566
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.i, i64 16, i1 false), !noalias !51566
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h2dba496dff2e5829E.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h2dba496dff2e5829E.exit": ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hbf7421b9a7305664E.exit.thread.i", %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h161eb3f47b7a8426E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51628)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !51631, !noalias !51634, !noundef !15 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !51638, !noalias !51639 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !51631, !noalias !51634, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51640)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !51641, !noundef !15
  switch i8 %i.y, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.bi
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !51642, !noalias !51639
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51654)
  %i.aa = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.s
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !51657, !noalias !51660, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51666)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !51667, !noundef !15
  switch i8 %i.af, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !2674

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !51668, !noalias !51671
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.d

.loopexit20.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !51672
  store i64 5, ptr %i.l, align 8, !noalias !51672
  %i.ah = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !51673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !51672
  br label %bb.bp

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !51672
  store i64 10, ptr %i.m, align 8, !noalias !51672
  %i.ai = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !51673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !51672
  br label %bb.bp

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !447, !alias.scope !51674, !noalias !51673, !noundef !15
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.ab, label %bb.aa

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51696)
  %2 = icmp ult i64 %i.ad, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.am = phi i64 [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !51699, !noundef !15
  switch i8 %i.ao, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.j
  ], !prof !1195

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.q, align 8, !alias.scope !51711, !noalias !51714
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !51715
  store i64 5, ptr %i.k, align 8, !noalias !51715
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !51716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51715
  br label %bb.w

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !51717, !noalias !51716
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !51720, !noalias !51716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !51715
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !51716
  %i.at = load i64, ptr %i.j, align 8, !range !1177, !noalias !51715, !noundef !15 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !51715 ; 12 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56), !noalias !51716
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51715
  br label %bb.w

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !51715 ; 4 uses
  %i.ay = trunc nuw i64 %i.at to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  br i1 %i.ay, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf12445530481938eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i64 8, label %bb.o
    i64 9, label %bb.q
  ], !prof !935

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
  br i1 %i.bg, label %bb.y, label %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf12445530481938eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

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
  br i1 %i.bq, label %bb.z, label %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf12445530481938eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf12445530481938eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.n
  %i.br = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @784, i64 noundef 3), !noalias !51721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51715
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h1f19743544630098E.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 8, label %bb.s
    i64 9, label %bb.u
  ], !prof !935

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
  br i1 %i.bz, label %bb.y, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h1f19743544630098E.exit.i.i.i.i.i.i.i.i.i.i.i.i

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
  br i1 %i.cj, label %bb.z, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h1f19743544630098E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h1f19743544630098E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.r
  %i.ck = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @784, i64 noundef 3), !noalias !51724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51715
  br label %bb.v

bb.v:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h1f19743544630098E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf12445530481938eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  %.sroa.1817.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %"_ZN206_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf12445530481938eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ck, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h1f19743544630098E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.k ]
  %i.cl = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1817.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !51716
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.612.0.ph.i.i.i.i.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.aq, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aw, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.612.0.ph.i.i.i.i.i.i) ]
  br label %bb.bp

bb.x:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51715
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h04959e5c5746371bE.exit.i"

bb.y:                                             ; preds = %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51715
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h04959e5c5746371bE.exit.i"

bb.z:                                             ; preds = %bb.u, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51715
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h04959e5c5746371bE.exit.i"

bb.aa:                                            ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !51674, !noalias !51673, !noundef !15
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !alias.scope !51674, !noalias !51673
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.ba, label %bb.ab, !prof !122

bb.ab:                                            ; preds = %bb.aa, %bb.g
  %i.cq = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.cq, ptr %i.q, align 8, !alias.scope !51729, !noalias !51673
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51741)
  %i.cr = icmp ult i64 %i.cq, %i.s
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ab, %bb.ac
  %i.cs = phi i64 [ %i.cv, %bb.ac ], [ %i.cq, %bb.ab ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !51744, !noundef !15
  switch i8 %i.cu, label %bb.ad [
    i8 32, label %bb.ac
    i8 10, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
    i8 34, label %bb.ae
    i8 125, label %bb.ao
  ], !prof !2771

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cv = add i64 %i.cs, 1                        ; 3 uses
  store i64 %i.cv, ptr %i.q, align 8, !alias.scope !51752, !noalias !51755
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cv, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51756
  store i64 3, ptr %i.g, align 8, !noalias !51756
  %i.cw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !51757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51756
  br label %"_ZN201_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf7cd809732b79988E.exit.i.i.i.i.i"

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !51756
  store i64 17, ptr %i.h, align 8, !noalias !51756
  %i.cx = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !51757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !51756
  br label %"_ZN201_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf7cd809732b79988E.exit.i.i.i.i.i"

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51767)
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.q, align 8, !alias.scope !51770, !noalias !51773
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cz, align 8, !alias.scope !51778, !noalias !51773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !51779
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !51773
  %i.da = load i64, ptr %i.f, align 8, !range !1177, !noalias !51779, !noundef !15 ; 2 uses
  %i.db = icmp eq i64 %i.da, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !51779 ; 11 uses
  br i1 %i.db, label %bb.ap, label %bb.af

end_hunk_2
begin_hunk_3_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h31fdf437c6a1786aE":bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3218defcaba2042aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53356)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !53359, !noalias !53362, !noundef !15 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !53366, !noalias !53367 ; 3 uses
  %i.ah = icmp ult i64 %.promoted.i.i.i, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !53359, !noalias !53362, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ak = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.an, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53368)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !53369, !noundef !15
  switch i8 %i.am, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.cm
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.an = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.an, ptr %i.ae, align 8, !alias.scope !53370, !noalias !53367
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ag
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.ak, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53382)
  %i.ao = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.ag
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !53385, !noalias !53388, !nonnull !15, !align !533, !noundef !15
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ar = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.au, %bb.e ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53394)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !53395, !noundef !15
  switch i8 %i.at, label %bb.g [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.f
  ], !prof !1195

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.au = add i64 %i.ar, 1                        ; 3 uses
  store i64 %i.au, ptr %i.ae, align 8, !alias.scope !53396, !noalias !53399
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.au, %i.ag
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.d

.loopexit.i.i.i.i.i:                              ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !53400
  store i64 5, ptr %i.ad, align 8, !noalias !53400
  %i.av = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad), !noalias !53401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !53400
  br label %bb.ct

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !range !447, !alias.scope !53402, !noalias !53401, !noundef !15
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9), !noalias !53401
  br label %.thread40.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !53402, !noalias !53401, !noundef !15
  %i.bc = add i8 %i.bb, -1                        ; 2 uses
  store i8 %i.bc, ptr %i.ba, align 1, !alias.scope !53402, !noalias !53401
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.bw, label %bb.i, !prof !122

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.be = add i64 %i.ar, 1
  store i64 %i.be, ptr %i.ae, align 8, !alias.scope !53403, !noalias !53401
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.930.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !53400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !53400
  store ptr %1, ptr %i.aa, align 8, !noalias !53406
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 1, ptr %i.bf, align 8, !noalias !53406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !53406
  store ptr null, ptr %i.z, align 8, !noalias !53406
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 0, ptr %i.bg, align 8, !noalias !53406
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

bb.j:                                             ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h1f3ddd389ea29b8cE.exit.i.i.i.i.i.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !53410)
  call void @llvm.experimental.noalias.scope.decl(metadata !53413)
  call void @llvm.experimental.noalias.scope.decl(metadata !53416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !53419
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h0966436940de472cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bq, !noalias !53423

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  %i.bl = load i8, ptr %i.x, align 8, !range !447, !noalias !53419, !noundef !15
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !53419, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !53419
  br label %bb.br

bb.l:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.bp = load i8, ptr %i.bh, align 1, !range !447, !noalias !53419, !noundef !15
  %i.bq = trunc nuw i8 %i.bp to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !53419
  br i1 %i.bq, label %bb.m, label %_ZN10serde_core2de9MapAccess10next_entry17h1f3ddd389ea29b8cE.exit.thread12.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !53419
  %i.br = load ptr, ptr %i.aa, align 8, !alias.scope !53424, !noalias !53425, !nonnull !15, !align !569, !noundef !15 ; 28 uses
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_string17hb5aec942e6db247cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br)
          to label %.noexc6.i.i.i.i.i.i unwind label %bb.bq, !noalias !53423

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.m
  %i.bs = load i64, ptr %i.w, align 8, !range !286, !noalias !53419, !noundef !15 ; 6 uses
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808
  %i.bu = load ptr, ptr %i.bi, align 8, !noalias !53426 ; 4 uses
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc6.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !53419
  br label %bb.br

bb.o:                                             ; preds = %.noexc6.i.i.i.i.i.i
  %.sroa.14.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !53426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !53419
  call void @llvm.experimental.noalias.scope.decl(metadata !53427)
  call void @llvm.experimental.noalias.scope.decl(metadata !53430)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 15 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !53433, !noalias !53436, !noundef !15 ; 8 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !53441, !noalias !53442 ; 2 uses
  %i.by = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.bx
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !53433, !noalias !53436, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ce, %bb.q ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53443)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !53444, !noundef !15
  switch i8 %i.cd, label %bb.r [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
    i8 58, label %bb.s
  ], !prof !1195

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.ce = add i64 %i.cb, 1                        ; 3 uses
  store i64 %i.ce, ptr %i.bv, align 8, !alias.scope !53445, !noalias !53442
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ce, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.p

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.o, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !53448
  store i64 3, ptr %i.u, align 8, !noalias !53448
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !53449

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !53448
  br label %.loopexit21.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !53448
  store i64 6, ptr %i.v, align 8, !noalias !53448
  %i.cg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc12.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !53449

.noexc12.i.i.i.i.i.i.i.i:                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !53448
  br label %.loopexit21.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.p
  %i.ch = add i64 %i.cb, 1                        ; 3 uses
  store i64 %i.ch, ptr %i.bv, align 8, !alias.scope !53450, !noalias !53453
  call void @llvm.experimental.noalias.scope.decl(metadata !53454)
  call void @llvm.experimental.noalias.scope.decl(metadata !53457)
  call void @llvm.experimental.noalias.scope.decl(metadata !53460)
  call void @llvm.experimental.noalias.scope.decl(metadata !53463)
  %i.ci = icmp ult i64 %i.ch, %i.bx
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.s, %bb.t
  %i.cj = phi i64 [ %i.cm, %bb.t ], [ %i.ch, %bb.s ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !53466, !noundef !15
  switch i8 %i.cl, label %bb.u [
    i8 32, label %bb.t
    i8 10, label %bb.t
    i8 9, label %bb.t
    i8 13, label %bb.t
    i8 123, label %bb.v
    i8 34, label %bb.w
  ], !prof !2674

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = add i64 %i.cj, 1                        ; 3 uses
  store i64 %i.cm, ptr %i.bv, align 8, !alias.scope !53474, !noalias !53477
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cm, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit20.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !53478
  store i64 5, ptr %i.p, align 8, !noalias !53478
  %i.cn = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc13.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !53449

.noexc13.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit20.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !53478
  br label %.loopexit21.i.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !53478
  store i64 10, ptr %i.q, align 8, !noalias !53478
  %i.co = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc14.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !53449

.noexc14.i.i.i.i.i.i.i.i:                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !53478
  br label %.loopexit21.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !447, !alias.scope !53479, !noalias !53480, !noundef !15
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.al, label %bb.ak

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !53481)
  call void @llvm.experimental.noalias.scope.decl(metadata !53484)
  call void @llvm.experimental.noalias.scope.decl(metadata !53487)
  call void @llvm.experimental.noalias.scope.decl(metadata !53490)
  call void @llvm.experimental.noalias.scope.decl(metadata !53493)
  call void @llvm.experimental.noalias.scope.decl(metadata !53496)
  call void @llvm.experimental.noalias.scope.decl(metadata !53499)
  call void @llvm.experimental.noalias.scope.decl(metadata !53502)
  %2 = icmp ult i64 %i.cj, %i.bx
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.w, %bb.x
  %i.cs = phi i64 [ %i.cv, %bb.x ], [ %i.cj, %bb.w ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !53505, !noundef !15
  switch i8 %i.cu, label %bb.z [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.y
  ], !prof !1195

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = add i64 %i.cs, 1                        ; 3 uses
  store i64 %i.cv, ptr %i.bv, align 8, !alias.scope !53517, !noalias !53520
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cv, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !53521
  store i64 5, ptr %i.o, align 8, !noalias !53521
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc15.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !53449

.noexc15.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !53521
  br label %.noexc20.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cx = add i64 %i.cs, 1
  store i64 %i.cx, ptr %i.bv, align 8, !alias.scope !53522, !noalias !53525
  %i.cy = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !53526, !noalias !53525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !53521
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br)
          to label %.noexc16.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !53449

.noexc16.i.i.i.i.i.i.i.i:                         ; preds = %bb.y
  %i.cz = load i64, ptr %i.n, align 8, !range !1177, !noalias !53521, !noundef !15 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = load ptr, ptr %i.bj, align 8, !noalias !53521 ; 11 uses
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
          to label %.noexc17.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !53449

bb.aa:                                            ; preds = %.noexc16.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !53521
  br label %.noexc20.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc16.i.i.i.i.i.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53521 ; 3 uses
  %i.dd = trunc nuw i64 %i.cz to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 5 ; 2 uses
  br i1 %i.dd, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h4a725bd0d979fe5eE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !23430

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
  br i1 %i.dx, label %bb.ai, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h4a725bd0d979fe5eE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !16

bb.af:                                            ; preds = %bb.ab
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ag, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h4a725bd0d979fe5eE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !23430

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
  br i1 %i.er, label %bb.ai, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h4a725bd0d979fe5eE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h4a725bd0d979fe5eE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.af, %bb.ae, %bb.ac
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.i.i.i.i.i.i = phi i64 [ 5, %bb.ah ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ 5, %bb.ae ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ac ]
  %i.es = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.db, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @235, i64 noundef 2)
          to label %.noexc17.sink.split.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !53449

.noexc17.sink.split.i.i.i.i.i.i.i.i:              ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h4a725bd0d979fe5eE.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !53521
  br label %.noexc17.i.i.i.i.i.i.i.i

.noexc17.i.i.i.i.i.i.i.i:                         ; preds = %.noexc17.sink.split.i.i.i.i.i.i.i.i, %bb.z
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.z ], [ %i.es, %.noexc17.sink.split.i.i.i.i.i.i.i.i ]
  %i.et = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br)
          to label %.noexc20.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !53449

.noexc20.i.i.i.i.i.i.i.i:                         ; preds = %.noexc17.i.i.i.i.i.i.i.i, %bb.aa, %.noexc15.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.db, %bb.aa ], [ %i.cw, %.noexc15.i.i.i.i.i.i.i.i ], [ %i.et, %.noexc17.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit21.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !53521
  br label %_ZN10serde_core2de9MapAccess10next_entry17h1f3ddd389ea29b8cE.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !53521
  br label %_ZN10serde_core2de9MapAccess10next_entry17h1f3ddd389ea29b8cE.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %i.br, i64 57 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !53479, !noalias !53480, !noundef !15
  %i.ew = add i8 %i.ev, -1                        ; 2 uses
  store i8 %i.ew, ptr %i.eu, align 1, !alias.scope !53479, !noalias !53480
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.bf, label %bb.al, !prof !122

bb.al:                                            ; preds = %bb.ak, %bb.v
  %i.ey = add i64 %i.cj, 1                        ; 3 uses
  store i64 %i.ey, ptr %i.bv, align 8, !alias.scope !53527, !noalias !53480
  call void @llvm.experimental.noalias.scope.decl(metadata !53530)
  call void @llvm.experimental.noalias.scope.decl(metadata !53533)
  call void @llvm.experimental.noalias.scope.decl(metadata !53536)
  call void @llvm.experimental.noalias.scope.decl(metadata !53539)
  %i.ez = icmp ult i64 %i.ey, %i.bx
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.al, %bb.am
  %i.fa = phi i64 [ %i.fd, %bb.am ], [ %i.ey, %bb.al ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !53542, !noundef !15
  switch i8 %i.fc, label %bb.an [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 34, label %bb.ao
    i8 125, label %bb.aw
  ], !prof !2771

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fd = add i64 %i.fa, 1                        ; 3 uses
  store i64 %i.fd, ptr %i.bv, align 8, !alias.scope !53550, !noalias !53553
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fd, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !53554
  store i64 3, ptr %i.k, align 8, !noalias !53554
  %i.fe = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc21.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !53449

.noexc21.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !53554
  br label %"_ZN219_$LT$meilisearch_types..facet_values_sort.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..facet_values_sort..FacetValuesSort$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf016df56822c3c67E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !53554
  store i64 17, ptr %i.l, align 8, !noalias !53554
  %i.ff = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc22.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !53449

.noexc22.i.i.i.i.i.i.i.i:                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !53554
  br label %"_ZN219_$LT$meilisearch_types..facet_values_sort.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..facet_values_sort..FacetValuesSort$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf016df56822c3c67E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !53555)
  call void @llvm.experimental.noalias.scope.decl(metadata !53558)
  call void @llvm.experimental.noalias.scope.decl(metadata !53561)
  call void @llvm.experimental.noalias.scope.decl(metadata !53564)
  %i.fg = add i64 %i.fa, 1
  store i64 %i.fg, ptr %i.bv, align 8, !alias.scope !53567, !noalias !53570
  %i.fh = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 0, ptr %i.fh, align 8, !alias.scope !53575, !noalias !53570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !53576
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br)
          to label %.noexc23.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !53449

.noexc23.i.i.i.i.i.i.i.i:                         ; preds = %bb.ao
  %i.fi = load i64, ptr %i.j, align 8, !range !1177, !noalias !53576, !noundef !15 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 2
  %i.fk = load ptr, ptr %i.bk, align 8, !noalias !53576 ; 11 uses
  br i1 %i.fj, label %.noexc25.i.i.i.i.i.i.i.i, label %bb.ap

end_hunk_3
begin_hunk_4_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3218defcaba2042aE":bb.a
bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53713)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.jx, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jy = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !noalias !53715, !noundef !15
  %i.ka = add i64 %i.ak, 4
  store i64 %i.ka, ptr %i.ae, align 8, !alias.scope !53716, !noalias !53708
  %.not.i.2.i.i = icmp eq i8 %i.jz, 108
  br i1 %.not.i.2.i.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hf9db2ed3c53027b1E.exit.i", label %bb.cs, !prof !2446

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.cq, %bb.co, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53717
  store i64 5, ptr %i.c, align 8, !noalias !53717
  %i.kb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !53718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !53717
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr, %bb.cp, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53717
  store i64 9, ptr %i.b, align 8, !noalias !53717
  %i.kc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !53718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53717
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", %.thread40.i.i.i.i.i, %bb.bw, %.loopexit.i.i.i.i.i
  %.sroa.7.0.ph.i = phi ptr [ %i.kc, %bb.cs ], [ %i.kb, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %i.av, %.loopexit.i.i.i.i.i ], [ %i.it, %bb.bw ], [ %i.jq, %.thread40.i.i.i.i.i ]
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %i.kd, align 8, !alias.scope !53348, !noalias !53351
  store i64 3, ptr %0, align 8, !alias.scope !53348, !noalias !53351
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h3409588f04441a52E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hf9db2ed3c53027b1E.exit.i": ; preds = %bb.cr, %bb.cb
  %.sroa.5.sroa.0.0.i = phi ptr [ undef, %bb.cr ], [ %.sroa.729.0.i.i.i.i.i, %bb.cb ]
  %.sroa.5.sroa.4.0.i = phi i64 [ undef, %bb.cr ], [ %.sroa.9.0.copyload.i.i.i.i.i, %bb.cb ]
  %.sroa.5.sroa.5.0.i = phi i64 [ undef, %bb.cr ], [ %.sroa.11.0.copyload.i.i.i.i.i, %bb.cb ]
  %.sroa.01.0.i = phi i64 [ 1, %bb.cr ], [ 0, %bb.cb ]
  store i64 %.sroa.01.0.i, ptr %0, align 8, !alias.scope !53348, !noalias !53351
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !53348, !noalias !53351
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.4.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !53348, !noalias !53351
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !53348, !noalias !53351
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h3409588f04441a52E.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h3409588f04441a52E.exit": ; preds = %bb.ct, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hf9db2ed3c53027b1E.exit.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h331c4fd02451dc54E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53729)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !53732, !noalias !53735, !noundef !15 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !53738, !noalias !53739 ; 2 uses
  %i.y = icmp ult i64 %.promoted.i.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !53732, !noalias !53735, !nonnull !15, !align !533, !noundef !15
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ab = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53740)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !53741, !noundef !15
  switch i8 %i.ad, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !1195

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.v, align 8, !alias.scope !53742, !noalias !53739
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, %i.x
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !53745
  store i64 5, ptr %i.u, align 8, !noalias !53745
  %i.af = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !53746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !53745
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !53746, !noalias !53747
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !53746, !noalias !53747
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h7ce5f7847f38d137E.exit"

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !447, !alias.scope !53747, !noalias !53746, !noundef !15
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2644), !noalias !53746
  br label %.thread53.i.i

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !53747, !noalias !53746, !noundef !15
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.al, align 1, !alias.scope !53747, !noalias !53746
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.ff, label %bb.g, !prof !122

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ap = add i64 %i.ab, 1
  store i64 %i.ap, ptr %i.v, align 8, !alias.scope !53748, !noalias !53746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !53745
  store ptr %1, ptr %i.s, align 8, !noalias !53751
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 1, ptr %i.aq, align 8, !noalias !53751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !53751
  store i64 0, ptr %i.r, align 8, !noalias !53751
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ar, align 8, !noalias !53751
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
  store i64 %storemerge.i.i.i, ptr %i.as, align 8, !noalias !53751
  call void @llvm.experimental.noalias.scope.decl(metadata !53755)
  call void @llvm.experimental.noalias.scope.decl(metadata !53758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !53761
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h7186cedf91320133E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !53764

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ay = load i8, ptr %i.q, align 8, !range !447, !noalias !53761, !noundef !15
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !53761, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !53761
  br label %.loopexit46.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bc = load i8, ptr %i.at, align 1, !range !447, !noalias !53761, !noundef !15
  %i.bd = trunc nuw i8 %i.bc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !53761
  br i1 %i.bd, label %bb.k, label %_ZN10serde_core2de9SeqAccess12next_element17h2bbb76b3d708c93cE.exit.thread33.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.s, align 8, !alias.scope !53765, !noalias !53766, !nonnull !15, !align !569, !noundef !15 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53767)
  call void @llvm.experimental.noalias.scope.decl(metadata !53770)
  call void @llvm.experimental.noalias.scope.decl(metadata !53773)
  call void @llvm.experimental.noalias.scope.decl(metadata !53776)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !53779, !noalias !53782, !noundef !15 ; 6 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !53788, !noalias !53789 ; 2 uses
  %i.bi = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !53779, !noalias !53782, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.m ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53790)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !53791, !noundef !15
  switch i8 %i.bn, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %bb.p
  ], !prof !2674

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bo = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bo, ptr %i.bf, align 8, !alias.scope !53792, !noalias !53789
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bo, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i:                      ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !53795
  store i64 5, ptr %i.l, align 8, !noalias !53795
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !53764

.noexc7.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !53795
  br label %.loopexit46.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !53795
  store i64 10, ptr %i.m, align 8, !noalias !53795
  %i.bq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !53764

.noexc8.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !53795
  br label %.loopexit46.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !447, !alias.scope !53796, !noalias !53797, !noundef !15
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.w, label %bb.v

bb.p:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !53798)
  call void @llvm.experimental.noalias.scope.decl(metadata !53801)
  call void @llvm.experimental.noalias.scope.decl(metadata !53804)
  call void @llvm.experimental.noalias.scope.decl(metadata !53807)
  call void @llvm.experimental.noalias.scope.decl(metadata !53810)
  call void @llvm.experimental.noalias.scope.decl(metadata !53813)
  call void @llvm.experimental.noalias.scope.decl(metadata !53816)
  call void @llvm.experimental.noalias.scope.decl(metadata !53819)
  %2 = icmp ult i64 %i.bl, %i.bh
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p, %bb.q
  %i.bu = phi i64 [ %i.bx, %bb.q ], [ %i.bl, %bb.p ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !53822, !noundef !15 ; 2 uses
  switch i8 %i.bw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = add i64 %i.bu, 1                        ; 3 uses
  store i64 %i.bx, ptr %i.bf, align 8, !alias.scope !53834, !noalias !53837
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !53838
  %i.by = icmp eq i8 %i.bw, 34
  br i1 %i.by, label %bb.r, label %bb.s, !prof !16

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !53838
  store i64 5, ptr %i.k, align 8, !noalias !53838
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !53764

.noexc9.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !53838
  br label %_ZN10serde_core2de10EnumAccess7variant17h34d96dca785ca168E.exit.thread.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ca = add i64 %i.bu, 1
  store i64 %i.ca, ptr %i.bf, align 8, !alias.scope !53839, !noalias !53842
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cb, align 8, !alias.scope !53843, !noalias !53842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !53838
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !53764

.noexc10.i.i.i:                                   ; preds = %bb.r
  %i.cc = load i64, ptr %i.i, align 8, !range !1177, !noalias !53838, !noundef !15
  %i.cd = icmp eq i64 %i.cc, 2
  %i.ce = load ptr, ptr %i.au, align 8, !noalias !53838 ; 3 uses
  br i1 %i.cd, label %bb.t, label %bb.u

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2657)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !53764

bb.t:                                             ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !53838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53838
  br label %_ZN10serde_core2de10EnumAccess7variant17h34d96dca785ca168E.exit.thread.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %.noexc10.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53838
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbddf505fb707f315E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !53764

.noexc12.i.i.i:                                   ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !53838
  %i.cg = load i8, ptr %i.j, align 8, !range !447, !noalias !53838, !noundef !15
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17h2bbb76b3d708c93cE.exit.thread38.i.i.i, !prof !122

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc12.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53838
  br label %.noexc11.i.i.i

.noexc11.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.ci = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.s ]
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !53764

.noexc13.i.i.i:                                   ; preds = %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53838
  br label %_ZN10serde_core2de10EnumAccess7variant17h34d96dca785ca168E.exit.thread.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de10EnumAccess7variant17h34d96dca785ca168E.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.noexc13.i.i.i, %bb.t, %.noexc9.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.noexc9.i.i.i ], [ %i.cj, %.noexc13.i.i.i ], [ %i.ce, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit46.i.i.i

_ZN10serde_core2de9SeqAccess12next_element17h2bbb76b3d708c93cE.exit.thread38.i.i.i: ; preds = %.noexc12.i.i.i
  %i.ck = load i8, ptr %i.av, align 1, !range !53844, !noalias !53838, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53838
  br label %bb.fc

default.unreachable:                              ; preds = %.noexc22.i.i.i
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 57 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !53796, !noalias !53797, !noundef !15
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 1, !alias.scope !53796, !noalias !53797
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.es, label %bb.w, !prof !122

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cp = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.cp, ptr %i.bf, align 8, !alias.scope !53845, !noalias !53797
  call void @llvm.experimental.noalias.scope.decl(metadata !53848)
  call void @llvm.experimental.noalias.scope.decl(metadata !53851)
  call void @llvm.experimental.noalias.scope.decl(metadata !53854)
  call void @llvm.experimental.noalias.scope.decl(metadata !53857)
  %i.cq = icmp ult i64 %i.cp, %i.bh
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.w, %bb.x
  %i.cr = phi i64 [ %i.cu, %bb.x ], [ %i.cp, %bb.w ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !53860, !noundef !15
  switch i8 %i.ct, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.aa
  ], !prof !2771

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = add i64 %i.cr, 1                        ; 3 uses
  store i64 %i.cu, ptr %i.bf, align 8, !alias.scope !53867, !noalias !53870
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cu, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !53872
  store i64 3, ptr %i.f, align 8, !noalias !53872
  %i.cv = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !53764

.noexc14.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !53872
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h80e4912ef6dfe2d8E.exit.i.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !53872
  store i64 17, ptr %i.g, align 8, !noalias !53872
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !53764

.noexc15.i.i.i:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !53872
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h80e4912ef6dfe2d8E.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !53872
  call void @llvm.experimental.noalias.scope.decl(metadata !53873)
  call void @llvm.experimental.noalias.scope.decl(metadata !53876)
  call void @llvm.experimental.noalias.scope.decl(metadata !53879)
  call void @llvm.experimental.noalias.scope.decl(metadata !53882)
  %i.cx = add i64 %i.cr, 1
  store i64 %i.cx, ptr %i.bf, align 8, !alias.scope !53885, !noalias !53888
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !53893, !noalias !53888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53894
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !53764

.noexc16.i.i.i:                                   ; preds = %bb.z
  %i.cz = load i64, ptr %i.d, align 8, !range !1177, !noalias !53894, !noundef !15
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = load ptr, ptr %i.aw, align 8, !noalias !53894, !nonnull !15, !noundef !15 ; 2 uses
  br i1 %i.da, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !5452

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53894
  br label %bb.ab

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !noalias !53894
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbddf505fb707f315E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.db, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !53764

.noexc17.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !447, !noalias !53872
  %i.dc = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53894
  br i1 %i.dc, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", label %bb.ac, !prof !4913

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc17.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i, align 8, !noalias !53872
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !53872
  store i64 10, ptr %i.h, align 8, !noalias !53872
  %i.dd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !53764

.noexc18.i.i.i:                                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !53872
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h80e4912ef6dfe2d8E.exit.i.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.de = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.db, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h220b3232b4ffbb66E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.df = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !53764

.noexc19.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53872
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h80e4912ef6dfe2d8E.exit.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %.noexc17.i.i.i
  %i.dg = load i8, ptr %i.ax, align 1, !range !53844, !noalias !53872, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53872
  call void @llvm.experimental.noalias.scope.decl(metadata !53895)
  call void @llvm.experimental.noalias.scope.decl(metadata !53898)
  %i.dh = load i64, ptr %i.bg, align 8, !alias.scope !53901, !noalias !53904, !noundef !15 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !53907, !noalias !53908 ; 2 uses
  %i.di = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ac
  %i.dj = load ptr, ptr %i.bj, align 8, !alias.scope !53901, !noalias !53904, !nonnull !15, !align !533, !noundef !15
  br label %bb.ad
end_hunk_4
begin_hunk_5_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3835fdeadcb313d5E":bb.a
  br label %.body.i.i.i

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h0b24bd51b1eab003E.exit.thread.i.i.i": ; preds = %bb.fw, %.loopexit121.i.i.i.i.i.i, %bb.eo, %bb.dv
  %i.vo = phi ptr [ %i.nd, %bb.fw ], [ %i.co, %.loopexit121.i.i.i.i.i.i ], [ %i.co, %bb.eo ], [ %i.lp, %bb.dv ]
  %i.vp = load i64, ptr %i.bp, align 8, !alias.scope !54588, !noalias !54621, !noundef !15
  %i.vq = add i64 %i.vp, 1
  store i64 %i.vq, ptr %i.bp, align 8, !alias.scope !54588, !noalias !54621
  br label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17hda8f470c3e1602e1E.exit.i.i.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h0b24bd51b1eab003E.exit.i.i.i": ; preds = %bb.ds, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h624793c786015960E.exit.i.i.i.i.i"
  %i.vr = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i1288 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %i.vr, i64 80, i1 false), !noalias !54821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.vr, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.an, i64 80, i1 false), !noalias !54822
  %.pr.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !54825, !noalias !54309
  %i.vs = icmp ugt i64 %.pr.i.i.i, -9223372036854775804
  br i1 %i.vs, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17hda8f470c3e1602e1E.exit.i.i.i", label %bb.gb

bb.gb:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h0b24bd51b1eab003E.exit.i.i.i"
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hff3dd965bf2c7c95E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.am)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17hda8f470c3e1602e1E.exit.i.i.i" unwind label %bb.dl, !noalias !54326

"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17hda8f470c3e1602e1E.exit.i.i.i": ; preds = %bb.gb, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h0b24bd51b1eab003E.exit.i.i.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h0b24bd51b1eab003E.exit.thread.i.i.i"
  %i.vt = phi ptr [ %i.co, %bb.gb ], [ %i.co, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h0b24bd51b1eab003E.exit.i.i.i" ], [ %i.vo, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h0b24bd51b1eab003E.exit.thread.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !54309
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.go, %bb.gg, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.wp, %bb.go ], [ %i.wc, %bb.gg ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.gc:                                            ; preds = %.body.i.i.i
  %i.vu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !54326
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hc3dab7e92d5b5ad3E.exit.i.i": ; preds = %bb.dm, %_ZN10serde_core2de9MapAccess10next_entry17h004eab5a8c79f0f0E.exit.thread25.i.i.i
  %.sroa.025.0.i.i = phi i64 [ 1, %bb.dm ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17h004eab5a8c79f0f0E.exit.thread25.i.i.i ]
  %.sroa.726.0.i.i = phi ptr [ %.sroa.9.0.ph.i.i.i, %bb.dm ], [ %i.co, %_ZN10serde_core2de9MapAccess10next_entry17h004eab5a8c79f0f0E.exit.thread25.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !54309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !54303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !54303
  %i.vv = load i8, ptr %i.bf, align 8, !range !447, !alias.scope !54305, !noalias !54304, !noundef !15
  %i.vw = trunc nuw i8 %i.vv to i1
  br i1 %i.vw, label %bb.gf, label %bb.ge

bb.gd:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !54303
  store i64 24, ptr %i.as, align 8, !noalias !54303
  %i.vx = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as), !noalias !54304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !54303
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h9bd35a7bfeccdd99E.exit"

bb.ge:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hc3dab7e92d5b5ad3E.exit.i.i"
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.vz = load i8, ptr %i.vy, align 1, !alias.scope !54305, !noalias !54304, !noundef !15
  %i.wa = add i8 %i.vz, 1
  store i8 %i.wa, ptr %i.vy, align 1, !alias.scope !54305, !noalias !54304
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hc3dab7e92d5b5ad3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !54303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !54303
  store i64 %.sroa.025.0.i.i, ptr %i.aq, align 8, !noalias !54303
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.726.0.i.i, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !noalias !54303
  %.sroa.927.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.i.i, i64 16, i1 false), !noalias !54303
  %i.wb = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.gh unwind label %bb.gg, !noalias !54304 ; 10 uses

bb.gg:                                            ; preds = %bb.gf
  %i.wc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr225drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..ExportIndexSettings$GT$$C$serde_json..error..Error$GT$$GT$17h1845ce8296d9fc3aE"(ptr noalias noundef align 8 dereferenceable(32) %i.aq) #44
          to label %common.resume.i.i unwind label %bb.gk, !noalias !54304

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !54303
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.wb, ptr %i.wd, align 8, !noalias !54303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !54303
  %i.we = load i64, ptr %i.ar, align 8, !range !966, !noalias !54303, !noundef !15
  %i.wf = trunc nuw i64 %i.we to i1
  br i1 %i.wf, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.not.i.i = icmp eq ptr %i.wb, null
  br i1 %.not.i.i, label %bb.gq, label %.thread40.i.i, !prof !2446

bb.gj:                                            ; preds = %bb.gh
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !noalias !54303, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  %.not43.i.i = icmp eq ptr %i.wb, null
  br i1 %.not43.i.i, label %.thread37.i.i, label %bb.gl

.thread40.i.i:                                    ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call fastcc void @"_ZN4core3ptr170drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h3678c9eb628d657bE"(ptr noalias noundef align 8 dereferenceable(24) %i.wi), !noalias !54304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !54303
  br label %bb.gp

bb.gk:                                            ; preds = %bb.gg
  %i.wj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !54304
  unreachable

.thread37.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !54303
  br label %bb.gp

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.experimental.noalias.scope.decl(metadata !54828)
  call void @llvm.experimental.noalias.scope.decl(metadata !54831)
  %i.wk = load i64, ptr %i.wb, align 8, !range !1131, !alias.scope !54834, !noalias !54835, !noundef !15
  switch i64 %i.wk, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" [
    i64 0, label %bb.gm
    i64 1, label %bb.gn
  ]

bb.gm:                                            ; preds = %bb.gl
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.wl, align 8, !alias.scope !54834, !noalias !54835, !noundef !15 ; 2 uses
  %i.wm = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.wm, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.gm
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.wn, align 8, !alias.scope !54834, !noalias !54835, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !54838
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i"

bb.gn:                                            ; preds = %bb.gl
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.wo)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" unwind label %bb.go, !noalias !54835

bb.go:                                            ; preds = %bb.gn
  %i.wp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wb, i64 noundef 40, i64 noundef 8) #45, !noalias !54835
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i": ; preds = %bb.gn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.gm, %bb.gl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wb, i64 noundef 40, i64 noundef 8) #45, !noalias !54835
  br label %.thread37.i.i

bb.gp:                                            ; preds = %.thread37.i.i, %.thread40.i.i, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.wb, %.thread40.i.i ], [ %i.bi, %bb.e ], [ %i.wh, %.thread37.i.i ]
  %i.wq = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !54304
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h9bd35a7bfeccdd99E.exit"

bb.gq:                                            ; preds = %bb.gi
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.wr, align 8, !noalias !54303
  %.sroa.29.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.215.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx.i.i, i64 16, i1 false), !noalias !54305
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !54303
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h9bd35a7bfeccdd99E.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h9bd35a7bfeccdd99E.exit": ; preds = %.loopexit.i.i, %bb.gd, %bb.gp, %bb.gq
  %.sink980.i = phi ptr [ %i.be, %.loopexit.i.i ], [ %i.vx, %bb.gd ], [ %i.wq, %bb.gp ], [ %.sroa.08.0.copyload.i.i, %bb.gq ]
  %.sink.i = phi i64 [ 1, %.loopexit.i.i ], [ 1, %bb.gd ], [ 1, %bb.gp ], [ 0, %bb.gq ]
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink980.i, ptr %i.ws, align 8, !alias.scope !54304, !noalias !54305
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !54304, !noalias !54305
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3dfb98b4247653a0E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [136 x i8], align 8               ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54847)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !54849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54850)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !54853, !noalias !54856, !noundef !15 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !54859, !noalias !54860 ; 2 uses
  %i.s = icmp ult i64 %.promoted.i.i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %.loopexit9.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !54853, !noalias !54856, !nonnull !15, !align !533, !noundef !15 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.v = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54861)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !54862, !noundef !15
  switch i8 %i.x, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !2674

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.y = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !54863, !noalias !54860
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %i.r
  br i1 %exitcond.not.i.i.i, label %.loopexit9.i.i, label %bb.b

.loopexit9.i.i:                                   ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !54866
  store i64 5, ptr %i.j, align 8, !noalias !54866
  %i.z = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !54867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !54866
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !54867, !noalias !54868
  store i64 6, ptr %0, align 8, !alias.scope !54867, !noalias !54868
  br label %"_ZN9meilitool7upgrade4v1_91_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$11deserialize17h60eaaaa8242ec058E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !54866
  store i64 10, ptr %i.k, align 8, !noalias !54866
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !54867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !54866
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !54867, !noalias !54868
  store i64 6, ptr %0, align 8, !alias.scope !54867, !noalias !54868
  br label %"_ZN9meilitool7upgrade4v1_91_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$11deserialize17h60eaaaa8242ec058E.exit"

bb.e:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !447, !alias.scope !54868, !noalias !54867, !noundef !15
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.u, label %bb.t

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54892)
  %2 = icmp ult i64 %i.v, %i.r
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.ag = phi i64 [ %i.aj, %bb.g ], [ %i.v, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !54895, !noundef !15 ; 2 uses
  switch i8 %i.ai, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aj = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.aj, ptr %i.p, align 8, !alias.scope !54906, !noalias !54909
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aj, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !54910
  %i.ak = icmp eq i8 %i.ai, 34
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !16

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !54910
  store i64 5, ptr %i.i, align 8, !noalias !54910
  %i.al = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !54911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !54910
  br label %bb.m

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i"
  %i.am = add i64 %i.ag, 1
  store i64 %i.am, ptr %i.p, align 8, !alias.scope !54912, !noalias !54911
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.an, align 8, !alias.scope !54915, !noalias !54911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !54910
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !54911
  %i.ao = load i64, ptr %i.g, align 8, !range !1177, !noalias !54910, !noundef !15
  %i.ap = icmp eq i64 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !54910 ; 3 uses
  br i1 %i.ap, label %bb.j, label %bb.k

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i"
  %i.as = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2653), !noalias !54911
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !54910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !54910
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !54910
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  call fastcc void @"_ZN200_$LT$meilitool..upgrade..v1_9.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h5b1febb6ff67dc07E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ar, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !54911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !54910
  %i.at = load i8, ptr %i.h, align 8, !range !447, !noalias !54910, !noundef !15
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %._crit_edge.i.i.i.i, label %bb.n, !prof !122

._crit_edge.i.i.i.i:                              ; preds = %bb.k
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !54910
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.av = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.as, %bb.i ]
  %i.aw = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !54911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !54910
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i = phi ptr [ %i.al, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.aw, %bb.l ], [ %i.ar, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.121.0.ph.i.i.i.i.i, ptr %i.ax, align 8, !alias.scope !54916, !noalias !54917
  br label %"_ZN195_$LT$meilitool..upgrade..v1_9.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1ea1eb539af0e067E.exit.i.i"

bb.n:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !range !1476, !noalias !54910, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !54910
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  switch i8 %i.az, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.o
    i8 4, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !54918
  store i8 13, ptr %i.c, align 8, !noalias !54918
  %i.bb = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @2613, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !54916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !54918
  store ptr %i.bb, ptr %i.ba, align 8, !alias.scope !54916, !noalias !54917
  br label %"_ZN195_$LT$meilitool..upgrade..v1_9.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1ea1eb539af0e067E.exit.i.i"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54919
  store i8 13, ptr %i.f, align 8, !noalias !54919
  %i.bc = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 1 @2613, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !54924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54919
  store ptr %i.bc, ptr %i.ba, align 8, !alias.scope !54916, !noalias !54917
  br label %"_ZN195_$LT$meilitool..upgrade..v1_9.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1ea1eb539af0e067E.exit.i.i"

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54925
  store i8 13, ptr %i.e, align 8, !noalias !54925
  %i.bd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @2613, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !54930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54925
  store ptr %i.bd, ptr %i.ba, align 8, !alias.scope !54916, !noalias !54917
  br label %"_ZN195_$LT$meilitool..upgrade..v1_9.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1ea1eb539af0e067E.exit.i.i"

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54931
  store i8 13, ptr %i.d, align 8, !noalias !54931
  %i.be = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 @2613, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !54936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54931
  store ptr %i.be, ptr %i.ba, align 8, !alias.scope !54916, !noalias !54917
  br label %"_ZN195_$LT$meilitool..upgrade..v1_9.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1ea1eb539af0e067E.exit.i.i"

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54937
  store i8 13, ptr %i.b, align 8, !noalias !54937
  %i.bf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @2613, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !54942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54937
  store ptr %i.bf, ptr %i.ba, align 8, !alias.scope !54916, !noalias !54917
  br label %"_ZN195_$LT$meilitool..upgrade..v1_9.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1ea1eb539af0e067E.exit.i.i"

"_ZN195_$LT$meilitool..upgrade..v1_9.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1ea1eb539af0e067E.exit.i.i": ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m
  store i64 6, ptr %0, align 8, !alias.scope !54916, !noalias !54917
  br label %"_ZN9meilitool7upgrade4v1_91_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$11deserialize17h60eaaaa8242ec058E.exit"

bb.t:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !54868, !noalias !54867, !noundef !15
  %i.bi = add i8 %i.bh, -1                        ; 2 uses
  store i8 %i.bi, ptr %i.bg, align 1, !alias.scope !54868, !noalias !54867
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.v, label %bb.u, !prof !122

bb.u:                                             ; preds = %bb.t, %bb.e
  %i.bk = add i64 %i.v, 1
  store i64 %i.bk, ptr %i.p, align 8, !alias.scope !54943, !noalias !54867
  call fastcc void @"_ZN195_$LT$meilitool..upgrade..v1_9.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4ebc785e73e764e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !54867
  %i.bl = load i8, ptr %i.ad, align 8, !range !447, !alias.scope !54868, !noalias !54867, !noundef !15
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !54866
  store i64 24, ptr %i.o, align 8, !noalias !54866
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !54867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !54866
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !alias.scope !54867, !noalias !54868
  store i64 6, ptr %0, align 8, !alias.scope !54867, !noalias !54868
  br label %"_ZN9meilitool7upgrade4v1_91_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$11deserialize17h60eaaaa8242ec058E.exit"

bb.w:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !54868, !noalias !54867, !noundef !15
  %i.br = add i8 %i.bq, 1
  store i8 %i.br, ptr %i.bp, align 1, !alias.scope !54868, !noalias !54867
  %i.bs = load i64, ptr %i.n, align 8, !range !24800, !noalias !54866, !noundef !15
  %i.bt = icmp eq i64 %i.bs, 6
  br i1 %i.bt, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.bu = load i64, ptr %i.n, align 8, !range !24800, !noalias !54866, !noundef !15
  %i.bv = icmp eq i64 %i.bu, 6
  br i1 %i.bv, label %bb.ac, label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.n, i64 136, i1 false), !noalias !54868
  br label %"_ZN9meilitool7upgrade4v1_91_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$11deserialize17h60eaaaa8242ec058E.exit"

bb.z:                                             ; preds = %bb.x, %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54946)
  %i.bw = load i64, ptr %i.q, align 8, !alias.scope !54949, !noalias !54952, !noundef !15 ; 2 uses
  %.promoted.i11.i.i = load i64, ptr %i.p, align 8, !alias.scope !54955, !noalias !54956 ; 2 uses
  %i.bx = icmp ult i64 %.promoted.i11.i.i, %i.bw
  br i1 %i.bx, label %.lr.ph.i16.i.i, label %.loopexit.i.i

.lr.ph.i16.i.i:                                   ; preds = %bb.z
  %i.by = load ptr, ptr %i.t, align 8, !alias.scope !54949, !noalias !54952, !nonnull !15, !align !533, !noundef !15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i16.i.i
  %i.bz = phi i64 [ %.promoted.i11.i.i, %.lr.ph.i16.i.i ], [ %i.cc, %bb.ab ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54957)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !54958, !noundef !15
  switch i8 %i.cb, label %bb.ag [
    i8 32, label %bb.ab
    i8 10, label %bb.ab
    i8 9, label %bb.ab
    i8 13, label %bb.ab
    i8 125, label %bb.ah
  ], !prof !1195

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.cc = add i64 %i.bz, 1                        ; 3 uses
  store i64 %i.cc, ptr %i.p, align 8, !alias.scope !54959, !noalias !54956
  %exitcond.not.i17.i.i = icmp eq i64 %i.cc, %i.bw
  br i1 %exitcond.not.i17.i.i, label %.loopexit.i.i, label %bb.aa

bb.ac:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.n, i64 136, i1 false), !noalias !54868
  br label %"_ZN9meilitool7upgrade4v1_91_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilitool..upgrade..v1_9..EmbedderOptions$GT$11deserialize17h60eaaaa8242ec058E.exit"

.loopexit.i.i:                                    ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !54866
  store i64 3, ptr %i.l, align 8, !noalias !54866
  %i.cd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.ae unwind label %bb.ad, !noalias !54867

end_hunk_5
begin_hunk_6_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h434cbd87fa9c1657E":bb.a

.thread47.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", %bb.hs, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h725adfbb8787778fE.exit.i.i.i", %bb.hq, %bb.e
  %.sroa.9.2.i.i = phi ptr [ %.sroa.731.0.i.i, %bb.hq ], [ %i.by, %bb.e ], [ %.sroa.731.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" ], [ %i.tz, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h725adfbb8787778fE.exit.i.i.i" ], [ %i.tz, %bb.hs ]
  %i.up = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !55491
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.up, ptr %i.uq, align 8, !alias.scope !55491, !noalias !55492
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !55491, !noalias !55492
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h40aceae33925a969E.exit"

bb.hy:                                            ; preds = %bb.hp
  store i64 %.sroa.029.0.i.i, ptr %0, align 8, !alias.scope !55491, !noalias !55492
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.731.0.i.i, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !alias.scope !55491, !noalias !55492
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i.i, ptr %.sroa.319.0..sroa_idx.i.i, align 8, !alias.scope !55491, !noalias !55492
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h40aceae33925a969E.exit"

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h40aceae33925a969E.exit": ; preds = %.loopexit.i.i, %bb.hk, %.thread47.i.i, %bb.hy
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44a105064ade3344E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [40 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [72 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.931.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56112)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !56115, !noalias !56118, !noundef !15 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !56121, !noalias !56122 ; 2 uses
  %i.ak = icmp ult i64 %.promoted.i.i.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !56115, !noalias !56118, !nonnull !15, !align !533, !noundef !15
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.an = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.aq, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56123)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !56124, !noundef !15
  switch i8 %i.ap, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !1195

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aq = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.aq, ptr %i.ah, align 8, !alias.scope !56125, !noalias !56122
  %exitcond.not.i.i.i = icmp eq i64 %i.aq, %i.aj
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !56128
  store i64 5, ptr %i.ag, align 8, !noalias !56128
  %i.ar = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag), !noalias !56129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !56128
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !56129, !noalias !56130
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hb435ca113ec26925E.exit"

bb.d:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !range !447, !alias.scope !56130, !noalias !56129, !noundef !15
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.aw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2641), !noalias !56129
  br label %.thread41.i.i

bb.f:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !56130, !noalias !56129, !noundef !15
  %i.az = add i8 %i.ay, -1                        ; 2 uses
  store i8 %i.az, ptr %i.ax, align 1, !alias.scope !56130, !noalias !56129
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.dj, label %bb.g, !prof !122

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.bb = add i64 %i.an, 1
  store i64 %i.bb, ptr %i.ah, align 8, !alias.scope !56131, !noalias !56129
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.931.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !56128
  store ptr %1, ptr %i.ad, align 8, !noalias !56134
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i8 1, ptr %i.bc, align 8, !noalias !56134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !56134
  store ptr null, ptr %i.ac, align 8, !noalias !56134
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  store i64 0, ptr %i.bd, align 8, !noalias !56134
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  %.sink58.i.sroa.gep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sink58.i.sroa.gep37.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.sink57.i.sroa.gep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink57.i.sroa.gep39.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.61.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.715.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.sroa.818.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.921.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.1127.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %.outer

.outer:                                           ; preds = %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i", %bb.g
  %.ph = phi i64 [ %i.ph, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i" ], [ 0, %bb.g ]
  %.ph584 = phi ptr [ %i.pg, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i" ], [ null, %bb.g ] ; 13 uses
  %.not.i.i.i.i.i = icmp eq ptr %.ph584, null
  %i.bq = load i64, ptr %i.bk, align 8            ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !56138)
  call void @llvm.experimental.noalias.scope.decl(metadata !56141)
  call void @llvm.experimental.noalias.scope.decl(metadata !56144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !56147
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h0966436940de472cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56151

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.br = load i8, ptr %i.aa, align 8, !range !447, !noalias !56147, !noundef !15
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !56147, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !56147
  br label %.loopexit53.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bv = load i8, ptr %i.be, align 1, !range !447, !noalias !56147, !noundef !15
  %i.bw = trunc nuw i8 %i.bv to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !56147
  br i1 %i.bw, label %bb.k, label %_ZN10serde_core2de9MapAccess10next_entry17hf7f81f5e260ef634E.exit.thread43.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %i.ad, align 8, !alias.scope !56152, !noalias !56153, !nonnull !15, !align !569, !noundef !15 ; 28 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56154)
  call void @llvm.experimental.noalias.scope.decl(metadata !56157)
  call void @llvm.experimental.noalias.scope.decl(metadata !56160)
  call void @llvm.experimental.noalias.scope.decl(metadata !56163)
  call void @llvm.experimental.noalias.scope.decl(metadata !56166)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 16 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 4 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !56169, !noalias !56172, !noundef !15 ; 6 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !56179, !noalias !56180 ; 2 uses
  %i.cb = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 6 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !56169, !noalias !56172, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ch, %bb.m ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56181)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !56182, !noundef !15
  switch i8 %i.cg, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %bb.p
  ], !prof !2674

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.ch = add i64 %i.ce, 1                        ; 3 uses
  store i64 %i.ch, ptr %i.by, align 8, !alias.scope !56183, !noalias !56180
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ch, %i.ca
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !56186
  store i64 5, ptr %i.v, align 8, !noalias !56186
  %i.ci = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !56151

.noexc5.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !56186
  br label %.loopexit53.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !56186
  store i64 10, ptr %i.w, align 8, !noalias !56186
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !56151

.noexc6.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !56186
  br label %.loopexit53.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !range !447, !alias.scope !56187, !noalias !56188, !noundef !15
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.x, label %bb.w

bb.p:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !56189)
  call void @llvm.experimental.noalias.scope.decl(metadata !56192)
  call void @llvm.experimental.noalias.scope.decl(metadata !56195)
  call void @llvm.experimental.noalias.scope.decl(metadata !56198)
  call void @llvm.experimental.noalias.scope.decl(metadata !56201)
  call void @llvm.experimental.noalias.scope.decl(metadata !56204)
  call void @llvm.experimental.noalias.scope.decl(metadata !56207)
  call void @llvm.experimental.noalias.scope.decl(metadata !56210)
  %2 = icmp ult i64 %i.ce, %i.ca
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.p, %bb.q
  %i.cn = phi i64 [ %i.cq, %bb.q ], [ %i.ce, %bb.p ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !56213, !noundef !15 ; 2 uses
  switch i8 %i.cp, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = add i64 %i.cn, 1                        ; 3 uses
  store i64 %i.cq, ptr %i.by, align 8, !alias.scope !56225, !noalias !56228
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cq, %i.ca
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !56229
  %i.cr = icmp eq i8 %i.cp, 34
  br i1 %i.cr, label %bb.r, label %bb.s, !prof !16

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !56229
  store i64 5, ptr %i.u, align 8, !noalias !56229
  %i.cs = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !56151

.noexc7.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !56229
  br label %bb.v

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ct = add i64 %i.cn, 1
  store i64 %i.ct, ptr %i.by, align 8, !alias.scope !56230, !noalias !56233
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 0, ptr %i.cu, align 8, !alias.scope !56234, !noalias !56233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !56229
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bx)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56151

.noexc8.i.i.i:                                    ; preds = %bb.r
  %i.cv = load i64, ptr %i.s, align 8, !range !1177, !noalias !56229, !noundef !15
  %i.cw = icmp eq i64 %i.cv, 2
  %i.cx = load ptr, ptr %i.bf, align 8, !noalias !56229 ; 3 uses
  br i1 %i.cw, label %bb.t, label %bb.u

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cy = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2652)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !56151

bb.t:                                             ; preds = %.noexc8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !56229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !56229
  br label %bb.v

bb.u:                                             ; preds = %.noexc8.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !56229
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cx) ]
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h7c57cba5151a8bc2E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cx, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56151

.noexc10.i.i.i:                                   ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !56229
  %i.cz = load i8, ptr %i.t, align 8, !range !447, !noalias !56229, !noundef !15
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.thread15.i.i.i.i.i", !prof !122

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc10.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !56229
  br label %.noexc9.i.i.i

.noexc9.i.i.i:                                    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.db = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cy, %bb.s ]
  %i.dc = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.db, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !56151

.noexc11.i.i.i:                                   ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !56229
  br label %bb.v

bb.v:                                             ; preds = %.noexc11.i.i.i, %bb.t, %.noexc7.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cs, %.noexc7.i.i.i ], [ %i.dc, %.noexc11.i.i.i ], [ %i.cx, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit53.i.i.i

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.thread15.i.i.i.i.i": ; preds = %.noexc10.i.i.i
  %i.dd = load i8, ptr %i.bg, align 1, !range !24875, !noalias !56229, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !56229
  %.pre.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !56235, !noalias !56242
  %.promoted.i.i.i.pre.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !56247, !noalias !56248
  br label %bb.bz

default.unreachable:                              ; preds = %.noexc20.i.i.i
  unreachable

bb.w:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %i.bx, i64 57 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !56187, !noalias !56188, !noundef !15
  %i.dg = add i8 %i.df, -1                        ; 2 uses
  store i8 %i.dg, ptr %i.de, align 1, !alias.scope !56187, !noalias !56188
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %bb.bs, label %bb.x, !prof !122

bb.x:                                             ; preds = %bb.w, %bb.o
  %i.di = add i64 %i.ce, 1                        ; 3 uses
  store i64 %i.di, ptr %i.by, align 8, !alias.scope !56249, !noalias !56188
  call void @llvm.experimental.noalias.scope.decl(metadata !56252)
  call void @llvm.experimental.noalias.scope.decl(metadata !56255)
  call void @llvm.experimental.noalias.scope.decl(metadata !56258)
  call void @llvm.experimental.noalias.scope.decl(metadata !56261)
  %i.dj = icmp ult i64 %i.di, %i.ca
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.x, %bb.y
  %i.dk = phi i64 [ %i.dn, %bb.y ], [ %i.di, %bb.x ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !56264, !noundef !15
  switch i8 %i.dm, label %bb.z [
    i8 32, label %bb.y
    i8 10, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 34, label %bb.aa
    i8 125, label %bb.ab
  ], !prof !2771

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = add i64 %i.dk, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.by, align 8, !alias.scope !56272, !noalias !56275
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dn, %i.ca
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !56276
  store i64 3, ptr %i.p, align 8, !noalias !56276
  %i.do = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56151

.noexc12.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !56276
  br label %"_ZN184_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb3efd7d7b7807a50E.exit.i.i.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !56276
  store i64 17, ptr %i.q, align 8, !noalias !56276
  %i.dp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56151

.noexc13.i.i.i:                                   ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !56276
  br label %"_ZN184_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb3efd7d7b7807a50E.exit.i.i.i.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !56276
  call void @llvm.experimental.noalias.scope.decl(metadata !56277)
  call void @llvm.experimental.noalias.scope.decl(metadata !56280)
  call void @llvm.experimental.noalias.scope.decl(metadata !56283)
  call void @llvm.experimental.noalias.scope.decl(metadata !56286)
  %i.dq = add i64 %i.dk, 1
  store i64 %i.dq, ptr %i.by, align 8, !alias.scope !56289, !noalias !56292
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 0, ptr %i.dr, align 8, !alias.scope !56297, !noalias !56292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !56298
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bx)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56151

.noexc14.i.i.i:                                   ; preds = %bb.aa
  %i.ds = load i64, ptr %i.n, align 8, !range !1177, !noalias !56298, !noundef !15
  %i.dt = icmp eq i64 %i.ds, 2
  %i.du = load ptr, ptr %i.bh, align 8, !noalias !56298, !nonnull !15, !noundef !15 ; 2 uses
  br i1 %i.dt, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !5452

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !56298
  br label %bb.ac

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc14.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !56298
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h7c57cba5151a8bc2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.du, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56151

.noexc15.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.o, align 8, !range !447, !noalias !56276
  %i.dv = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !56298
  br i1 %i.dv, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ad, !prof !4913

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc15.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !56276
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !56276
  store i64 10, ptr %i.r, align 8, !noalias !56276
  %i.dw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56151

.noexc16.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !56276
  br label %"_ZN184_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb3efd7d7b7807a50E.exit.i.i.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dx = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.du, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.dy = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.dx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56151

.noexc17.i.i.i:                                   ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !56276
  br label %"_ZN184_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Kind$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb3efd7d7b7807a50E.exit.i.i.i.i.i.i.i.i.i.i"

bb.ad:                                            ; preds = %.noexc15.i.i.i
  %i.dz = load i8, ptr %i.bi, align 1, !range !24875, !noalias !56276, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !56276
  call void @llvm.experimental.noalias.scope.decl(metadata !56299)
  call void @llvm.experimental.noalias.scope.decl(metadata !56302)
  %i.ea = load i64, ptr %i.bz, align 8, !alias.scope !56305, !noalias !56308, !noundef !15 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !56311, !noalias !56312 ; 2 uses
  %i.eb = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ea
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ad
end_hunk_6
begin_hunk_7_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h63fe9513fae37e2eE":bb.a
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !59104, !noalias !59103, !noundef !15
  %i.gu = add i8 %i.gt, 1
  store i8 %i.gu, ptr %i.gs, align 1, !alias.scope !59104, !noalias !59103
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %"_ZN199_$LT$meilisearch_types..batches.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..batches..BatchEnqueuedAt$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h796ddf4aeea47f91E.exit.i.i.i.i.i"
  %i.gv = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.bw unwind label %bb.bv, !noalias !59103 ; 9 uses

bb.bv:                                            ; preds = %bb.bu
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr119drop_in_place$LT$core..result..Result$LT$meilisearch_types..batches..BatchEnqueuedAt$C$serde_json..error..Error$GT$$GT$17h6d7e9d5a1aef97a1E"(i8 %.sroa.618.0.i.i.i.i.i, ptr %.sroa.15.0.i.i.i.i.i) #44
          to label %common.resume.i.i.i.i.i unwind label %bb.ad, !noalias !59103

bb.bw:                                            ; preds = %bb.bu
  %i.gx = trunc nuw i8 %.sroa.618.0.i.i.i.i.i to i1
  br i1 %i.gx, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i, label %bb.ce, label %.thread.thread.i.i.i.i.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.i.i.i.i.i) ]
  %.not54.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not54.i.i.i.i.i, label %.thread.thread.i.i.i.i.i, label %bb.bz, !prof !5452

bb.bz:                                            ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !59307)
  call void @llvm.experimental.noalias.scope.decl(metadata !59310)
  %i.gy = load i64, ptr %i.gv, align 8, !range !1131, !alias.scope !59313, !noalias !59314, !noundef !15
  switch i64 %i.gy, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit55.i.i.i.i.i" [
    i64 0, label %bb.ca
    i64 1, label %bb.cb
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %.val1.i.i.i.i52.i.i.i.i.i = load i64, ptr %i.gz, align 8, !alias.scope !59313, !noalias !59314, !noundef !15 ; 2 uses
  %i.ha = icmp eq i64 %.val1.i.i.i.i52.i.i.i.i.i, 0
  br i1 %i.ha, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit55.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i53.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i53.i.i.i.i.i": ; preds = %bb.ca
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.val.i.i.i.i54.i.i.i.i.i = load ptr, ptr %i.hb, align 8, !alias.scope !59313, !noalias !59314, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i54.i.i.i.i.i, i64 noundef %.val1.i.i.i.i52.i.i.i.i.i, i64 noundef 1) #45, !noalias !59317
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit55.i.i.i.i.i"

bb.cb:                                            ; preds = %bb.bz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.hc)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit55.i.i.i.i.i" unwind label %bb.cc, !noalias !59314

bb.cc:                                            ; preds = %bb.cb
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gv, i64 noundef 40, i64 noundef 8) #45, !noalias !59314
  br label %common.resume.i.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit55.i.i.i.i.i": ; preds = %bb.cb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i53.i.i.i.i.i", %bb.ca, %bb.bz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gv, i64 noundef 40, i64 noundef 8) #45, !noalias !59314
  br label %.thread.thread.i.i.i.i.i

.thread.thread.i.i.i.i.i:                         ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit55.i.i.i.i.i", %bb.by, %bb.bx, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i", %bb.ac, %bb.ab, %bb.f
  %.sroa.12.3.i.i.i.i.i = phi ptr [ %i.cf, %bb.ab ], [ %i.ao, %bb.f ], [ %.sroa.93.0.i.i.i.i.i, %bb.ac ], [ %.sroa.93.0.i.i.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i" ], [ %.sroa.15.0.i.i.i.i.i, %bb.by ], [ %.sroa.15.0.i.i.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit55.i.i.i.i.i" ], [ %i.gv, %bb.bx ]
  %i.he = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.12.3.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !59103
  br label %bb.cd

bb.cd:                                            ; preds = %.thread.thread.i.i.i.i.i, %bb.bs, %bb.w, %.loopexit.i.i.i.i.i
  %.sroa.9.0.ph.i.i.i = phi ptr [ %i.cb, %bb.w ], [ %i.gr, %bb.bs ], [ %i.an, %.loopexit.i.i.i.i.i ], [ %i.he, %.thread.thread.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.i.i.i.i.i), !noalias !59085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i.i.i), !noalias !59085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.i.i.i.i), !noalias !59085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i), !noalias !59085
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.ph.i.i.i, ptr %i.hf, align 8, !alias.scope !59318, !noalias !59319
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 2, ptr %i.hg, align 1, !alias.scope !59318, !noalias !59319
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h38396eb7704790e5E.exit"

bb.ce:                                            ; preds = %bb.bx, %bb.ab
  %.sroa.02.sink.i.i.i.i.i = phi ptr [ %.sroa.02.i.i.i.i.i, %bb.ab ], [ %.sroa.017.i.i.i.i.i, %bb.bx ]
  %.sroa.12.sink.i.i.i.i.i = phi ptr [ %.sroa.12.i.i.i.i.i, %bb.ab ], [ %.sroa.24.i.i.i.i.i, %bb.bx ]
  %.sroa.12.1283.i.i.i.i.i = phi ptr [ %.sroa.93.0.i.i.i.i.i, %bb.ab ], [ %.sroa.15.0.i.i.i.i.i, %bb.bx ]
  %.sroa.18.sroa.7.1282.i.i.i.i.i = phi ptr [ %.sroa.14.0.i.i.i.i.i, %bb.ab ], [ %.sroa.26.0.i.i.i.i.i, %bb.bx ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.02.sink.i.i.i.i.i, i64 7, i1 false), !noalias !59319
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.66.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.12.sink.i.i.i.i.i, i64 7, i1 false), !noalias !59319
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.i.i.i.i.i), !noalias !59085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i.i.i), !noalias !59085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.i.i.i.i), !noalias !59085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i), !noalias !59085
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %.sroa.44.0..sroa_idx.i.i.i, align 1, !alias.scope !59318, !noalias !59319
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.1283.i.i.i.i.i, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !59318, !noalias !59319
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !alias.scope !59318, !noalias !59319
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.18.sroa.7.1282.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !59318, !noalias !59319
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h38396eb7704790e5E.exit"

bb.cf:                                            ; preds = %bb.b
  %i.hh = add i64 %i.ac, 1                        ; 4 uses
  store i64 %i.hh, ptr %i.w, align 8, !alias.scope !59320, !noalias !59323
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59324)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.hh, i64 %i.y) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59327)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.hh, %i.y
  br i1 %exitcond.not.i9.not.i.i, label %bb.cg, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.cg:                                            ; preds = %bb.cf
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !59330, !noundef !15
  %i.hk = add i64 %i.ac, 2                        ; 3 uses
  store i64 %i.hk, ptr %i.w, align 8, !alias.scope !59333, !noalias !59334
  %.not.i.i.i = icmp eq i8 %i.hj, 117
  br i1 %.not.i.i.i, label %bb.ch, label %bb.cl, !prof !2446

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59335)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.hk, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !noalias !59337, !noundef !15
  %i.hn = add i64 %i.ac, 3                        ; 3 uses
  store i64 %i.hn, ptr %i.w, align 8, !alias.scope !59338, !noalias !59334
  %.not.i.1.i.i = icmp eq i8 %i.hm, 108
  br i1 %.not.i.1.i.i, label %bb.cj, label %bb.cl, !prof !2446

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59339)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.hn, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !59341, !noundef !15
  %i.hq = add i64 %i.ac, 4
  store i64 %i.hq, ptr %i.w, align 8, !alias.scope !59342, !noalias !59334
  %.not.i.2.i.i = icmp eq i8 %i.hp, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h8972264d85f63187E.exit.i.i", label %bb.cl, !prof !2446

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.cj, %bb.ch, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59343
  store i64 5, ptr %i.c, align 8, !noalias !59343
  %i.hr = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !59344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59343
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.ci, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59343
  store i64 9, ptr %i.b, align 8, !noalias !59343
  %i.hs = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !59344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59343
  br label %bb.cm

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h8972264d85f63187E.exit.i.i": ; preds = %bb.ck
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1, !alias.scope !59345, !noalias !59348
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h38396eb7704790e5E.exit"

bb.cm:                                            ; preds = %bb.cl, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.hr, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %i.hs, %bb.cl ]
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ht, align 8, !alias.scope !59323, !noalias !59348
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 2, ptr %i.hu, align 1, !alias.scope !59323, !noalias !59348
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h38396eb7704790e5E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h38396eb7704790e5E.exit": ; preds = %bb.cd, %bb.ce, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h8972264d85f63187E.exit.i.i", %bb.cm
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h641c1ea3252ae436E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59359)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !59362, !noalias !59365, !noundef !15 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !59368, !noalias !59369 ; 2 uses
  %i.q = icmp ult i64 %.promoted.i.i.i, %i.p
  br i1 %i.q, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !59362, !noalias !59365, !nonnull !15, !align !533, !noundef !15 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.t = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59370)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !59371, !noundef !15
  switch i8 %i.v, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 34, label %bb.e
    i8 91, label %bb.f
  ], !prof !2674

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.n, align 8, !alias.scope !59372, !noalias !59369
  %exitcond.not.i.i.i = icmp eq i64 %i.w, %i.p
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !59375
  store i64 5, ptr %i.m, align 8, !noalias !59375
  %i.x = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !59376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !59375
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !59376, !noalias !59377
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !59376, !noalias !59377
  br label %"_ZN7roaring6bitmap5serde88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$11deserialize17h93662099df50da3bE.exit"

bb.d:                                             ; preds = %bb.b
  %i.z = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2648), !noalias !59376
  br label %bb.at

bb.e:                                             ; preds = %bb.b
  %i.aa = add i64 %i.t, 1
  store i64 %i.aa, ptr %i.n, align 8, !alias.scope !59378, !noalias !59376
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ab, align 8, !alias.scope !59377, !noalias !59376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !59375
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$13parse_str_raw17hfbae946a49ab53cbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !59376
  %i.ac = load i64, ptr %i.l, align 8, !range !1177, !noalias !59375, !noundef !15 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !59375 ; 4 uses
  br i1 %i.ad, label %bb.ap, label %bb.aq

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59384)
  %2 = icmp ult i64 %i.t, %i.p
  br i1 %2, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %i.ag = phi i64 [ %i.aj, %bb.g ], [ %i.t, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !59387, !noundef !15
  switch i8 %i.ai, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 91, label %bb.h
  ], !prof !1195

bb.g:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aj = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.aj, ptr %i.n, align 8, !alias.scope !59393, !noalias !59396
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aj, %i.p
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !59397
  store i64 5, ptr %i.k, align 8, !noalias !59397
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !59398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !59397
  br label %bb.aw

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !range !447, !alias.scope !59399, !noalias !59398, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2648), !noalias !59398
  br label %.thread47.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !59399, !noalias !59398, !noundef !15
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !alias.scope !59399, !noalias !59398
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.z, label %bb.k, !prof !122

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.at = add i64 %i.ag, 1
  store i64 %i.at, ptr %i.n, align 8, !alias.scope !59400, !noalias !59398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !59397
  store ptr %1, ptr %i.h, align 8, !noalias !59403
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.au, align 8, !noalias !59403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !59403
  store i64 0, ptr %i.g, align 8, !noalias !59403
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.av, align 8, !noalias !59403
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb07e9855b4cfb8c6E.exit.i.i.i.i", %bb.k
  %storemerge.i.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb07e9855b4cfb8c6E.exit.i.i.i.i" ]
  store i64 %storemerge.i.i.i.i, ptr %i.aw, align 8, !noalias !59403
  call void @llvm.experimental.noalias.scope.decl(metadata !59407)
  call void @llvm.experimental.noalias.scope.decl(metadata !59410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !59413
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h7186cedf91320133E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !59416

.noexc.i.i.i.i:                                   ; preds = %bb.l
  %i.az = load i8, ptr %i.e, align 8, !range !447, !noalias !59413, !noundef !15
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !59413, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !59413
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i.i.i.i
  %i.bd = load i8, ptr %i.ax, align 1, !range !447, !noalias !59413, !noundef !15
  %i.be = trunc nuw i8 %i.bd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !59413
  br i1 %i.be, label %bb.o, label %_ZN10serde_core2de9SeqAccess12next_element17h710685ad6a5bb77bE.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !59413
  %i.bf = load ptr, ptr %i.h, align 8, !alias.scope !59417, !noalias !59418, !nonnull !15, !align !569, !noundef !15
  invoke fastcc void @"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$11deserialize17h0519dd3c4b3bf08bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !59416

.noexc7.i.i.i.i:                                  ; preds = %bb.o
  %i.bg = load i8, ptr %i.d, align 8, !range !447, !noalias !59413, !noundef !15
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.noexc7.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !59413, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59413
  br label %bb.s

.loopexit.i.i.i.i:                                ; preds = %bb.u, %bb.o, %bb.l
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w, %_ZN10serde_core2de9SeqAccess12next_element17h710685ad6a5bb77bE.exit.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59419)
  %.val.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !59419, !noalias !59403 ; 2 uses
  %i.bk = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bk, label %common.resume.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !59419, !noalias !59403, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !59422
  br label %common.resume.i.i.i

bb.s:                                             ; preds = %bb.p, %bb.m
  %.sroa.1315.0.ph.i.i.i.i = phi ptr [ %i.bj, %bb.p ], [ %i.bc, %bb.m ] ; 2 uses
  %.val.i8.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !59423, !noalias !59403 ; 2 uses
  %i.bl = icmp eq i64 %.val.i8.i.i.i.i, 0
  br i1 %i.bl, label %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h2b873366e3ce3805E.exit.i.i.i", label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit10.sink.split.i.i.i.i"

bb.t:                                             ; preds = %.noexc7.i.i.i.i
  %i.bm = load i8, ptr %i.ay, align 1, !noalias !59413, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59413
  %i.bn = load i64, ptr %i.aw, align 8, !alias.scope !59426, !noalias !59429, !noundef !15 ; 3 uses
  %i.bo = load i64, ptr %i.g, align 8, !range !10, !alias.scope !59426, !noalias !59429, !noundef !15
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.u, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb07e9855b4cfb8c6E.exit.i.i.i.i"

bb.u:                                             ; preds = %bb.t
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @626)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb07e9855b4cfb8c6E.exit.i.i.i.i" unwind label %.loopexit.i.i.i.i, !noalias !59416

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb07e9855b4cfb8c6E.exit.i.i.i.i": ; preds = %bb.u, %bb.t
  %i.bq = load ptr, ptr %i.av, align 8, !alias.scope !59426, !noalias !59429, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 %i.bm, ptr %i.br, align 1, !noalias !59416
  %i.bs = add i64 %i.bn, 1
  br label %bb.l

_ZN10serde_core2de9SeqAccess12next_element17h710685ad6a5bb77bE.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !59403
  %i.bt = load ptr, ptr %i.av, align 8, !noalias !59403, !nonnull !15, !noundef !15
  %i.bu = load i64, ptr %i.aw, align 8, !noalias !59403, !noundef !15
  invoke fastcc void @"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21deserialize_from_impl17h42cc21a09d2ea5edE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bu)
          to label %bb.v unwind label %.loopexit.split-lp.i.i.i.i, !noalias !59416

bb.v:                                             ; preds = %_ZN10serde_core2de9SeqAccess12next_element17h710685ad6a5bb77bE.exit.i.i.i.i
  %i.bv = load i64, ptr %i.f, align 8, !range !286, !noalias !59403, !noundef !15 ; 3 uses
  %i.bw = icmp eq i64 %i.bv, -9223372036854775808
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !59431 ; 2 uses
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hedea333172e7882fE"(ptr noundef nonnull %i.by)
          to label %bb.y unwind label %.loopexit.split-lp.i.i.i.i, !noalias !59416

bb.x:                                             ; preds = %bb.v
  %.sroa.10.0..sroa_idx34.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.10.0.copyload35.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx34.i.i.i, align 8, !noalias !59431
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ %i.by, %bb.x ], [ %i.bz, %bb.w ] ; 2 uses
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.10.0.copyload35.i.i.i, %bb.x ], [ undef, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !59403
  %.val.i12.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !59432, !noalias !59403 ; 2 uses
  %i.ca = icmp eq i64 %.val.i12.i.i.i.i, 0
  br i1 %i.ca, label %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h2b873366e3ce3805E.exit.i.i.i", label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit10.sink.split.i.i.i.i"

common.resume.i.i.i:                              ; preds = %bb.ao, %bb.ac, %bb.r, %bb.q
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %bb.q ], [ %i.cy, %bb.ao ], [ %lpad.phi.i.i.i.i, %bb.r ], [ %i.ci, %bb.ac ]
  resume { ptr, i32 } %common.resume.op.i.i.i

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit10.sink.split.i.i.i.i": ; preds = %bb.y, %bb.s
  %.sroa.8.1.i.i.i = phi ptr [ %.sroa.1315.0.ph.i.i.i.i, %bb.s ], [ %.sroa.8.0.i.i.i, %bb.y ]
  %.sroa.030.1.i.i.i = phi i64 [ -9223372036854775808, %bb.s ], [ %i.bv, %bb.y ]
  %.sroa.10.1.i.i.i = phi i64 [ undef, %bb.s ], [ %.sroa.10.0.i.i.i, %bb.y ]
  %.val.i12.sink.i.i.i.i = phi i64 [ %.val.i8.i.i.i.i, %bb.s ], [ %.val.i12.i.i.i.i, %bb.y ]
  %.val1.i13.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !59403, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i13.i.i.i.i, i64 noundef %.val.i12.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !59416
  br label %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h2b873366e3ce3805E.exit.i.i.i"

"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h2b873366e3ce3805E.exit.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit10.sink.split.i.i.i.i", %bb.y, %bb.s
  %.sroa.8.2.i.i.i = phi ptr [ %.sroa.1315.0.ph.i.i.i.i, %bb.s ], [ %.sroa.8.1.i.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit10.sink.split.i.i.i.i" ], [ %.sroa.8.0.i.i.i, %bb.y ] ; 8 uses
  %.sroa.030.2.i.i.i = phi i64 [ -9223372036854775808, %bb.s ], [ %.sroa.030.1.i.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit10.sink.split.i.i.i.i" ], [ %i.bv, %bb.y ] ; 5 uses
  %.sroa.10.2.i.i.i = phi i64 [ undef, %bb.s ], [ %.sroa.10.1.i.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit10.sink.split.i.i.i.i" ], [ %.sroa.10.0.i.i.i, %bb.y ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !59403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !59397
  %i.cb = load i8, ptr %i.al, align 8, !range !447, !alias.scope !59399, !noalias !59398, !noundef !15
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !59397
  store i64 24, ptr %i.j, align 8, !noalias !59397
  %i.cd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !59398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !59397
  br label %bb.aw

bb.aa:                                            ; preds = %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h2b873366e3ce3805E.exit.i.i.i"
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !59399, !noalias !59398, !noundef !15
  %i.cg = add i8 %i.cf, 1
  store i8 %i.cg, ptr %i.ce, align 1, !alias.scope !59399, !noalias !59398
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %"_ZN183_$LT$roaring..bitmap..serde..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$..deserialize..BitmapVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h2b873366e3ce3805E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !59397
end_hunk_7
begin_hunk_8_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7a7253020ff9c373E":bb.a

bb.dy:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h7bb2da581ed4a971E.exit.i.i"
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !61789, !noalias !61788, !noundef !15
  %i.sc = add i8 %i.sb, 1
  store i8 %i.sc, ptr %i.sa, align 1, !alias.scope !61789, !noalias !61788
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h7bb2da581ed4a971E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !61787
  store i64 %.sroa.029.0.i.i, ptr %i.ad, align 8, !noalias !61787
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.730.0.i.i, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !noalias !61787
  %.sroa.931.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, i64 16, i1 false), !noalias !61787
  %i.sd = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.eb unwind label %bb.ea, !noalias !61788 ; 9 uses

bb.ea:                                            ; preds = %bb.dz
  %i.se = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr192drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$GT$$C$serde_json..error..Error$GT$$GT$17h42833507f4f982d7E"(ptr noalias noundef align 8 dereferenceable(32) %i.ad) #44
          to label %common.resume.i.i unwind label %bb.ei, !noalias !61788

bb.eb:                                            ; preds = %bb.dz
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.931.0..sroa_idx.i.i, align 8, !noalias !61787 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !61787 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !61787
  %i.sf = trunc nuw i64 %.sroa.029.0.i.i to i1
  br i1 %i.sf, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.not.i.i = icmp eq ptr %i.sd, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  br i1 %.not.i.i, label %bb.en, label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.730.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  %.not47.i.i = icmp eq ptr %i.sd, null
  br i1 %.not47.i.i, label %.thread41.i.i, label %bb.ej

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62243
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.730.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i", label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !62248, !noalias !62251
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.730.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !62248, !noalias !62251
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !62248, !noalias !62251
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !62248, !noalias !62251
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.730.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !62248, !noalias !62251
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !62248, !noalias !62251
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i": ; preds = %bb.ef, %bb.ee
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.ef ], [ 0, %bb.ee ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.ef ], [ 0, %bb.ee ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !62248, !noalias !62251
  %i.sg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.sg, align 8, !alias.scope !62248, !noalias !62251
  %i.sh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.sh, align 8, !alias.scope !62248, !noalias !62251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62253
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf7bef75c8b3870e1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !61788
  %i.si = load ptr, ptr %i.b, align 8, !noalias !62253, !noundef !15 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.si, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread44.i.i, label %.lr.ph.i.i.i.i25.i.i

.lr.ph.i.i.i.i25.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i"
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.eg

bb.eg:                                            ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i25.i.i
  %i.sj = phi ptr [ %i.si, %.lr.ph.i.i.i.i25.i.i ], [ %i.so, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62253
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = getelementptr inbounds nuw [24 x i8], ptr %i.sk, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62258)
  call void @llvm.experimental.noalias.scope.decl(metadata !62261)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.sl, align 8, !alias.scope !62264, !noalias !62265 ; 2 uses
  %i.sm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sm, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i", label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.sn, align 8, !alias.scope !62264, !noalias !62265, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62266
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i": ; preds = %bb.eh, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62253
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf7bef75c8b3870e1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !61788
  %i.so = load ptr, ptr %i.b, align 8, !noalias !62253, !noundef !15 ; 2 uses
  %.not.i.i.i.i26.i.i = icmp eq ptr %i.so, null
  br i1 %.not.i.i.i.i26.i.i, label %.thread44.i.i, label %bb.eg

.thread44.i.i:                                    ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !62243
  br label %.thread41.i.i

bb.ei:                                            ; preds = %bb.ea
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !61788
  unreachable

bb.ej:                                            ; preds = %bb.ed
  call void @llvm.experimental.noalias.scope.decl(metadata !62267)
  call void @llvm.experimental.noalias.scope.decl(metadata !62270)
  %i.sq = load i64, ptr %i.sd, align 8, !range !1131, !alias.scope !62273, !noalias !62274, !noundef !15
  switch i64 %i.sq, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" [
    i64 0, label %bb.ek
    i64 1, label %bb.el
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.sr, align 8, !alias.scope !62273, !noalias !62274, !noundef !15 ; 2 uses
  %i.ss = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ss, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ek
  %i.st = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.st, align 8, !alias.scope !62273, !noalias !62274, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !62277
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i"

bb.el:                                            ; preds = %bb.ej
  %i.su = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.su)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" unwind label %bb.em, !noalias !62274

bb.em:                                            ; preds = %bb.el
  %i.sv = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sd, i64 noundef 40, i64 noundef 8) #45, !noalias !62274
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i": ; preds = %bb.el, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.ek, %bb.ej
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sd, i64 noundef 40, i64 noundef 8) #45, !noalias !62274
  br label %.thread41.i.i

.thread41.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", %.thread44.i.i, %bb.ed, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.sd, %.thread44.i.i ], [ %i.av, %bb.e ], [ %.sroa.730.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" ], [ %.sroa.730.0.i.i, %bb.ed ]
  %i.sw = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !61788
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.sw, ptr %i.sx, align 8, !alias.scope !61788, !noalias !61789
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h310f341e05b9686eE.exit"

bb.en:                                            ; preds = %bb.ec
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.730.0.i.i, ptr %i.sy, align 8, !alias.scope !61788, !noalias !61789
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.215.0..sroa_idx.i.i, align 8, !alias.scope !61788, !noalias !61789
  %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.11.0.copyload.i.i, ptr %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !61788, !noalias !61789
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h310f341e05b9686eE.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h310f341e05b9686eE.exit": ; preds = %.loopexit.i.i, %bb.dx, %.thread41.i.i, %bb.en
  %storemerge.sink.i.i = phi i64 [ 1, %bb.dx ], [ 1, %.loopexit.i.i ], [ 0, %bb.en ], [ 1, %.thread41.i.i ]
  store i64 %storemerge.sink.i.i, ptr %0, align 8, !alias.scope !61788, !noalias !61789
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7a8b038d4c7ff60fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62286)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !62289, !noalias !62292, !noundef !15 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !62296, !noalias !62297 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !62289, !noalias !62292, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62298)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !62299, !noundef !15
  switch i8 %i.y, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.bb
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !62300, !noalias !62297
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62312)
  %i.aa = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.s
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !62315, !noalias !62318, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62324)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !62325, !noundef !15
  switch i8 %i.af, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !2674

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !62326, !noalias !62329
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.d

.loopexit20.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !62330
  store i64 5, ptr %i.l, align 8, !noalias !62330
  %i.ah = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !62331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !62330
  br label %bb.bi

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !62330
  store i64 10, ptr %i.m, align 8, !noalias !62330
  %i.ai = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !62331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !62330
  br label %bb.bi

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !447, !alias.scope !62332, !noalias !62331, !noundef !15
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.y, label %bb.x

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62354)
  %2 = icmp ult i64 %i.ad, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.am = phi i64 [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !62357, !noundef !15
  switch i8 %i.ao, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.j
  ], !prof !1195

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.q, align 8, !alias.scope !62369, !noalias !62372
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !62373
  store i64 5, ptr %i.k, align 8, !noalias !62373
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !62374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !62373
  br label %bb.u

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !62375, !noalias !62374
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !62378, !noalias !62374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !62373
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !62374
  %i.at = load i64, ptr %i.j, align 8, !range !1177, !noalias !62373, !noundef !15 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !62373 ; 10 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46), !noalias !62374
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !62373
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62373 ; 4 uses
  %i.ay = trunc nuw i64 %i.at to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  br i1 %i.ay, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h505dc84efc3de41eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i64 12, label %bb.o
    i64 8, label %bb.p
  ], !prof !935

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
  br i1 %i.bi, label %bb.w, label %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h505dc84efc3de41eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  %i.bj = load i64, ptr %i.aw, align 1
  %i.bk = icmp ne i64 %i.bj, 7234307546238118244
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h505dc84efc3de41eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h505dc84efc3de41eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n
  %i.bn = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @599, i64 noundef 2), !noalias !62379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !62373
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h20e1a212ce35e1b6E.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 12, label %bb.r
    i64 8, label %bb.s
  ], !prof !935

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
  br i1 %i.bx, label %bb.w, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h20e1a212ce35e1b6E.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.by = load i64, ptr %i.aw, align 1
  %i.bz = icmp ne i64 %i.by, 7234307546238118244
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.v, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h20e1a212ce35e1b6E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h20e1a212ce35e1b6E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.cc = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @599, i64 noundef 2), !noalias !62382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !62373
  br label %bb.t

bb.t:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h20e1a212ce35e1b6E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h505dc84efc3de41eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %"_ZN211_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h505dc84efc3de41eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cc, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h20e1a212ce35e1b6E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.k ]
  %i.cd = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !62374
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.t ], [ %i.aq, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aw, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i.i.i.i) ]
  br label %bb.bi

bb.v:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !62373
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb526f6e6eb9286beE.exit.i"

bb.w:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !62373
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb526f6e6eb9286beE.exit.i"

bb.x:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !62332, !noalias !62331, !noundef !15
  %i.cg = add i8 %i.cf, -1                        ; 2 uses
  store i8 %i.cg, ptr %i.ce, align 1, !alias.scope !62332, !noalias !62331
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.at, label %bb.y, !prof !122

bb.y:                                             ; preds = %bb.x, %bb.g
  %i.ci = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ci, ptr %i.q, align 8, !alias.scope !62387, !noalias !62331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62399)
  %i.cj = icmp ult i64 %i.ci, %i.s
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.y, %bb.z
  %i.ck = phi i64 [ %i.cn, %bb.z ], [ %i.ci, %bb.y ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !62402, !noundef !15
  switch i8 %i.cm, label %bb.aa [
    i8 32, label %bb.z
    i8 10, label %bb.z
    i8 9, label %bb.z
    i8 13, label %bb.z
    i8 34, label %bb.ab
    i8 125, label %bb.aj
  ], !prof !2771

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cn = add i64 %i.ck, 1                        ; 3 uses
  store i64 %i.cn, ptr %i.q, align 8, !alias.scope !62410, !noalias !62413
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cn, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !62414
  store i64 3, ptr %i.g, align 8, !noalias !62414
  %i.co = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !62415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !62414
  br label %"_ZN206_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h3e4d6d246c0afc96E.exit.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !62414
  store i64 17, ptr %i.h, align 8, !noalias !62414
  %i.cp = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !62415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !62414
  br label %"_ZN206_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h3e4d6d246c0afc96E.exit.i.i.i.i.i"

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62425)
  %i.cq = add i64 %i.ck, 1
  store i64 %i.cq, ptr %i.q, align 8, !alias.scope !62428, !noalias !62431
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cr, align 8, !alias.scope !62436, !noalias !62431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !62437
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !62431
  %i.cs = load i64, ptr %i.f, align 8, !range !1177, !noalias !62437, !noundef !15 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !62437 ; 9 uses
  br i1 %i.ct, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i, align 8, !noalias !62437 ; 3 uses
  %i.cw = trunc nuw i64 %i.cs to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  br i1 %i.cw, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i [
    i64 12, label %bb.ae
    i64 8, label %bb.af
  ], !prof !935

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load i64, ptr %i.cv, align 1
  %i.cy = xor i64 %i.cx, 7453010399162822249
  %i.cz = getelementptr i8, ptr %i.cv, i64 8
  %i.da = load i32, ptr %i.cz, align 1
end_hunk_8
begin_hunk_9_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h820ccdb7a9ecf821E":bb.a
bb.y:                                             ; preds = %bb.ad, %bb.x, %.noexc10.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i", %bb.l, %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62544, !noalias !62548
  store i64 %i.aq, ptr %i.t, align 8, !noalias !62521
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.y, %bb.w, %bb.h
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bl, %bb.y ], [ %.pn24.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.bi, %bb.w ] ; 2 uses
  %.val5.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !62526 ; 2 uses
  %i.bm = icmp eq i64 %.val5.i.i.i.i, 0
  br i1 %i.bm, label %.thread.i.i.i, label %bb.z

bb.z:                                             ; preds = %.body.i.i.i.i
  %.val6.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !62526, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %.val5.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62526
  br label %.thread.i.i.i

bb.aa:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74fb45f2781aee9cE.exit.i.i.i.i.i.i.i"
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62544, !noalias !62548
  store i64 %i.aq, ptr %i.t, align 8, !noalias !62521
  %i.bn = load ptr, ptr %i.af, align 8, !noalias !62556, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !62556
  %.val.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !62526 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bo, label %.thread46.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val4.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !62526, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62526
  br label %.thread46.i.i.i

bb.ac:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74fb45f2781aee9cE.exit.i.i.i.i.i.i.i"
  %i.bp = load i8, ptr %i.ah, align 1, !range !14291, !noalias !62556, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !62556
  %i.bq = load i64, ptr %i.z, align 8, !alias.scope !62600, !noalias !62526, !noundef !15 ; 3 uses
  %i.br = load i64, ptr %i.m, align 8, !range !10, !alias.scope !62600, !noalias !62526, !noundef !15
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4731b467761b7e7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @624)
          to label %bb.ae unwind label %bb.y, !noalias !62526

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bt = load ptr, ptr %i.y, align 8, !alias.scope !62600, !noalias !62526, !nonnull !15, !noundef !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i8 %i.bp, ptr %i.bu, align 1, !noalias !62526
  %i.bv = add i64 %i.bq, 1                        ; 3 uses
  store i64 %i.bv, ptr %i.z, align 8, !noalias !62526
  %i.bw = icmp eq ptr %i.an, %i.s
  br i1 %i.bw, label %._crit_edge.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i"

bb.af:                                            ; preds = %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.thread46.i.i.i:                                  ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !62526
  br label %bb.ag

._crit_edge.i.i:                                  ; preds = %bb.ae, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i"
  %.lcssa84.i.ph.i.i = phi ptr [ %i.am, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %i.s, %bb.ae ] ; 2 uses
  %.ph.i.i = phi i64 [ %i.aq, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %i.ak, %bb.ae ] ; 2 uses
  %.sroa.022.0.copyload24.pr.i.pre.i.i = load i64, ptr %i.m, align 8, !noalias !62603 ; 2 uses
  %.sroa.5.0.copyload28.i.pre.i.i = load ptr, ptr %i.y, align 8, !noalias !62603 ; 2 uses
  store ptr %.lcssa84.i.ph.i.i, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62544, !noalias !62548
  store i64 %.ph.i.i, ptr %i.t, align 8, !noalias !62521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !62526
  %i.by = icmp eq i64 %.sroa.022.0.copyload24.pr.i.pre.i.i, -9223372036854775808
  br i1 %i.by, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i, %.thread46.i.i.i
  %.sroa.5.051.i.i.i = phi ptr [ %i.bn, %.thread46.i.i.i ], [ %.sroa.5.0.copyload28.i.pre.i.i, %._crit_edge.i.i ]
  %.sroa.6.050.i.i.i = phi i64 [ undef, %.thread46.i.i.i ], [ %i.bv, %._crit_edge.i.i ]
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !62604, !noalias !62605
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.051.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !62604, !noalias !62605
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.050.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !62604, !noalias !62605
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.n), !noalias !62606
  br label %bb.aq

.sink.split.i.i:                                  ; preds = %._crit_edge.thread.i.i, %bb.b
  %.sroa.2.8..sroa.4.0.copyload.i.i6.ph.i.i = phi ptr [ %i.al, %._crit_edge.thread.i.i ], [ %.sroa.2.0.copyload.i.i, %bb.b ]
  %.sroa.5.0.copyload2860.i.ph.i.i = phi ptr [ %i.w, %._crit_edge.thread.i.i ], [ inttoptr (i64 1 to ptr), %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !62526
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split.i.i, %._crit_edge.i.i
  %i.bz = phi i64 [ %.ph.i.i, %._crit_edge.i.i ], [ 0, %.sink.split.i.i ] ; 2 uses
  %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i = phi ptr [ %.lcssa84.i.ph.i.i, %._crit_edge.i.i ], [ %.sroa.2.8..sroa.4.0.copyload.i.i6.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.sroa.6.0.copyload3261.i.i.i = phi i64 [ %i.bv, %._crit_edge.i.i ], [ 0, %.sink.split.i.i ]
  %.sroa.5.0.copyload2860.i.i.i = phi ptr [ %.sroa.5.0.copyload28.i.pre.i.i, %._crit_edge.i.i ], [ %.sroa.5.0.copyload2860.i.ph.i.i, %.sink.split.i.i ] ; 5 uses
  %.sroa.022.0.copyload2459.i.i.i = phi i64 [ %.sroa.022.0.copyload24.pr.i.pre.i.i, %._crit_edge.i.i ], [ %i.u, %.sink.split.i.i ] ; 5 uses
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.n)
          to label %.noexc13.i.i.i unwind label %bb.aj, !noalias !62521

.noexc13.i.i.i:                                   ; preds = %bb.ah
  %i.ca = icmp eq ptr %i.s, %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i
  br i1 %i.ca, label %bb.an, label %bb.ai, !prof !16

bb.ai:                                            ; preds = %.noexc13.i.i.i
  %i.cb = ptrtoint ptr %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i to i64
  %i.cc = ptrtoint ptr %i.s to i64
  %i.cd = sub nuw i64 %i.cc, %i.cb
  %i.ce = lshr exact i64 %i.cd, 5
  %i.cf = add i64 %i.ce, %i.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62607
  store i64 %i.bz, ptr %i.b, align 8, !noalias !62607
  %i.cg = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.cf, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.al unwind label %bb.aj, !noalias !62521

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = icmp eq i64 %.sroa.022.0.copyload2459.i.i.i, 0
  br i1 %i.ci, label %.body.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload2860.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload2860.i.i.i, i64 noundef %.sroa.022.0.copyload2459.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62521
  br label %.body.i.i

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62607
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.cj, align 8, !alias.scope !62604, !noalias !62605
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !62604, !noalias !62605
  %i.ck = icmp eq i64 %.sroa.022.0.copyload2459.i.i.i, 0
  br i1 %i.ck, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload2860.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload2860.i.i.i, i64 noundef %.sroa.022.0.copyload2459.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62521
  br label %bb.aq

bb.an:                                            ; preds = %.noexc13.i.i.i
  store i64 %.sroa.022.0.copyload2459.i.i.i, ptr %0, align 8, !alias.scope !62604, !noalias !62605
  %.sroa.436.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload2860.i.i.i, ptr %.sroa.436.0..sroa_idx.i.i.i, align 8, !alias.scope !62604, !noalias !62605
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload3261.i.i.i, ptr %.sroa.537.0..sroa_idx.i.i.i, align 8, !alias.scope !62604, !noalias !62605
  br label %bb.aq

bb.ao:                                            ; preds = %.thread.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !62521
  unreachable

.thread.i.i.i:                                    ; preds = %bb.af, %bb.z, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bx, %bb.af ], [ %eh.lpad-body.i.i.i.i, %bb.z ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.n)
          to label %.body.i.i unwind label %bb.ao, !noalias !62521

bb.ap:                                            ; preds = %bb.a
  %i.cm = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13), !noalias !62517
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !alias.scope !62517, !noalias !62516
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !62517, !noalias !62516
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h8e974aaf2bb885e9E.exit"

bb.aq:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !62521
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h8e974aaf2bb885e9E.exit"

.body.i.i:                                        ; preds = %.thread.i.i.i, %bb.ak, %bb.aj
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.thread.i.i.i ], [ %i.ch, %bb.aj ], [ %i.ch, %bb.ak ]
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h8e974aaf2bb885e9E.exit": ; preds = %bb.ap, %bb.aq
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8321f91b552c1745E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62620)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !62623, !noalias !62626, !noundef !15 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !62629, !noalias !62630 ; 2 uses
  %i.r = icmp ult i64 %.promoted.i.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %.loopexit20.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !62623, !noalias !62626, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62631)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !62632, !noundef !15
  switch i8 %i.w, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !2674

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.x = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !62633, !noalias !62630
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %i.q
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i, label %bb.b

.loopexit20.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !62636
  store i64 5, ptr %i.j, align 8, !noalias !62636
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !62637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !62636
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !62637, !noalias !62638
  store i8 1, ptr %0, align 8, !alias.scope !62637, !noalias !62638
  br label %"_ZN5milli6update15index_documents1_111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$11deserialize17h050ed53222055bbfE.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !62636
  store i64 10, ptr %i.k, align 8, !noalias !62636
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !62637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !62636
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !62637, !noalias !62638
  store i8 1, ptr %0, align 8, !alias.scope !62637, !noalias !62638
  br label %"_ZN5milli6update15index_documents1_111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$11deserialize17h050ed53222055bbfE.exit"

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !447, !alias.scope !62638, !noalias !62637, !noundef !15
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.w, label %bb.v

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62662)
  %2 = icmp ult i64 %i.u, %i.q
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.af = phi i64 [ %i.ai, %bb.g ], [ %i.u, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !62665, !noundef !15
  switch i8 %i.ah, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !1195

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ai = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.o, align 8, !alias.scope !62676, !noalias !62679
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !62680
  store i64 5, ptr %i.i, align 8, !noalias !62680
  %i.aj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !62681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !62680
  br label %bb.s

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ak = add i64 %i.af, 1
  store i64 %i.ak, ptr %i.o, align 8, !alias.scope !62682, !noalias !62681
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.al, align 8, !alias.scope !62685, !noalias !62681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !62680
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !62681
  %i.am = load i64, ptr %i.h, align 8, !range !1177, !noalias !62680, !noundef !15 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !62680 ; 10 uses
  br i1 %i.an, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2658), !noalias !62681
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !62680
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !62680 ; 4 uses
  %i.ar = trunc nuw i64 %i.am to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  br i1 %i.ar, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h456b96639d0ff7b1E.exit.i.i.i.i.i.i.i.i.i" [
    i64 6, label %bb.m
    i64 4, label %bb.n
  ], !prof !935

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
  br i1 %i.bb, label %bb.u, label %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h456b96639d0ff7b1E.exit.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %i.ap, align 1
  %i.bd = icmp ne i32 %i.bc, 1885956947
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.t, label %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h456b96639d0ff7b1E.exit.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h456b96639d0ff7b1E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.l
  %i.bg = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @831, i64 noundef 2), !noalias !62686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !62680
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0389efb3c0ad5cbaE.exit.i.i.i.i.i.i.i.i.i [
    i64 6, label %bb.p
    i64 4, label %bb.q
  ], !prof !935

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
  br i1 %i.bq, label %bb.u, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0389efb3c0ad5cbaE.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.br = load i32, ptr %i.ap, align 1
  %i.bs = icmp ne i32 %i.br, 1885956947
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0389efb3c0ad5cbaE.exit.i.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h0389efb3c0ad5cbaE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.bv = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @831, i64 noundef 2), !noalias !62689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !62680
  br label %bb.r

bb.r:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0389efb3c0ad5cbaE.exit.i.i.i.i.i.i.i.i.i, %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h456b96639d0ff7b1E.exit.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %"_ZN218_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h456b96639d0ff7b1E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.bv, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0389efb3c0ad5cbaE.exit.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.i ]
  %i.bw = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !62681
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.aj, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.69.0.ph.i.i.i, ptr %i.bx, align 8, !alias.scope !62694, !noalias !62695
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h0d44a85b00dd46fcE.exit.i.i"

bb.t:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !62680
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.by, align 1, !alias.scope !62694, !noalias !62695
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h0d44a85b00dd46fcE.exit.i.i"

bb.u:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !62680
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.bz, align 1, !alias.scope !62694, !noalias !62695
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h0d44a85b00dd46fcE.exit.i.i"

"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h0d44a85b00dd46fcE.exit.i.i": ; preds = %bb.u, %bb.t, %bb.s
  %storemerge.i.i.i = phi i8 [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ]
  store i8 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !62694, !noalias !62695
  br label %"_ZN5milli6update15index_documents1_111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$11deserialize17h050ed53222055bbfE.exit"

bb.v:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !62638, !noalias !62637, !noundef !15
  %i.cc = add i8 %i.cb, -1                        ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !alias.scope !62638, !noalias !62637
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.ar, label %bb.w, !prof !122

bb.w:                                             ; preds = %bb.v, %bb.e
  %i.ce = add i64 %i.u, 1                         ; 3 uses
  store i64 %i.ce, ptr %i.o, align 8, !alias.scope !62696, !noalias !62637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62708)
  %i.cf = icmp ult i64 %i.ce, %i.q
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %bb.x
  %i.cg = phi i64 [ %i.cj, %bb.x ], [ %i.ce, %bb.w ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !62711, !noundef !15
  switch i8 %i.ci, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.ah
  ], !prof !2771

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cj = add i64 %i.cg, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.o, align 8, !alias.scope !62719, !noalias !62722
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cj, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !62723
  store i64 3, ptr %i.e, align 8, !noalias !62723
  %i.ck = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !62724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !62723
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hc9cfdd039967568dE.exit.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !62723
  store i64 17, ptr %i.f, align 8, !noalias !62723
  %i.cl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !62724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !62723
  br label %"_ZN213_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..MissingDocumentPolicy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hc9cfdd039967568dE.exit.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62734)
  %i.cm = add i64 %i.cg, 1
  store i64 %i.cm, ptr %i.o, align 8, !alias.scope !62737, !noalias !62740
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cn, align 8, !alias.scope !62745, !noalias !62740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !62746
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !62740
  %i.co = load i64, ptr %i.d, align 8, !range !1177, !noalias !62746, !noundef !15 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !62746 ; 9 uses
  br i1 %i.cp, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i, align 8, !noalias !62746 ; 3 uses
  %i.cs = trunc nuw i64 %i.co to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  br i1 %i.cs, label %bb.ab, label %bb.ae

end_hunk_9
begin_hunk_10_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8862782229d9037eE":bb.a
  %i.hg = load i8, ptr %i.hf, align 1, !noalias !63079, !noundef !15
  %i.hh = add i64 %i.aa, 4
  store i64 %i.hh, ptr %i.u, align 8, !alias.scope !63080, !noalias !63072
  %.not.i.2.i.i = icmp eq i8 %i.hg, 108
  br i1 %.not.i.2.i.i, label %bb.cl, label %bb.ci, !prof !2446

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.cg, %bb.ce, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !63081
  store i64 5, ptr %i.c, align 8, !noalias !63081
  %i.hi = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !63082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63081
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cf, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63081
  store i64 9, ptr %i.b, align 8, !noalias !63081
  %i.hj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !63082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63081
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", %.split.thread.i.i.i.i.i, %bb.br, %bb.y, %.loopexit.i.i.i.i.i
  %storemerge6.i = phi ptr [ %i.cf, %bb.y ], [ %i.gx, %.split.thread.i.i.i.i.i ], [ %i.al, %.loopexit.i.i.i.i.i ], [ %i.gk, %bb.br ], [ %i.hi, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %i.hj, %bb.ci ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %storemerge6.i, ptr %i.hk, align 8, !alias.scope !62833, !noalias !62836
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h175365449d28b090E.exit"

bb.ck:                                            ; preds = %bb.bw, %bb.ad
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.8.6.in.in.in.i.i.i.i.i = phi ptr [ %.sroa.73.i.i.i.i.i.0..sroa.73.i.i.i.i.i.0..sroa.73.i.i.i.i.i.0..sroa.73.i.i.i.i.0..sroa.73.i.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.0..sroa.73.i.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.0.copyload.i.i.i.i.i, %bb.ad ], [ %.sroa.715.i.i.i.i.i.0..sroa.715.i.i.i.i.i.0..sroa.715.i.i.i.i.i.0..sroa.715.i.i.i.i.0..sroa.715.i.i.i.i.0..sroa.715.i.i.i.0..sroa.715.i.i.i.0..sroa.715.i.i.0..sroa.715.i.i.0..sroa.715.i.0..sroa.715.i.0..sroa.715.0..sroa.715.0..sroa.715.0.copyload.i.i.i.i.i, %bb.bw ]
  %.sroa.11.132.i.i.i.i.i = phi float [ %.sroa.6.0.i.i.i.i.i, %bb.ad ], [ %.sroa.614.0.i.i.i.i.i, %bb.bw ]
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.8.6.in.in.i.i.i.i.i = ptrtoint ptr %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.8.6.in.in.in.i.i.i.i.i to i64
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.8.6.in.i.i.i.i.i = trunc i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.8.6.in.in.i.i.i.i.i to i32
  %i.hl = bitcast i32 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.8.6.in.i.i.i.i.i to float
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch
  %i.hm = phi float [ %.sroa.11.132.i.i.i.i.i, %bb.ck ], [ undef, %bb.ch ]
  %.sroa.01.0217222.i = phi i32 [ 0, %bb.ck ], [ 1, %bb.ch ]
  %i.hn = phi float [ %i.hl, %bb.ck ], [ undef, %bb.ch ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.01.0217222.i, ptr %i.ho, align 4, !alias.scope !62833, !noalias !62836
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.hm, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !62833, !noalias !62836
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.hn, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !62833, !noalias !62836
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h175365449d28b090E.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h175365449d28b090E.exit": ; preds = %bb.cj, %bb.cl
  %storemerge.i = phi i32 [ 0, %bb.cl ], [ 1, %bb.cj ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !62833, !noalias !62836
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h89d0e226ebff6aeeE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63093)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !63096, !noalias !63099, !noundef !15 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !63102, !noalias !63103 ; 2 uses
  %i.y = icmp ult i64 %.promoted.i.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !63096, !noalias !63099, !nonnull !15, !align !533, !noundef !15
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ab = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63104)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !63105, !noundef !15
  switch i8 %i.ad, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !1195

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.v, align 8, !alias.scope !63106, !noalias !63103
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, %i.x
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !63109
  store i64 5, ptr %i.u, align 8, !noalias !63109
  %i.af = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !63110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !63109
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !63110, !noalias !63111
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !63110, !noalias !63111
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h19c27fe533289c66E.exit"

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !447, !alias.scope !63111, !noalias !63110, !noundef !15
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13), !noalias !63110
  br label %.thread53.i.i

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !63111, !noalias !63110, !noundef !15
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.al, align 1, !alias.scope !63111, !noalias !63110
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.ln, label %bb.g, !prof !122

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ap = add i64 %i.ab, 1
  store i64 %i.ap, ptr %i.v, align 8, !alias.scope !63112, !noalias !63110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !63109
  store ptr %1, ptr %i.s, align 8, !noalias !63115
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 1, ptr %i.aq, align 8, !noalias !63115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !63115
  store i64 0, ptr %i.r, align 8, !noalias !63115
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ar, align 8, !noalias !63115
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
  store i64 %storemerge.i.i.i, ptr %i.as, align 8, !noalias !63115
  call void @llvm.experimental.noalias.scope.decl(metadata !63119)
  call void @llvm.experimental.noalias.scope.decl(metadata !63122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !63125
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h7186cedf91320133E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !63128

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ay = load i8, ptr %i.q, align 8, !range !447, !noalias !63125, !noundef !15
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !63125, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !63125
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bc = load i8, ptr %i.at, align 1, !range !447, !noalias !63125, !noundef !15
  %i.bd = trunc nuw i8 %i.bc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !63125
  br i1 %i.bd, label %bb.k, label %.thread36.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.s, align 8, !alias.scope !63129, !noalias !63130, !nonnull !15, !align !569, !noundef !15 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63131)
  call void @llvm.experimental.noalias.scope.decl(metadata !63134)
  call void @llvm.experimental.noalias.scope.decl(metadata !63137)
  call void @llvm.experimental.noalias.scope.decl(metadata !63140)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !63143, !noalias !63146, !noundef !15 ; 6 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !63152, !noalias !63153 ; 2 uses
  %i.bi = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !63143, !noalias !63146, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.m ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63154)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !63155, !noundef !15
  switch i8 %i.bn, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %bb.p
  ], !prof !2674

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bo = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bo, ptr %i.bf, align 8, !alias.scope !63156, !noalias !63153
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bo, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i:                      ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !63159
  store i64 5, ptr %i.l, align 8, !noalias !63159
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63128

.noexc7.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !63159
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !63159
  store i64 10, ptr %i.m, align 8, !noalias !63159
  %i.bq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63128

.noexc8.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !63159
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !447, !alias.scope !63160, !noalias !63161, !noundef !15
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.x, label %bb.w

bb.p:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !63162)
  call void @llvm.experimental.noalias.scope.decl(metadata !63165)
  call void @llvm.experimental.noalias.scope.decl(metadata !63168)
  call void @llvm.experimental.noalias.scope.decl(metadata !63171)
  call void @llvm.experimental.noalias.scope.decl(metadata !63174)
  call void @llvm.experimental.noalias.scope.decl(metadata !63177)
  call void @llvm.experimental.noalias.scope.decl(metadata !63180)
  call void @llvm.experimental.noalias.scope.decl(metadata !63183)
  %2 = icmp ult i64 %i.bl, %i.bh
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p, %bb.q
  %i.bu = phi i64 [ %i.bx, %bb.q ], [ %i.bl, %bb.p ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !63186, !noundef !15 ; 2 uses
  switch i8 %i.bw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = add i64 %i.bu, 1                        ; 3 uses
  store i64 %i.bx, ptr %i.bf, align 8, !alias.scope !63197, !noalias !63200
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !63202
  %i.by = icmp eq i8 %i.bw, 34
  br i1 %i.by, label %bb.r, label %bb.s, !prof !16

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !63202
  store i64 5, ptr %i.k, align 8, !noalias !63202
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63128

.noexc9.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !63202
  br label %bb.v

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ca = add i64 %i.bu, 1
  store i64 %i.ca, ptr %i.bf, align 8, !alias.scope !63203, !noalias !63206
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cb, align 8, !alias.scope !63207, !noalias !63206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !63202
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !63128

.noexc10.i.i.i:                                   ; preds = %bb.r
  %i.cc = load i64, ptr %i.i, align 8, !range !1177, !noalias !63202, !noundef !15
  %i.cd = icmp eq i64 %i.cc, 2
  %i.ce = load ptr, ptr %i.au, align 8, !noalias !63202 ; 3 uses
  br i1 %i.cd, label %bb.t, label %bb.u

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63128

bb.t:                                             ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !63202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !63202
  br label %bb.v

bb.u:                                             ; preds = %.noexc10.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !63202
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1185d8e741cdcac0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !63128

.noexc12.i.i.i:                                   ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !63202
  %i.cg = load i8, ptr %i.j, align 8, !range !447, !noalias !63202, !noundef !15
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %switch.lookup, !prof !122

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc12.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !63202
  br label %.noexc11.i.i.i

.noexc11.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.ci = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.s ]
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !63128

.noexc13.i.i.i:                                   ; preds = %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !63202
  br label %bb.v

bb.v:                                             ; preds = %.noexc13.i.i.i, %bb.t, %.noexc9.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.noexc9.i.i.i ], [ %i.cj, %.noexc13.i.i.i ], [ %i.ce, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN10serde_core2de9SeqAccess12next_element17hf143a02275451800E.exit.i.i.i

switch.lookup:                                    ; preds = %.noexc12.i.i.i
  %i.ck = load i8, ptr %i.av, align 1, !range !14291, !noalias !63202, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !63202
  %switch.tableidx = xor i8 %i.ck, -128
  %i.cl = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h89d0e226ebff6aeeE", i64 %i.cl
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.thread.i.i.i

default.unreachable:                              ; preds = %.noexc22.i.i.i
  unreachable

bb.w:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 57 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !63160, !noalias !63161, !noundef !15
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !alias.scope !63160, !noalias !63161
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.la, label %bb.x, !prof !122

bb.x:                                             ; preds = %bb.w, %bb.o
  %i.cq = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.cq, ptr %i.bf, align 8, !alias.scope !63208, !noalias !63161
  call void @llvm.experimental.noalias.scope.decl(metadata !63211)
  call void @llvm.experimental.noalias.scope.decl(metadata !63214)
  call void @llvm.experimental.noalias.scope.decl(metadata !63217)
  call void @llvm.experimental.noalias.scope.decl(metadata !63220)
  %i.cr = icmp ult i64 %i.cq, %i.bh
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.x, %bb.y
  %i.cs = phi i64 [ %i.cv, %bb.y ], [ %i.cq, %bb.x ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !63223, !noundef !15
  switch i8 %i.cu, label %bb.z [
    i8 32, label %bb.y
    i8 10, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 34, label %bb.aa
    i8 125, label %bb.ab
  ], !prof !2771

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = add i64 %i.cs, 1                        ; 3 uses
  store i64 %i.cv, ptr %i.bf, align 8, !alias.scope !63230, !noalias !63233
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cv, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !63235
  store i64 3, ptr %i.f, align 8, !noalias !63235
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !63128

.noexc14.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63235
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !63235
  store i64 17, ptr %i.g, align 8, !noalias !63235
  %i.cx = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !63128

.noexc15.i.i.i:                                   ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !63235
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !63235
  call void @llvm.experimental.noalias.scope.decl(metadata !63236)
  call void @llvm.experimental.noalias.scope.decl(metadata !63239)
  call void @llvm.experimental.noalias.scope.decl(metadata !63242)
  call void @llvm.experimental.noalias.scope.decl(metadata !63245)
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.bf, align 8, !alias.scope !63248, !noalias !63251
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cz, align 8, !alias.scope !63256, !noalias !63251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !63257
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !63128

.noexc16.i.i.i:                                   ; preds = %bb.aa
  %i.da = load i64, ptr %i.d, align 8, !range !1177, !noalias !63257, !noundef !15
  %i.db = icmp eq i64 %i.da, 2
  %i.dc = load ptr, ptr %i.aw, align 8, !noalias !63257, !nonnull !15, !noundef !15 ; 2 uses
  br i1 %i.db, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !5452

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !63257
  br label %bb.ac

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !noalias !63257
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1185d8e741cdcac0E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dc, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !63128

.noexc17.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !447, !noalias !63235
  %i.dd = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !63257
  br i1 %i.dd, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", label %bb.ad, !prof !4913

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc17.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i, align 8, !noalias !63235
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !63235
  store i64 10, ptr %i.h, align 8, !noalias !63235
  %i.de = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !63128

.noexc18.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !63235
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.df = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.dc, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05dfe9881812d30cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.dg = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !63128

.noexc19.i.i.i:                                   ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63235
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha3cdf8a617f8bf45E.exit.i.i.i.i.i.i.i.i"

bb.ad:                                            ; preds = %.noexc17.i.i.i
  %i.dh = load i8, ptr %i.ax, align 1, !range !14291, !noalias !63235, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63235
  call void @llvm.experimental.noalias.scope.decl(metadata !63258)
  call void @llvm.experimental.noalias.scope.decl(metadata !63261)
  %i.di = load i64, ptr %i.bg, align 8, !alias.scope !63264, !noalias !63267, !noundef !15 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !63270, !noalias !63271 ; 2 uses
  %i.dj = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.di
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_10
begin_hunk_11_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hb803dacdf423a912E":bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !66412, !noalias !66415, !nonnull !15, !align !533, !noundef !15
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.cd = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.cg, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66420)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !66421, !noundef !15
  switch i8 %i.cf, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !1195

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.cg = add i64 %i.cd, 1                        ; 3 uses
  store i64 %i.cg, ptr %i.bx, align 8, !alias.scope !66422, !noalias !66419
  %exitcond.not.i.i.i = icmp eq i64 %i.cg, %i.bz
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !66425
  store i64 5, ptr %i.bw, align 8, !noalias !66425
  %i.ch = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bw), !noalias !66426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !66425
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h3e046684fbbe1b54E.exit"

bb.d:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !range !447, !alias.scope !66427, !noalias !66426, !noundef !15
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.cl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2627), !noalias !66426
  br label %bb.lf

bb.f:                                             ; preds = %bb.d
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !66427, !noalias !66426, !noundef !15
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !alias.scope !66427, !noalias !66426
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.kt, label %bb.g, !prof !122

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.cq = add i64 %i.cd, 1
  store i64 %i.cq, ptr %i.bx, align 8, !alias.scope !66428, !noalias !66426
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.927.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !66425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !66425
  store ptr %1, ptr %i.bs, align 8, !noalias !66431
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 1, ptr %i.cr, align 8, !noalias !66431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !66431
  store ptr null, ptr %i.br, align 8, !noalias !66431
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !noalias !66431
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
  br label %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hef6294a8d9736764E.exit.i.i.i.outer"

"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hef6294a8d9736764E.exit.i.i.i.outer": ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hd5a1282a7e23011aE.exit.thread.i.i.i", %bb.g
  %.ph3044 = phi ptr [ %i.ajx, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hd5a1282a7e23011aE.exit.thread.i.i.i" ], [ null, %bb.g ] ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.ph3044, null
  br label %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hef6294a8d9736764E.exit.i.i.i"

"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hef6294a8d9736764E.exit.i.i.i": ; preds = %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hef6294a8d9736764E.exit.i.i.i.backedge", %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hef6294a8d9736764E.exit.i.i.i.outer"
  call void @llvm.experimental.noalias.scope.decl(metadata !66435)
  call void @llvm.experimental.noalias.scope.decl(metadata !66438)
  call void @llvm.experimental.noalias.scope.decl(metadata !66441)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !66444
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h0966436940de472cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %.noexc.i.i.i unwind label %bb.if, !noalias !66448

.noexc.i.i.i:                                     ; preds = %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hef6294a8d9736764E.exit.i.i.i"
  %i.dy = load i8, ptr %i.bp, align 8, !range !447, !noalias !66444, !noundef !15
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !66444, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !66444
  br label %bb.ig

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ec = load i8, ptr %i.ct, align 1, !range !447, !noalias !66444, !noundef !15
  %i.ed = trunc nuw i8 %i.ec to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !66444
  br i1 %i.ed, label %bb.j, label %_ZN10serde_core2de9MapAccess10next_entry17hc346ab3d8a0eba01E.exit.thread28.i.i.i

_ZN10serde_core2de9MapAccess10next_entry17hc346ab3d8a0eba01E.exit.thread28.i.i.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.927.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false), !noalias !66449
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h9c5bf6a9c7e6613eE.exit.i.i"

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !66444
  %i.ee = load ptr, ptr %i.bs, align 8, !alias.scope !66450, !noalias !66451, !nonnull !15, !align !569, !noundef !15 ; 53 uses
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_string17hb5aec942e6db247cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ee)
          to label %.noexc5.i.i.i unwind label %bb.if, !noalias !66448

.noexc5.i.i.i:                                    ; preds = %bb.j
  %i.ef = load i64, ptr %i.bo, align 8, !range !286, !noalias !66444, !noundef !15 ; 16 uses
  %i.eg = icmp eq i64 %i.ef, -9223372036854775808
  %i.eh = load ptr, ptr %i.cu, align 8, !noalias !66452 ; 15 uses
  br i1 %i.eg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !66444
  br label %bb.ig

bb.l:                                             ; preds = %.noexc5.i.i.i
  %.sroa.14.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !66452 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !66444
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !66453)
  call void @llvm.experimental.noalias.scope.decl(metadata !66456)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 40 ; 21 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !66459, !noalias !66462, !noundef !15 ; 8 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !66467, !noalias !66468 ; 2 uses
  %i.el = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.ek
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 5 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !66459, !noalias !66462, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i
  %i.eo = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.er, %bb.n ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66469)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !66470, !noundef !15
  switch i8 %i.eq, label %bb.o [
    i8 32, label %bb.n
    i8 10, label %bb.n
    i8 9, label %bb.n
    i8 13, label %bb.n
    i8 58, label %bb.p
  ], !prof !1195

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.er = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.er, ptr %i.ei, align 8, !alias.scope !66471, !noalias !66468
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.er, %i.ek
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.m

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.l, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !66474
  store i64 3, ptr %i.bm, align 8, !noalias !66474
  %i.es = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bm)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

.noexc.i.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !66474
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h0ebec108a12f437dE.exit.thread.i.i.i.i.i"

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !66474
  store i64 6, ptr %i.bn, align 8, !noalias !66474
  %i.et = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bn)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

.noexc7.i.i.i.i.i:                                ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !66474
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h0ebec108a12f437dE.exit.thread.i.i.i.i.i"

bb.p:                                             ; preds = %bb.m
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.ei, align 8, !alias.scope !66476, !noalias !66479
  call void @llvm.experimental.noalias.scope.decl(metadata !66480)
  call void @llvm.experimental.noalias.scope.decl(metadata !66483)
  call void @llvm.experimental.noalias.scope.decl(metadata !66486)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !66489)
  %i.ev = icmp ult i64 %i.eu, %i.ek
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit47.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.p, %bb.q
  %i.ew = phi i64 [ %i.ez, %bb.q ], [ %i.eu, %bb.p ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !noalias !66492, !noundef !15
  switch i8 %i.ey, label %bb.r [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
    i8 123, label %bb.s
    i8 34, label %bb.t
  ], !prof !2674

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ez = add i64 %i.ew, 1                        ; 3 uses
  store i64 %i.ez, ptr %i.ei, align 8, !alias.scope !66500, !noalias !66503
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ez, %i.ek
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit47.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit47.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !66504
  store i64 5, ptr %i.bg, align 8, !noalias !66504
  %i.fa = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bg)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

.noexc8.i.i.i.i.i:                                ; preds = %.loopexit47.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !66504
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h0ebec108a12f437dE.exit.thread111.i.i.i.i.i"

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !66504
  store i64 10, ptr %i.bh, align 8, !noalias !66504
  %i.fb = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bh)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

.noexc9.i.i.i.i.i:                                ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !66504
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h0ebec108a12f437dE.exit.thread111.i.i.i.i.i"

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 56 ; 11 uses
  %i.fd = load i8, ptr %i.fc, align 8, !range !447, !alias.scope !66505, !noalias !66506, !noundef !15
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ai, label %bb.ah

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !66507)
  call void @llvm.experimental.noalias.scope.decl(metadata !66510)
  call void @llvm.experimental.noalias.scope.decl(metadata !66513)
  call void @llvm.experimental.noalias.scope.decl(metadata !66516)
  call void @llvm.experimental.noalias.scope.decl(metadata !66519)
  call void @llvm.experimental.noalias.scope.decl(metadata !66522)
  call void @llvm.experimental.noalias.scope.decl(metadata !66525)
  call void @llvm.experimental.noalias.scope.decl(metadata !66528)
  %2 = icmp ult i64 %i.ew, %i.ek
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.t, %bb.u
  %i.ff = phi i64 [ %i.fi, %bb.u ], [ %i.ew, %bb.t ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !66531, !noundef !15
  switch i8 %i.fh, label %bb.w [
    i8 32, label %bb.u
    i8 10, label %bb.u
    i8 9, label %bb.u
    i8 13, label %bb.u
    i8 34, label %bb.v
  ], !prof !1195

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fi = add i64 %i.ff, 1                        ; 3 uses
  store i64 %i.fi, ptr %i.ei, align 8, !alias.scope !66543, !noalias !66546
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fi, %i.ek
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !66547
  store i64 5, ptr %i.bf, align 8, !noalias !66547
  %i.fj = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bf)
          to label %.noexc10.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

.noexc10.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !66547
  br label %.noexc15.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fk = add i64 %i.ff, 1
  store i64 %i.fk, ptr %i.ei, align 8, !alias.scope !66548, !noalias !66551
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 0, ptr %i.fl, align 8, !alias.scope !66552, !noalias !66551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !66547
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.em, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ee)
          to label %.noexc11.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

.noexc11.i.i.i.i.i:                               ; preds = %bb.v
  %i.fm = load i64, ptr %i.be, align 8, !range !1177, !noalias !66547, !noundef !15 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !66547 ; 9 uses
  br i1 %i.fn, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2661)
          to label %.noexc12.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

bb.x:                                             ; preds = %.noexc11.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !66547
  br label %.noexc15.i.i.i.i.i

bb.y:                                             ; preds = %.noexc11.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66547 ; 3 uses
  %i.fr = trunc nuw i64 %i.fm to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  br i1 %i.fr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcc99a4942a989c08E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i" [
    i64 7, label %bb.aa
    i64 8, label %bb.ab
  ], !prof !935

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
  br i1 %i.ga, label %bb.ag, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcc99a4942a989c08E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.z
  %i.gb = load i64, ptr %i.fp, align 1
  %i.gc = icmp ne i64 %i.gb, 7234303221339941222
  %i.gd = zext i1 %i.gc to i32
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.af, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcc99a4942a989c08E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i", !prof !16

"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcc99a4942a989c08E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i": ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.gf = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fp, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @393, i64 noundef 2)
          to label %.noexc12.sink.split.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

bb.ac:                                            ; preds = %bb.y
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcc99a4942a989c08E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i" [
    i64 7, label %bb.ad
    i64 8, label %bb.ae
  ], !prof !935

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
  br i1 %i.go, label %bb.ag, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcc99a4942a989c08E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"

bb.ae:                                            ; preds = %bb.ac
  %i.gp = load i64, ptr %i.fp, align 1
  %i.gq = icmp ne i64 %i.gp, 7234303221339941222
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.af, label %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcc99a4942a989c08E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i", !prof !16

.noexc12.sink.split.i.i.i.i.i:                    ; preds = %"_ZN219_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcc99a4942a989c08E.exit.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !66547
  br label %.noexc12.i.i.i.i.i

.noexc12.i.i.i.i.i:                               ; preds = %.noexc12.sink.split.i.i.i.i.i, %bb.w
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fq, %bb.w ], [ %i.gf, %.noexc12.sink.split.i.i.i.i.i ]
  %i.gt = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee)
          to label %.noexc15.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

.noexc15.i.i.i.i.i:                               ; preds = %.noexc12.i.i.i.i.i, %bb.x, %.noexc10.i.i.i.i.i
  %.sroa.63.0.ph.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fp, %bb.x ], [ %i.fj, %.noexc10.i.i.i.i.i ], [ %i.gt, %.noexc12.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.ph.i.i.i.i.i.i.i.i.i.i) ]
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h0ebec108a12f437dE.exit.thread111.i.i.i.i.i"

bb.af:                                            ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !66547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !66553
  store i8 13, ptr %i.bd, align 8, !noalias !66553
  %i.gu = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bd, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc16.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

.noexc16.i.i.i.i.i:                               ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !66553
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h0ebec108a12f437dE.exit.thread111.i.i.i.i.i"

bb.ag:                                            ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !66547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !66556
  store i8 13, ptr %i.bc, align 8, !noalias !66556
  %i.gv = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bc, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc17.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i, !noalias !66475

.noexc17.i.i.i.i.i:                               ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !66556
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h0ebec108a12f437dE.exit.thread111.i.i.i.i.i"

bb.ah:                                            ; preds = %bb.s
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ee, i64 57 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !alias.scope !66505, !noalias !66506, !noundef !15
  %i.gy = add i8 %i.gx, -1                        ; 2 uses
  store i8 %i.gy, ptr %i.gw, align 1, !alias.scope !66505, !noalias !66506
  %i.gz = icmp eq i8 %i.gy, 0
  br i1 %i.gz, label %bb.hm, label %bb.ai, !prof !122

bb.ai:                                            ; preds = %bb.ah, %bb.s
  %i.ha = add i64 %i.ew, 1                        ; 3 uses
  store i64 %i.ha, ptr %i.ei, align 8, !alias.scope !66559, !noalias !66506
  call void @llvm.experimental.noalias.scope.decl(metadata !66562)
  call void @llvm.experimental.noalias.scope.decl(metadata !66565)
  call void @llvm.experimental.noalias.scope.decl(metadata !66568)
  call void @llvm.experimental.noalias.scope.decl(metadata !66571)
  %i.hb = icmp ult i64 %i.ha, %i.ek
  br i1 %i.hb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ai, %bb.aj
  %i.hc = phi i64 [ %i.hf, %bb.aj ], [ %i.ha, %bb.ai ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !noalias !66574, !noundef !15
  switch i8 %i.he, label %bb.ak [
    i8 32, label %bb.aj
    i8 10, label %bb.aj
    i8 9, label %bb.aj
    i8 13, label %bb.aj
    i8 34, label %bb.al
    i8 125, label %bb.at
  ], !prof !2771

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hf = add i64 %i.hc, 1                        ; 3 uses
  store i64 %i.hf, ptr %i.ei, align 8, !alias.scope !66582, !noalias !66585
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hf, %i.ek
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !66586
  store i64 3, ptr %i.az, align 8, !noalias !66586
  %i.hg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.az)
          to label %.noexc18.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i.i.i, !noalias !66475

.noexc18.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !66586
  br label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb14e4a1f71b0f78dE.exit.i.i.i.i.i.i.i.i.i"

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !66586
  store i64 17, ptr %i.ba, align 8, !noalias !66586
  %i.hh = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ba)
          to label %.noexc19.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i.i.i, !noalias !66475

.noexc19.i.i.i.i.i:                               ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !66586
  br label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hb14e4a1f71b0f78dE.exit.i.i.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !66587)
  call void @llvm.experimental.noalias.scope.decl(metadata !66590)
  call void @llvm.experimental.noalias.scope.decl(metadata !66593)
  call void @llvm.experimental.noalias.scope.decl(metadata !66596)
  %i.hi = add i64 %i.hc, 1
  store i64 %i.hi, ptr %i.ei, align 8, !alias.scope !66599, !noalias !66602
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 0, ptr %i.hj, align 8, !alias.scope !66607, !noalias !66602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !66608
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.em, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ee)
          to label %.noexc20.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i.i.i, !noalias !66475

end_hunk_11
begin_hunk_12_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc8b1d7422f7432edE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !67992
  br label %bb.bs

bb.hf:                                            ; preds = %"_ZN194_$LT$meilisearch_types..batches.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..batches..BatchStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3499282fd8573ec5E.exit.i.i"
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.vo = load i8, ptr %i.vn, align 1, !alias.scope !67994, !noalias !67993, !noundef !15
  %i.vp = add i8 %i.vo, 1
  store i8 %i.vp, ptr %i.vn, align 1, !alias.scope !67994, !noalias !67993
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %"_ZN194_$LT$meilisearch_types..batches.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..batches..BatchStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3499282fd8573ec5E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !67992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !67992
  store i64 %.sroa.08.4.i.i, ptr %i.bo, align 8, !noalias !67992
  %.sroa.2610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.sroa.2610.4.i.i, ptr %.sroa.2610.0..sroa_idx.i.i, align 8, !noalias !67992
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.46.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.46.i.i, i64 56, i1 false), !noalias !67992
  %.sroa.4614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store i64 %.sroa.4614.0.i.i, ptr %.sroa.4614.0..sroa_idx.i.i, align 8, !noalias !67992
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store ptr %.sroa.47.0.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !67992
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  store i64 %.sroa.48.0.i.i, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !67992
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.49.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7413.i.i.i, i64 32, i1 false), !noalias !67992
  %.sroa.50.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  store i64 %.sroa.50.0.i.i, ptr %.sroa.50.0..sroa_idx.i.i, align 8, !noalias !67992
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  store i64 %.sroa.51.0.i.i, ptr %.sroa.51.0..sroa_idx.i.i, align 8, !noalias !67992
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.52.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.52.i.i, i64 72, i1 false), !noalias !67992
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.i.i, i64 24, i1 false), !noalias !67992
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.54.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.54.i.i, i64 24, i1 false), !noalias !67992
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.i.i, i64 24, i1 false), !noalias !67992
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 288
  store i32 %.sroa.56.0.i.i, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !67992
  %i.vq = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.hi unwind label %bb.hh, !noalias !67993 ; 10 uses

bb.hh:                                            ; preds = %bb.hg
  %i.vr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$core..result..Result$LT$meilisearch_types..batches..BatchStats$C$serde_json..error..Error$GT$$GT$17h330febd29d8dfd8dE"(ptr noalias noundef align 8 dereferenceable(296) %i.bo) #44
          to label %common.resume.i.i unwind label %bb.cb, !noalias !67993

bb.hi:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.bp, ptr noundef nonnull align 8 dereferenceable(296) %i.bo, i64 296, i1 false), !noalias !67992
  %i.vs = getelementptr inbounds nuw i8, ptr %i.bp, i64 296
  store ptr %i.vq, ptr %i.vs, align 8, !noalias !67992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !67992
  %i.vt = load i64, ptr %i.bp, align 8, !range !286, !noalias !67992, !noundef !15 ; 2 uses
  %i.vu = icmp eq i64 %i.vt, -9223372036854775808
  br i1 %i.vu, label %bb.hl, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %.not.i.i = icmp eq ptr %i.vq, null
  br i1 %.not.i.i, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %.sroa.225.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.225.0.copyload.i.i = load ptr, ptr %.sroa.225.0..sroa_idx.i.i, align 8, !noalias !67992
  %.sroa.326.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.18.i.i, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.326.0..sroa_idx.i.i, i64 280, i1 false), !noalias !67992
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i.i)
  br label %.thread34.i.i

bb.hl:                                            ; preds = %bb.hi
  %i.vv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8, !noalias !67992, !nonnull !15, !align !569, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i.i)
  %.not41.i.i = icmp eq ptr %i.vq, null
  br i1 %.not41.i.i, label %.thread34.i.i, label %bb.hn

bb.hm:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i.i)
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$meilisearch_types..batches..BatchStats$GT$17h6fd3ea149512497aE"(ptr noalias noundef align 8 dereferenceable(296) %i.bp), !noalias !67993
  br label %.thread34.i.i

.thread34.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit87.i.i", %bb.hm, %bb.hl, %bb.hk
  %.sroa.09.340.i.i = phi i64 [ -9223372036854775808, %bb.hl ], [ -9223372036854775808, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit87.i.i" ], [ %i.vt, %bb.hk ], [ -9223372036854775808, %bb.hm ]
  %.sroa.12.339.i.i = phi ptr [ %i.vw, %bb.hl ], [ %i.vw, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit87.i.i" ], [ %.sroa.225.0.copyload.i.i, %bb.hk ], [ %i.vq, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !67992
  br label %bb.cg

bb.hn:                                            ; preds = %bb.hl
  call void @llvm.experimental.noalias.scope.decl(metadata !68526)
  call void @llvm.experimental.noalias.scope.decl(metadata !68529)
  %i.vx = load i64, ptr %i.vq, align 8, !range !1131, !alias.scope !68532, !noalias !68533, !noundef !15
  switch i64 %i.vx, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit87.i.i" [
    i64 0, label %bb.ho
    i64 1, label %bb.hp
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  %.val1.i.i.i.i84.i.i = load i64, ptr %i.vy, align 8, !alias.scope !68532, !noalias !68533, !noundef !15 ; 2 uses
  %i.vz = icmp eq i64 %.val1.i.i.i.i84.i.i, 0
  br i1 %i.vz, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit87.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i85.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i85.i.i": ; preds = %bb.ho
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %.val.i.i.i.i86.i.i = load ptr, ptr %i.wa, align 8, !alias.scope !68532, !noalias !68533, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i86.i.i, i64 noundef %.val1.i.i.i.i84.i.i, i64 noundef 1) #45, !noalias !68536
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit87.i.i"

bb.hp:                                            ; preds = %bb.hn
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.wb)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit87.i.i" unwind label %bb.hq, !noalias !68533

bb.hq:                                            ; preds = %bb.hp
  %i.wc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vq, i64 noundef 40, i64 noundef 8) #45, !noalias !68533
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit87.i.i": ; preds = %bb.hp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i85.i.i", %bb.ho, %bb.hn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vq, i64 noundef 40, i64 noundef 8) #45, !noalias !68533
  br label %.thread34.i.i

bb.hr:                                            ; preds = %bb.cg, %bb.d
  %.sroa.12.5.i.i = phi ptr [ %.sroa.12.2.i.i, %bb.cg ], [ %i.ch, %bb.d ]
  %i.wd = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !67993
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.wd, ptr %i.we, align 8, !alias.scope !67993, !noalias !67994
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !67993, !noalias !67994
  br label %bb.ht

bb.hs:                                            ; preds = %bb.cg
  %.sroa.333.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.333.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.18.i.i, i64 280, i1 false), !noalias !67994
  store i64 %.sroa.09.2.i.i, ptr %0, align 8, !alias.scope !67993, !noalias !67994
  %.sroa.232.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.2.i.i, ptr %.sroa.232.0..sroa_idx.i.i, align 8, !alias.scope !67993, !noalias !67994
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i)
  br label %"_ZN17meilisearch_types7batches1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..batches..BatchStats$GT$11deserialize17h1468a244efae9a6fE.exit"

"_ZN17meilisearch_types7batches1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..batches..BatchStats$GT$11deserialize17h1468a244efae9a6fE.exit": ; preds = %.loopexit.i.i, %bb.bs, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7413.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.778.sroa.6.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcc0fe53000450f5bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68547)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !68550, !noalias !68553, !noundef !15 ; 8 uses
  %.promoted.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !68556, !noalias !68557 ; 3 uses
  %i.af = icmp ult i64 %.promoted.i.i.i, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !68550, !noalias !68553, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ai = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.al, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68558)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !68559, !noundef !15
  switch i8 %i.ak, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.az
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.ac, align 8, !alias.scope !68560, !noalias !68557
  %exitcond.not.i.i.i = icmp eq i64 %i.al, %i.ae
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.thread.i.i": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !68563
  br label %.loopexit9.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.ai, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68576)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !68579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68580)
  %i.am = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.ae
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !68583, !noalias !68586, !nonnull !15, !align !533, !noundef !15 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ap = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68590)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !68591, !noundef !15
  switch i8 %i.ar, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !2674

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.as = add i64 %i.ap, 1                        ; 3 uses
  store i64 %i.as, ptr %i.ac, align 8, !alias.scope !68592, !noalias !68595
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i, label %bb.d

.loopexit9.i.i.i.i.i:                             ; preds = %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !68596
  store i64 5, ptr %i.w, align 8, !noalias !68596
  %i.at = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w), !noalias !68597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !68596
  br label %bb.ax

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !68596
  store i64 10, ptr %i.x, align 8, !noalias !68596
  %i.au = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !68597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !68596
  br label %bb.ax

bb.g:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !range !447, !alias.scope !68598, !noalias !68597, !noundef !15
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.ah, label %bb.ag

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68620)
  %2 = icmp ult i64 %i.ap, %i.ae
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.ay = phi i64 [ %i.bb, %bb.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !68623, !noundef !15 ; 2 uses
  switch i8 %i.ba, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = add i64 %i.ay, 1                        ; 3 uses
  store i64 %i.bb, ptr %i.ac, align 8, !alias.scope !68635, !noalias !68638
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.ae
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !68639
  %i.bc = icmp eq i8 %i.ba, 34
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !16

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !68639
  store i64 5, ptr %i.v, align 8, !noalias !68639
  %i.bd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v), !noalias !68640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !68639
  br label %bb.o

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.be = add i64 %i.ay, 1
  store i64 %i.be, ptr %i.ac, align 8, !alias.scope !68641, !noalias !68640
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bf, align 8, !alias.scope !68644, !noalias !68640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !68639
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !68640
  %i.bg = load i64, ptr %i.t, align 8, !range !1177, !noalias !68639, !noundef !15
  %i.bh = icmp eq i64 %i.bg, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !68639 ; 3 uses
  br i1 %i.bh, label %bb.l, label %bb.m

bb.k:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bk = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2660), !noalias !68640
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !68639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !68639
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !68639
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  call fastcc void @"_ZN192_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Details$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hfb0f10fb10ab2d60E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bj, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !68640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !68639
  %i.bl = load i8, ptr %i.u, align 8, !range !447, !noalias !68639, !noundef !15
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %._crit_edge.i.i.i.i.i.i.i, label %bb.p, !prof !122

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.m
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !68639
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.k
  %i.bn = phi ptr [ %.pre.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.bk, %bb.k ]
  %i.bo = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !68640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !68639
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.n ], [ %i.bj, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i) ]
  br label %bb.ax

bb.p:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !range !10657, !noalias !68639, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !68639
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !68645
  store i8 13, ptr %i.s, align 8, !noalias !68645
  %i.br = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !68645
  br label %bb.ax

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !68649
  store i8 13, ptr %i.r, align 8, !noalias !68649
  %i.bs = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !68649
  br label %bb.ax

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !68653
  store i8 13, ptr %i.q, align 8, !noalias !68653
  %i.bt = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !68653
  br label %bb.ax

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !68657
  store i8 13, ptr %i.p, align 8, !noalias !68657
  %i.bu = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !68657
  br label %bb.ax

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !68661
  store i8 13, ptr %i.o, align 8, !noalias !68661
  %i.bv = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !68661
  br label %bb.ax

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !68665
  store i8 13, ptr %i.n, align 8, !noalias !68665
  %i.bw = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !68665
  br label %bb.ax

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !68669
  store i8 13, ptr %i.m, align 8, !noalias !68669
  %i.bx = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !68669
  br label %bb.ax

bb.x:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !68673
  store i8 13, ptr %i.l, align 8, !noalias !68673
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !68673
  br label %bb.ax

bb.y:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !68677
  store i8 13, ptr %i.k, align 8, !noalias !68677
  %i.bz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !68677
  br label %bb.ax

bb.z:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !68681
  store i8 13, ptr %i.j, align 8, !noalias !68681
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !68681
  br label %bb.ax

bb.aa:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !68685
  store i8 13, ptr %i.i, align 8, !noalias !68685
  %i.cb = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !68685
  br label %bb.ax

bb.ab:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !68689
  store i8 13, ptr %i.h, align 8, !noalias !68689
  %i.cc = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !68689
  br label %bb.ax

bb.ac:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !68693
  store i8 13, ptr %i.g, align 8, !noalias !68693
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !68693
  br label %bb.ax

bb.ad:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !68697
  store i8 13, ptr %i.f, align 8, !noalias !68697
  %i.ce = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !68697
  br label %bb.ax

bb.ae:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !68701
  store i8 13, ptr %i.e, align 8, !noalias !68701
  %i.cf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !68701
  br label %bb.ax

bb.af:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !68705
  store i8 13, ptr %i.d, align 8, !noalias !68705
  %i.cg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 @2613, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !68710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !68705
  br label %bb.ax

bb.ag:                                            ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !68598, !noalias !68597, !noundef !15
  %i.cj = add i8 %i.ci, -1                        ; 2 uses
  store i8 %i.cj, ptr %i.ch, align 1, !alias.scope !68598, !noalias !68597
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.ai, label %bb.ah, !prof !122

end_hunk_12
begin_hunk_13_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd4802fb3d251ff27E":bb.a
  %or.cond.i.i57.i.i.i.i.i = icmp slt i64 %.val5.i56.i.i.i.i.i, 1
  br i1 %or.cond.i.i57.i.i.i.i.i, label %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i59.i.i.i.i.i", label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.le = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  %.val6.i58.i.i.i.i.i = load ptr, ptr %i.le, align 8, !alias.scope !69278, !noalias !68931, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i58.i.i.i.i.i, i64 noundef %.val5.i56.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !69281
  br label %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i59.i.i.i.i.i"

"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i59.i.i.i.i.i": ; preds = %bb.ee, %bb.ed
  %i.lf = getelementptr inbounds nuw i8, ptr %i.af, i64 184
  %.val.i60.i.i.i.i.i = load i64, ptr %i.lf, align 8, !range !1113, !alias.scope !69278, !noalias !68931, !noundef !15 ; 2 uses
  %or.cond.i9.i61.i.i.i.i.i = icmp slt i64 %.val.i60.i.i.i.i.i, 1
  br i1 %or.cond.i9.i61.i.i.i.i.i, label %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i63.i.i.i.i.i", label %bb.ef

bb.ef:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i59.i.i.i.i.i"
  %i.lg = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %.val2.i62.i.i.i.i.i = load ptr, ptr %i.lg, align 8, !alias.scope !69278, !noalias !68931, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i62.i.i.i.i.i, i64 noundef %.val.i60.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !69286
  br label %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i63.i.i.i.i.i"

"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i63.i.i.i.i.i": ; preds = %bb.ef, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i59.i.i.i.i.i"
  %i.lh = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !range !2915, !alias.scope !69291, !noalias !68931, !noundef !15
  %i.lj = icmp samesign ult i64 %i.li, 3
  br i1 %i.lj, label %bb.eg, label %.thread25.i.i.i.i.i

bb.eg:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i63.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$milli..update..chat..ChatSearchParams$GT$17h7c0f6fb38a619701E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.lh), !noalias !68932
  br label %.thread25.i.i.i.i.i

.thread25.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit69.i.i.i.i.i", %bb.eg, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i63.i.i.i.i.i", %bb.ec, %bb.eb
  %.sroa.09.331.i.i.i.i.i = phi i64 [ 3, %bb.ec ], [ 3, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit69.i.i.i.i.i" ], [ %i.kz, %bb.eb ], [ 3, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i63.i.i.i.i.i" ], [ 3, %bb.eg ]
  %.sroa.12.330.i.i.i.i.i = phi ptr [ %i.lc, %bb.ec ], [ %i.lc, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit69.i.i.i.i.i" ], [ %.sroa.225.0.copyload.i.i.i.i.i, %bb.eb ], [ %i.kw, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i63.i.i.i.i.i" ], [ %i.kw, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !68931
  br label %bb.bj

bb.eh:                                            ; preds = %bb.ec
  call void @llvm.experimental.noalias.scope.decl(metadata !69294)
  call void @llvm.experimental.noalias.scope.decl(metadata !69297)
  %i.lk = load i64, ptr %i.kw, align 8, !range !1131, !alias.scope !69300, !noalias !69301, !noundef !15
  switch i64 %i.lk, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit69.i.i.i.i.i" [
    i64 0, label %bb.ei
    i64 1, label %bb.ej
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %.val1.i.i.i.i66.i.i.i.i.i = load i64, ptr %i.ll, align 8, !alias.scope !69300, !noalias !69301, !noundef !15 ; 2 uses
  %i.lm = icmp eq i64 %.val1.i.i.i.i66.i.i.i.i.i, 0
  br i1 %i.lm, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit69.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i67.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i67.i.i.i.i.i": ; preds = %bb.ei
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %.val.i.i.i.i68.i.i.i.i.i = load ptr, ptr %i.ln, align 8, !alias.scope !69300, !noalias !69301, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i68.i.i.i.i.i, i64 noundef %.val1.i.i.i.i66.i.i.i.i.i, i64 noundef 1) #45, !noalias !69304
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit69.i.i.i.i.i"

bb.ej:                                            ; preds = %bb.eh
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lo)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit69.i.i.i.i.i" unwind label %bb.ek, !noalias !69301

bb.ek:                                            ; preds = %bb.ej
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kw, i64 noundef 40, i64 noundef 8) #45, !noalias !69301
  br label %common.resume.i.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit69.i.i.i.i.i": ; preds = %bb.ej, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i67.i.i.i.i.i", %bb.ei, %bb.eh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kw, i64 noundef 40, i64 noundef 8) #45, !noalias !69301
  br label %.thread25.i.i.i.i.i

"_ZN5milli6update4chat1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$11deserialize17h53e87ccdcb014905E.exit.thread6.i.i.i": ; preds = %bb.bj, %bb.f
  %.sroa.12.5.i.i.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i.i, %bb.bj ], [ %i.bd, %bb.f ]
  %i.lq = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !68932
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  br label %"_ZN5milli6update4chat1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$11deserialize17h53e87ccdcb014905E.exit.thread.i.i.i"

"_ZN5milli6update4chat1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$11deserialize17h53e87ccdcb014905E.exit.thread.i.i.i": ; preds = %"_ZN5milli6update4chat1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$11deserialize17h53e87ccdcb014905E.exit.thread6.i.i.i", %bb.as, %.loopexit.i.i.i.i.i
  %.sroa.8.15.i.i.i = phi ptr [ %i.lq, %"_ZN5milli6update4chat1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$11deserialize17h53e87ccdcb014905E.exit.thread6.i.i.i" ], [ %i.bc, %.loopexit.i.i.i.i.i ], [ %.sink.i.i.i.i.i, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.587.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633.sroa.5.i.i.i.i.i.i)
  br label %bb.es

bb.el:                                            ; preds = %bb.b
  %i.lr = add i64 %i.ar, 1                        ; 4 uses
  store i64 %i.lr, ptr %i.al, align 8, !alias.scope !69305, !noalias !69308
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69309)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.lr, i64 %i.an) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69312)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.lr, %i.an
  br i1 %exitcond.not.i9.not.i.i, label %bb.em, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.em:                                            ; preds = %bb.el
  %i.ls = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !noalias !69315, !noundef !15
  %i.lu = add i64 %i.ar, 2                        ; 3 uses
  store i64 %i.lu, ptr %i.al, align 8, !alias.scope !69318, !noalias !69319
  %.not.i.i.i = icmp eq i8 %i.lt, 117
  br i1 %.not.i.i.i, label %bb.en, label %bb.er, !prof !2446

bb.en:                                            ; preds = %bb.em
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69320)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.lu, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.lv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !noalias !69322, !noundef !15
  %i.lx = add i64 %i.ar, 3                        ; 3 uses
  store i64 %i.lx, ptr %i.al, align 8, !alias.scope !69323, !noalias !69319
  %.not.i.1.i.i = icmp eq i8 %i.lw, 108
  br i1 %.not.i.1.i.i, label %bb.ep, label %bb.er, !prof !2446

bb.ep:                                            ; preds = %bb.eo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69324)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.lx, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ly = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !noalias !69326, !noundef !15
  %i.ma = add i64 %i.ar, 4
  store i64 %i.ma, ptr %i.al, align 8, !alias.scope !69327, !noalias !69319
  %.not.i.2.i.i = icmp eq i8 %i.lz, 108
  br i1 %.not.i.2.i.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h24b94948b9fe2d00E.exit.thread10.i", label %bb.er, !prof !2446

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h24b94948b9fe2d00E.exit.thread10.i": ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %bb.eu

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.ep, %bb.en, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69328
  store i64 5, ptr %i.c, align 8, !noalias !69328
  %i.mb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !69329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69328
  br label %bb.es

bb.er:                                            ; preds = %bb.eq, %bb.eo, %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69328
  store i64 9, ptr %i.b, align 8, !noalias !69328
  %i.mc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !69329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69328
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", %"_ZN5milli6update4chat1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$11deserialize17h53e87ccdcb014905E.exit.thread.i.i.i"
  %.sroa.7.0.ph.i = phi ptr [ %i.mc, %bb.er ], [ %i.mb, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %.sroa.8.15.i.i.i, %"_ZN5milli6update4chat1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$11deserialize17h53e87ccdcb014905E.exit.thread.i.i.i" ]
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %i.md, align 8, !alias.scope !68879, !noalias !68882
  store i64 5, ptr %0, align 8, !alias.scope !68879, !noalias !68882
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h3c8c03076f5338b2E.exit"

bb.et:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.5.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.18.i.i.i.i.i, i64 192, i1 false), !noalias !69330
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.587.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633.sroa.5.i.i.i.i.i.i)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h24b94948b9fe2d00E.exit.thread10.i"
  %.sroa.5.sroa.0.0.i = phi ptr [ undef, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h24b94948b9fe2d00E.exit.thread10.i" ], [ %.sroa.12.2.i.i.i.i.i, %bb.et ]
  %.sroa.03.0.i = phi i64 [ 3, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h24b94948b9fe2d00E.exit.thread10.i" ], [ %.sroa.09.2.i.i.i.i.i, %bb.et ]
  store i64 %.sroa.03.0.i, ptr %0, align 8, !alias.scope !68879, !noalias !68882
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !alias.scope !68879, !noalias !68882
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.5.sroa.4.i, i64 192, i1 false), !noalias !68882
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h3c8c03076f5338b2E.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h3c8c03076f5338b2E.exit": ; preds = %bb.es, %bb.eu
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd5ef64bec6bbe2a2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69341)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !69344, !noalias !69347, !noundef !15 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !69350, !noalias !69351 ; 2 uses
  %i.r = icmp ult i64 %.promoted.i.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %.loopexit20.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !69344, !noalias !69347, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69352)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !69353, !noundef !15
  switch i8 %i.w, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !2674

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.x = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !69354, !noalias !69351
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %i.q
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i, label %bb.b

.loopexit20.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !69357
  store i64 5, ptr %i.j, align 8, !noalias !69357
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !69358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !69357
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !69358, !noalias !69359
  store i8 1, ptr %0, align 8, !alias.scope !69358, !noalias !69359
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !69357
  store i64 10, ptr %i.k, align 8, !noalias !69357
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !69358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !69357
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !69358, !noalias !69359
  store i8 1, ptr %0, align 8, !alias.scope !69358, !noalias !69359
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit"

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !447, !alias.scope !69359, !noalias !69358, !noundef !15
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.w, label %bb.v

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69383)
  %2 = icmp ult i64 %i.u, %i.q
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.af = phi i64 [ %i.ai, %bb.g ], [ %i.u, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !69386, !noundef !15
  switch i8 %i.ah, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !1195

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ai = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.o, align 8, !alias.scope !69397, !noalias !69400
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !69401
  store i64 5, ptr %i.i, align 8, !noalias !69401
  %i.aj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !69402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !69401
  br label %bb.s

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ak = add i64 %i.af, 1
  store i64 %i.ak, ptr %i.o, align 8, !alias.scope !69403, !noalias !69402
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.al, align 8, !alias.scope !69406, !noalias !69402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !69401
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !69402
  %i.am = load i64, ptr %i.h, align 8, !range !1177, !noalias !69401, !noundef !15 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !69401 ; 10 uses
  br i1 %i.an, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2663), !noalias !69402
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !69401
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !69401 ; 4 uses
  %i.ar = trunc nuw i64 %i.am to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  br i1 %i.ar, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h564643789ee65d73E.exit.i.i.i.i.i.i.i.i.i" [
    i64 16, label %bb.m
    i64 15, label %bb.n
  ], !prof !935

bb.m:                                             ; preds = %bb.l
  %i.as = load i128, ptr %i.ap, align 1
  %i.at = icmp ne i128 %i.as, 153465765051831960971512455670396904786
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.u, label %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h564643789ee65d73E.exit.i.i.i.i.i.i.i.i.i"

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
  br i1 %i.be, label %bb.t, label %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h564643789ee65d73E.exit.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h564643789ee65d73E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.l
  %i.bf = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @826, i64 noundef 2), !noalias !69407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !69401
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h7b40c3ffcd5d39ccE.exit.i.i.i.i.i.i.i.i.i [
    i64 16, label %bb.p
    i64 15, label %bb.q
  ], !prof !935

bb.p:                                             ; preds = %bb.o
  %i.bg = load i128, ptr %i.ap, align 1
  %i.bh = icmp ne i128 %i.bg, 153465765051831960971512455670396904786
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.u, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h7b40c3ffcd5d39ccE.exit.i.i.i.i.i.i.i.i.i

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
  br i1 %i.bs, label %bb.t, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h7b40c3ffcd5d39ccE.exit.i.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h7b40c3ffcd5d39ccE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.bt = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @826, i64 noundef 2), !noalias !69410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !69401
  br label %bb.r

bb.r:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h7b40c3ffcd5d39ccE.exit.i.i.i.i.i.i.i.i.i, %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h564643789ee65d73E.exit.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %"_ZN217_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h564643789ee65d73E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.bt, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h7b40c3ffcd5d39ccE.exit.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.i ]
  %i.bu = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !69402
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i = phi ptr [ %i.bu, %bb.r ], [ %i.aj, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.69.0.ph.i.i.i, ptr %i.bv, align 8, !alias.scope !69415, !noalias !69416
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7656bbbb90af466fE.exit.i.i"

bb.t:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !69401
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bw, align 1, !alias.scope !69415, !noalias !69416
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7656bbbb90af466fE.exit.i.i"

bb.u:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !69401
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.bx, align 1, !alias.scope !69415, !noalias !69416
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7656bbbb90af466fE.exit.i.i"

"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7656bbbb90af466fE.exit.i.i": ; preds = %bb.u, %bb.t, %bb.s
  %storemerge.i.i.i = phi i8 [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ]
  store i8 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !69415, !noalias !69416
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit"

bb.v:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !69359, !noalias !69358, !noundef !15
  %i.ca = add i8 %i.bz, -1                        ; 2 uses
  store i8 %i.ca, ptr %i.by, align 1, !alias.scope !69359, !noalias !69358
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.ar, label %bb.w, !prof !122

bb.w:                                             ; preds = %bb.v, %bb.e
  %i.cc = add i64 %i.u, 1                         ; 3 uses
  store i64 %i.cc, ptr %i.o, align 8, !alias.scope !69417, !noalias !69358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69429)
  %i.cd = icmp ult i64 %i.cc, %i.q
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %bb.x
  %i.ce = phi i64 [ %i.ch, %bb.x ], [ %i.cc, %bb.w ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !69432, !noundef !15
  switch i8 %i.cg, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.ah
  ], !prof !2771

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ch = add i64 %i.ce, 1                        ; 3 uses
  store i64 %i.ch, ptr %i.o, align 8, !alias.scope !69440, !noalias !69443
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ch, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !69444
  store i64 3, ptr %i.e, align 8, !noalias !69444
  %i.ci = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !69445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69444
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !69444
  store i64 17, ptr %i.f, align 8, !noalias !69444
  %i.cj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !69445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !69444
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69455)
  %i.ck = add i64 %i.ce, 1
  store i64 %i.ck, ptr %i.o, align 8, !alias.scope !69458, !noalias !69461
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cl, align 8, !alias.scope !69466, !noalias !69461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !69467
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !69461
  %i.cm = load i64, ptr %i.d, align 8, !range !1177, !noalias !69467, !noundef !15 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !69467 ; 9 uses
  br i1 %i.cn, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i, align 8, !noalias !69467 ; 3 uses
  %i.cq = trunc nuw i64 %i.cm to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  br i1 %i.cq, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i, label %.sink.split.i.i.i.i.i [
end_hunk_13
begin_hunk_14_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd5ef64bec6bbe2a2E":bb.a
  %i.dt = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1010.0.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !69445
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac
  %cond.i.i.i = phi i1 [ false, %bb.ag ], [ false, %bb.ad ], [ true, %bb.ac ], [ true, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !69467
  call void @llvm.experimental.noalias.scope.decl(metadata !69468)
  call void @llvm.experimental.noalias.scope.decl(metadata !69471)
  %i.du = load i64, ptr %i.p, align 8, !alias.scope !69474, !noalias !69477, !noundef !15 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !69480, !noalias !69481 ; 2 uses
  %i.dv = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.du
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.aj
  %i.dw = load ptr, ptr %i.s, align 8, !alias.scope !69474, !noalias !69477, !nonnull !15, !align !533, !noundef !15
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i.i
  %i.dx = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ea, %bb.al ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69482)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !noalias !69483, !noundef !15
  switch i8 %i.dz, label %bb.am [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 58, label %_ZN10serde_core2de10EnumAccess7variant17h8dd2c403b43e4b81E.exit.i.i.i
  ], !prof !1195

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.ea = add i64 %i.dx, 1                        ; 3 uses
  store i64 %i.ea, ptr %i.o, align 8, !alias.scope !69484, !noalias !69481
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ea, %i.du
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.ak

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.al, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69487
  store i64 3, ptr %i.b, align 8, !noalias !69487
  %i.eb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !69445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69487
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69487
  store i64 6, ptr %i.c, align 8, !noalias !69487
  %i.ec = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !69445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69487
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"

_ZN10serde_core2de10EnumAccess7variant17h8dd2c403b43e4b81E.exit.i.i.i: ; preds = %bb.ak
  %i.ed = add i64 %i.dx, 1
  store i64 %i.ed, ptr %i.o, align 8, !alias.scope !69488, !noalias !69445
  %i.ee = call fastcc noundef align 8 ptr @"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h11facb99f44531c1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !69491 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null           ; 2 uses
  br i1 %cond.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10serde_core2de10EnumAccess7variant17h8dd2c403b43e4b81E.exit.i.i.i
  br i1 %.not.i.i.i, label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i", label %bb.aq

bb.ao:                                            ; preds = %_ZN10serde_core2de10EnumAccess7variant17h8dd2c403b43e4b81E.exit.i.i.i
  br i1 %.not.i.i.i, label %bb.ap, label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"

bb.ap:                                            ; preds = %bb.ao
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"

bb.aq:                                            ; preds = %bb.an
  br label %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"

"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i": ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %.loopexit.i.i.i.i.i.i, %bb.ai, %bb.ah, %bb.y, %.loopexit.i.i.i.i.i
  %.sroa.78.0.i.i = phi ptr [ %i.ee, %bb.aq ], [ %i.ee, %bb.ao ], [ %i.ci, %.loopexit.i.i.i.i.i ], [ %i.cj, %bb.y ], [ %i.ec, %bb.am ], [ %i.eb, %.loopexit.i.i.i.i.i.i ], [ %i.dr, %bb.ah ], [ %i.dt, %bb.ai ], [ undef, %bb.an ], [ undef, %bb.ap ] ; 2 uses
  %.sroa.5.0.i.i = phi i8 [ undef, %bb.aq ], [ undef, %bb.ao ], [ undef, %.loopexit.i.i.i.i.i ], [ undef, %bb.y ], [ undef, %bb.am ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %bb.ah ], [ undef, %bb.ai ], [ 1, %bb.an ], [ 0, %bb.ap ] ; 3 uses
  %.sink37.i.i.i = phi i1 [ true, %bb.aq ], [ true, %bb.ao ], [ true, %.loopexit.i.i.i.i.i ], [ true, %bb.y ], [ true, %bb.am ], [ true, %.loopexit.i.i.i.i.i.i ], [ true, %bb.ah ], [ true, %bb.ai ], [ false, %bb.an ], [ false, %bb.ap ] ; 2 uses
  %i.ef = load i8, ptr %i.ac, align 8, !range !447, !alias.scope !69359, !noalias !69358, !noundef !15
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !69357
  store i64 24, ptr %i.n, align 8, !noalias !69357
  %i.eh = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !69358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !69357
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !alias.scope !69358, !noalias !69359
  store i8 1, ptr %0, align 8, !alias.scope !69358, !noalias !69359
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit"

bb.as:                                            ; preds = %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !69359, !noalias !69358, !noundef !15
  %i.el = add i8 %i.ek, 1
  store i8 %i.el, ptr %i.ej, align 1, !alias.scope !69359, !noalias !69358
  br i1 %.sink37.i.i.i, label %bb.au, label %bb.av

bb.at:                                            ; preds = %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h088d9080a5f97ae3E.exit.i.i"
  br i1 %.sink37.i.i.i, label %bb.ay, label %bb.av

bb.au:                                            ; preds = %bb.as
  store i8 1, ptr %0, align 8, !alias.scope !69358, !noalias !69359
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !69358, !noalias !69359
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.78.0.i.i, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !alias.scope !69358, !noalias !69359
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit"

bb.av:                                            ; preds = %bb.at, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !69492)
  %i.em = load i64, ptr %i.p, align 8, !alias.scope !69495, !noalias !69498, !noundef !15 ; 2 uses
  %.promoted.i17.i.i = load i64, ptr %i.o, align 8, !alias.scope !69501, !noalias !69502 ; 2 uses
  %i.en = icmp ult i64 %.promoted.i17.i.i, %i.em
  br i1 %i.en, label %.lr.ph.i22.i.i, label %.loopexit.i.i

.lr.ph.i22.i.i:                                   ; preds = %bb.av
  %i.eo = load ptr, ptr %i.s, align 8, !alias.scope !69495, !noalias !69498, !nonnull !15, !align !533, !noundef !15
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.i22.i.i
  %i.ep = phi i64 [ %.promoted.i17.i.i, %.lr.ph.i22.i.i ], [ %i.es, %bb.ax ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69503)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !noalias !69504, !noundef !15
  switch i8 %i.er, label %bb.ba [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 125, label %bb.az
  ], !prof !1195

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.es = add i64 %i.ep, 1                        ; 3 uses
  store i64 %i.es, ptr %i.o, align 8, !alias.scope !69505, !noalias !69502
  %exitcond.not.i23.i.i = icmp eq i64 %i.es, %i.em
  br i1 %exitcond.not.i23.i.i, label %.loopexit.i.i, label %bb.aw

bb.ay:                                            ; preds = %bb.at
  store i8 1, ptr %0, align 8, !alias.scope !69358, !noalias !69359
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 1, !alias.scope !69358, !noalias !69359
  %.sroa.78.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.78.0.i.i, ptr %.sroa.78.0..sroa_idx9.i.i, align 8, !alias.scope !69358, !noalias !69359
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit"

.loopexit.i.i:                                    ; preds = %bb.ax, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !69357
  store i64 3, ptr %i.l, align 8, !noalias !69357
  %i.et = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !69358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !69357
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.et, ptr %i.eu, align 8, !alias.scope !69358, !noalias !69359
  store i8 1, ptr %0, align 8, !alias.scope !69358, !noalias !69359
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit"

bb.az:                                            ; preds = %bb.aw
  %i.ev = add i64 %i.ep, 1
  store i64 %i.ev, ptr %i.o, align 8, !alias.scope !69508, !noalias !69358
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i.i, ptr %i.ew, align 1, !alias.scope !69358, !noalias !69359
  store i8 0, ptr %0, align 8, !alias.scope !69358, !noalias !69359
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit"

bb.ba:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !69357
  store i64 10, ptr %i.m, align 8, !noalias !69357
  %i.ex = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !69358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !69357
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ex, ptr %i.ey, align 8, !alias.scope !69358, !noalias !69359
  store i8 1, ptr %0, align 8, !alias.scope !69358, !noalias !69359
  br label %"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit"

"_ZN5milli6update15index_documents1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$11deserialize17h003009f121af9e9fE.exit": ; preds = %.loopexit20.i.i, %bb.d, %"_ZN212_$LT$milli..update..index_documents.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..index_documents..IndexDocumentsMethod$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7656bbbb90af466fE.exit.i.i", %bb.ar, %bb.au, %bb.ay, %.loopexit.i.i, %bb.az, %bb.ba
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdbd20c1604cfe07fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69519)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !69522, !noalias !69525, !noundef !15 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !69529, !noalias !69530 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !69522, !noalias !69525, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69531)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !69532, !noundef !15
  switch i8 %i.y, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.bb
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !69533, !noalias !69530
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69545)
  %i.aa = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.s
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !69548, !noalias !69551, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69557)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !69558, !noundef !15
  switch i8 %i.af, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !2674

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !69559, !noalias !69562
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.d

.loopexit20.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !69563
  store i64 5, ptr %i.l, align 8, !noalias !69563
  %i.ah = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !69564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !69563
  br label %bb.bi

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !69563
  store i64 10, ptr %i.m, align 8, !noalias !69563
  %i.ai = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !69564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !69563
  br label %bb.bi

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !447, !alias.scope !69565, !noalias !69564, !noundef !15
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.y, label %bb.x

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69587)
  %2 = icmp ult i64 %i.ad, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.am = phi i64 [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !69590, !noundef !15
  switch i8 %i.ao, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.j
  ], !prof !1195

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.q, align 8, !alias.scope !69602, !noalias !69605
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !69606
  store i64 5, ptr %i.k, align 8, !noalias !69606
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !69607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !69606
  br label %bb.u

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !69608, !noalias !69607
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !69611, !noalias !69607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !69606
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !69607
  %i.at = load i64, ptr %i.j, align 8, !range !1177, !noalias !69606, !noundef !15 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !69606 ; 12 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57), !noalias !69607
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !69606
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !69606 ; 4 uses
  %i.ay = trunc nuw i64 %i.at to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  br i1 %i.ay, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hdfca953914a24a56E.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i64 6, label %bb.o
    i64 11, label %bb.p
  ], !prof !935

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
  br i1 %i.bi, label %bb.w, label %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hdfca953914a24a56E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

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
  br i1 %i.br, label %bb.v, label %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hdfca953914a24a56E.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hdfca953914a24a56E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n
  %i.bs = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @602, i64 noundef 2), !noalias !69612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !69606
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h18f57733330006c3E.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 6, label %bb.r
    i64 11, label %bb.s
  ], !prof !935

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
  br i1 %i.cc, label %bb.w, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h18f57733330006c3E.exit.i.i.i.i.i.i.i.i.i.i.i.i

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
  br i1 %i.cl, label %bb.v, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h18f57733330006c3E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h18f57733330006c3E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.cm = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @602, i64 noundef 2), !noalias !69615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !69606
  br label %bb.t

bb.t:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h18f57733330006c3E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hdfca953914a24a56E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bs, %"_ZN213_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hdfca953914a24a56E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cm, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h18f57733330006c3E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.k ]
  %i.cn = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !69607
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.69.0.ph.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.t ], [ %i.aq, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aw, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.ph.i.i.i.i.i.i) ]
  br label %bb.bi

bb.v:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !69606
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h508a12766c214f9bE.exit.i"

bb.w:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !69606
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h508a12766c214f9bE.exit.i"

bb.x:                                             ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !69565, !noalias !69564, !noundef !15
  %i.cq = add i8 %i.cp, -1                        ; 2 uses
  store i8 %i.cq, ptr %i.co, align 1, !alias.scope !69565, !noalias !69564
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.at, label %bb.y, !prof !122

bb.y:                                             ; preds = %bb.x, %bb.g
  %i.cs = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.cs, ptr %i.q, align 8, !alias.scope !69620, !noalias !69564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69632)
  %i.ct = icmp ult i64 %i.cs, %i.s
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.y, %bb.z
  %i.cu = phi i64 [ %i.cx, %bb.z ], [ %i.cs, %bb.y ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !69635, !noundef !15
  switch i8 %i.cw, label %bb.aa [
    i8 32, label %bb.z
    i8 10, label %bb.z
    i8 9, label %bb.z
    i8 13, label %bb.z
    i8 34, label %bb.ab
    i8 125, label %bb.aj
  ], !prof !2771

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cx = add i64 %i.cu, 1                        ; 3 uses
  store i64 %i.cx, ptr %i.q, align 8, !alias.scope !69643, !noalias !69646
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cx, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !69647
  store i64 3, ptr %i.g, align 8, !noalias !69647
  %i.cy = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !69648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !69647
  br label %"_ZN208_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h8efd394c710340b3E.exit.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !69647
  store i64 17, ptr %i.h, align 8, !noalias !69647
  %i.cz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !69648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !69647
  br label %"_ZN208_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h8efd394c710340b3E.exit.i.i.i.i.i"

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69658)
  %i.da = add i64 %i.cu, 1
  store i64 %i.da, ptr %i.q, align 8, !alias.scope !69661, !noalias !69664
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.db, align 8, !alias.scope !69669, !noalias !69664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !69670
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !69664
  %i.dc = load i64, ptr %i.f, align 8, !range !1177, !noalias !69670, !noundef !15 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !69670 ; 11 uses
  br i1 %i.dd, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i.i.i.i, align 8, !noalias !69670 ; 3 uses
  %i.dg = trunc nuw i64 %i.dc to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  br i1 %i.dg, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
end_hunk_14
begin_hunk_15_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc87227c24ece100E":bb.a
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !70064, !noalias !70067
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.730.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !70064, !noalias !70067
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !70064, !noalias !70067
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !70064, !noalias !70067
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.730.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !70064, !noalias !70067
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !70064, !noalias !70067
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5e8981c7be8da031E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5e8981c7be8da031E.exit.i.i.i.i": ; preds = %bb.ch, %bb.cg
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.ch ], [ 0, %bb.cg ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.ch ], [ 0, %bb.cg ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !70064, !noalias !70067
  %i.nd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.nd, align 8, !alias.scope !70064, !noalias !70067
  %i.ne = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.ne, align 8, !alias.scope !70064, !noalias !70067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70069
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h7df026de81aad76dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !69766
  %i.nf = load ptr, ptr %i.b, align 8, !noalias !70069, !noundef !15 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.nf, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread44.i.i, label %.lr.ph.i.i.i.i25.i.i

.lr.ph.i.i.i.i25.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5e8981c7be8da031E.exit.i.i.i.i"
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.ci

bb.ci:                                            ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i25.i.i
  %i.ng = phi ptr [ %i.nf, %.lr.ph.i.i.i.i25.i.i ], [ %i.nl, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !70069
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70077)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !70080, !noalias !70081 ; 2 uses
  %i.nj = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nj, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nk, align 8, !alias.scope !70080, !noalias !70081, !nonnull !15, !noundef !15
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !70082
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i": ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70069
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h7df026de81aad76dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !69766
  %i.nl = load ptr, ptr %i.b, align 8, !noalias !70069, !noundef !15 ; 2 uses
  %.not.i.i.i.i26.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i26.i.i, label %.thread44.i.i, label %bb.ci

.thread44.i.i:                                    ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5e8981c7be8da031E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !70059
  br label %.thread41.i.i

bb.ck:                                            ; preds = %bb.cc
  %i.nm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !69766
  unreachable

bb.cl:                                            ; preds = %bb.cf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70086)
  %i.nn = load i64, ptr %i.na, align 8, !range !1131, !alias.scope !70089, !noalias !70090, !noundef !15
  switch i64 %i.nn, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" [
    i64 0, label %bb.cm
    i64 1, label %bb.cn
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.no = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.no, align 8, !alias.scope !70089, !noalias !70090, !noundef !15 ; 2 uses
  %i.np = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.np, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.cm
  %i.nq = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.nq, align 8, !alias.scope !70089, !noalias !70090, !nonnull !15, !noundef !15
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !70093
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i"

bb.cn:                                            ; preds = %bb.cl
  %i.nr = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.nr)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" unwind label %bb.co, !noalias !70090

bb.co:                                            ; preds = %bb.cn
  %i.ns = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.na, i64 noundef 40, i64 noundef 8) #45, !noalias !70090
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i": ; preds = %bb.cn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.cm, %bb.cl
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.na, i64 noundef 40, i64 noundef 8) #45, !noalias !70090
  br label %.thread41.i.i

.thread41.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", %.thread44.i.i, %bb.cf, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.na, %.thread44.i.i ], [ %i.ah, %bb.e ], [ %.sroa.730.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" ], [ %.sroa.730.0.i.i, %bb.cf ]
  %i.nt = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.8.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !69766
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nt, ptr %i.nu, align 8, !alias.scope !69766, !noalias !69767
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h2b92fd97611e2197E.exit"

bb.cp:                                            ; preds = %bb.ce
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.730.0.i.i, ptr %i.nv, align 8, !alias.scope !69766, !noalias !69767
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.215.0..sroa_idx.i.i, align 8, !alias.scope !69766, !noalias !69767
  %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.11.0.copyload.i.i, ptr %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !69766, !noalias !69767
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h2b92fd97611e2197E.exit"

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h2b92fd97611e2197E.exit": ; preds = %.loopexit.i.i, %bb.bz, %.thread41.i.i, %bb.cp
  %storemerge.sink.i.i = phi i64 [ 1, %bb.bz ], [ 1, %.loopexit.i.i ], [ 0, %bb.cp ], [ 1, %.thread41.i.i ]
  store i64 %storemerge.sink.i.i, ptr %0, align 8, !alias.scope !69766, !noalias !69767
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hddd9bbd0bb43c969E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70102)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70104)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !70107, !noalias !70110, !noundef !15 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !70113, !noalias !70114 ; 2 uses
  %i.bk = icmp ult i64 %.promoted.i.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i.i, label %.loopexit37.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !70107, !noalias !70110, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.bn = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.bq, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70115)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !70116, !noundef !15
  switch i8 %i.bp, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !2674

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bq = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bq, ptr %i.bh, align 8, !alias.scope !70117, !noalias !70114
  %exitcond.not.i.i.i = icmp eq i64 %i.bq, %i.bj
  br i1 %exitcond.not.i.i.i, label %.loopexit37.i.i, label %bb.b

.loopexit37.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !70120
  store i64 5, ptr %i.bb, align 8, !noalias !70120
  %i.br = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bb), !noalias !70121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !70120
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !70121, !noalias !70122
  store i64 3, ptr %0, align 8, !alias.scope !70121, !noalias !70122
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h986d8ebc3e247441E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !70120
  store i64 10, ptr %i.bc, align 8, !noalias !70120
  %i.bt = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bc), !noalias !70121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !70120
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !alias.scope !70121, !noalias !70122
  store i64 3, ptr %0, align 8, !alias.scope !70121, !noalias !70122
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h986d8ebc3e247441E.exit"

bb.e:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 11 uses
  %i.bw = load i8, ptr %i.bv, align 8, !range !447, !alias.scope !70122, !noalias !70121, !noundef !15
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.z, label %bb.y

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70146)
  %2 = icmp ult i64 %i.bn, %i.bj
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.by = phi i64 [ %i.cb, %bb.g ], [ %i.bn, %bb.f ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !70149, !noundef !15
  switch i8 %i.ca, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !1195

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cb = add i64 %i.by, 1                        ; 3 uses
  store i64 %i.cb, ptr %i.bh, align 8, !alias.scope !70160, !noalias !70163
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cb, %i.bj
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !70164
  store i64 5, ptr %i.ba, align 8, !noalias !70164
  %i.cc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ba), !noalias !70165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !70164
  br label %bb.u

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cd = add i64 %i.by, 1
  store i64 %i.cd, ptr %i.bh, align 8, !alias.scope !70166, !noalias !70165
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ce, align 8, !alias.scope !70169, !noalias !70165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !70164
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !70165
  %i.cf = load i64, ptr %i.az, align 8, !range !1177, !noalias !70164, !noundef !15 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !70164 ; 14 uses
  br i1 %i.cg, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2651), !noalias !70165
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !70164
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !70164 ; 4 uses
  %i.ck = trunc nuw i64 %i.cf to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  br i1 %i.ck, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65dfc5f609398f43E.exit.i.i.i.i.i.i.i.i.i" [
    i64 21, label %bb.m
    i64 7, label %bb.n
    i64 8, label %bb.o
  ], !prof !8256

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
  br i1 %i.ct, label %bb.v, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65dfc5f609398f43E.exit.i.i.i.i.i.i.i.i.i"

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
  br i1 %i.dc, label %bb.w, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65dfc5f609398f43E.exit.i.i.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.l
  %i.dd = load i64, ptr %i.ci, align 1
  %i.de = icmp ne i64 %i.dd, 7234303221339941222
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.x, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65dfc5f609398f43E.exit.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65dfc5f609398f43E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.dh = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ci, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @395, i64 noundef 3), !noalias !70170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !70164
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h977e2d82b7b49192E.exit.i.i.i.i.i.i.i.i.i [
    i64 21, label %bb.q
    i64 7, label %bb.r
    i64 8, label %bb.s
  ], !prof !8256

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
  br i1 %i.dq, label %bb.v, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h977e2d82b7b49192E.exit.i.i.i.i.i.i.i.i.i

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
  br i1 %i.dz, label %bb.w, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h977e2d82b7b49192E.exit.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.p
  %i.ea = load i64, ptr %i.ci, align 1
  %i.eb = icmp ne i64 %i.ea, 7234303221339941222
  %i.ec = zext i1 %i.eb to i32
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.x, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h977e2d82b7b49192E.exit.i.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h977e2d82b7b49192E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.ee = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ci, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @395, i64 noundef 3), !noalias !70173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !70164
  br label %bb.t

bb.t:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h977e2d82b7b49192E.exit.i.i.i.i.i.i.i.i.i, %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65dfc5f609398f43E.exit.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1817.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h65dfc5f609398f43E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.ee, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h977e2d82b7b49192E.exit.i.i.i.i.i.i.i.i.i ], [ %i.cj, %bb.i ]
  %i.ef = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1817.0.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !70165
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.67.0.ph.i.i.i = phi ptr [ %i.ef, %bb.t ], [ %i.cc, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ci, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.ph.i.i.i) ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.67.0.ph.i.i.i, ptr %i.eg, align 8, !alias.scope !70178, !noalias !70179
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4c358e5159f64116E.exit.i.i"

bb.v:                                             ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !70164
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4c358e5159f64116E.exit.i.i"

bb.w:                                             ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !70164
  call void @llvm.experimental.noalias.scope.decl(metadata !70180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !70183
  store i8 13, ptr %i.ay, align 8, !noalias !70183
  %i.eh = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ay, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !70184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !70183
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !alias.scope !70184, !noalias !70179
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4c358e5159f64116E.exit.i.i"

bb.x:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !70164
  call void @llvm.experimental.noalias.scope.decl(metadata !70185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !70188
  store i8 13, ptr %i.ax, align 8, !noalias !70188
  %i.ej = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ax, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !70189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !70188
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ej, ptr %i.ek, align 8, !alias.scope !70189, !noalias !70179
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4c358e5159f64116E.exit.i.i"

"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4c358e5159f64116E.exit.i.i": ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.sink.i.i.i = phi i64 [ 3, %bb.w ], [ 3, %bb.x ], [ 0, %bb.v ], [ 3, %bb.u ]
  store i64 %.sink.i.i.i, ptr %0, align 8, !alias.scope !70178, !noalias !70179
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportState$GT$11deserialize17h986d8ebc3e247441E.exit"

bb.y:                                             ; preds = %bb.e
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !70122, !noalias !70121, !noundef !15
  %i.en = add i8 %i.em, -1                        ; 2 uses
  store i8 %i.en, ptr %i.el, align 1, !alias.scope !70122, !noalias !70121
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.ii, label %bb.z, !prof !122

bb.z:                                             ; preds = %bb.y, %bb.e
  %i.ep = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.bh, align 8, !alias.scope !70190, !noalias !70121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70202)
  %i.eq = icmp ult i64 %i.ep, %i.bj
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.z, %bb.aa
  %i.er = phi i64 [ %i.eu, %bb.aa ], [ %i.ep, %bb.z ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !noalias !70205, !noundef !15
  switch i8 %i.et, label %bb.ab [
    i8 32, label %bb.aa
    i8 10, label %bb.aa
    i8 9, label %bb.aa
    i8 13, label %bb.aa
    i8 34, label %bb.ac
    i8 125, label %bb.am
  ], !prof !2771

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.eu = add i64 %i.er, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.bh, align 8, !alias.scope !70213, !noalias !70216
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.eu, %i.bj
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_15
begin_hunk_16_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he593ce23ae50071bE":bb.a
  %.sroa.326.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.18.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.326.0..sroa_idx.i.i.i.i.i, i64 128, i1 false), !noalias !71268
  br label %.thread18.i.i.i.i.i

bb.fm:                                            ; preds = %bb.fj
  %i.on = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !noalias !71268, !nonnull !15, !align !569, !noundef !15 ; 2 uses
  %.not25.i.i.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not25.i.i.i.i.i, label %.thread18.i.i.i.i.i, label %bb.fo

bb.fn:                                            ; preds = %bb.fk
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$milli..update..chat..ChatSearchParams$GT$17h7c0f6fb38a619701E"(ptr noalias noundef align 8 dereferenceable(144) %i.ay), !noalias !71269
  br label %.thread18.i.i.i.i.i

.thread18.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit60.i.i.i.i.i", %bb.fn, %bb.fm, %bb.fl
  %.sroa.09.324.i.i.i.i.i = phi i64 [ 3, %bb.fm ], [ 3, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit60.i.i.i.i.i" ], [ %i.ol, %bb.fl ], [ 3, %bb.fn ]
  %.sroa.12.323.i.i.i.i.i = phi ptr [ %i.oo, %bb.fm ], [ %i.oo, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit60.i.i.i.i.i" ], [ %.sroa.225.0.copyload.i.i.i.i.i, %bb.fl ], [ %i.oi, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !71268
  br label %bb.cd

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.experimental.noalias.scope.decl(metadata !71797)
  call void @llvm.experimental.noalias.scope.decl(metadata !71800)
  %i.op = load i64, ptr %i.oi, align 8, !range !1131, !alias.scope !71803, !noalias !71804, !noundef !15
  switch i64 %i.op, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit60.i.i.i.i.i" [
    i64 0, label %bb.fp
    i64 1, label %bb.fq
  ]

bb.fp:                                            ; preds = %bb.fo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %.val1.i.i.i.i57.i.i.i.i.i = load i64, ptr %i.oq, align 8, !alias.scope !71803, !noalias !71804, !noundef !15 ; 2 uses
  %i.or = icmp eq i64 %.val1.i.i.i.i57.i.i.i.i.i, 0
  br i1 %i.or, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit60.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i58.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i58.i.i.i.i.i": ; preds = %bb.fp
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %.val.i.i.i.i59.i.i.i.i.i = load ptr, ptr %i.os, align 8, !alias.scope !71803, !noalias !71804, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i59.i.i.i.i.i, i64 noundef %.val1.i.i.i.i57.i.i.i.i.i, i64 noundef 1) #45, !noalias !71807
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit60.i.i.i.i.i"

bb.fq:                                            ; preds = %bb.fo
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ot)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit60.i.i.i.i.i" unwind label %bb.fr, !noalias !71804

bb.fr:                                            ; preds = %bb.fq
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oi, i64 noundef 40, i64 noundef 8) #45, !noalias !71804
  br label %common.resume.i.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit60.i.i.i.i.i": ; preds = %bb.fq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i58.i.i.i.i.i", %bb.fp, %bb.fo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oi, i64 noundef 40, i64 noundef 8) #45, !noalias !71804
  br label %.thread18.i.i.i.i.i

"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h1bbb0d68284efe7aE.exit.thread6.i.i.i": ; preds = %bb.cd, %bb.f
  %.sroa.12.5.i.i.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i.i, %bb.cd ], [ %i.bw, %bb.f ]
  %i.ov = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !71269
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  br label %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h1bbb0d68284efe7aE.exit.thread.i.i.i"

"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h1bbb0d68284efe7aE.exit.thread.i.i.i": ; preds = %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h1bbb0d68284efe7aE.exit.thread6.i.i.i", %bb.bp, %.loopexit.i.i.i.i.i
  %.sroa.8.15.i.i.i = phi ptr [ %i.ov, %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h1bbb0d68284efe7aE.exit.thread6.i.i.i" ], [ %i.bv, %.loopexit.i.i.i.i.i ], [ %.sink.i.i.i.i.i, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5132.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5119.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.i.i.i.i)
  br label %bb.fz

bb.fs:                                            ; preds = %bb.b
  %i.ow = add i64 %i.bk, 1                        ; 4 uses
  store i64 %i.ow, ptr %i.be, align 8, !alias.scope !71808, !noalias !71811
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71812)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ow, i64 %i.bg) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71815)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.ow, %i.bg
  br i1 %exitcond.not.i9.not.i.i, label %bb.ft, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.ft:                                            ; preds = %bb.fs
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !noalias !71818, !noundef !15
  %i.oz = add i64 %i.bk, 2                        ; 3 uses
  store i64 %i.oz, ptr %i.be, align 8, !alias.scope !71821, !noalias !71822
  %.not.i.i.i = icmp eq i8 %i.oy, 117
  br i1 %.not.i.i.i, label %bb.fu, label %bb.fy, !prof !2446

bb.fu:                                            ; preds = %bb.ft
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71823)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.oz, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !noalias !71825, !noundef !15
  %i.pc = add i64 %i.bk, 3                        ; 3 uses
  store i64 %i.pc, ptr %i.be, align 8, !alias.scope !71826, !noalias !71822
  %.not.i.1.i.i = icmp eq i8 %i.pb, 108
  br i1 %.not.i.1.i.i, label %bb.fw, label %bb.fy, !prof !2446

bb.fw:                                            ; preds = %bb.fv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71827)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.pc, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !noalias !71829, !noundef !15
  %i.pf = add i64 %i.bk, 4
  store i64 %i.pf, ptr %i.be, align 8, !alias.scope !71830, !noalias !71822
  %.not.i.2.i.i = icmp eq i8 %i.pe, 108
  br i1 %.not.i.2.i.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h877396075454c4f9E.exit.thread10.i", label %bb.fy, !prof !2446

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h877396075454c4f9E.exit.thread10.i": ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %bb.gb

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.fw, %bb.fu, %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71831
  store i64 5, ptr %i.c, align 8, !noalias !71831
  %i.pg = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !71832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71831
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fx, %bb.fv, %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !71831
  store i64 9, ptr %i.b, align 8, !noalias !71831
  %i.ph = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !71832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !71831
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h1bbb0d68284efe7aE.exit.thread.i.i.i"
  %.sroa.7.0.ph.i = phi ptr [ %i.ph, %bb.fy ], [ %i.pg, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %.sroa.8.15.i.i.i, %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h1bbb0d68284efe7aE.exit.thread.i.i.i" ]
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %i.pi, align 8, !alias.scope !71216, !noalias !71219
  store i64 5, ptr %0, align 8, !alias.scope !71216, !noalias !71219
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h6a33a8aa569be724E.exit"

bb.ga:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.18.i.i.i.i.i, i64 128, i1 false), !noalias !71833
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5132.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5119.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.i.i.i.i)
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h877396075454c4f9E.exit.thread10.i"
  %.sroa.5.sroa.0.0.i = phi ptr [ undef, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h877396075454c4f9E.exit.thread10.i" ], [ %.sroa.12.2.i.i.i.i.i, %bb.ga ]
  %.sroa.03.0.i = phi i64 [ 3, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h877396075454c4f9E.exit.thread10.i" ], [ %.sroa.09.2.i.i.i.i.i, %bb.ga ]
  store i64 %.sroa.03.0.i, ptr %0, align 8, !alias.scope !71216, !noalias !71219
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !alias.scope !71216, !noalias !71219
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.sroa.4.i, i64 128, i1 false), !noalias !71219
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h6a33a8aa569be724E.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h6a33a8aa569be724E.exit": ; preds = %bb.fz, %bb.gb
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he83d65ed140ea13fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71844)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !71847, !noalias !71850, !noundef !15 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !71853, !noalias !71854 ; 2 uses
  %i.ag = icmp ult i64 %.promoted.i.i.i, %i.af
  br i1 %i.ag, label %.lr.ph.i.i.i, label %.loopexit21.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !71847, !noalias !71850, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aj = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.am, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71855)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !71856, !noundef !15
  switch i8 %i.al, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !2674

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.am = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !71857, !noalias !71854
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.af
  br i1 %exitcond.not.i.i.i, label %.loopexit21.i.i, label %bb.b

.loopexit21.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !71860
  store i64 5, ptr %i.y, align 8, !noalias !71860
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y), !noalias !71861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !71860
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !71861, !noalias !71862
  store i8 1, ptr %0, align 8, !alias.scope !71861, !noalias !71862
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !71860
  store i64 10, ptr %i.z, align 8, !noalias !71860
  %i.ap = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z), !noalias !71861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !71860
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !71861, !noalias !71862
  store i8 1, ptr %0, align 8, !alias.scope !71861, !noalias !71862
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit"

bb.e:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !447, !alias.scope !71862, !noalias !71861, !noundef !15
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.w, label %bb.v

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71886)
  %2 = icmp ult i64 %i.aj, %i.af
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.au = phi i64 [ %i.ax, %bb.g ], [ %i.aj, %bb.f ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !71889, !noundef !15
  switch i8 %i.aw, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !1195

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ax = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ax, ptr %i.ad, align 8, !alias.scope !71900, !noalias !71903
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !71904
  store i64 5, ptr %i.x, align 8, !noalias !71904
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !71905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !71904
  br label %bb.s

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.az = add i64 %i.au, 1
  store i64 %i.az, ptr %i.ad, align 8, !alias.scope !71906, !noalias !71905
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ba, align 8, !alias.scope !71909, !noalias !71905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !71904
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !71905
  %i.bb = load i64, ptr %i.w, align 8, !range !1177, !noalias !71904, !noundef !15 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !71904 ; 10 uses
  br i1 %i.bc, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bf = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2654), !noalias !71905
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !71904
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !71904 ; 4 uses
  %i.bg = trunc nuw i64 %i.bb to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  br i1 %i.bg, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h90bfeade9137e74eE.exit.i.i.i.i.i.i.i.i.i" [
    i64 7, label %bb.m
    i64 8, label %bb.n
  ], !prof !935

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
  br i1 %i.bp, label %bb.u, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h90bfeade9137e74eE.exit.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.bq = load i64, ptr %i.be, align 1
  %i.br = icmp ne i64 %i.bq, 7234303221339941222
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h90bfeade9137e74eE.exit.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h90bfeade9137e74eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.l
  %i.bu = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.be, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @393, i64 noundef 2), !noalias !71910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !71904
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0041270fa95aeb74E.exit.i.i.i.i.i.i.i.i.i [
    i64 7, label %bb.p
    i64 8, label %bb.q
  ], !prof !935

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
  br i1 %i.cd, label %bb.u, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0041270fa95aeb74E.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %i.be, align 1
  %i.cf = icmp ne i64 %i.ce, 7234303221339941222
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.t, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0041270fa95aeb74E.exit.i.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h0041270fa95aeb74E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.ci = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.be, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @393, i64 noundef 2), !noalias !71913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !71904
  br label %bb.r

bb.r:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0041270fa95aeb74E.exit.i.i.i.i.i.i.i.i.i, %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h90bfeade9137e74eE.exit.i.i.i.i.i.i.i.i.i", %bb.i
  %.sroa.1617.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %"_ZN214_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h90bfeade9137e74eE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.ci, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h0041270fa95aeb74E.exit.i.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.i ]
  %i.cj = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1617.0.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !71905
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.66.0.ph.i.i.i = phi ptr [ %i.cj, %bb.r ], [ %i.ay, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.be, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.66.0.ph.i.i.i) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.66.0.ph.i.i.i, ptr %i.ck, align 8, !alias.scope !71918, !noalias !71919
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hcab471ee0b576548E.exit.i.i"

bb.t:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !71904
  call void @llvm.experimental.noalias.scope.decl(metadata !71920)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !71923
  store i8 13, ptr %i.v, align 8, !noalias !71923
  %i.cl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.v, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !71924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !71923
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !alias.scope !71924, !noalias !71919
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hcab471ee0b576548E.exit.i.i"

bb.u:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !71904
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.cn, align 1, !alias.scope !71918, !noalias !71919
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hcab471ee0b576548E.exit.i.i"

"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hcab471ee0b576548E.exit.i.i": ; preds = %bb.u, %bb.t, %bb.s
  %.sink.i.i.i = phi i8 [ 1, %bb.t ], [ 0, %bb.u ], [ 1, %bb.s ]
  store i8 %.sink.i.i.i, ptr %0, align 8, !alias.scope !71918, !noalias !71919
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit"

bb.v:                                             ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !71862, !noalias !71861, !noundef !15
  %i.cq = add i8 %i.cp, -1                        ; 2 uses
  store i8 %i.cq, ptr %i.co, align 1, !alias.scope !71862, !noalias !71861
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.cr, label %bb.w, !prof !122

bb.w:                                             ; preds = %bb.v, %bb.e
  %i.cs = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.cs, ptr %i.ad, align 8, !alias.scope !71925, !noalias !71861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71937)
  %i.ct = icmp ult i64 %i.cs, %i.af
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %bb.x
  %i.cu = phi i64 [ %i.cx, %bb.x ], [ %i.cs, %bb.w ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !71940, !noundef !15
  switch i8 %i.cw, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.ah
  ], !prof !2771

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cx = add i64 %i.cu, 1                        ; 3 uses
  store i64 %i.cx, ptr %i.ad, align 8, !alias.scope !71948, !noalias !71951
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cx, %i.af
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !71952
  store i64 3, ptr %i.s, align 8, !noalias !71952
  %i.cy = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !71953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !71952
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1c346d0b4e164c2dE.exit.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !71952
  store i64 17, ptr %i.t, align 8, !noalias !71952
  %i.cz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !71953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !71952
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1c346d0b4e164c2dE.exit.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71963)
  %i.da = add i64 %i.cu, 1
  store i64 %i.da, ptr %i.ad, align 8, !alias.scope !71966, !noalias !71969
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.db, align 8, !alias.scope !71974, !noalias !71969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !71975
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !71969
  %i.dc = load i64, ptr %i.r, align 8, !range !1177, !noalias !71975, !noundef !15 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !71975 ; 9 uses
  br i1 %i.dd, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i12.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i11.i.i, align 8, !noalias !71975 ; 3 uses
  %i.dg = trunc nuw i64 %i.dc to i1
end_hunk_16
begin_hunk_17_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he83d65ed140ea13fE":bb.a

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.718.0.i.i.i.i.i) ]
  %.not56.i.i.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not56.i.i.i.i.i, label %.split.thread.i.i.i.i.i, label %bb.cm, !prof !5452

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !72156)
  call void @llvm.experimental.noalias.scope.decl(metadata !72159)
  %i.jl = load i64, ptr %i.ji, align 8, !range !1131, !alias.scope !72162, !noalias !72163, !noundef !15
  switch i64 %i.jl, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit32.i.i.i.i.i" [
    i64 0, label %bb.cn
    i64 1, label %bb.co
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %.val1.i.i.i.i29.i.i.i.i.i = load i64, ptr %i.jm, align 8, !alias.scope !72162, !noalias !72163, !noundef !15 ; 2 uses
  %i.jn = icmp eq i64 %.val1.i.i.i.i29.i.i.i.i.i, 0
  br i1 %i.jn, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit32.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i30.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i30.i.i.i.i.i": ; preds = %bb.cn
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %.val.i.i.i.i31.i.i.i.i.i = load ptr, ptr %i.jo, align 8, !alias.scope !72162, !noalias !72163, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i31.i.i.i.i.i, i64 noundef %.val1.i.i.i.i29.i.i.i.i.i, i64 noundef 1) #45, !noalias !72166
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit32.i.i.i.i.i"

bb.co:                                            ; preds = %bb.cm
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.jp)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit32.i.i.i.i.i" unwind label %bb.cp, !noalias !72163

bb.cp:                                            ; preds = %bb.co
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.sink.split.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit32.i.i.i.i.i": ; preds = %bb.co, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i30.i.i.i.i.i", %bb.cn, %bb.cm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ji, i64 noundef 40, i64 noundef 8) #45, !noalias !72163
  br label %.split.thread.i.i.i.i.i

.split.thread.i.i.i.i.i:                          ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit32.i.i.i.i.i", %bb.cl, %bb.ck, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i", %bb.bg, %bb.bf, %bb.ap
  %.sroa.146.3.i.i.i.i.i = phi ptr [ %.sroa.718.0.i.i.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit32.i.i.i.i.i" ], [ %i.fa, %bb.ap ], [ %i.gg, %bb.bf ], [ %.sroa.74.0.i.i.i.i.i, %bb.bg ], [ %.sroa.74.0.i.i.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i" ], [ %.sroa.718.0.i.i.i.i.i, %bb.cl ], [ %i.ji, %bb.ck ]
  %i.jr = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.146.3.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !72020
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1c346d0b4e164c2dE.exit.i.i"

bb.cq:                                            ; preds = %_ZN10serde_core2de10EnumAccess7variant17hd2ee0bb61cd59d3fE.exit.i.i.i
  %i.js = call fastcc noundef align 8 ptr @"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h11facb99f44531c1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !72167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i, label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1c346d0b4e164c2dE.exit.i.i", label %_ZN10serde_core2de10EnumAccess7variant17hd2ee0bb61cd59d3fE.exit.thread.i.i.i

_ZN10serde_core2de10EnumAccess7variant17hd2ee0bb61cd59d3fE.exit.thread.i.i.i: ; preds = %bb.cq
  br label %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1c346d0b4e164c2dE.exit.i.i"

"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1c346d0b4e164c2dE.exit.i.i": ; preds = %_ZN10serde_core2de10EnumAccess7variant17hd2ee0bb61cd59d3fE.exit.thread.i.i.i, %bb.cq, %.split.thread.i.i.i.i.i, %bb.ck, %bb.cf, %bb.bf, %bb.ba, %.loopexit.i.i7.i.i.i, %bb.am, %.loopexit.i.i.i.i.i.i, %bb.ai, %bb.ah, %bb.y, %.loopexit.i.i.i.i.i
  %.sroa.88.0.i.i = phi ptr [ undef, %bb.cq ], [ undef, %bb.bf ], [ %i.jr, %.split.thread.i.i.i.i.i ], [ %i.ez, %.loopexit.i.i7.i.i.i ], [ %i.gc, %bb.ba ], [ %i.je, %bb.cf ], [ undef, %bb.ck ], [ %i.cy, %.loopexit.i.i.i.i.i ], [ %i.cz, %bb.y ], [ %i.es, %bb.am ], [ %i.er, %.loopexit.i.i.i.i.i.i ], [ %i.eh, %bb.ah ], [ %i.ej, %bb.ai ], [ %i.js, %_ZN10serde_core2de10EnumAccess7variant17hd2ee0bb61cd59d3fE.exit.thread.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i = phi i8 [ 2, %bb.cq ], [ %.sroa.6.0.i.i.i.i.i, %bb.bf ], [ undef, %.split.thread.i.i.i.i.i ], [ undef, %.loopexit.i.i7.i.i.i ], [ undef, %bb.ba ], [ undef, %bb.cf ], [ %.sroa.616.0.i.i.i.i.i, %bb.ck ], [ undef, %.loopexit.i.i.i.i.i ], [ undef, %bb.y ], [ undef, %bb.am ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %bb.ah ], [ undef, %bb.ai ], [ undef, %_ZN10serde_core2de10EnumAccess7variant17hd2ee0bb61cd59d3fE.exit.thread.i.i.i ] ; 3 uses
  %storemerge.sink.i.i.sink.i.i.i = phi i1 [ false, %bb.cq ], [ false, %bb.bf ], [ true, %.split.thread.i.i.i.i.i ], [ true, %.loopexit.i.i7.i.i.i ], [ true, %bb.ba ], [ true, %bb.cf ], [ false, %bb.ck ], [ true, %.loopexit.i.i.i.i.i ], [ true, %bb.y ], [ true, %bb.am ], [ true, %.loopexit.i.i.i.i.i.i ], [ true, %bb.ah ], [ true, %bb.ai ], [ true, %_ZN10serde_core2de10EnumAccess7variant17hd2ee0bb61cd59d3fE.exit.thread.i.i.i ] ; 2 uses
  %i.jt = load i8, ptr %i.ar, align 8, !range !447, !alias.scope !71862, !noalias !71861, !noundef !15
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ct, label %bb.cs

bb.cr:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !71860
  store i64 24, ptr %i.ac, align 8, !noalias !71860
  %i.jv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac), !noalias !71861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !71860
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jv, ptr %i.jw, align 8, !alias.scope !71861, !noalias !71862
  store i8 1, ptr %0, align 8, !alias.scope !71861, !noalias !71862
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit"

bb.cs:                                            ; preds = %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1c346d0b4e164c2dE.exit.i.i"
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !71862, !noalias !71861, !noundef !15
  %i.jz = add i8 %i.jy, 1
  store i8 %i.jz, ptr %i.jx, align 1, !alias.scope !71862, !noalias !71861
  br i1 %storemerge.sink.i.i.sink.i.i.i, label %bb.cu, label %bb.cv

bb.ct:                                            ; preds = %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h1c346d0b4e164c2dE.exit.i.i"
  br i1 %storemerge.sink.i.i.sink.i.i.i, label %bb.cy, label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  store i8 1, ptr %0, align 8, !alias.scope !71861, !noalias !71862
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !71861, !noalias !71862
  %.sroa.88.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.88.0.i.i, ptr %.sroa.88.0..sroa_idx.i.i, align 8, !alias.scope !71861, !noalias !71862
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit"

bb.cv:                                            ; preds = %bb.ct, %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !72168)
  %i.ka = load i64, ptr %i.ae, align 8, !alias.scope !72171, !noalias !72174, !noundef !15 ; 2 uses
  %.promoted.i22.i.i = load i64, ptr %i.ad, align 8, !alias.scope !72177, !noalias !72178 ; 2 uses
  %i.kb = icmp ult i64 %.promoted.i22.i.i, %i.ka
  br i1 %i.kb, label %.lr.ph.i27.i.i, label %.loopexit.i.i

.lr.ph.i27.i.i:                                   ; preds = %bb.cv
  %i.kc = load ptr, ptr %i.ah, align 8, !alias.scope !72171, !noalias !72174, !nonnull !15, !align !533, !noundef !15
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cx, %.lr.ph.i27.i.i
  %i.kd = phi i64 [ %.promoted.i22.i.i, %.lr.ph.i27.i.i ], [ %i.kg, %bb.cx ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !72179)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !noalias !72180, !noundef !15
  switch i8 %i.kf, label %bb.da [
    i8 32, label %bb.cx
    i8 10, label %bb.cx
    i8 9, label %bb.cx
    i8 13, label %bb.cx
    i8 125, label %bb.cz
  ], !prof !1195

bb.cx:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.kg = add i64 %i.kd, 1                        ; 3 uses
  store i64 %i.kg, ptr %i.ad, align 8, !alias.scope !72181, !noalias !72178
  %exitcond.not.i28.i.i = icmp eq i64 %i.kg, %i.ka
  br i1 %exitcond.not.i28.i.i, label %.loopexit.i.i, label %bb.cw

bb.cy:                                            ; preds = %bb.ct
  store i8 1, ptr %0, align 8, !alias.scope !71861, !noalias !71862
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 1, !alias.scope !71861, !noalias !71862
  %.sroa.88.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.88.0.i.i, ptr %.sroa.88.0..sroa_idx9.i.i, align 8, !alias.scope !71861, !noalias !71862
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit"

.loopexit.i.i:                                    ; preds = %bb.cx, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !71860
  store i64 3, ptr %i.aa, align 8, !noalias !71860
  %i.kh = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa), !noalias !71861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !71860
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kh, ptr %i.ki, align 8, !alias.scope !71861, !noalias !71862
  store i8 1, ptr %0, align 8, !alias.scope !71861, !noalias !71862
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit"

bb.cz:                                            ; preds = %bb.cw
  %i.kj = add i64 %i.kd, 1
  store i64 %i.kj, ptr %i.ad, align 8, !alias.scope !72184, !noalias !71861
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i.i, ptr %i.kk, align 1, !alias.scope !71861, !noalias !71862
  store i8 0, ptr %0, align 8, !alias.scope !71861, !noalias !71862
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit"

bb.da:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !71860
  store i64 10, ptr %i.ab, align 8, !noalias !71860
  %i.kl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab), !noalias !71861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !71860
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kl, ptr %i.km, align 8, !alias.scope !71861, !noalias !71862
  store i8 1, ptr %0, align 8, !alias.scope !71861, !noalias !71862
  br label %"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit"

"_ZN17meilisearch_types5tasks7network1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$11deserialize17h12bb5909c67e4077E.exit": ; preds = %.loopexit21.i.i, %bb.d, %"_ZN209_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ExportState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hcab471ee0b576548E.exit.i.i", %bb.cr, %bb.cu, %bb.cy, %.loopexit.i.i, %bb.cz, %bb.da
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf045ce1cf6d232feE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(288) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !72197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72198)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !72201, !noalias !72204, !noundef !15 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !72207, !noalias !72208 ; 2 uses
  %i.ag = icmp ult i64 %.promoted.i.i.i, %i.af
  br i1 %i.ag, label %.lr.ph.i.i.i, label %.loopexit9.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !72201, !noalias !72204, !nonnull !15, !align !533, !noundef !15 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aj = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.am, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72209)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !72210, !noundef !15
  switch i8 %i.al, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !2674

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.am = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !72211, !noalias !72208
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.af
  br i1 %exitcond.not.i.i.i, label %.loopexit9.i.i, label %bb.b

.loopexit9.i.i:                                   ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !72214
  store i64 5, ptr %i.w, align 8, !noalias !72214
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w), !noalias !72215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !72214
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !72215, !noalias !72216
  store i64 -9223372036854775787, ptr %0, align 8, !alias.scope !72215, !noalias !72216
  br label %"_ZN17meilisearch_types5tasks1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$11deserialize17hace6e8dea5b4cee0E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !72214
  store i64 10, ptr %i.x, align 8, !noalias !72214
  %i.ap = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !72215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !72214
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !72215, !noalias !72216
  store i64 -9223372036854775787, ptr %0, align 8, !alias.scope !72215, !noalias !72216
  br label %"_ZN17meilisearch_types5tasks1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$11deserialize17hace6e8dea5b4cee0E.exit"

bb.e:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !447, !alias.scope !72216, !noalias !72215, !noundef !15
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ai, label %bb.ah

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72240)
  %2 = icmp ult i64 %i.aj, %i.af
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.au = phi i64 [ %i.ax, %bb.g ], [ %i.aj, %bb.f ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !72243, !noundef !15 ; 2 uses
  switch i8 %i.aw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ax = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ax, ptr %i.ad, align 8, !alias.scope !72254, !noalias !72257
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !72258
  %i.ay = icmp eq i8 %i.aw, 34
  br i1 %i.ay, label %bb.h, label %bb.i, !prof !16

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !72258
  store i64 5, ptr %i.v, align 8, !noalias !72258
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v), !noalias !72259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !72258
  br label %bb.m

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i"
  %i.ba = add i64 %i.au, 1
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !72260, !noalias !72259
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bb, align 8, !alias.scope !72263, !noalias !72259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !72258
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !72259
  %i.bc = load i64, ptr %i.t, align 8, !range !1177, !noalias !72258, !noundef !15
  %i.bd = icmp eq i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !72258 ; 3 uses
  br i1 %i.bd, label %bb.j, label %bb.k

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i"
  %i.bg = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2662), !noalias !72259
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !72258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !72258
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !72258
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  call fastcc void @"_ZN200_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbadf600d4f772cdfE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bf, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !72259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !72258
  %i.bh = load i8, ptr %i.u, align 8, !range !447, !noalias !72258, !noundef !15
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %._crit_edge.i.i.i.i, label %bb.n, !prof !122

._crit_edge.i.i.i.i:                              ; preds = %bb.k
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !72258
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.bj = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.bg, %bb.i ]
  %i.bk = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !72259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !72258
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i = phi ptr [ %i.az, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.l ], [ %i.bf, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.121.0.ph.i.i.i.i.i, ptr %i.bl, align 8, !alias.scope !72264, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.n:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !range !14455, !noalias !72258, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !72258
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
    i8 13, label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"
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
  call void @llvm.experimental.noalias.scope.decl(metadata !72266)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !72269
  store i8 13, ptr %i.s, align 8, !noalias !72269
  %i.bo = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !72269
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !alias.scope !72270, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !72274
  store i8 13, ptr %i.r, align 8, !noalias !72274
  %i.bq = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !72274
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !alias.scope !72275, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.q:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !72279
  store i8 13, ptr %i.q, align 8, !noalias !72279
  %i.bs = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !72279
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !alias.scope !72280, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.r:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !72284
  store i8 13, ptr %i.p, align 8, !noalias !72284
  %i.bu = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !72284
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !alias.scope !72285, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.s:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72286)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !72289
  store i8 13, ptr %i.o, align 8, !noalias !72289
  %i.bw = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !72289
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !72290, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.t:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !72294
  store i8 13, ptr %i.n, align 8, !noalias !72294
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !72294
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !alias.scope !72295, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.u:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72296)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !72299
  store i8 13, ptr %i.m, align 8, !noalias !72299
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !72299
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !alias.scope !72300, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.v:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !72304
  store i8 13, ptr %i.l, align 8, !noalias !72304
  %i.cc = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !72304
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !alias.scope !72305, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.w:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !72309
  store i8 13, ptr %i.k, align 8, !noalias !72309
  %i.ce = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !72309
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !alias.scope !72310, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.x:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72311)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !72314
  store i8 13, ptr %i.j, align 8, !noalias !72314
  %i.cg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !72314
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !72315, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.y:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72316)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !72319
  store i8 13, ptr %i.i, align 8, !noalias !72319
  %i.ci = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 @2611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !72320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !72319
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !72320, !noalias !72265
  br label %"_ZN195_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h30931c0a708d43caE.exit.i.i"

bb.z:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72321)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !72324
  store i8 13, ptr %i.h, align 8, !noalias !72324
end_hunk_17
begin_hunk_18_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf468aaf47029eb4eE":bb.a
  %i.mr = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  store ptr %i.mp, ptr %i.mr, align 8, !noalias !73141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !73141
  %i.ms = load i64, ptr %i.aw, align 8, !range !2512, !noalias !73141, !noundef !15 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 3
  br i1 %i.mt, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.not.i.i.i.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %.sroa.225.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.225.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.225.0..sroa_idx.i.i.i.i.i, align 8, !noalias !73141
  %.sroa.326.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.18.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.326.0..sroa_idx.i.i.i.i.i, i64 56, i1 false), !noalias !73141
  br label %.thread28.i.i.i.i.i

bb.ed:                                            ; preds = %bb.ea
  %i.mu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !noalias !73141, !nonnull !15, !align !569, !noundef !15 ; 2 uses
  %.not35.i.i.i.i.i = icmp eq ptr %i.mp, null
  br i1 %.not35.i.i.i.i.i, label %.thread28.i.i.i.i.i, label %bb.ef

bb.ee:                                            ; preds = %bb.eb
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..settings..TypoSettings$GT$17hcb85f0388904c70eE"(ptr noalias noundef align 8 dereferenceable(72) %i.aw), !noalias !73142
  br label %.thread28.i.i.i.i.i

.thread28.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit58.i.i.i.i.i", %bb.ee, %bb.ed, %bb.ec
  %.sroa.09.334.i.i.i.i.i = phi i64 [ 3, %bb.ed ], [ 3, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit58.i.i.i.i.i" ], [ %i.ms, %bb.ec ], [ 3, %bb.ee ]
  %.sroa.12.333.i.i.i.i.i = phi ptr [ %i.mv, %bb.ed ], [ %i.mv, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit58.i.i.i.i.i" ], [ %.sroa.225.0.copyload.i.i.i.i.i, %bb.ec ], [ %i.mp, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !73141
  br label %bb.bk

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.experimental.noalias.scope.decl(metadata !73599)
  call void @llvm.experimental.noalias.scope.decl(metadata !73602)
  %i.mw = load i64, ptr %i.mp, align 8, !range !1131, !alias.scope !73605, !noalias !73606, !noundef !15
  switch i64 %i.mw, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit58.i.i.i.i.i" [
    i64 0, label %bb.eg
    i64 1, label %bb.eh
  ]

bb.eg:                                            ; preds = %bb.ef
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %.val1.i.i.i.i55.i.i.i.i.i = load i64, ptr %i.mx, align 8, !alias.scope !73605, !noalias !73606, !noundef !15 ; 2 uses
  %i.my = icmp eq i64 %.val1.i.i.i.i55.i.i.i.i.i, 0
  br i1 %i.my, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit58.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i56.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i56.i.i.i.i.i": ; preds = %bb.eg
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %.val.i.i.i.i57.i.i.i.i.i = load ptr, ptr %i.mz, align 8, !alias.scope !73605, !noalias !73606, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i57.i.i.i.i.i, i64 noundef %.val1.i.i.i.i55.i.i.i.i.i, i64 noundef 1) #45, !noalias !73609
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit58.i.i.i.i.i"

bb.eh:                                            ; preds = %bb.ef
  %i.na = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.na)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit58.i.i.i.i.i" unwind label %bb.ei, !noalias !73606

bb.ei:                                            ; preds = %bb.eh
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mp, i64 noundef 40, i64 noundef 8) #45, !noalias !73606
  br label %common.resume.i.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit58.i.i.i.i.i": ; preds = %bb.eh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i56.i.i.i.i.i", %bb.eg, %bb.ef
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mp, i64 noundef 40, i64 noundef 8) #45, !noalias !73606
  br label %.thread28.i.i.i.i.i

"_ZN17meilisearch_types8settings1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$11deserialize17h6e7bf1a5e178c566E.exit.thread6.i.i.i": ; preds = %bb.bk, %bb.f
  %.sroa.12.5.i.i.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i.i, %bb.bk ], [ %i.bu, %bb.f ]
  %i.nc = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !73142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  br label %"_ZN17meilisearch_types8settings1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$11deserialize17h6e7bf1a5e178c566E.exit.thread.i.i.i"

"_ZN17meilisearch_types8settings1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$11deserialize17h6e7bf1a5e178c566E.exit.thread.i.i.i": ; preds = %"_ZN17meilisearch_types8settings1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$11deserialize17h6e7bf1a5e178c566E.exit.thread6.i.i.i", %bb.aw, %.loopexit.i.i.i.i.i
  %.sroa.8.15.i.i.i = phi ptr [ %i.nc, %"_ZN17meilisearch_types8settings1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$11deserialize17h6e7bf1a5e178c566E.exit.thread6.i.i.i" ], [ %i.bt, %.loopexit.i.i.i.i.i ], [ %.sink.i.i.i.i.i, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.580.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.574.i.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.sroa.0.i.sroa.5.i.i.i.i.i)
  br label %bb.eq

bb.ej:                                            ; preds = %bb.b
  %i.nd = add i64 %i.bi, 1                        ; 4 uses
  store i64 %i.nd, ptr %i.bc, align 8, !alias.scope !73610, !noalias !73613
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73614)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.nd, i64 %i.be) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73617)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.nd, %i.be
  br i1 %exitcond.not.i9.not.i.i, label %bb.ek, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.ek:                                            ; preds = %bb.ej
  %i.ne = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !noalias !73620, !noundef !15
  %i.ng = add i64 %i.bi, 2                        ; 3 uses
  store i64 %i.ng, ptr %i.bc, align 8, !alias.scope !73623, !noalias !73624
  %.not.i.i.i = icmp eq i8 %i.nf, 117
  br i1 %.not.i.i.i, label %bb.el, label %bb.ep, !prof !2446

bb.el:                                            ; preds = %bb.ek
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73625)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.ng, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !noalias !73627, !noundef !15
  %i.nj = add i64 %i.bi, 3                        ; 3 uses
  store i64 %i.nj, ptr %i.bc, align 8, !alias.scope !73628, !noalias !73624
  %.not.i.1.i.i = icmp eq i8 %i.ni, 108
  br i1 %.not.i.1.i.i, label %bb.en, label %bb.ep, !prof !2446

bb.en:                                            ; preds = %bb.em
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73629)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.nj, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !noalias !73631, !noundef !15
  %i.nm = add i64 %i.bi, 4
  store i64 %i.nm, ptr %i.bc, align 8, !alias.scope !73632, !noalias !73624
  %.not.i.2.i.i = icmp eq i8 %i.nl, 108
  br i1 %.not.i.2.i.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hd08303bb13084d1fE.exit.thread10.i", label %bb.ep, !prof !2446

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hd08303bb13084d1fE.exit.thread10.i": ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %bb.es

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.en, %bb.el, %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73633
  store i64 5, ptr %i.c, align 8, !noalias !73633
  %i.nn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !73634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73633
  br label %bb.eq

bb.ep:                                            ; preds = %bb.eo, %bb.em, %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73633
  store i64 9, ptr %i.b, align 8, !noalias !73633
  %i.no = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !73634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73633
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", %"_ZN17meilisearch_types8settings1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$11deserialize17h6e7bf1a5e178c566E.exit.thread.i.i.i"
  %.sroa.7.0.ph.i = phi ptr [ %i.no, %bb.ep ], [ %i.nn, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %.sroa.8.15.i.i.i, %"_ZN17meilisearch_types8settings1_99_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$11deserialize17h6e7bf1a5e178c566E.exit.thread.i.i.i" ]
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %i.np, align 8, !alias.scope !73089, !noalias !73092
  store i64 5, ptr %0, align 8, !alias.scope !73089, !noalias !73092
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h851eb17e7a93b1c8E.exit"

bb.er:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.18.i.i.i.i.i, i64 56, i1 false), !noalias !73635
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.580.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.574.i.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.sroa.0.i.sroa.5.i.i.i.i.i)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hd08303bb13084d1fE.exit.thread10.i"
  %.sroa.5.sroa.0.0.i = phi ptr [ undef, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hd08303bb13084d1fE.exit.thread10.i" ], [ %.sroa.12.2.i.i.i.i.i, %bb.er ]
  %.sroa.03.0.i = phi i64 [ 3, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hd08303bb13084d1fE.exit.thread10.i" ], [ %.sroa.09.2.i.i.i.i.i, %bb.er ]
  store i64 %.sroa.03.0.i, ptr %0, align 8, !alias.scope !73089, !noalias !73092
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !alias.scope !73089, !noalias !73092
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.4.i, i64 56, i1 false), !noalias !73092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i)
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h851eb17e7a93b1c8E.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h851eb17e7a93b1c8E.exit": ; preds = %bb.eq, %bb.es
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf8c7938d673ed379E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73644)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !73647, !noalias !73650, !noundef !15 ; 10 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !73654, !noalias !73655 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !73647, !noalias !73650, !nonnull !15, !align !533, !noundef !15 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73656)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !73657, !noundef !15
  switch i8 %i.y, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.bi
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !73658, !noalias !73655
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73670)
  %i.aa = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.s
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !73673, !noalias !73676, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73682)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !73683, !noundef !15
  switch i8 %i.af, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !2674

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !73684, !noalias !73687
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit20.i.i.i.i.i, label %bb.d

.loopexit20.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !73688
  store i64 5, ptr %i.l, align 8, !noalias !73688
  %i.ah = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !73689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !73688
  br label %bb.bp

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !73688
  store i64 10, ptr %i.m, align 8, !noalias !73688
  %i.ai = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !73689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !73688
  br label %bb.bp

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !447, !alias.scope !73690, !noalias !73689, !noundef !15
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.ab, label %bb.aa

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73712)
  %2 = icmp ult i64 %i.ad, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %bb.i
  %i.am = phi i64 [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !73715, !noundef !15
  switch i8 %i.ao, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.j
  ], !prof !1195

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.q, align 8, !alias.scope !73727, !noalias !73730
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !73731
  store i64 5, ptr %i.k, align 8, !noalias !73731
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !73732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !73731
  br label %bb.w

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !73733, !noalias !73732
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !73736, !noalias !73732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !73731
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !73732
  %i.at = load i64, ptr %i.j, align 8, !range !1177, !noalias !73731, !noundef !15 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !73731 ; 14 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65), !noalias !73732
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73731
  br label %bb.w

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !73731 ; 4 uses
  %i.ay = trunc nuw i64 %i.at to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  br i1 %i.ay, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h808abf894890605fE.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i64 4, label %bb.o
    i64 3, label %bb.p
    i64 9, label %bb.q
  ], !prof !8256

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr %i.aw, align 1
  %i.ba = icmp ne i32 %i.az, 1953718636
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.x, label %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h808abf894890605fE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

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
  br i1 %i.bm, label %bb.y, label %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h808abf894890605fE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

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
  br i1 %i.bw, label %bb.z, label %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h808abf894890605fE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h808abf894890605fE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bx = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @226, i64 noundef 3), !noalias !73737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73731
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8973b4ff2f0a38edE.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 4, label %bb.s
    i64 3, label %bb.t
    i64 9, label %bb.u
  ], !prof !8256

bb.s:                                             ; preds = %bb.r
  %i.by = load i32, ptr %i.aw, align 1
  %i.bz = icmp ne i32 %i.by, 1953718636
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8973b4ff2f0a38edE.exit.i.i.i.i.i.i.i.i.i.i.i.i

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
  br i1 %i.cl, label %bb.y, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8973b4ff2f0a38edE.exit.i.i.i.i.i.i.i.i.i.i.i.i

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
  br i1 %i.cv, label %bb.z, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8973b4ff2f0a38edE.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !16

_ZN10serde_core2de7Visitor18visit_borrowed_str17h8973b4ff2f0a38edE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.cw = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h5402ca461ccccd4cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @226, i64 noundef 3), !noalias !73740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73731
  br label %bb.v

bb.v:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8973b4ff2f0a38edE.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h808abf894890605fE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  %.sroa.1817.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h808abf894890605fE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cw, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8973b4ff2f0a38edE.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.k ]
  %i.cx = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.1817.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !73732
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.l, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.612.0.ph.i.i.i.i.i.i = phi ptr [ %i.cx, %bb.v ], [ %i.aq, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aw, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.612.0.ph.i.i.i.i.i.i) ]
  br label %bb.bp

bb.x:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73731
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb18e9283af78047dE.exit.i"

bb.y:                                             ; preds = %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73731
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb18e9283af78047dE.exit.i"

bb.z:                                             ; preds = %bb.u, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73731
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb18e9283af78047dE.exit.i"

bb.aa:                                            ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !73690, !noalias !73689, !noundef !15
  %i.da = add i8 %i.cz, -1                        ; 2 uses
  store i8 %i.da, ptr %i.cy, align 1, !alias.scope !73690, !noalias !73689
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.ba, label %bb.ab, !prof !122

bb.ab:                                            ; preds = %bb.aa, %bb.g
  %i.dc = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.dc, ptr %i.q, align 8, !alias.scope !73745, !noalias !73689
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73757)
  %i.dd = icmp ult i64 %i.dc, %i.s
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ab, %bb.ac
  %i.de = phi i64 [ %i.dh, %bb.ac ], [ %i.dc, %bb.ab ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !73760, !noundef !15
  switch i8 %i.dg, label %bb.ad [
    i8 32, label %bb.ac
    i8 10, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
    i8 34, label %bb.ae
    i8 125, label %bb.ao
  ], !prof !2771

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.dh = add i64 %i.de, 1                        ; 3 uses
  store i64 %i.dh, ptr %i.q, align 8, !alias.scope !73768, !noalias !73771
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dh, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !73772
  store i64 3, ptr %i.g, align 8, !noalias !73772
  %i.di = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !73773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !73772
  br label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !73772
  store i64 17, ptr %i.h, align 8, !noalias !73772
  %i.dj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !73773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !73772
  br label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73777)
end_hunk_18
begin_hunk_19_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf8c7938d673ed379E":bb.a
    i8 1, label %bb.av
  ]

default.unreachable:                              ; preds = %_ZN10serde_core2de10EnumAccess7variant17hdc2e1faab08e3bffE.exit.i.i.i.i.i.i
  unreachable

bb.au:                                            ; preds = %_ZN10serde_core2de10EnumAccess7variant17hdc2e1faab08e3bffE.exit.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.ax, label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"

bb.av:                                            ; preds = %_ZN10serde_core2de10EnumAccess7variant17hdc2e1faab08e3bffE.exit.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.ay, label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"

bb.aw:                                            ; preds = %_ZN10serde_core2de10EnumAccess7variant17hdc2e1faab08e3bffE.exit.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.az, label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"

bb.ax:                                            ; preds = %bb.au
  br label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"

bb.ay:                                            ; preds = %bb.av
  br label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"

bb.az:                                            ; preds = %bb.aw
  br label %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"

"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i": ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %.loopexit.i.i.i.i.i.i.i.i.i, %bb.ap, %bb.ao, %bb.ad, %.loopexit.i.i.i.i.i.i.i.i
  %.sroa.99.0.i.i.i.i.i = phi ptr [ %i.ga, %bb.au ], [ undef, %bb.az ], [ %i.ga, %bb.av ], [ undef, %bb.ax ], [ %i.di, %.loopexit.i.i.i.i.i.i.i.i ], [ undef, %bb.ay ], [ %i.dj, %bb.ad ], [ %i.fy, %bb.at ], [ %i.fx, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.fn, %bb.ao ], [ %i.fp, %bb.ap ], [ %i.ga, %bb.aw ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i = phi i8 [ undef, %bb.au ], [ 2, %bb.az ], [ undef, %bb.av ], [ 0, %bb.ax ], [ undef, %.loopexit.i.i.i.i.i.i.i.i ], [ 1, %bb.ay ], [ undef, %bb.ad ], [ undef, %bb.at ], [ undef, %.loopexit.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ao ], [ undef, %bb.ap ], [ undef, %bb.aw ]
  %.sink.i11.i.i.i.i.i = phi i1 [ true, %bb.au ], [ false, %bb.az ], [ true, %bb.av ], [ false, %bb.ax ], [ true, %.loopexit.i.i.i.i.i.i.i.i ], [ false, %bb.ay ], [ true, %bb.ad ], [ true, %bb.at ], [ true, %.loopexit.i.i.i.i.i.i.i.i.i ], [ true, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aw ] ; 2 uses
  %i.gb = load i8, ptr %i.aj, align 8, !range !447, !alias.scope !73690, !noalias !73689, !noundef !15
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !73688
  store i64 24, ptr %i.p, align 8, !noalias !73688
  %i.gd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !73689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !73688
  br label %bb.bp

bb.bb:                                            ; preds = %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !73690, !noalias !73689, !noundef !15
  %i.gg = add i8 %i.gf, 1
  store i8 %i.gg, ptr %i.ge, align 1, !alias.scope !73690, !noalias !73689
  br i1 %.sink.i11.i.i.i.i.i, label %bb.bp, label %bb.bd

bb.bc:                                            ; preds = %"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h5ecf3722f3d2a5c8E.exit.i.i.i.i.i"
  br i1 %.sink.i11.i.i.i.i.i, label %bb.bp, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !73820)
  %i.gh = load i64, ptr %i.r, align 8, !alias.scope !73823, !noalias !73826, !noundef !15 ; 2 uses
  %.promoted.i20.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !73829, !noalias !73830 ; 2 uses
  %i.gi = icmp ult i64 %.promoted.i20.i.i.i.i.i, %i.gh
  br i1 %i.gi, label %.lr.ph.i25.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i25.i.i.i.i.i:                             ; preds = %bb.bd
  %i.gj = load ptr, ptr %i.ab, align 8, !alias.scope !73823, !noalias !73826, !nonnull !15, !align !533, !noundef !15
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i25.i.i.i.i.i
  %i.gk = phi i64 [ %.promoted.i20.i.i.i.i.i, %.lr.ph.i25.i.i.i.i.i ], [ %i.gn, %bb.bf ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73831)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !73832, !noundef !15
  switch i8 %i.gm, label %bb.bh [
    i8 32, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 125, label %bb.bg
  ], !prof !1195

bb.bf:                                            ; preds = %bb.be, %bb.be, %bb.be, %bb.be
  %i.gn = add i64 %i.gk, 1                        ; 3 uses
  store i64 %i.gn, ptr %i.q, align 8, !alias.scope !73833, !noalias !73830
  %exitcond.not.i26.i.i.i.i.i = icmp eq i64 %i.gn, %i.gh
  br i1 %exitcond.not.i26.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.be

.loopexit.i.i.i.i.i:                              ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !73688
  store i64 3, ptr %i.n, align 8, !noalias !73688
  %i.go = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !73689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !73688
  br label %bb.bp

bb.bg:                                            ; preds = %bb.be
  %i.gp = add i64 %i.gk, 1
  store i64 %i.gp, ptr %i.q, align 8, !alias.scope !73836, !noalias !73689
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb18e9283af78047dE.exit.i"

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !73688
  store i64 10, ptr %i.o, align 8, !noalias !73688
  %i.gq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !73689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !73688
  br label %bb.bp

bb.bi:                                            ; preds = %bb.b
  %i.gr = add i64 %i.w, 1                         ; 4 uses
  store i64 %i.gr, ptr %i.q, align 8, !alias.scope !73839, !noalias !73842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73843)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gr, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73846)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.gr, %i.s
  br i1 %exitcond.not.i9.not.i.i, label %bb.bj, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.bj:                                            ; preds = %bb.bi
  %i.gs = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !noalias !73849, !noundef !15
  %i.gu = add i64 %i.w, 2                         ; 3 uses
  store i64 %i.gu, ptr %i.q, align 8, !alias.scope !73852, !noalias !73853
  %.not.i.i.i = icmp eq i8 %i.gt, 117
  br i1 %.not.i.i.i, label %bb.bk, label %bb.bo, !prof !2446

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73854)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.gu, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !noalias !73856, !noundef !15
  %i.gx = add i64 %i.w, 3                         ; 3 uses
  store i64 %i.gx, ptr %i.q, align 8, !alias.scope !73857, !noalias !73853
  %.not.i.1.i.i = icmp eq i8 %i.gw, 108
  br i1 %.not.i.1.i.i, label %bb.bm, label %bb.bo, !prof !2446

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73858)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.gx, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gy = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !noalias !73860, !noundef !15
  %i.ha = add i64 %i.w, 4
  store i64 %i.ha, ptr %i.q, align 8, !alias.scope !73861, !noalias !73853
  %.not.i.2.i.i = icmp eq i8 %i.gz, 108
  br i1 %.not.i.2.i.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb18e9283af78047dE.exit.i", label %bb.bo, !prof !2446

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.bm, %bb.bk, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73862
  store i64 5, ptr %i.c, align 8, !noalias !73862
  %i.hb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !73863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73862
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bl, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73862
  store i64 9, ptr %i.b, align 8, !noalias !73862
  %i.hc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !73863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73862
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", %bb.bh, %.loopexit.i.i.i.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.w, %bb.f, %.loopexit20.i.i.i.i.i
  %.sroa.73.0.ph.i = phi ptr [ %i.hc, %bb.bo ], [ %i.hb, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %i.ah, %.loopexit20.i.i.i.i.i ], [ %.sroa.99.0.i.i.i.i.i, %bb.bb ], [ %i.gq, %bb.bh ], [ %i.go, %.loopexit.i.i.i.i.i ], [ %i.gd, %bb.ba ], [ %.sroa.612.0.ph.i.i.i.i.i.i, %bb.w ], [ %.sroa.99.0.i.i.i.i.i, %bb.bc ], [ %i.ai, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.73.0.ph.i) ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.73.0.ph.i, ptr %i.hd, align 8, !alias.scope !73636, !noalias !73639
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h67b69c137bcabc29E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb18e9283af78047dE.exit.i": ; preds = %bb.bn, %bb.bg, %bb.z, %bb.y, %bb.x
  %.sroa.4.0.i = phi i8 [ 0, %bb.x ], [ %.sroa.5.0.i.i.i.i.i, %bb.bg ], [ 3, %bb.bn ], [ 2, %bb.z ], [ 1, %bb.y ]
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.i, ptr %i.he, align 1, !alias.scope !73636, !noalias !73639
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h67b69c137bcabc29E.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h67b69c137bcabc29E.exit": ; preds = %bb.bp, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb18e9283af78047dE.exit.i"
  %storemerge.i = phi i8 [ 0, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb18e9283af78047dE.exit.i" ], [ 1, %bb.bp ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !73636, !noalias !73639
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf9868ff6e1730e42E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73874)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !73877, !noalias !73880, !noundef !15 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !73883, !noalias !73884 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit19.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !73877, !noalias !73880, !nonnull !15, !align !533, !noundef !15 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73885)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !73886, !noundef !15
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %bb.f
  ], !prof !2674

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !73887, !noalias !73884
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit19.i.i, label %bb.b

.loopexit19.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !73890
  store i64 5, ptr %i.l, align 8, !noalias !73890
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !73891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !73890
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !73891, !noalias !73892
  store i8 1, ptr %0, align 8, !alias.scope !73891, !noalias !73892
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17hd5b11b388641e024E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !73890
  store i64 10, ptr %i.m, align 8, !noalias !73890
  %i.ac = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !73891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !73890
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !73891, !noalias !73892
  store i8 1, ptr %0, align 8, !alias.scope !73891, !noalias !73892
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17hd5b11b388641e024E.exit"

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !447, !alias.scope !73892, !noalias !73891, !noundef !15
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.v, label %bb.u

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73916)
  %2 = icmp ult i64 %i.w, %i.s
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %i.ah = phi i64 [ %i.ak, %bb.g ], [ %i.w, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !73919, !noundef !15 ; 2 uses
  switch i8 %i.aj, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.q, align 8, !alias.scope !73930, !noalias !73933
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !73934
  %i.al = icmp eq i8 %i.aj, 34
  br i1 %i.al, label %bb.h, label %bb.i, !prof !16

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !73934
  store i64 5, ptr %i.k, align 8, !noalias !73934
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !73935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !73934
  br label %bb.m

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i"
  %i.an = add i64 %i.ah, 1
  store i64 %i.an, ptr %i.q, align 8, !alias.scope !73936, !noalias !73935
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ao, align 8, !alias.scope !73939, !noalias !73935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !73934
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !73935
  %i.ap = load i64, ptr %i.i, align 8, !range !1177, !noalias !73934, !noundef !15
  %i.aq = icmp eq i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !73934 ; 3 uses
  br i1 %i.aq, label %bb.j, label %bb.k

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i.i.i.i.i.i.i.i"
  %i.at = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h6e32cfc8d72d2ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2649), !noalias !73935
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !73934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73934
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !73934
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call fastcc void @"_ZN223_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hea7b36ae3216a914E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.as, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !73935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !73934
  %i.au = load i8, ptr %i.j, align 8, !range !447, !noalias !73934, !noundef !15
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %._crit_edge.i.i.i.i, label %bb.n, !prof !122

._crit_edge.i.i.i.i:                              ; preds = %bb.k
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !73934
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.aw = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.at, %bb.i ]
  %i.ax = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !73935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73934
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i = phi ptr [ %i.am, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.l ], [ %i.as, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.121.0.ph.i.i.i.i.i, ptr %i.ay, align 8, !alias.scope !73940, !noalias !73941
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9fe38abdc97e826bE.exit.i.i"

bb.n:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !1118, !noalias !73934, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73934
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
  store i8 0, ptr %i.bb, align 1, !alias.scope !73940, !noalias !73941
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9fe38abdc97e826bE.exit.i.i"

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.bb, align 1, !alias.scope !73940, !noalias !73941
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9fe38abdc97e826bE.exit.i.i"

bb.q:                                             ; preds = %bb.n
  store i8 2, ptr %i.bb, align 1, !alias.scope !73940, !noalias !73941
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9fe38abdc97e826bE.exit.i.i"

bb.r:                                             ; preds = %bb.n
  store i8 3, ptr %i.bb, align 1, !alias.scope !73940, !noalias !73941
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9fe38abdc97e826bE.exit.i.i"

bb.s:                                             ; preds = %bb.n
  store i8 4, ptr %i.bb, align 1, !alias.scope !73940, !noalias !73941
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9fe38abdc97e826bE.exit.i.i"

bb.t:                                             ; preds = %bb.n
  store i8 5, ptr %i.bb, align 1, !alias.scope !73940, !noalias !73941
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9fe38abdc97e826bE.exit.i.i"

"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h9fe38abdc97e826bE.exit.i.i": ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m
  %.sink.i.i.i = phi i8 [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.m ]
  store i8 %.sink.i.i.i, ptr %0, align 8, !alias.scope !73940, !noalias !73941
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$11deserialize17hd5b11b388641e024E.exit"

bb.u:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !73892, !noalias !73891, !noundef !15
  %i.be = add i8 %i.bd, -1                        ; 2 uses
  store i8 %i.be, ptr %i.bc, align 1, !alias.scope !73892, !noalias !73891
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.as, label %bb.v, !prof !122

bb.v:                                             ; preds = %bb.u, %bb.e
  %i.bg = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !73942, !noalias !73891
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73954)
  %i.bh = icmp ult i64 %i.bg, %i.s
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v, %bb.w
  %i.bi = phi i64 [ %i.bl, %bb.w ], [ %i.bg, %bb.v ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !73957, !noundef !15
  switch i8 %i.bk, label %bb.x [
    i8 32, label %bb.w
    i8 10, label %bb.w
    i8 9, label %bb.w
    i8 13, label %bb.w
    i8 34, label %bb.y
    i8 125, label %bb.z
  ], !prof !2771

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bl = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.q, align 8, !alias.scope !73965, !noalias !73968
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bl, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !73969
  store i64 3, ptr %i.f, align 8, !noalias !73969
  %i.bm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !73970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !73969
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h46af3b77e5759bbeE.exit.i.i"

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !73969
  store i64 17, ptr %i.g, align 8, !noalias !73969
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !73970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !73969
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h46af3b77e5759bbeE.exit.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !73969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73980)
  %i.bo = add i64 %i.bi, 1
  store i64 %i.bo, ptr %i.q, align 8, !alias.scope !73983, !noalias !73986
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bp, align 8, !alias.scope !73991, !noalias !73986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !73992
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !73986
  %i.bq = load i64, ptr %i.d, align 8, !range !1177, !noalias !73992, !noundef !15
  %i.br = icmp eq i64 %i.bq, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !73992, !nonnull !15, !noundef !15 ; 2 uses
  br i1 %i.br, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.thread.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.i.i.i.i.i", !prof !5452

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.thread.i.i.i.i.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !73992
  br label %bb.aa

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.i.i.i.i.i": ; preds = %bb.y
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i, align 8, !noalias !73992
  call fastcc void @"_ZN223_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hea7b36ae3216a914E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i), !noalias !73970
  %.pre.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !447, !noalias !73969
  %i.bu = trunc nuw i8 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !73992
  br i1 %i.bu, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.i._crit_edge.i.i.i.i", label %bb.ab, !prof !4913

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.i.i.i.i.i"
  %.phi.trans.insert.i.i15.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre.i.i16.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i, align 8, !noalias !73969
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !73969
  store i64 10, ptr %i.h, align 8, !noalias !73969
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !73970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !73969
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h46af3b77e5759bbeE.exit.i.i"

bb.aa:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.thread.i.i.i.i.i"
  %i.bw = phi ptr [ %.pre.i.i16.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.i._crit_edge.i.i.i.i" ], [ %i.bt, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44845ce66aab1745E.exit.thread.i.i.i.i.i" ]
  %i.bx = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !73970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !73969
end_hunk_19
