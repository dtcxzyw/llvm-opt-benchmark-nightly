Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@"_ZN4fsrs9inference35_$LT$impl$u20$fsrs..model..FSRS$GT$8evaluate17hf1ec8edddc63a360E":bb.a

bb.ak:                                            ; preds = %bb.aj
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb43a167f033784e5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.al unwind label %.loopexit92

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.do = load ptr, ptr %i.as, align 8, !alias.scope !6321, !nonnull !7, !noundef !7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dl
  store float %i.co, ptr %i.dp, align 4
  %i.dq = add i64 %i.dl, 1
  store i64 %i.dq, ptr %i.at, align 8, !alias.scope !6321
  %i.dr = load float, ptr %i.da, align 8, !noundef !7
  %i.ds = load i64, ptr %i.bg, align 8, !alias.scope !6322, !noundef !7 ; 3 uses
  %i.dt = load i64, ptr %i.h, align 8, !range !8, !alias.scope !6322, !noundef !7
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.am, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6ee3a2ca5f052ceeE.exit57"

bb.am:                                            ; preds = %bb.al
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb43a167f033784e5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6ee3a2ca5f052ceeE.exit57" unwind label %.loopexit92

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6ee3a2ca5f052ceeE.exit57": ; preds = %bb.am, %bb.al
  %i.dv = load ptr, ptr %i.bf, align 8, !alias.scope !6322, !nonnull !7, !noundef !7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ds
  store float %i.dr, ptr %i.dw, align 4
  %i.dx = add i64 %i.ds, 1
  store i64 %i.dx, ptr %i.bg, align 8, !alias.scope !6322
  %i.dy = icmp eq ptr %.sroa.07.196, %i.bt        ; 2 uses
  %.sroa.07.1.idx = select i1 %i.dy, i64 0, i64 40
  %.sroa.07.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.196, i64 %.sroa.07.1.idx
  br i1 %i.dy, label %.loopexit, label %.lr.ph

"_ZN4core3ptr120drop_in_place$LT$std..collections..hash..map..HashMap$LT$$LP$u32$C$u32$C$u32$RP$$C$fsrs..inference..RMatrixValue$GT$$GT$17hb3bb95c173074147E.exit50": ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %"_ZN4core3ptr120drop_in_place$LT$std..collections..hash..map..HashMap$LT$$LP$u32$C$u32$C$u32$RP$$C$fsrs..inference..RMatrixValue$GT$$GT$17hb3bb95c173074147E.exit50"
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.ap

bb.ao:                                            ; preds = %"_ZN4core3ptr120drop_in_place$LT$std..collections..hash..map..HashMap$LT$$LP$u32$C$u32$C$u32$RP$$C$fsrs..inference..RMatrixValue$GT$$GT$17hb3bb95c173074147E.exit50"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit" unwind label %bb.m

bb.ap:                                            ; preds = %bb.an
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit": ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit"
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body61 unwind label %bb.as

bb.ar:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit63" unwind label %bb.j

bb.as:                                            ; preds = %bb.aq
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit63": ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit63"
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body66 unwind label %bb.av

bb.au:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit63"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit68" unwind label %bb.g

bb.av:                                            ; preds = %bb.at
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit68": ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h50334b17dad96b22E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$fsrs..dataset..WeightedFSRSItem$GT$$GT$17hffbd23b70b3a507cE.exit" unwind label %bb.aw

bb.aw:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit68"
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc1de4b59fd00dd09E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$fsrs..dataset..WeightedFSRSItem$GT$$GT$17hffbd23b70b3a507cE.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit68"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc1de4b59fd00dd09E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.y

bb.ay:                                            ; preds = %bb.q, %"_ZN4core3ptr120drop_in_place$LT$std..collections..hash..map..HashMap$LT$$LP$u32$C$u32$C$u32$RP$$C$fsrs..inference..RMatrixValue$GT$$GT$17hb3bb95c173074147E.exit", %.body, %.body61, %.body66
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN4rand3rng3Rng12random_range17h084f5ff61f26e184E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %0, align 8
  call fastcc void @"_ZN96_$LT$rand..distr..uniform..int..UniformUsize$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17h1e1eff1c0a091543E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, i64 noundef %1, i64 noundef %2, ptr %.val3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6326)
  %i.d = load i8, ptr %i.b, align 8, !range !10, !alias.scope !6326, !noalias !6327, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0658ed7c5dd7ea36E.exit", !prof !16

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6328
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !10, !alias.scope !6326, !noalias !6327, !noundef !7
  store i8 %i.g, ptr %i.a, align 1, !noalias !6328
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @731, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @730, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #33, !noalias !6326
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0658ed7c5dd7ea36E.exit": ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !6326, !noalias !6327, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @736, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.m, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_ZN4rand3rng3Rng12random_range17hc90435d748701ae1E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6337)
  %i.c = load ptr, ptr %.val6, align 8, !alias.scope !6337, !nonnull !7, !noundef !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16, !alias.scope !6338, !noalias !6337, !noundef !7 ; 2 uses
  %i.g = icmp ugt i64 %i.f, 63
  br i1 %i.g, label %bb.c, label %_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit14.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.h, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.d), !noalias !6337
  br label %_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit14.i.i.i

