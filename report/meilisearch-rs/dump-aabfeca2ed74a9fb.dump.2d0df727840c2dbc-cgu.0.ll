Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha497b30c85d38af9E":bb.a
  %i.dr = xor i64 %i.dq, -9223372036854775808
  %i.ds = icmp slt i64 %i.dq, 0
  %i.dt = select i1 %i.ds, i64 %i.dr, i64 5
  switch i64 %i.dt, label %bb.aa [
    i64 0, label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
    i64 5, label %bb.af
  ]

bb.aa:                                            ; preds = %.noexc.i
  unreachable

bb.ab:                                            ; preds = %.noexc.i
  %.sroa.9.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx62, i64 24, i1 false), !alias.scope !88237, !noalias !88224
  %.sroa.11.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx64, i64 40, i1 false), !alias.scope !88237, !noalias !88224
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ac:                                            ; preds = %.noexc.i
  %.sroa.9.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx61, i64 24, i1 false), !alias.scope !88237, !noalias !88224
  %.sroa.11.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx63, i64 40, i1 false), !alias.scope !88237, !noalias !88224
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ad:                                            ; preds = %.noexc.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !88238
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1652)
          to label %.noexc.i.i15 unwind label %bb.ag, !noalias !88239, !inline_history !88240

.noexc.i.i15:                                     ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !88241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !88238
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ae:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !88238
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !88242, !noalias !88245, !nonnull !13, !noundef !13
  %i.dy = load i64, ptr %i.dv, align 8, !alias.scope !88242, !noalias !88245, !noundef !13
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf1a50c8cb8129e6bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.dy)
          to label %.noexc1.i.i unwind label %bb.ag, !noalias !88239, !inline_history !88240

.noexc1.i.i:                                      ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !88241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !88238
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88247
  invoke fastcc void @"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha497b30c85d38af9E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dp)
          to label %.noexc2.i.i unwind label %bb.ag, !noalias !88239, !inline_history !88240

.noexc2.i.i:                                      ; preds = %bb.af
  %.sroa.065.0.copyload = load i64, ptr %i.d, align 8, !noalias !88251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.466.0..sroa_idx, i64 24, i1 false), !noalias !88241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.567.0..sroa_idx, i64 40, i1 false), !noalias !88241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88247
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88252), !noalias !88222
  call void @llvm.experimental.noalias.scope.decl(metadata !88255), !noalias !88258
  %.val.i.i.i.i12 = load i64, ptr %i.g, align 8, !range !26, !alias.scope !88259, !noalias !88260, !noundef !13 ; 2 uses
  %i.ea = icmp eq i64 %.val.i.i.i.i12, 0
  br i1 %i.ea, label %.body2.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i.i13 = load ptr, ptr %i.eb, align 8, !alias.scope !88259, !noalias !88260, !nonnull !13, !noundef !13
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i13, i64 noundef %.val.i.i.i.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88261, !inline_history !88229
  br label %.body2.i

_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i: ; preds = %.noexc.i, %.noexc2.i.i, %.noexc1.i.i, %.noexc.i.i15, %bb.ac, %bb.ab
  %.sroa.057.0 = phi i64 [ %.sroa.065.0.copyload, %.noexc2.i.i ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.ac ], [ -9223372036854775805, %.noexc.i.i15 ], [ -9223372036854775804, %.noexc1.i.i ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !88211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false), !noalias !88211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.055.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, i64 40, i1 false), !noalias !88211
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !88227
  %i.ec = getelementptr inbounds nuw [104 x i8], ptr %i.di, i64 %.sroa.648.0 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.0, i64 24, i1 false), !noalias !88262
  %.sroa.055.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i64 %.sroa.057.0, ptr %.sroa.055.sroa.4.0..sroa_idx, align 8, !noalias !88262
  %.sroa.055.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.5, i64 24, i1 false), !noalias !88262
  %.sroa.055.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.055.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.055.sroa.6, i64 40, i1 false), !noalias !88262
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  store i64 %i.do, ptr %.sroa.456.0..sroa_idx, align 8, !noalias !88262
  %i.ed = add i64 %.sroa.648.0, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.055.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.055.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.055.sroa.6)
  %i.ee = add nuw i64 %.sroa.06.0.i.i, 1          ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %.idx72
  br i1 %i.ef, label %bb.ai, label %bb.z

bb.ai:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i
  store i64 %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !88211
  br label %bb.al

.loopexit:                                        ; preds = %bb.p, %bb.t, %bb.u, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.k, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %.body.i.i, %.loopexit, %.loopexit.split-lp, %bb.w, %.body2.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.j ], [ %eh.lpad-body3.i, %.body2.i ], [ %i.de, %bb.w ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.cg, %.body.i.i ], [ %i.cg, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17ha5b0b0824daeeb8cE"(ptr noalias noundef align 8 dereferenceable(56) %i.h) #43
          to label %bb.ak unwind label %bb.aj, !noalias !88117, !inline_history !88267

bb.aj:                                            ; preds = %.body
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !88117, !inline_history !88267
  unreachable

bb.ak:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.al:                                            ; preds = %.noexc10, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !88105
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = load <2 x i64>, ptr %i.eh, align 8
  store <2 x i64> %i.ej, ptr %i.ei, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21deserialize_from_impl17h8c4d11e89369c1cdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 24 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = icmp ult i64 %2, 4
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = add i64 %2, -4                           ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !88268, !noalias !88272 ; 4 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 12346
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %.sroa.0.0.copyload.i, 65535
  %i.l = icmp eq i32 %i.k, 12347
  br i1 %i.l, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.j, 4
  br i1 %i.m, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1728, i64 noundef 20)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %i.v = lshr i64 %i.u, 3                         ; 12 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88279
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88279 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1730) #41, !noalias !88285
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit": ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88286)
  %i.y = icmp ugt i64 %i.v, %i.j
  br i1 %i.y, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.aa = sub nuw i64 %i.j, %i.v                  ; 2 uses
  %i.ab = icmp eq i64 %i.v, 1
  br i1 %i.ab, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i": ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.i, i64 range(i64 2, 1) %i.v, i1 false), !alias.scope !88289, !noalias !88293
  br label %.thread381.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.i, align 1, !noalias !88296, !noundef !13
  store i8 %i.ac, ptr %i.w, align 1, !alias.scope !88286, !noalias !88297
  br label %.thread381.thread

bb.l:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i167 = load i32, ptr %i.i, align 1, !alias.scope !88298, !noalias !88302 ; 3 uses
  %i.ad = icmp ugt i32 %.sroa.0.0.copyload.i167, 65536
  br i1 %i.ad, label %bb.p, label %.thread381

bb.m:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.ae, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88309
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

.thread381:                                       ; preds = %bb.l
  %i.af = zext nneg i32 %.sroa.0.0.copyload.i167 to i64
  %i.ag = add i64 %2, -8                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %.sroa.0.0.copyload.i167, 0
  br i1 %i.ai, label %bb.s, label %.thread381.thread

.thread381.thread:                                ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i", %bb.k, %.thread381
  %.sroa.0102.0372389656 = phi i1 [ true, %.thread381 ], [ %i.t, %bb.k ], [ %i.t, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %.sroa.0101.0370390654 = phi i64 [ %i.af, %.thread381 ], [ %i.s, %bb.k ], [ %i.s, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ] ; 2 uses
  %.sroa.9.0385637 = phi ptr [ undef, %.thread381 ], [ %i.w, %bb.k ], [ %i.w, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ] ; 2 uses
  %.sroa.13.0401645 = phi i64 [ undef, %.thread381 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %.sroa.0279.0403638 = phi i64 [ -9223372036854775808, %.thread381 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ] ; 2 uses
  %.sroa.19.1412636 = phi i64 [ %i.ag, %.thread381 ], [ %i.aa, %bb.k ], [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %.sroa.0.1413634 = phi ptr [ %i.ah, %.thread381 ], [ %i.z, %bb.k ], [ %i.z, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %i.aj = shl nuw nsw i64 %.sroa.0101.0370390654, 2 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88312
  %i.ak = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88312 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread381.thread
  %i.am = ptrtoint ptr %i.ak to i64
  br label %bb.s

bb.o:                                             ; preds = %.thread381.thread
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1731) #41
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.an = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1737, i64 noundef 30)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252.thread" unwind label %bb.r

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185": ; preds = %.split658, %bb.u, %bb.r
  %.sroa.0279.0404.a = phi i64 [ %.sroa.0279.0411, %bb.r ], [ %.sroa.0279.0403639, %.split658 ], [ %.sroa.0279.0403639, %bb.u ] ; 2 uses
  %.sroa.9.0386 = phi ptr [ %.sroa.9.0393, %bb.r ], [ %.sroa.9.0385638, %.split658 ], [ %.sroa.9.0385638, %bb.u ] ; 2 uses
  %.pn130 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.at, %.split658 ], [ %.pn128662, %bb.u ]
  switch i64 %.sroa.0279.0404.a, label %bb.q [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit"
  ]

bb.q:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0386) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0386, i64 noundef %.sroa.0279.0404.a, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88318
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit"