_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit14.i.i.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.c ]    ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !6338, !noalias !6337, !noundef !7
  %i.l = add nuw nsw i64 %i.i, 1
  store i64 %i.l, ptr %i.e, align 16, !alias.scope !6338, !noalias !6337
  %i.m = zext i32 %i.k to i64
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = mul nuw i64 %i.m, %i.n                   ; 2 uses
  %i.p = lshr i64 %i.o, 32                        ; 2 uses
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  %i.r = sub i32 0, %1
  %i.s = icmp ugt i32 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5608f5975910b17bE.exit"

bb.d:                                             ; preds = %_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit14.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6339)
  %i.t = load ptr, ptr %.val6, align 8, !alias.scope !6339, !nonnull !7, !noundef !7 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 336 ; 2 uses
  %i.w = load i64, ptr %i.v, align 16, !alias.scope !6340, !noalias !6339, !noundef !7 ; 2 uses
  %i.x = icmp ugt i64 %i.w, 63
  br i1 %i.x, label %bb.e, label %_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit15.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.y, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.u), !noalias !6339
  br label %_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit15.i.i.i

_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit15.i.i.i: ; preds = %bb.e, %bb.d
  %i.z = phi i64 [ %i.w, %bb.d ], [ 0, %bb.e ]    ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !6340, !noalias !6339, !noundef !7
  %i.ac = add nuw nsw i64 %i.z, 1
  store i64 %i.ac, ptr %i.v, align 16, !alias.scope !6340, !noalias !6339
  %3 = zext i32 %i.ab to i64
  %4 = mul nuw i64 %3, %i.n
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.ad = xor i32 %i.q, -1
  %.not11.i.i.i = icmp ult i32 %i.ad, %6
  %i.ae = zext i1 %.not11.i.i.i to i64
  %i.af = add nuw nsw i64 %i.p, %i.ae
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5608f5975910b17bE.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5608f5975910b17bE.exit": ; preds = %_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit15.i.i.i, %_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit14.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.af, %_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit15.i.i.i ], [ %i.p, %_ZN4rand3rng3Rng6random17h1e082a1226d18c05E.exit14.i.i.i ]
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.04.0.i.i.i to i32
  ret i32 %.sroa.6.0.extract.trunc.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @736, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.aj, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN4rand3rng3Rng12random_range17hfaeb24638228b4feE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val2 = load ptr, ptr %0, align 8
  call fastcc void @"_ZN96_$LT$rand..distr..uniform..int..UniformUsize$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17h1e1eff1c0a091543E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, i64 noundef 0, i64 noundef %1, ptr %.val2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6344)
  %i.e = load i8, ptr %i.b, align 8, !range !10, !alias.scope !6344, !noalias !6345, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0658ed7c5dd7ea36E.exit", !prof !16

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6346
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !10, !alias.scope !6344, !noalias !6345, !noundef !7
  store i8 %i.h, ptr %i.a, align 1, !noalias !6346
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @731, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @730, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #33, !noalias !6344
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0658ed7c5dd7ea36E.exit": ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6344, !noalias !6345, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @736, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.n, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4rand5distr8weighted14weighted_index22WeightedIndex$LT$X$GT$3new17h5ab44c968efbc618E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.e = icmp eq ptr %1, %2
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 4
  %.val.i = load float, ptr %i.g, align 4, !noalias !6355, !noundef !7 ; 3 uses
  %i.h = fcmp ult float %.val.i, 0.000000e+00
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.j, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.o = load i64, ptr %i.a, align 8, !range !15, !noundef !7
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !9, !noundef !7 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit", !prof !16

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.s, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.r, i64 %i.t) #33
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit": ; preds = %bb.e
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !7, !noundef !7
  %i.v = icmp ule i64 %i.n, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.r, ptr %i.d, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = icmp eq ptr %i.f, %2
  br i1 %i.y, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.i, %bb.q, %bb.h
  %.pn = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.z, %bb.h ], [ %i.ab, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #31
          to label %common.resume unwind label %bb.u

bb.h:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge:                                      ; preds = %bb.t, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %.sroa.033.0.lcssa = phi float [ %.val.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit" ], [ %i.av, %bb.t ] ; 3 uses
  %i.aa = fcmp oeq float %.sroa.033.0.lcssa, 0.000000e+00
  br i1 %i.aa, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN109_$LT$rand..distr..uniform..float..UniformFloat$LT$f32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$3new17h5e8e24bb33c5990aE"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.c, float noundef 0.000000e+00, float noundef %.sroa.033.0.lcssa)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !6356)
  %i.ac = load i8, ptr %i.c, align 4, !range !10, !alias.scope !6356, !noundef !7
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6356
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !range !10, !alias.scope !6356, !noundef !7
  store i8 %i.af, ptr %i.b, align 1, !noalias !6356
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @731, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @730, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @738) #33
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !alias.scope !6356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store <2 x float> %i.ah, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.033.0.lcssa, ptr %.sroa.613.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit", %bb.d, %bb.c, %bb.m
  ret void

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.sink = phi i8 [ 2, %._crit_edge ], [ 1, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.ai, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit" unwind label %bb.o

bb.o:                                             ; preds = %.loopexit
end_hunk_0
begin_hunk_1_@"_ZN94_$LT$rusqlite..row..Rows$u20$as$u20$fallible_streaming_iterator..FallibleStreamingIterator$GT$7advance17hd4cf90d0ff1f2d2dE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.bd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.y

bb.y:                                             ; preds = %_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit10, %bb.v, %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rusqlite..error..Error$GT$$GT$17h032eef31844fc0e7E.exit", %bb.h
  ret void

bb.z:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he47ebbb5cbf21d56E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9610
  call void @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h81aed87170cb3130E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @680, i64 noundef 23, i64 noundef 3), !noalias !9611
  %i.e = load i8, ptr %i.b, align 8, !range !36, !noalias !9610, !noundef !7 ; 2 uses
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !9610, !nonnull !7, !align !11, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9610
  br label %"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.519.sroa.0.0.copyload.i = load i8, ptr %.sroa.519.0..sroa_idx.i, align 1, !noalias !9610
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.620.0.copyload.i = load ptr, ptr %.sroa.620.0..sroa_idx.i, align 8, !noalias !9610 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9610
  %i.i = trunc nuw i8 %i.e to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1064) #33, !noalias !9612
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.620.0.copyload.i) ]
  %i.j = icmp eq i8 %.sroa.519.sroa.0.0.copyload.i, 1
  br i1 %i.j, label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9612, !nonnull !7, !noundef !7
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 1), !noalias !9612
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.val9.i.i.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9612 ; 2 uses
  %.val.i.i.i.i = load i16, ptr %i.c, align 8, !noalias !9612, !noundef !7 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9613
  call void @llvm.experimental.noalias.scope.decl(metadata !9614)
  %i.k = icmp ugt i16 %.val.i.i.i.i, 9999
  br i1 %i.k, label %.thread.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i
  %i.l = udiv i16 %.val.i.i.i.i, 10000
  %.lhs.trunc.i.i.i.i.i.i.i.i = urem i16 %.val.i.i.i.i, 10000 ; 2 uses
  %i.m = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i, 100
  %i.n = shl nuw nsw i16 %i.m, 1
  %i.o = zext nneg i16 %i.n to i64
  %i.p = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i, 100
  %i.q = shl nuw nsw i16 %i.p, 1
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @734, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.u = load i16, ptr %i.s, align 1, !noalias !9615
  store i16 %i.u, ptr %i.t, align 1, !alias.scope !9614, !noalias !9613
  %i.v = getelementptr inbounds nuw i8, ptr @734, i64 %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.x = load i16, ptr %i.v, align 1, !noalias !9615
  store i16 %i.x, ptr %i.w, align 1, !alias.scope !9614, !noalias !9613
  br label %bb.j

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i
  %i.y = icmp samesign ugt i16 %.val.i.i.i.i, 99
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.z = urem i16 %.val.i.i.i.i, 100
  %i.aa = shl nuw nsw i16 %i.z, 1
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = udiv i16 %.val.i.i.i.i, 100
  %i.ad = getelementptr inbounds nuw i8, ptr @734, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.af = load i16, ptr %i.ad, align 1, !noalias !9615
  store i16 %i.af, ptr %i.ae, align 1, !alias.scope !9614, !noalias !9613
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i = phi i64 [ 3, %bb.g ], [ 5, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.in.i.i.i.i.i.i.i.i = phi i16 [ %i.ac, %bb.g ], [ %.val.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ag = icmp samesign ult i16 %.sroa.0.2.in.i.i.i.i.i.i.i.i, 10
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = shl nuw nsw i16 %.sroa.0.2.in.i.i.i.i.i.i.i.i, 1
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add nsw i64 %.sroa.09.1.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr @734, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.am = load i16, ptr %i.ak, align 1, !noalias !9615
  store i16 %i.am, ptr %i.al, align 1, !alias.scope !9614, !noalias !9613
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i

bb.j:                                             ; preds = %bb.h, %.thread.i.i.i.i.i.i.i.i
  %.sroa.0.236.i.i.i.i.i.i.i.i = phi i16 [ %i.l, %.thread.i.i.i.i.i.i.i.i ], [ %.sroa.0.2.in.i.i.i.i.i.i.i.i, %bb.h ]
  %.sroa.09.135.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i ], [ %.sroa.09.1.i.i.i.i.i.i.i.i, %bb.h ]
  %i.an = add nsw i64 %.sroa.09.135.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ao = trunc nuw nsw i16 %.sroa.0.236.i.i.i.i.i.i.i.i to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %i.aq = or disjoint i8 %i.ao, 48
  store i8 %i.aq, ptr %i.ap, align 1, !alias.scope !9614, !noalias !9613
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i

_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i: ; preds = %bb.j, %bb.i
  %.sroa.09.2.i.i.i.i.i.i.i.i = phi i64 [ %i.an, %bb.j ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ar = sub nuw nsw i64 5, %.sroa.09.2.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.2.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.as, i64 noundef %i.ar), !noalias !9612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9613
  %.val.i.i27.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9616, !nonnull !7, !noundef !7
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i27.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 1), !noalias !9616
  %.val.i.i.i29.i = load i8, ptr %i.d, align 2, !range !36, !noalias !9617, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.620.0.copyload.i, i64 8 ; 3 uses
  switch i8 %.val.i.i.i29.i, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

default.unreachable:                              ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i
  unreachable

bb.k:                                             ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i
  %i.au = call noundef ptr @_ZN10serde_json3ser18format_escaped_str17hca26d9af7340272aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.620.0.copyload.i, ptr noalias noundef nonnull align 1 %i.at, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @59, i64 noundef 3), !noalias !9616 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i", label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i", !prof !18

bb.l:                                             ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i
  %i.av = call noundef ptr @_ZN10serde_json3ser18format_escaped_str17hca26d9af7340272aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.620.0.copyload.i, ptr noalias noundef nonnull align 1 %i.at, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @60, i64 noundef 3), !noalias !9616 ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i.i.i.i.i, label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i", label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i", !prof !18

bb.m:                                             ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i
  %i.aw = call noundef ptr @_ZN10serde_json3ser18format_escaped_str17hca26d9af7340272aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.620.0.copyload.i, ptr noalias noundef nonnull align 1 %i.at, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @61, i64 noundef 4), !noalias !9616 ; 2 uses
  %.not.i.i4.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i4.i.i.i.i.i, label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i", label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i", !prof !18

"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i": ; preds = %bb.m, %bb.l, %bb.k
  %.sink.i.i.i.i.i = phi ptr [ %i.av, %bb.l ], [ %i.au, %bb.k ], [ %i.aw, %bb.m ]
  %i.ax = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %.sink.i.i.i.i.i), !noalias !9616
  br label %"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit"