bb.r:                                             ; preds = %bb.o, %bb.p
  %.sroa.0279.0411 = phi i64 [ %.sroa.0279.0403638, %bb.o ], [ -9223372036854775808, %bb.p ]
  %.sroa.9.0393 = phi ptr [ %.sroa.9.0385637, %bb.o ], [ undef, %bb.p ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"

bb.s:                                             ; preds = %bb.n, %.thread381
  %i.ap = phi i1 [ false, %bb.n ], [ true, %.thread381 ] ; 3 uses
  %i.aq = phi i64 [ %i.aj, %bb.n ], [ 0, %.thread381 ] ; 9 uses
  %.sroa.0102.0372389657 = phi i1 [ %.sroa.0102.0372389656, %bb.n ], [ true, %.thread381 ]
  %.sroa.0101.0370390655 = phi i64 [ %.sroa.0101.0370390654, %bb.n ], [ 0, %.thread381 ] ; 4 uses
  %.sroa.9.0385638 = phi ptr [ %.sroa.9.0385637, %bb.n ], [ undef, %.thread381 ] ; 7 uses
  %.sroa.13.0401646 = phi i64 [ %.sroa.13.0401645, %bb.n ], [ undef, %.thread381 ] ; 2 uses
  %.sroa.0279.0403639 = phi i64 [ %.sroa.0279.0403638, %bb.n ], [ -9223372036854775808, %.thread381 ] ; 7 uses
  %.sroa.19.1412637 = phi i64 [ %.sroa.19.1412636, %bb.n ], [ %i.ag, %.thread381 ] ; 2 uses
  %.sroa.0.1413635 = phi ptr [ %.sroa.0.1413634, %bb.n ], [ %i.ah, %.thread381 ] ; 2 uses
  %.sroa.10.0.i176 = phi i64 [ %i.am, %bb.n ], [ 1, %.thread381 ]
  %i.ar = inttoptr i64 %.sroa.10.0.i176 to ptr    ; 5 uses
  %i.as = icmp ugt i64 %i.aq, %.sroa.19.1412637
  br i1 %i.as, label %.thread520, label %bb.v

bb.t:                                             ; preds = %bb.bi
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

bb.u:                                             ; preds = %.thread468.loopexit.split-lp, %.thread468.loopexit, %.thread448.loopexit.split-lp, %.thread448.loopexit, %.split667, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit", %bb.t, %.split672, %.split670, %.split658.thread, %.split658
  %.pn128662 = phi { ptr, i32 } [ %i.at, %.split658 ], [ %lpad.thr_comm499, %bb.t ], [ %i.fh, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit" ], [ %lpad.loopexit.split-lp525, %.thread468.loopexit.split-lp ], [ %lpad.loopexit524, %.thread468.loopexit ], [ %lpad.loopexit, %.thread448.loopexit ], [ %i.dp, %.split667 ], [ %lpad.loopexit.split-lp, %.thread448.loopexit.split-lp ], [ %i.bv, %.split670 ], [ %lpad.thr_comm499, %.split672 ], [ %i.bd, %.split658.thread ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88321
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"

.split658:                                        ; preds = %bb.y
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185", label %bb.u

.thread520:                                       ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.au, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bk

bb.v:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1413635, i64 %i.aq ; 4 uses
  %i.aw = sub nuw i64 %.sroa.19.1412637, %i.aq    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.sroa.0.1413635, i64 range(i64 2, 1) %i.aq, i1 false), !alias.scope !88324, !noalias !88328
  br i1 %.sroa.0102.0372389657, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198", %bb.v
  %.sroa.19.2 = phi i64 [ %i.bk, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198" ], [ %i.aw, %bb.v ]
  %.sroa.0.2 = phi ptr [ %i.bj, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198" ], [ %i.av, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = shl nuw nsw i64 %.sroa.0101.0370390655, 5 ; 2 uses
  br i1 %i.ap, label %._crit_edge.thread, label %bb.w

._crit_edge.thread:                               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.ay = icmp eq i64 %.sroa.0101.0370390655, 0
  tail call void @llvm.assume(i1 %i.ay)
  store i64 0, ptr %i.e, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205"

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88332
  %i.bb = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, 9) 8) #42, !noalias !88332 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1733) #41
          to label %.noexc187 unwind label %.split658.thread

.split658.thread:                                 ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.noexc187:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1732)
          to label %bb.z unwind label %.split658

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88337)
  %i.bi = icmp ugt i64 %i.bh, %i.aw
  br i1 %i.bi, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bh
  %i.bk = sub nuw i64 %i.aw, %i.bh
  %i.bl = icmp eq i64 %i.bh, 1
  br i1 %i.bl, label %bb.ab, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i188"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i188": ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.av, i64 range(i64 2, 1) %i.bh, i1 false), !alias.scope !88340, !noalias !88344
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bm = load i8, ptr %i.av, align 1, !noalias !88347, !noundef !13
  store i8 %i.bm, ptr %i.bf, align 1, !alias.scope !88337, !noalias !88348
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.bn, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88349)
  %.val.i193 = load i64, ptr %i.f, align 8, !range !26, !alias.scope !88349, !noundef !13 ; 2 uses
  %i.bo = icmp eq i64 %.val.i193, 0
  br i1 %i.bo, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit195", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.val.i193, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88349
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit195"

bb.ae:                                            ; preds = %bb.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i188"
  %.sroa.0296.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0296.0.copyload, 0
  br i1 %i.bp, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198", label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.sroa.0296.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88352
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198": ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

.lr.ph:                                           ; preds = %bb.w
  store i64 %.sroa.0101.0370390655, ptr %i.e, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.br, align 8
  %.not115 = icmp eq i64 %.sroa.0279.0403639, -9223372036854775808
  %.sroa.730.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.835.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.bg
  %.sroa.0104.1569 = phi i64 [ 1, %.lr.ph ], [ %.sroa.0104.1, %bb.bg ] ; 3 uses
  %.sroa.0104.0568 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0104.1569, %bb.bg ] ; 2 uses
  %.sroa.0.3567 = phi ptr [ %.sroa.0.2, %.lr.ph ], [ %.sroa.0.4, %bb.bg ] ; 8 uses
  %.sroa.19.3566 = phi i64 [ %.sroa.19.2, %.lr.ph ], [ %.sroa.19.4, %bb.bg ] ; 6 uses
  %.sroa.0293.0565 = phi ptr [ %i.ar, %.lr.ph ], [ %i.by, %bb.bg ] ; 3 uses
  %.sroa.8.0353564 = phi i64 [ %i.aq, %.lr.ph ], [ %i.bz, %bb.bg ] ; 2 uses
  %i.bu = icmp eq i64 %.sroa.8.0353564, 0
  br i1 %i.bu, label %bb.ai, label %bb.aj

._crit_edge:                                      ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88355
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205": ; preds = %._crit_edge.thread, %._crit_edge
  switch i64 %.sroa.0279.0403639, label %bb.ah [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"
  ]

bb.ah:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0385638) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0385638, i64 noundef %.sroa.0279.0403639, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88358
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206": ; preds = %bb.m, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252.thread", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252", %bb.bl, %bb.ah, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205", %bb.b, %bb.g, %bb.f
  ret void

.split670:                                        ; preds = %.invoke, %bb.an, %bb.ak
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

bb.ai:                                            ; preds = %bb.ag
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.bw, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.aj:                                            ; preds = %bb.ag
  %.sroa.0.0.copyload.i199 = load i16, ptr %.sroa.0293.0565, align 1, !alias.scope !88361, !noalias !88365
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0293.0565, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0293.0565, i64 4
  %i.bz = add nsw i64 %.sroa.8.0353564, -4
  %.sroa.0.0.copyload.i207 = load i16, ptr %i.bx, align 1, !alias.scope !88372, !noalias !88376 ; 2 uses
  %i.ca = zext i16 %.sroa.0.0.copyload.i207 to i64
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 4 uses
  br i1 %.not115, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread", label %.cont

.cont:                                            ; preds = %bb.aj
  %i.cc = lshr i64 %.sroa.0104.0568, 3            ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %.sroa.13.0401646
  br i1 %i.cd, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit", label %bb.ak

bb.ak:                                            ; preds = %.cont
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cc, i64 noundef %.sroa.13.0401646, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1738) #41
          to label %.noexc212 unwind label %.split670

.noexc212:                                        ; preds = %bb.ak
  unreachable

"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit": ; preds = %.cont
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.9.0385638, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !88383, !noundef !13
  %i.cg = trunc i64 %.sroa.0104.0568 to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = shl nuw i8 1, %i.ch
  %i.cj = and i8 %i.cf, %i.ci
  %.not523 = icmp eq i8 %i.cj, 0
  br i1 %.not523, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread", label %bb.al

"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread": ; preds = %bb.aj, %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit"
  %i.ck = icmp ult i16 %.sroa.0.0.copyload.i207, 4096
  br i1 %i.ck, label %bb.ao, label %bb.am

bb.al:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit"
  %i.cl = icmp ult i64 %.sroa.19.3566, 2
  br i1 %i.cl, label %bb.bb, label %bb.bc

bb.am:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.cm = call noundef align 8 dereferenceable_or_null(8192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 8) #42 ; 5 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.an, label %bb.ap, !prof !694

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8192) #41
          to label %.noexc218 unwind label %.split670

.noexc218:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread"
  %i.co = shl nuw nsw i64 %i.cb, 1                ; 7 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88386
  %i.cp = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88386 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.invoke, label %bb.au

.thread448.loopexit:                              ; preds = %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

.thread448.loopexit.split-lp:                     ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.cm, i8 0, i64 8192, i1 false)
  %i.cr = icmp ult i64 %.sroa.19.3566, 8192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3567) ]
  br i1 %i.cr, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 8192
  %i.ct = add i64 %.sroa.19.3566, -8192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.cm, ptr noundef nonnull readonly align 1 dereferenceable(8192) %.sroa.0.3567, i64 range(i64 2, 1) 8192, i1 false), !alias.scope !88391, !noalias !88395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN7roaring6bitmap5store12bitmap_store11BitmapStore8try_from17h24fc3ed428f45e5dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 4097, 65537) %i.cb, ptr noalias noundef nonnull align 8 %i.cm)
          to label %_ZN4core3ops8function2Fn4call17he459414274e05f0aE.exit unwind label %.thread448.loopexit

_ZN4core3ops8function2Fn4call17he459414274e05f0aE.exit: ; preds = %bb.aq
  %i.cu = load i64, ptr %i.b, align 8, !range !1447, !noundef !13
  %i.cv = trunc nuw i64 %i.cu to i1
  %i.cw = load i64, ptr %i.bt, align 8, !noundef !13 ; 2 uses
  br i1 %i.cv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4core3ops8function2Fn4call17he459414274e05f0aE.exit
  %i.cx = load i64, ptr %i.bs, align 8, !noundef !13
  %i.cy = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h3d5870e22f9457d9E(i8 noundef 21, i64 noundef %i.cx, i64 noundef %i.cw)
          to label %.thread463 unwind label %.thread448.loopexit.split-lp

.thread463:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.cz, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.as:                                            ; preds = %_ZN4core3ops8function2Fn4call17he459414274e05f0aE.exit
  %i.da = load ptr, ptr %i.bs, align 8, !nonnull !13, !align !25, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.az

bb.at:                                            ; preds = %bb.ap
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.db, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 8192, i64 noundef 8) #42
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

.thread468.loopexit:                              ; preds = %bb.av
  %lpad.loopexit524 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

.thread468.loopexit.split-lp:                     ; preds = %bb.ax
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