"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i": ; preds = %bb.m, %bb.l, %bb.k
  %.val.i.i30.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9618, !nonnull !7, !noundef !7
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i30.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 1), !noalias !9618
  %i.ay = call noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17hc3cb97f29914ca49E(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.620.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0), !noalias !9618 ; 2 uses
  %.not24.i = icmp eq ptr %i.ay, null
  br i1 %.not24.i, label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i", label %"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit"

"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i": ; preds = %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i"
  %.val.i.i31.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9619, !nonnull !7, !align !11, !noundef !7
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i31.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 1), !noalias !9619
  br label %"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit"

"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit": ; preds = %bb.b, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i", %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i", %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i"
  %.sroa.0.0.i = phi ptr [ null, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i" ], [ %i.h, %bb.b ], [ %i.ax, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i" ], [ %i.ay, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i" ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN96_$LT$rand..distr..uniform..int..UniformUsize$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17h1e1eff1c0a091543E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, 4294967295
  br i1 %i.c, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = trunc i64 %1 to i32                      ; 2 uses
  %i.e = trunc nuw i64 %2 to i32                  ; 2 uses
  %i.f = icmp ult i32 %i.d, %i.e
  br i1 %i.f, label %bb.e, label %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit.thread"

bb.e:                                             ; preds = %bb.d
  %3 = sub nuw i64 %2, %1                         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 336 ; 3 uses
  %i.i = load i64, ptr %i.h, align 16, !noalias !7, !noundef !7 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 63
  br i1 %i.j, label %bb.f, label %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.k, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.g), !noalias !9656
  br label %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i

_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i: ; preds = %bb.f, %bb.e
  %i.l = phi i64 [ %i.i, %bb.e ], [ 0, %bb.f ]    ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !9657, !noalias !9656, !noundef !7
  %i.o = add nuw nsw i64 %i.l, 1                  ; 2 uses
  store i64 %i.o, ptr %i.h, align 16, !alias.scope !9657, !noalias !9656
  %i.p = zext i32 %i.n to i64
  %i.q = mul nuw i64 %3, %i.p                     ; 2 uses
  %i.r = lshr i64 %i.q, 32                        ; 2 uses
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  %i.t = sub i32 %i.d, %i.e
  %i.u = icmp ult i32 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit"

bb.g:                                             ; preds = %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i
  %i.v = icmp eq i64 %i.l, 63
  br i1 %i.v, label %bb.h, label %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit15.i.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.w, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.g), !noalias !9658
  br label %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit15.i.i

_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit15.i.i: ; preds = %bb.h, %bb.g
  %i.x = phi i64 [ %i.o, %bb.g ], [ 0, %bb.h ]    ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !9659, !noalias !9658, !noundef !7
  %i.aa = add nuw nsw i64 %i.x, 1
  store i64 %i.aa, ptr %i.h, align 16, !alias.scope !9659, !noalias !9658
  %4 = zext i32 %i.z to i64
  %5 = mul nuw i64 %3, %4
  %6 = lshr i64 %5, 32
  %7 = trunc nuw i64 %6 to i32
  %i.ab = xor i32 %i.s, -1
  %.not11.i.i = icmp ult i32 %i.ab, %7
  %i.ac = zext i1 %.not11.i.i to i64
  %i.ad = add nuw nsw i64 %i.r, %i.ac
  br label %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit"