bb.au:                                            ; preds = %bb.ao
  %i.dc = icmp ugt i64 %i.co, %.sroa.19.3566
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3567) ]
  br i1 %i.dc, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hd0cdbb4bd88872b4E.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 %i.co
  %i.de = sub nuw i64 %.sroa.19.3566, %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.3567, i64 range(i64 2, 1) %i.co, i1 false), !alias.scope !88399, !noalias !88403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cb, ptr %i.a, align 8, !noalias !88407
  store ptr %i.cp, ptr %.sroa.4334.0..sroa_idx, align 8, !noalias !88407
  store i64 %i.cb, ptr %.sroa.5335.0..sroa_idx, align 8, !noalias !88407
  invoke void @"_ZN124_$LT$roaring..bitmap..store..array_store..ArrayStore$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u16$GT$$GT$$GT$8try_from17h9b325ec933d5e4fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aw unwind label %.thread468.loopexit

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.df = load i64, ptr %i.c, align 8, !range !641, !noundef !13 ; 2 uses
  %i.dg = icmp eq i64 %i.df, -9223372036854775808
  br i1 %i.dg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dh = load i64, ptr %.sroa.496.0..sroa_idx, align 8, !noundef !13
  %i.di = load i8, ptr %.sroa.597.0..sroa_idx, align 8, !range !1013, !noundef !13
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h7157d976289c6a33E(i8 noundef 21, i64 noundef %i.dh, i1 noundef zeroext %i.dj)
          to label %.thread485 unwind label %.thread468.loopexit.split-lp

.thread485:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.dl, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.ay:                                            ; preds = %bb.aw
  %.sroa.496.0.copyload = load ptr, ptr %.sroa.496.0..sroa_idx, align 8
  %.sroa.597.0.copyload = load i64, ptr %.sroa.597.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.az

bb.az:                                            ; preds = %bb.as, %bb.ay, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248"
  %.sroa.19.4 = phi i64 [ %i.fa, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %i.de, %bb.ay ], [ %i.ct, %bb.as ]
  %.sroa.0.4 = phi ptr [ %i.ez, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %i.dd, %bb.ay ], [ %i.cs, %bb.as ]
  %.sroa.835.0 = phi i64 [ %.sroa.835.0.copyload39, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %.sroa.597.0.copyload, %bb.ay ], [ %i.cw, %bb.as ]
  %.sroa.730.0 = phi ptr [ %.sroa.730.0.copyload34, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %.sroa.496.0.copyload, %bb.ay ], [ %i.da, %bb.as ] ; 2 uses
  %.sroa.027.0 = phi i64 [ %.sroa.027.0.copyload29, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %i.df, %bb.ay ], [ -9223372036854775808, %bb.as ] ; 2 uses
  %i.dm = load i64, ptr %i.br, align 8, !alias.scope !88410, !noalias !88413, !noundef !13 ; 3 uses
  %i.dn = load i64, ptr %i.e, align 8, !range !26, !alias.scope !88410, !noalias !88413, !noundef !13
  %i.do = icmp eq i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1736)
          to label %bb.bg unwind label %.split667, !noalias !88413

.split667:                                        ; preds = %bb.ba
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hb733950af053b900E"(i64 %.sroa.027.0, ptr %.sroa.730.0) #43, !noalias !88413
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hd0cdbb4bd88872b4E.exit": ; preds = %bb.au
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.dq, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #42
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.bb:                                            ; preds = %bb.al
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.dr, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.bc:                                            ; preds = %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 2 ; 3 uses
  %i.dt = add i64 %.sroa.19.3566, -2              ; 2 uses
  %.sroa.0.0.copyload.i213 = load i16, ptr %.sroa.0.3567, align 1, !alias.scope !88415, !noalias !88419 ; 3 uses
  %i.du = zext i16 %.sroa.0.0.copyload.i213 to i64 ; 4 uses
  %i.dv = shl nuw nsw i64 %i.du, 2                ; 14 uses
  %i.dw = icmp eq i16 %.sroa.0.0.copyload.i213, 0 ; 3 uses
  br i1 %i.dw, label %.thread, label %bb.bd

.thread:                                          ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 1 %i.ds, i64 range(i64 2, 1) %i.dv, i1 false), !alias.scope !88426, !noalias !88430
  %i.dx = getelementptr inbounds nuw i8, ptr inttoptr (i64 2 to ptr), i64 %i.dv
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit"

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88434
  %i.dy = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88434 ; 8 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.invoke, label %.thread516

.invoke:                                          ; preds = %bb.bd, %bb.ao
  %i.ea = phi i64 [ %i.co, %bb.ao ], [ %i.dv, %bb.bd ]
  %i.eb = phi ptr [ @1734, %bb.ao ], [ @1735, %bb.bd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb) #41
          to label %.cont713 unwind label %.split670

.cont713:                                         ; preds = %.invoke
  unreachable

.thread516:                                       ; preds = %bb.bd
  %i.ec = icmp ugt i64 %i.dv, %i.dt
  br i1 %i.ec, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %.thread516
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dy, ptr nonnull readonly align 1 %i.ds, i64 range(i64 2, 1) %i.dv, i1 false), !alias.scope !88426, !noalias !88430
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %min.iters.check = icmp ult i16 %.sroa.0.0.copyload.i213, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.be
  %i.ee = and i64 %i.du, 3                        ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  %i.eg = select i1 %i.ef, i64 4, i64 %i.ee
  %n.vec = sub nsw i64 %i.du, %i.eg               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.en, %vector.body ]
  %vec.phi745 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eo, %vector.body ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index
  %i.ej = getelementptr i8, ptr %i.eh, i64 2
  %i.ek = getelementptr i8, ptr %i.ei, i64 10
  %wide.vec = load <4 x i16>, ptr %i.ej, align 2
  %strided.vec = shufflevector <4 x i16> %wide.vec, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec746 = load <4 x i16>, ptr %i.ek, align 2
  %strided.vec747 = shufflevector <4 x i16> %wide.vec746, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.el = zext <2 x i16> %strided.vec to <2 x i64>
  %i.em = zext <2 x i16> %strided.vec747 to <2 x i64>
  %i.en = add <2 x i64> %vec.phi, %i.el           ; 2 uses
  %i.eo = add <2 x i64> %vec.phi745, %i.em        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !88439

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eo, %i.en
  %i.eq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.be, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %bb.be ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %bb.be ], [ %i.eq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.09.0.i = phi i64 [ %i.ev, %scalar.ph ], [ %.sroa.09.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.eu, %scalar.ph ], [ %.sroa.07.0.i.ph, %scalar.ph.preheader ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.sroa.09.0.i
  %i.es = getelementptr i8, ptr %i.er, i64 2
  %.val.i243 = load i16, ptr %i.es, align 2, !noundef !13
  %i.et = zext i16 %.val.i243 to i64
  %i.eu = add i64 %.sroa.07.0.i, %i.et            ; 2 uses
  %i.ev = add nuw i64 %.sroa.09.0.i, 1            ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.du
  br i1 %i.ew, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit", label %scalar.ph, !llvm.loop !88442

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit": ; preds = %scalar.ph, %.thread
  %i.ex = phi ptr [ %i.dx, %.thread ], [ %i.ed, %scalar.ph ]
  %i.ey = phi ptr [ inttoptr (i64 2 to ptr), %.thread ], [ %i.dy, %scalar.ph ] ; 5 uses
  %.sroa.04.0.i = phi i64 [ 0, %.thread ], [ %i.eu, %scalar.ph ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dv
  %i.fa = sub nuw i64 %i.dt, %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN7roaring6bitmap5store5Store13with_capacity17hc6b77316ec3dc503E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %.sroa.04.0.i)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit"
  br i1 %i.dw, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bf, %.noexc246
  %i.fb = phi ptr [ %i.fc, %.noexc246 ], [ %i.ey, %bb.bf ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.fb, align 2, !noalias !88443 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i32 %.sroa.02.0.copyload.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.02.0.copyload.i, 16
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i to i16
  %i.fd = add i16 %.sroa.4.0.extract.trunc.i.i.i, %.sroa.01.0.extract.trunc.i.i.i ; 2 uses
  %i.fe = icmp ult i16 %i.fd, %.sroa.01.0.extract.trunc.i.i.i
  br i1 %i.fe, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h19dd1b957d9c8497E.exit", label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2fe1c101c3888498E.exit.i", !prof !11

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2fe1c101c3888498E.exit.i": ; preds = %.lr.ph.i
  %.sroa.012.2.insert.ext.i.i.i = zext i16 %i.fd to i48
  %.sroa.012.2.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.012.2.insert.ext.i.i.i, 16
  %i.ff = and i32 %.sroa.02.0.copyload.i, 65535
  %.sroa.012.2.insert.mask.i.i.i = zext nneg i32 %i.ff to i48
  %.sroa.012.2.insert.insert.i.i.i = or disjoint i48 %.sroa.012.2.insert.shift.i.i.i, %.sroa.012.2.insert.mask.i.i.i
  %i.fg = invoke noundef i64 @_ZN7roaring6bitmap5store5Store12insert_range17h99c18b5fd54fe8ebE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i48 %.sroa.012.2.insert.insert.i.i.i)
          to label %.noexc246 unwind label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit" ; 0 uses

.noexc246:                                        ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2fe1c101c3888498E.exit.i"
  %.not.i = icmp eq ptr %i.fc, %i.ex
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2fe1c101c3888498E.exit.i"
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88446
  %.val148 = load i64, ptr %i.d, align 8, !range !641, !noundef !13
  %.val149 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17hc8cc16ffe90a24b9E"(i64 %.val148, ptr %.val149) #43
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h19dd1b957d9c8497E.exit": ; preds = %.lr.ph.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 90194313219 to ptr), ptr %i.fi, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88449
  %.val146 = load i64, ptr %i.d, align 8, !range !641, !noundef !13
  %.val147 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17hc8cc16ffe90a24b9E"(i64 %.val146, ptr %.val147)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

.loopexit:                                        ; preds = %.noexc246
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88452
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248": ; preds = %bb.bf, %.loopexit
  %.sroa.027.0.copyload29 = load i64, ptr %i.d, align 8
  %.sroa.730.0.copyload34 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  %.sroa.835.0.copyload39 = load i64, ptr %.sroa.835.0..sroa_idx38, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.az

bb.bg:                                            ; preds = %bb.ba, %bb.az
  %i.fj = load ptr, ptr %i.bq, align 8, !alias.scope !88410, !noalias !88413, !nonnull !13, !noundef !13
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %i.dm ; 4 uses
  store i64 %.sroa.027.0, ptr %i.fk, align 8
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %.sroa.730.0, ptr %.sroa.5339.0..sroa_idx, align 8
  %.sroa.7340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 %.sroa.835.0, ptr %.sroa.7340.0..sroa_idx, align 8
  %.sroa.8341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i16 %.sroa.0.0.copyload.i199, ptr %.sroa.8341.0..sroa_idx, align 8
  %i.fl = add i64 %i.dm, 1
  store i64 %i.fl, ptr %i.br, align 8
  %i.fm = icmp samesign ult i64 %.sroa.0104.1569, %.sroa.0101.0370390655 ; 2 uses
  %i.fn = zext i1 %i.fm to i64
  %.sroa.0104.1 = add nuw nsw i64 %.sroa.0104.1569, %i.fn
  br i1 %i.fm, label %bb.ag, label %._crit_edge

bb.bh:                                            ; preds = %.thread516
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.fo, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dy, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.bi:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit"
  %lpad.thr_comm499 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dw, label %bb.t, label %.split672

.split672:                                        ; preds = %bb.bi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit": ; preds = %bb.bh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h19dd1b957d9c8497E.exit", %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hd0cdbb4bd88872b4E.exit", %.thread485, %bb.at, %.thread463, %bb.bb, %bb.ai
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bj

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit195": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit195"
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252", label %bb.bk

bb.bk:                                            ; preds = %.thread520, %bb.bj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88455
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252": ; preds = %bb.bj, %bb.bk
  switch i64 %.sroa.0279.0403639, label %bb.bl [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"
  ]

bb.bl:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0385638) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0385638, i64 noundef %.sroa.0279.0403639, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88458
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252.thread": ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.fp, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit": ; preds = %bb.q, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"
  resume { ptr, i32 } %.pn130
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN7roaring6bitmap5serde87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9serialize17h90fc7d1b8ac26a4bE"(ptr nofree readonly captures(address) %.8.val, i64 %.16.val, ptr %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 10 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 15 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88473)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i: ; preds = %bb.a
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !88476, !noalias !88477 ; 3 uses
  %.pre.i = load i64, ptr %i.b, align 8, !range !26, !alias.scope !88482, !noalias !88493
  %i.e = icmp sgt i64 %.pre.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !88476, !noalias !88477, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.pre.i.i.i.i.i.i.i
  store i32 12346, ptr %i.g, align 1, !noalias !88476
  %i.h = add nuw i64 %.pre.i.i.i.i.i.i.i, 4       ; 4 uses
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !88476, !noalias !88477
  %i.i = icmp ult i64 %.16.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc i64 %.16.val to i32                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88501)
  %i.k = sub i64 %.pre.i, %i.h
  %i.l = icmp ult i64 %i.k, 4
  br i1 %i.l, label %bb.b, label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i, !prof !11