bb.i:                                             ; preds = %bb.c
  %i.ae = sub nuw i64 %2, %1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 336 ; 7 uses
  %i.ah = load i64, ptr %i.ag, align 16, !noalias !9660, !noundef !7 ; 4 uses
  %i.ai = icmp ult i64 %i.ah, 63
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i10.i.i = icmp eq i64 %i.ah, 63
  br i1 %.not.i.i.i10.i.i, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aj = add nuw nsw i64 %i.ah, 2                ; 2 uses
  store i64 %i.aj, ptr %i.ag, align 16, !alias.scope !9661, !noalias !9662
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ah
  %i.al = load i64, ptr %i.ak, align 4, !alias.scope !9663, !noalias !9662
  br label %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit12.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 268
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !9661, !noalias !9662, !noundef !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ao, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.af), !noalias !9662
  store i64 1, ptr %i.ag, align 16, !alias.scope !9664, !noalias !9662
  %i.ap = zext i32 %i.an to i64
  %i.aq = load i32, ptr %i.af, align 16, !alias.scope !9661, !noalias !9662, !noundef !7
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  %i.at = or disjoint i64 %i.as, %i.ap
  br label %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit12.i.i

bb.m:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.au, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.af), !noalias !9662
  store i64 2, ptr %i.ag, align 16, !alias.scope !9665, !noalias !9662
  %i.av = load i64, ptr %i.af, align 16, !alias.scope !9666, !noalias !9662
  br label %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit12.i.i

_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit12.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.aw = phi i64 [ %i.aj, %bb.k ], [ 2, %bb.m ], [ 1, %bb.l ] ; 4 uses
  %.sroa.0.0.i.i.i11.i.i = phi i64 [ %i.al, %bb.k ], [ %i.av, %bb.m ], [ %i.at, %bb.l ]
  %i.ax = zext i64 %.sroa.0.0.i.i.i11.i.i to i128
  %i.ay = zext i64 %i.ae to i128                  ; 2 uses
  %i.az = mul nuw i128 %i.ax, %i.ay               ; 2 uses
  %i.ba = lshr i128 %i.az, 64
  %i.bb = trunc nuw i128 %i.ba to i64             ; 2 uses
  %i.bc = trunc i128 %i.az to i64                 ; 2 uses
  %i.bd = sub i64 %1, %2
  %i.be = icmp ult i64 %i.bd, %i.bc
  br i1 %i.be, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit12.i.i
  %i.bf = icmp samesign ult i64 %i.aw, 63
  br i1 %i.bf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i13.i.i = icmp eq i64 %i.aw, 63
  br i1 %.not.i.i.i13.i.i, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bg = add nuw nsw i64 %i.aw, 2
  store i64 %i.bg, ptr %i.ag, align 16, !alias.scope !9667, !noalias !9668
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.aw
  %i.bi = load i64, ptr %i.bh, align 4, !alias.scope !9669, !noalias !9668
  br label %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit15.i.i

bb.q:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 268
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !9667, !noalias !9668, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.bl, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.af), !noalias !9668
  store i64 1, ptr %i.ag, align 16, !alias.scope !9670, !noalias !9668
  %i.bm = zext i32 %i.bk to i64
  %i.bn = load i32, ptr %i.af, align 16, !alias.scope !9667, !noalias !9668, !noundef !7
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw i64 %i.bo, 32
  %i.bq = or disjoint i64 %i.bp, %i.bm
  br label %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit15.i.i

bb.r:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.br, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.af), !noalias !9668
  store i64 2, ptr %i.ag, align 16, !alias.scope !9671, !noalias !9668
  %i.bs = load i64, ptr %i.af, align 16, !alias.scope !9672, !noalias !9668
  br label %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit15.i.i

_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit15.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i14.i.i = phi i64 [ %i.bi, %bb.p ], [ %i.bs, %bb.r ], [ %i.bq, %bb.q ]
  %8 = zext i64 %.sroa.0.0.i.i.i14.i.i to i128
  %9 = mul nuw i128 %8, %i.ay
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64
  %i.bt = xor i64 %i.bc, -1
  %.not7.i.i = icmp ult i64 %i.bt, %11
  %i.bu = zext i1 %.not7.i.i to i64
  %i.bv = add nuw i64 %i.bu, %i.bb
  br label %bb.t

"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit.thread": ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.bw, align 1
  br label %bb.s

"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit": ; preds = %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit15.i.i, %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.ad, %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit15.i.i ], [ %i.r, %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i ]
  %i.bx = add i64 %.sroa.04.0.i.i, %1
  %.sroa.67.0.extract.shift = and i64 %i.bx, 4294967295
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.67.0.extract.shift, ptr %i.by, align 8
  br label %bb.s