bb.b:                                             ; preds = %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.h, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.b
  %.pre.i.i.i.i.i.i59.i = load i64, ptr %i.d, align 8, !alias.scope !88502, !noalias !88493
  %.pre33.i = load ptr, ptr %i.c, align 8, !alias.scope !88502, !noalias !88493
  br label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i

_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i: ; preds = %.noexc10, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i
  %i.m = phi ptr [ %i.f, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i ], [ %.pre33.i, %.noexc10 ] ; 3 uses
  %i.n = phi i64 [ %i.h, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i ], [ %.pre.i.i.i.i.i.i59.i, %.noexc10 ] ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i32 %i.j, ptr %i.p, align 1, !noalias !88502
  %i.q = add nuw i64 %i.n, 4                      ; 3 uses
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !88502, !noalias !88493
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx.i = shl nuw nsw i64 %.16.val, 5
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx.i ; 3 uses
  %i.s = icmp eq i64 %.16.val, 0                  ; 2 uses
  %.sroa.043.1.idx6.i = select i1 %i.s, i64 0, i64 32
  %.sroa.043.17.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.sroa.043.1.idx6.i ; 3 uses
  br i1 %i.s, label %"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$14serialize_into17hd5073403a4d649b4E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i
  %i.t = phi ptr [ %i.cu, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i ], [ %i.m, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i ]
  %i.u = phi i64 [ %i.cw, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i ], [ %i.q, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i ] ; 3 uses
  %.sroa.043.19.i = phi ptr [ %.sroa.043.1.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i ], [ %.sroa.043.17.i, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i ] ; 3 uses
  %.sroa.043.08.i = phi ptr [ %.sroa.043.19.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i ], [ %.8.val, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.043.08.i, i64 24
  %i.w = load i16, ptr %i.v, align 8, !noalias !88461, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88512)
  %i.x = load i64, ptr %i.b, align 8, !range !26, !alias.scope !88515, !noalias !88518, !noundef !13
  %i.y = sub i64 %i.x, %i.u
  %i.z = icmp ult i64 %i.y, 2
  br i1 %i.z, label %bb.c, label %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit.i, !prof !11

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.u, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %bb.c
  %.pre.i.i.i.i.i.i61.i = load i64, ptr %i.d, align 8, !alias.scope !88523, !noalias !88518
  %.pre34.i = load ptr, ptr %i.c, align 8, !alias.scope !88523, !noalias !88518
  br label %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit.i

_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit.i: ; preds = %.noexc11, %.lr.ph.i
  %i.aa = phi ptr [ %i.t, %.lr.ph.i ], [ %.pre34.i, %.noexc11 ]
  %i.ab = phi i64 [ %i.u, %.lr.ph.i ], [ %.pre.i.i.i.i.i.i61.i, %.noexc11 ] ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i16 %i.w, ptr %i.ad, align 1, !noalias !88523
  %i.ae = add nuw i64 %i.ab, 2                    ; 4 uses
  store i64 %i.ae, ptr %i.d, align 8, !alias.scope !88523, !noalias !88518
  %i.af = load i64, ptr %.sroa.043.08.i, align 8, !range !641, !noalias !88461, !noundef !13
  %i.ag = icmp eq i64 %i.af, -9223372036854775808
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.043.08.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !88461, !noundef !13 ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.k

._crit_edge.i:                                    ; preds = %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i
  %i.aj = shl i32 %i.j, 3
  %i.ak = add i32 %i.aj, 8
  br label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.j, %._crit_edge.i
  %i.al = phi ptr [ %i.aq, %bb.j ], [ %i.cu, %._crit_edge.i ]
  %i.am = phi i64 [ %i.au, %bb.j ], [ %i.cw, %._crit_edge.i ] ; 3 uses
  %.sroa.044.114.i = phi ptr [ %.sroa.044.1.i, %bb.j ], [ %.sroa.043.17.i, %._crit_edge.i ] ; 3 uses
  %.sroa.020.013.i = phi i32 [ %.sroa.020.1.i, %bb.j ], [ %i.ak, %._crit_edge.i ] ; 3 uses
  %.sroa.044.012.i = phi ptr [ %.sroa.044.114.i, %bb.j ], [ %.8.val, %._crit_edge.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88533)
  %i.an = load i64, ptr %i.b, align 8, !range !26, !alias.scope !88536, !noalias !88539, !noundef !13
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = icmp ult i64 %i.ao, 4
  br i1 %i.ap, label %bb.d, label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit63.i, !prof !11

bb.d:                                             ; preds = %.lr.ph16.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.am, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.d
  %.pre.i.i.i.i.i.i62.i = load i64, ptr %i.d, align 8, !alias.scope !88544, !noalias !88539
  %.pre35.i = load ptr, ptr %i.c, align 8, !alias.scope !88544, !noalias !88539
  br label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit63.i

_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit63.i: ; preds = %.noexc12, %.lr.ph16.i
  %i.aq = phi ptr [ %i.al, %.lr.ph16.i ], [ %.pre35.i, %.noexc12 ] ; 2 uses
  %i.ar = phi i64 [ %i.am, %.lr.ph16.i ], [ %.pre.i.i.i.i.i.i62.i, %.noexc12 ] ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  store i32 %.sroa.020.013.i, ptr %i.at, align 1, !noalias !88544
  %i.au = add nuw i64 %i.ar, 4                    ; 3 uses
  store i64 %i.au, ptr %i.d, align 8, !alias.scope !88544, !noalias !88539
  %i.av = load i64, ptr %.sroa.044.012.i, align 8, !range !641, !noalias !88461, !noundef !13
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %bb.h, label %bb.i

.lr.ph29.i:                                       ; preds = %bb.j, %.loopexit.i
  %i.ax = phi i64 [ %i.br, %.loopexit.i ], [ %i.au, %bb.j ] ; 3 uses
  %.sroa.045.128.i = phi ptr [ %.sroa.045.1.i, %.loopexit.i ], [ %.sroa.043.17.i, %bb.j ] ; 3 uses
  %.sroa.045.027.i = phi ptr [ %.sroa.045.128.i, %.loopexit.i ], [ %.8.val, %bb.j ] ; 3 uses
  %i.ay = load i64, ptr %.sroa.045.027.i, align 8, !range !641, !noalias !88461, !noundef !13
  %i.az = icmp eq i64 %i.ay, -9223372036854775808
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.045.027.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !88461, !nonnull !13, !noundef !13 ; 4 uses
  br i1 %i.az, label %.preheader, label %bb.e

bb.e:                                             ; preds = %.lr.ph29.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.045.027.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !88461, !noundef !13 ; 2 uses
  %.idx31.i = shl nuw nsw i64 %i.bd, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx31.i
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %.loopexit.i, label %.lr.ph22.preheader.i

.lr.ph22.preheader.i:                             ; preds = %bb.e
  %.sroa.046.118.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  br label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i, %.lr.ph22.preheader.i
  %i.bg = phi i64 [ %i.bp, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i ], [ %i.ax, %.lr.ph22.preheader.i ] ; 3 uses
  %.sroa.046.120.i = phi ptr [ %.sroa.046.1.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i ], [ %.sroa.046.118.i, %.lr.ph22.preheader.i ] ; 3 uses
  %.sroa.046.019.i = phi ptr [ %.sroa.046.120.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i ], [ %i.bb, %.lr.ph22.preheader.i ]
  %i.bh = load i16, ptr %.sroa.046.019.i, align 2, !noalias !88461, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88554)
  %i.bi = load i64, ptr %i.b, align 8, !range !26, !alias.scope !88557, !noalias !88560, !noundef !13
  %i.bj = sub i64 %i.bi, %i.bg
  %i.bk = icmp ult i64 %i.bj, 2
  br i1 %i.bk, label %bb.f, label %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i, !prof !11

bb.f:                                             ; preds = %.lr.ph22.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bg, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

end_hunk_0