bb.s:                                             ; preds = %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit.thread", %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit", %bb.t, %bb.b
  %.sink = phi i8 [ 0, %bb.t ], [ 1, %bb.b ], [ 0, %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit" ], [ 1, %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit.thread" ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit12.i.i, %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit15.i.i
  %.sroa.01.0.i.i = phi i64 [ %i.bv, %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit15.i.i ], [ %i.bb, %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit12.i.i ]
  %i.bz = add i64 %.sroa.01.0.i.i, %1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %i.ca, align 8
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h29ad78667d36e779E"(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address, read_provenance) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !9675
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h3b5f3d1c2710fa46E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.2.07.i = phi ptr [ %i.c, %.lr.ph.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds i8, ptr %.sroa.2.07.i, i64 -24 ; 3 uses
  call void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hcd3652cf31b86aa8E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.d = icmp eq ptr %0, %i.c
  br i1 %i.d, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h3b5f3d1c2710fa46E.exit, label %.lr.ph.i

_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h3b5f3d1c2710fa46E.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2d60e2513d2c7e88E"(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address, read_provenance) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9685)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val5.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !9685
  br label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17hf1a4a22be3537111E.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !9685
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !9685
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb0bdc9267aa03a6dE.exit.i", %.lr.ph.i
  %.val7.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.h, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb0bdc9267aa03a6dE.exit.i" ] ; 3 uses
  %.sroa.2.011.i = phi ptr [ %1, %.lr.ph.i ], [ %i.f, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb0bdc9267aa03a6dE.exit.i" ]
  %i.f = getelementptr inbounds i8, ptr %.sroa.2.011.i, i64 -40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9686
  invoke void @_ZN4anki5stats4card18stats_revlog_entry17haa170d8cd3017962E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb0bdc9267aa03a6dE.exit.i" unwind label %bb.c, !noalias !9685

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb0bdc9267aa03a6dE.exit.i": ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.val7.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !9687
  %i.h = add i64 %.val7.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9686
  %i.i = icmp eq ptr %0, %i.f
  br i1 %i.i, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17hf1a4a22be3537111E.exit, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val6.i = load ptr, ptr %2, align 8, !alias.scope !9685, !nonnull !7, !align !11, !noundef !7
  store i64 %.val7.i, ptr %.val6.i, align 8, !noalias !9685
  resume { ptr, i32 } %i.j

_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17hf1a4a22be3537111E.exit: ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb0bdc9267aa03a6dE.exit.i", %.._crit_edge_crit_edge.i
  %.val5.i = phi i64 [ %.val5.pre.i, %.._crit_edge_crit_edge.i ], [ %i.h, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb0bdc9267aa03a6dE.exit.i" ]
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !9685, !nonnull !7, !align !11, !noundef !7
  store i64 %.val5.i, ptr %.val.i, align 8, !noalias !9685
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5f2f057e5bbd83dcE"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.512.i = alloca [36 x i8], align 4        ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9700)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !9701, !noalias !9702, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !9701, !noalias !9702, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %"._ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.thread_crit_edge.i", label %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.lr.ph.i"

"._ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.thread_crit_edge.i": ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !9700, !noalias !9699
  br label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h391eb756f22a052aE.exit

"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.lr.ph.i": ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !9700, !noalias !9699
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !9700, !noalias !9699
  br label %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.i"

"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.i": ; preds = %bb.b, %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.lr.ph.i"
  %i.j = phi i64 [ %.promoted.i, %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.lr.ph.i" ], [ %i.n, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.d, %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.lr.ph.i" ], [ %i.l, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9703)
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -48 ; 4 uses
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds i8, ptr %i.k, i64 -40
  %.sroa.5.0.copyload8.i = load i32, ptr %.sroa.5.0..sroa_idx7.i, align 8, !noalias !9704 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h391eb756f22a052aE.exit.loopexit, label %bb.b

bb.b:                                             ; preds = %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.i"
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds i8, ptr %i.k, i64 -36
  %.sroa.0.0.copyload6.i = load i64, ptr %i.l, align 8, !noalias !9704
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.512.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.7.0..sroa_idx9.i, i64 36, i1 false), !noalias !9705
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.j ; 3 uses
  store i64 %.sroa.0.0.copyload6.i, ptr %i.m, align 8, !noalias !9706
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9706
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.512.i, i64 36, i1 false), !noalias !9706
  %i.n = add i64 %i.j, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512.i)
  %i.o = icmp eq ptr %i.e, %i.l
  br i1 %i.o, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h391eb756f22a052aE.exit.loopexit, label %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.i"

_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h391eb756f22a052aE.exit.loopexit: ; preds = %bb.b, %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.i"
  %.val5.i.ph = phi i64 [ %i.n, %bb.b ], [ %i.j, %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.i" ]
  store ptr %i.l, ptr %i.b, align 8, !alias.scope !9707, !noalias !9702
  br label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h391eb756f22a052aE.exit

_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h391eb756f22a052aE.exit: ; preds = %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h391eb756f22a052aE.exit.loopexit, %"._ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.thread_crit_edge.i"
  %.val5.i = phi i64 [ %.val5.pre.i, %"._ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76242b0f9f3894e3E.exit.thread_crit_edge.i" ], [ %.val5.i.ph, %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h391eb756f22a052aE.exit.loopexit ]
  %.val4.i = load ptr, ptr %1, align 8, !alias.scope !9700, !noalias !9699, !nonnull !7, !align !11, !noundef !7
  store i64 %.val5.i, ptr %.val4.i, align 8, !noalias !9705
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc31ba9933484281dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !9700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he38f530115043837E"(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address, read_provenance) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !noalias !9713
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h9892ec015742b10aE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.2.07.i = phi ptr [ %i.d, %.lr.ph.i ], [ %1, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.sroa.2.07.i, i64 -24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9714
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !noalias !9715
  call void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h15703294cc1a5221E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9714
  %i.e = icmp eq ptr %0, %i.d
  br i1 %i.e, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h9892ec015742b10aE.exit, label %.lr.ph.i

_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17h9892ec015742b10aE.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf4c5a6c045101e82E"(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
begin_hunk_2_@"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h567d5fc275e98f72E"
declare hidden void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h567d5fc275e98f72E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$GT$11deserialize17hf4de13f9183c5f4bE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4anki4sync10collection6sanity1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..collection..sanity..SanityCheckCounts$GT$11deserialize17h32f5d148e1d6112aE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @"_ZN4anki9timestamp1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..timestamp..TimestampSecs$GT$11deserialize17h51c6ea7296e20c44E"(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h5b27144cc727f914E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(344)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hc38c3da80cee0d49E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8bitflags4iter18IterNames$LT$B$GT$3new17h3dc2488e5d78554fE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN66_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..hash..Hash$GT$4hash17h9bd5b1e7b89f58f5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 16 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17h6d4d3d12e6154979E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17hf2370b125b17cd75E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite5error17decode_result_raw17h16c71faa3c40e349E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_get_autocommit(ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite15path_to_cstring17h67ef4b71b1162b77E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite16inner_connection15InnerConnection15open_with_flags17h1687a9c9ddfb9422E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32, ptr noalias noundef readonly align 1 captures(address, read_provenance), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite16inner_connection15InnerConnection7prepare17h16e38a923d6e3a1bE(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @sqlite3_changes64(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_reset(ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN66_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Display$GT$3fmt17h94ba27fe14c27ed5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite6pragma3Sql11push_pragma17h5287309cb7568bc0E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 1 captures(address, read_provenance), i64, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite6pragma3Sql15push_equal_sign17h281c6e13e7b0e016E(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite6pragma3Sql10push_value17h567b852418ae7880E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9collation61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$16create_collation17h1b689b8dad5f7d14E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h02583cff8909d59fE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h9bb11e8085487383E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h7ae6e4fdd504b580E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h60d4c839f060ee25E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h8674a788fea79599E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h981c27b082c3b3a7E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h366ad2c030c6e99dE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17hbb9d480bc1b59411E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17ha70ab4e18ef145e5E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h189e5956569ae132E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h6f5259ca5a846ca4E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_null(ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_double(ptr noundef, i32 noundef, double noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite14str_for_sqlite17hf802f4fc33c0fbeeE(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite12len_as_c_int17h708253270090b143E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_zeroblob(ptr noundef, i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN8rusqlite5error22error_from_sqlite_code17h4a12a03333ead4f4E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), i32 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @"_ZN53_$LT$$RF$str$u20$as$u20$rusqlite..bind..BindIndex$GT$3idx17hdba0167476a9e00fE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_step(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_finalize(ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h0a4e3d8d9a1e00e9E"(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h81aed87170cb3130E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h3a4201d07d0407d5E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(344)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E"(ptr noalias noundef align 8 dereferenceable(312)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h1ab37c61650c0065E"(ptr noalias noundef align 8 dereferenceable(344), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE"(ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E"(ptr noalias noundef align 8 dereferenceable(80), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN13fluent_bundle4args10FluentArgs3set17h7470d4e5f20f3495E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN13fluent_bundle4args10FluentArgs3set17h0573648f1ee82ce1E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hd625c996df861460E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h04b5638c27ac8fe8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9hashbrown3raw13RawTableInner13drop_elements17hc735e450521d0f4eE(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9c2d07455947b27dE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i64 noundef, i1 noundef zeroext) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef align 16 dereferenceable(64), ptr noalias noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { cold }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$$RF$T$GT$5clone17h1a40e6a57e5a9dd5E"}
!1 = distinct !{!1, !0, !"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$$RF$T$GT$5clone17h1a40e6a57e5a9dd5E: argument 0"}
!2 = distinct !{!2, !"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$$RF$T$GT$5clone17h1a40e6a57e5a9dd5E"}
!3 = distinct !{!3, !2, !"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$$RF$T$GT$5clone17h1a40e6a57e5a9dd5E: argument 0"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 2, !"RtLibUseGOT", i32 1}
!6 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!7 = !{}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i64 0, i64 -9223372036854775807}
!10 = !{i8 0, i8 2}
!11 = !{i64 8}
!12 = !{i8 0, i8 6}
!13 = !{i32 0, i32 2}
!14 = !{i16 0, i16 2}
!15 = !{i64 0, i64 2}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{i8 0, i8 4}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{i64 0, i64 3}
!20 = !{i64 0, i64 -9223372036854775806}
!21 = !{i64 4}
!22 = !{i64 1}
!23 = !{i64 2}
!24 = !{i8 0, i8 8}
!25 = !{i64 1, i64 0}
!26 = !{i64 0, i64 4}
!27 = !{i8 0, i8 5}
!28 = !{i64 0, i64 -9223372036854775772}
!29 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!30 = !{i64 0, i64 -9223372036854775782}
!31 = !{i8 -3, i8 5}
!32 = !{i64 0, i64 5}
!33 = !{i32 0, i32 3}
!34 = !{i8 1, i8 3}
!35 = !{i8 0, i8 7}
!36 = !{i8 0, i8 3}
!37 = !{i64 0, i64 25}
!38 = !{!"llvm.loop.peeled.count", i32 1}
!39 = !{i32 1, i32 0}
!40 = !{i64 0, i64 -9223372036854775773}
!41 = !{i64 0, i64 -9223372036854775803}
!42 = !{i64 0, i64 -9223372036854775794}
!43 = !{i64 0, i64 -9223372036854775802}
!44 = !{i64 0, i64 -9223372036854775783}
!45 = !{i64 0, i64 8}
!46 = !{i8 0, i8 57}
!47 = !{!1}
!48 = !{!3}
!49 = !{i32 0, i32 1114112}
!50 = !{!"branch_weights", i32 2146410443, i32 1073205}
!51 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!52 = distinct !{!52, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hffdb914e61722edcE"}
!53 = distinct !{!53, !52, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hffdb914e61722edcE: argument 1"}
!54 = distinct !{!54, !52, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hffdb914e61722edcE: argument 0"}
!55 = !{!54, !53}
!56 = distinct !{!56, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a9607195f14d3d9E"}
!57 = distinct !{!57, !56, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a9607195f14d3d9E: argument 1"}
!58 = distinct !{!58, !56, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a9607195f14d3d9E: argument 0"}
!59 = !{!58, !57}
!60 = distinct !{!60, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf390562e52bb91cbE"}
!61 = distinct !{!61, !60, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf390562e52bb91cbE: argument 1"}
!62 = distinct !{!62, !60, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf390562e52bb91cbE: argument 0"}
!63 = !{!62, !61}
!64 = distinct !{!64, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hed98287e00e564cbE"}
!65 = distinct !{!65, !64, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hed98287e00e564cbE: argument 0"}
!66 = distinct !{!66, !64, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hed98287e00e564cbE: argument 1"}
!67 = !{!65}
!68 = !{!66}
!69 = distinct !{!69, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f5f968eaca386c3E"}
!70 = distinct !{!70, !69, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f5f968eaca386c3E: argument 0"}
!71 = !{!70}
!72 = distinct !{!72, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h5193aab1212a71c9E"}
!73 = distinct !{!73, !72, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h5193aab1212a71c9E: argument 0"}
!74 = distinct !{!74, !72, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h5193aab1212a71c9E: argument 1"}
!75 = distinct !{!75, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc0d048768bf77e92E"}
!76 = distinct !{!76, !75, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc0d048768bf77e92E: argument 0"}
!77 = distinct !{!77, !75, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc0d048768bf77e92E: argument 1"}
!78 = distinct !{!78, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17h85a34cdbc9c163beE"}
!79 = distinct !{!79, !78, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17h85a34cdbc9c163beE: argument 0"}
!80 = distinct !{!80, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17hacc8c6d7d867960bE"}
!81 = distinct !{!81, !80, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17hacc8c6d7d867960bE: argument 0"}
!82 = !{!73}
!83 = !{!74}
!84 = !{!73, !74}
!85 = !{!76}
!86 = !{!76, !77, !73, !74}
!87 = !{!76, !73}
!88 = !{!77, !74}
!89 = !{!79, !74}
!90 = !{!81, !73}
!91 = distinct !{!91, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17hf2501272eb262f21E"}
!92 = distinct !{!92, !91, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17hf2501272eb262f21E: argument 0"}
!93 = distinct !{!93, !91, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17hf2501272eb262f21E: argument 1"}
!94 = distinct !{!94, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17ha3e873f4a6df3a52E"}
!95 = distinct !{!95, !94, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17ha3e873f4a6df3a52E: argument 0"}
!96 = distinct !{!96, !94, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17ha3e873f4a6df3a52E: argument 1"}
!97 = distinct !{!97, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17h2594badcbf904a96E"}
!98 = distinct !{!98, !97, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17h2594badcbf904a96E: argument 0"}
!99 = !{!92}
!100 = !{!93}
!101 = !{!92, !93}
!102 = !{!95}
!103 = !{!95, !96, !92, !93}
!104 = !{!95, !92}
!105 = !{!96, !93}
!106 = !{!98, !92}
!107 = distinct !{!107, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h547fcde17c7bbdc1E"}
!108 = distinct !{!108, !107, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h547fcde17c7bbdc1E: argument 0"}
!109 = distinct !{!109, !107, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h547fcde17c7bbdc1E: argument 1"}
!110 = distinct !{!110, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hcf022d9db1d63000E"}
!111 = distinct !{!111, !110, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hcf022d9db1d63000E: argument 0"}
!112 = distinct !{!112, !110, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hcf022d9db1d63000E: argument 1"}
!113 = distinct !{!113, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17h85a34cdbc9c163beE"}
!114 = distinct !{!114, !113, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17h85a34cdbc9c163beE: argument 0"}
!115 = distinct !{!115, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17he4f3e18ad1f1be71E"}
!116 = distinct !{!116, !115, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17he4f3e18ad1f1be71E: argument 0"}
!117 = !{!108}
!118 = !{!109}
!119 = !{!108, !109}
!120 = !{!111}
!121 = !{!111, !112, !108, !109}
end_hunk_2
