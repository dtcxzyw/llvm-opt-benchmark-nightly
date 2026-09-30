Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.08?download=true
inline.NumInlined: 5641
inline.NumDeleted: 2214
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN9itertools11groupbylazy24ChunkBy$LT$K$C$I$C$F$GT$4step17hcfa2dbd6de052ca2E":bb.a
  %i.aj = add i64 %2, 1
  store i64 %i.aj, ptr %i.g, align 8, !alias.scope !11356, !noalias !11355
  br label %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17heb5054a4ee23d927E.exit"

bb.p:                                             ; preds = %bb.f, %bb.c
  invoke void @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17h9584a630234a851dE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.c, i64 noundef %2)
          to label %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17heb5054a4ee23d927E.exit" unwind label %bb.q

"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17heb5054a4ee23d927E.exit": ; preds = %bb.h, %bb.d, %bb.i, %bb.o, %bb.k, %bb.n, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit.thread.i", %bb.p
  %i.ak = load i64, ptr %1, align 8, !noundef !14
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %1, align 8
  ret void

bb.q:                                             ; preds = %bb.i, %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load i64, ptr %1, align 8, !noundef !14
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %1, align 8
  resume { ptr, i32 } %i.am
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17h2cce5e1f4aacb8a4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(152) %1, i64 noundef %2) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %.sroa.0 = alloca [37 x i8], align 8            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 4 uses
  %i.e = sub i64 %2, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 2 uses
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 5 uses
  %i.m = icmp ult i64 %i.e, %i.l
  br i1 %i.m, label %bb.d, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread"

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 6, ptr %i.n, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11367)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !11367, !noalias !11368, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !11367, !noalias !11368, !nonnull !14, !noundef !14 ; 5 uses
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit": ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.v, ptr %i.s, align 8, !alias.scope !11367, !noalias !11368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(37) %i.t, i64 37, i1 false), !noalias !11367
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.t, i64 37
  %.sroa.4.0.copyload10 = load i8, ptr %.sroa.4.0..sroa_idx9, align 1, !noalias !11367 ; 2 uses
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.t, i64 38
  %.sroa.7.0.copyload12 = load i16, ptr %.sroa.7.0..sroa_idx11, align 2, !noalias !11367 ; 2 uses
  %.not = icmp eq i8 %.sroa.4.0.copyload10, 6
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread", label %bb.e

bb.e:                                             ; preds = %bb.f, %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.thread", %bb.g, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit"
  %.sroa.4.018 = phi i8 [ 6, %bb.f ], [ 6, %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.thread" ], [ 6, %bb.g ], [ 6, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread" ], [ %.sroa.4.0.copyload10, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit" ]
  %.sroa.7.016 = phi i16 [ %.sroa.7.017, %bb.f ], [ %.sroa.7.017, %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.thread" ], [ %.sroa.7.017, %bb.g ], [ %.sroa.7.017, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread" ], [ %.sroa.7.0.copyload12, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(37) %.sroa.0, i64 37, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %.sroa.4.018, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 %.sroa.7.016, ptr %.sroa.7.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.h

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread": ; preds = %bb.d, %bb.b, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit"
  %.sroa.7.017 = phi i16 [ %.sroa.7.0.copyload12, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit" ], [ undef, %bb.b ], [ undef, %bb.d ] ; 4 uses
  %i.w = icmp eq i64 %2, %i.g
  br i1 %i.w, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread"
  %storemerge29 = add i64 %2, 1                   ; 4 uses
  store i64 %storemerge29, ptr %i.f, align 8
  %i.x = sub i64 %storemerge29, %i.d              ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.l
  br i1 %i.y, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.preheader", label %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.preheader": ; preds = %.preheader.preheader
  %i.z = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit"

.preheader:                                       ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit"
  %storemerge = add i64 %storemerge30, 1          ; 4 uses
  store i64 %storemerge, ptr %i.f, align 8
  %i.aa = sub i64 %storemerge, %i.d               ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.l
  br i1 %i.ab, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit", label %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.preheader", %.preheader
  %i.ac = phi i64 [ %i.aa, %.preheader ], [ %i.x, %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.preheader" ] ; 2 uses
  %storemerge30 = phi i64 [ %storemerge, %.preheader ], [ %storemerge29, %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.preheader" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !11369, !nonnull !14, !noundef !14
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %.val5.i = load ptr, ptr %i.af, align 8, !alias.scope !11369, !nonnull !14, !noundef !14
  %i.ag = icmp eq ptr %.val5.i, %.val.i
  br i1 %i.ag, label %.preheader, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.thread": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit", %.preheader, %.preheader.preheader
  %storemerge.lcssa = phi i64 [ %storemerge29, %.preheader.preheader ], [ %storemerge30, %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit" ], [ %storemerge, %.preheader ]
  %.lcssa = phi i64 [ %i.x, %.preheader.preheader ], [ %i.ac, %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit" ], [ %i.aa, %.preheader ] ; 2 uses
  store i64 %.lcssa, ptr %i.b, align 8
  %.not7 = icmp eq i64 %storemerge.lcssa, %i.d
  br i1 %.not7, label %bb.e, label %bb.f

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hede8121c990e434dE.exit.thread"
  %i.ah = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i64 %i.l, 1
  %.not8 = icmp ult i64 %.lcssa, %i.ai
  br i1 %.not8, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h8a7c48fa0d682969E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.aj = load i64, ptr %i.f, align 8, !noundef !14
  store i64 %i.aj, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.h:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17h7749570312cd4942E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(136) %1, i64 noundef %2) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 4 uses
  %i.e = sub i64 %2, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 2 uses
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 5 uses
  %i.m = icmp ult i64 %i.e, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11375)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11375, !noalias !11376, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !11375, !noalias !11376, !nonnull !14, !noundef !14 ; 3 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.f, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.u, ptr %i.r, align 8, !alias.scope !11375, !noalias !11376
  %i.v = load <2 x i64>, ptr %i.s, align 8, !noalias !11377
  br label %bb.e

bb.e:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit", %bb.g, %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.thread", %bb.h, %bb.f
  %.sroa.0.017 = phi i64 [ 0, %bb.g ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.thread" ], [ 0, %bb.h ], [ 0, %bb.f ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit" ]
  %i.w = phi <2 x i64> [ undef, %bb.g ], [ undef, %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.thread" ], [ undef, %bb.h ], [ undef, %bb.f ], [ %i.v, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit" ]
  store i64 %.sroa.0.017, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.w, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.d
  %i.x = icmp eq i64 %2, %i.g
  br i1 %i.x, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %bb.f
  %storemerge28 = add i64 %2, 1                   ; 4 uses
  store i64 %storemerge28, ptr %i.f, align 8
  %i.y = sub i64 %storemerge28, %i.d              ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.l
  br i1 %i.z, label %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.preheader", label %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.preheader": ; preds = %.preheader.preheader
  %3 = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit"

.preheader:                                       ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit"
  %storemerge = add i64 %storemerge29, 1          ; 4 uses
  store i64 %storemerge, ptr %i.f, align 8
  %i.aa = sub i64 %storemerge, %i.d               ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.l
  br i1 %i.ab, label %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit", label %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.preheader", %.preheader
  %i.ac = phi i64 [ %i.aa, %.preheader ], [ %i.y, %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.preheader" ] ; 2 uses
  %storemerge29 = phi i64 [ %storemerge, %.preheader ], [ %storemerge28, %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.preheader" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !11378, !nonnull !14, !noundef !14
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %.val5.i = load ptr, ptr %i.af, align 8, !alias.scope !11378, !nonnull !14, !noundef !14
  %i.ag = icmp eq ptr %.val5.i, %.val.i
  br i1 %i.ag, label %.preheader, label %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.thread": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit", %.preheader, %.preheader.preheader
  %storemerge.lcssa = phi i64 [ %storemerge28, %.preheader.preheader ], [ %storemerge29, %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit" ], [ %storemerge, %.preheader ]
  %.lcssa = phi i64 [ %i.y, %.preheader.preheader ], [ %i.ac, %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit" ], [ %i.aa, %.preheader ] ; 2 uses
  store i64 %.lcssa, ptr %i.b, align 8
  %.not7 = icmp eq i64 %storemerge.lcssa, %i.d
  br i1 %.not7, label %bb.e, label %bb.g

bb.g:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he661077c5bbb494fE.exit.thread"
  %i.ah = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i64 %i.l, 1
  %.not8 = icmp ult i64 %.lcssa, %i.ai
  br i1 %.not8, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h207d546903ea97d3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.aj = load i64, ptr %i.f, align 8, !noundef !14
  store i64 %i.aj, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.i:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17h9584a630234a851dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(152) %1, i64 noundef %2) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %.sroa.7 = alloca [36 x i8], align 4            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 4 uses
  %i.e = sub i64 %2, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 2 uses
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 5 uses
  %i.m = icmp ult i64 %i.e, %i.l
  br i1 %i.m, label %bb.d, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit.thread"

bb.c:                                             ; preds = %bb.a
  store i32 2, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11384)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11384, !noalias !11385, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !11384, !noalias !11385, !nonnull !14, !noundef !14 ; 4 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.u, ptr %i.r, align 8, !alias.scope !11384, !noalias !11385
  %.sroa.0.0.copyload9 = load i32, ptr %i.s, align 8, !noalias !11384 ; 2 uses
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.7.0..sroa_idx10, i64 36, i1 false), !noalias !11384
  %.not = icmp eq i32 %.sroa.0.0.copyload9, 2
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit.thread", label %bb.e

bb.e:                                             ; preds = %bb.f, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.thread", %bb.g, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit.thread", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit"
  %.sroa.0.013 = phi i32 [ 2, %bb.f ], [ 2, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.thread" ], [ 2, %bb.g ], [ 2, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit.thread" ], [ %.sroa.0.0.copyload9, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit" ]
  store i32 %.sroa.0.013, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.7, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.h

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit.thread": ; preds = %bb.d, %bb.b, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit"
  %i.v = icmp eq i64 %2, %i.g
  br i1 %i.v, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0778f5cbb6e6ae4E.exit.thread"
  %storemerge24 = add i64 %2, 1                   ; 4 uses
  store i64 %storemerge24, ptr %i.f, align 8
  %i.w = sub i64 %storemerge24, %i.d              ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.l
  br i1 %i.x, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.preheader", label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.preheader": ; preds = %.preheader.preheader
  %i.y = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit"

.preheader:                                       ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit"
  %storemerge = add i64 %storemerge25, 1          ; 4 uses
  store i64 %storemerge, ptr %i.f, align 8
  %i.z = sub i64 %storemerge, %i.d                ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.l
  br i1 %i.aa, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit", label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.preheader", %.preheader
  %i.ab = phi i64 [ %i.z, %.preheader ], [ %i.w, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.preheader" ] ; 2 uses
  %storemerge25 = phi i64 [ %storemerge, %.preheader ], [ %storemerge24, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.preheader" ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !11386, !nonnull !14, !noundef !14
  %i.ae = getelementptr i8, ptr %i.ac, i64 24
  %.val5.i = load ptr, ptr %i.ae, align 8, !alias.scope !11386, !nonnull !14, !noundef !14
  %i.af = icmp eq ptr %.val5.i, %.val.i
  br i1 %i.af, label %.preheader, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.thread": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit", %.preheader, %.preheader.preheader
  %storemerge.lcssa = phi i64 [ %storemerge24, %.preheader.preheader ], [ %storemerge25, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit" ], [ %storemerge, %.preheader ]
  %.lcssa = phi i64 [ %i.w, %.preheader.preheader ], [ %i.ab, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit" ], [ %i.z, %.preheader ] ; 2 uses
  store i64 %.lcssa, ptr %i.b, align 8
  %.not7 = icmp eq i64 %storemerge.lcssa, %i.d
  br i1 %.not7, label %bb.e, label %bb.f

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9e8a6ef79b86dbbE.exit.thread"
  %i.ag = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = lshr i64 %i.l, 1
  %.not8 = icmp ult i64 %.lcssa, %i.ah
  br i1 %.not8, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h09954c751912909dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.ai = load i64, ptr %i.f, align 8, !noundef !14
  store i64 %i.ai, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.h:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17hc209f114269f7998E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(136) %1, i64 noundef %2) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 4 uses
  %i.e = sub i64 %2, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 2 uses
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 5 uses
  %i.m = icmp ult i64 %i.e, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11392)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11392, !noalias !11393, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !11392, !noalias !11393, !nonnull !14, !noundef !14 ; 3 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.f, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.u, ptr %i.r, align 8, !alias.scope !11392, !noalias !11393
  %i.v = load <2 x i64>, ptr %i.s, align 8, !noalias !11394
  br label %bb.e

bb.e:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit", %bb.g, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.thread", %bb.h, %bb.f
  %.sroa.0.017 = phi i64 [ 0, %bb.g ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.thread" ], [ 0, %bb.h ], [ 0, %bb.f ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit" ]
  %i.w = phi <2 x i64> [ undef, %bb.g ], [ undef, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.thread" ], [ undef, %bb.h ], [ undef, %bb.f ], [ %i.v, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit" ]
  store i64 %.sroa.0.017, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.w, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.d
  %i.x = icmp eq i64 %2, %i.g
  br i1 %i.x, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %bb.f
  %storemerge28 = add i64 %2, 1                   ; 4 uses
  store i64 %storemerge28, ptr %i.f, align 8
  %i.y = sub i64 %storemerge28, %i.d              ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.l
  br i1 %i.z, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.preheader", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.preheader": ; preds = %.preheader.preheader
  %3 = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit"

.preheader:                                       ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit"
  %storemerge = add i64 %storemerge29, 1          ; 4 uses
  store i64 %storemerge, ptr %i.f, align 8
  %i.aa = sub i64 %storemerge, %i.d               ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.l
  br i1 %i.ab, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.preheader", %.preheader
  %i.ac = phi i64 [ %i.aa, %.preheader ], [ %i.y, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.preheader" ] ; 2 uses
  %storemerge29 = phi i64 [ %storemerge, %.preheader ], [ %storemerge28, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.preheader" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !11395, !nonnull !14, !noundef !14
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %.val5.i = load ptr, ptr %i.af, align 8, !alias.scope !11395, !nonnull !14, !noundef !14
  %i.ag = icmp eq ptr %.val5.i, %.val.i
  br i1 %i.ag, label %.preheader, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.thread": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit", %.preheader, %.preheader.preheader
  %storemerge.lcssa = phi i64 [ %storemerge28, %.preheader.preheader ], [ %storemerge29, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit" ], [ %storemerge, %.preheader ]
  %.lcssa = phi i64 [ %i.y, %.preheader.preheader ], [ %i.ac, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit" ], [ %i.aa, %.preheader ] ; 2 uses
  store i64 %.lcssa, ptr %i.b, align 8
  %.not7 = icmp eq i64 %storemerge.lcssa, %i.d
  br i1 %.not7, label %bb.e, label %bb.g

bb.g:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h0ce9b25b02195166E.exit.thread"
  %i.ah = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i64 %i.l, 1
  %.not8 = icmp ult i64 %.lcssa, %i.ai
  br i1 %.not8, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17hca4d71ab6ac95b6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.aj = load i64, ptr %i.f, align 8, !noundef !14
  store i64 %i.aj, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.i:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17hc3e248b36490034dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(152) %1, i64 noundef %2) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %.sroa.0 = alloca [37 x i8], align 8            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 4 uses
  %i.e = sub i64 %2, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 2 uses
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 5 uses
  %i.m = icmp ult i64 %i.e, %i.l
  br i1 %i.m, label %bb.d, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread"

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 6, ptr %i.n, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11401)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !11401, !noalias !11402, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !11401, !noalias !11402, !nonnull !14, !noundef !14 ; 5 uses
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit": ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.v, ptr %i.s, align 8, !alias.scope !11401, !noalias !11402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(37) %i.t, i64 37, i1 false), !noalias !11401
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.t, i64 37
  %.sroa.4.0.copyload10 = load i8, ptr %.sroa.4.0..sroa_idx9, align 1, !noalias !11401 ; 2 uses
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.t, i64 38
  %.sroa.7.0.copyload12 = load i16, ptr %.sroa.7.0..sroa_idx11, align 2, !noalias !11401 ; 2 uses
  %.not = icmp eq i8 %.sroa.4.0.copyload10, 6
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread", label %bb.e

bb.e:                                             ; preds = %bb.f, %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.thread", %bb.g, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit"
  %.sroa.4.018 = phi i8 [ 6, %bb.f ], [ 6, %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.thread" ], [ 6, %bb.g ], [ 6, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread" ], [ %.sroa.4.0.copyload10, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit" ]
  %.sroa.7.016 = phi i16 [ %.sroa.7.017, %bb.f ], [ %.sroa.7.017, %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.thread" ], [ %.sroa.7.017, %bb.g ], [ %.sroa.7.017, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread" ], [ %.sroa.7.0.copyload12, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(37) %.sroa.0, i64 37, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %.sroa.4.018, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 %.sroa.7.016, ptr %.sroa.7.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.h

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread": ; preds = %bb.d, %bb.b, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit"
  %.sroa.7.017 = phi i16 [ %.sroa.7.0.copyload12, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit" ], [ undef, %bb.b ], [ undef, %bb.d ] ; 4 uses
  %i.w = icmp eq i64 %2, %i.g
  br i1 %i.w, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93786d12fc8a465E.exit.thread"
  %storemerge29 = add i64 %2, 1                   ; 4 uses
  store i64 %storemerge29, ptr %i.f, align 8
  %i.x = sub i64 %storemerge29, %i.d              ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.l
  br i1 %i.y, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.preheader", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.preheader": ; preds = %.preheader.preheader
  %i.z = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit"

.preheader:                                       ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit"
  %storemerge = add i64 %storemerge30, 1          ; 4 uses
  store i64 %storemerge, ptr %i.f, align 8
  %i.aa = sub i64 %storemerge, %i.d               ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.l
  br i1 %i.ab, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.preheader", %.preheader
  %i.ac = phi i64 [ %i.aa, %.preheader ], [ %i.x, %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.preheader" ] ; 2 uses
  %storemerge30 = phi i64 [ %storemerge, %.preheader ], [ %storemerge29, %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.preheader" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !11403, !nonnull !14, !noundef !14
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %.val5.i = load ptr, ptr %i.af, align 8, !alias.scope !11403, !nonnull !14, !noundef !14
  %i.ag = icmp eq ptr %.val5.i, %.val.i
  br i1 %i.ag, label %.preheader, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.thread": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit", %.preheader, %.preheader.preheader
  %storemerge.lcssa = phi i64 [ %storemerge29, %.preheader.preheader ], [ %storemerge30, %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit" ], [ %storemerge, %.preheader ]
  %.lcssa = phi i64 [ %i.x, %.preheader.preheader ], [ %i.ac, %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit" ], [ %i.aa, %.preheader ] ; 2 uses
  store i64 %.lcssa, ptr %i.b, align 8
  %.not7 = icmp eq i64 %storemerge.lcssa, %i.d
  br i1 %.not7, label %bb.e, label %bb.f

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5a676e3b8764ef84E.exit.thread"
  %i.ah = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i64 %i.l, 1
  %.not8 = icmp ult i64 %.lcssa, %i.ai
  br i1 %.not8, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h83354e961e9efbb5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.aj = load i64, ptr %i.f, align 8, !noundef !14
  store i64 %i.aj, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.h:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define noundef align 8 dereferenceable_or_null(40) ptr @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17he13c89b8df7a505bE"(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %1) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 4 uses
  %i.e = sub i64 %1, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 5 uses
  %i.m = icmp ult i64 %i.e, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11408)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11408, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !11408, !nonnull !14, !noundef !14 ; 3 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.d, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ec8d742df8f8046E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ec8d742df8f8046E.exit": ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.r, align 8, !alias.scope !11408
  %i.v = load ptr, ptr %i.s, align 8, !noalias !11408, !nonnull !14, !align !19, !noundef !14
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.w = icmp eq i64 %1, %i.g
  br i1 %i.w, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %bb.d
  %storemerge24 = add i64 %1, 1                   ; 4 uses
  store i64 %storemerge24, ptr %i.f, align 8
  %i.x = sub i64 %storemerge24, %i.d              ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.l
  br i1 %i.y, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.preheader", label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.preheader": ; preds = %.preheader.preheader
  %2 = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit"

.preheader:                                       ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit"
  %storemerge = add i64 %storemerge25, 1          ; 4 uses
  store i64 %storemerge, ptr %i.f, align 8
  %i.z = sub i64 %storemerge, %i.d                ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.l
  br i1 %i.aa, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit", label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.preheader", %.preheader
  %i.ab = phi i64 [ %i.z, %.preheader ], [ %i.x, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.preheader" ] ; 2 uses
  %storemerge25 = phi i64 [ %storemerge, %.preheader ], [ %storemerge24, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.preheader" ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !11409, !nonnull !14, !noundef !14
  %i.ae = getelementptr i8, ptr %i.ac, i64 24
  %.val5.i = load ptr, ptr %i.ae, align 8, !alias.scope !11409, !nonnull !14, !noundef !14
  %i.af = icmp eq ptr %.val5.i, %.val.i
  br i1 %i.af, label %.preheader, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.thread": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit", %.preheader, %.preheader.preheader
  %storemerge.lcssa = phi i64 [ %storemerge24, %.preheader.preheader ], [ %storemerge25, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit" ], [ %storemerge, %.preheader ]
  %.lcssa = phi i64 [ %i.x, %.preheader.preheader ], [ %i.ab, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit" ], [ %i.z, %.preheader ] ; 2 uses
  store i64 %.lcssa, ptr %i.b, align 8
  %.not10 = icmp eq i64 %storemerge.lcssa, %i.d
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.thread"
  %i.ag = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = lshr i64 %i.l, 1
  %.not11 = icmp ult i64 %.lcssa, %i.ah
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h7e71183f5c2937edE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.ai = load i64, ptr %i.f, align 8, !noundef !14
  store i64 %i.ai, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ec8d742df8f8046E.exit", %bb.d, %bb.f, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.thread", %bb.e, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ null, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf6b32417444b48baE.exit.thread" ], [ null, %bb.f ], [ null, %bb.d ], [ %i.v, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ec8d742df8f8046E.exit" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17he54928d383f746fdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(136) %1, i64 noundef %2) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 4 uses
  %i.e = sub i64 %2, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 2 uses
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 5 uses
  %i.m = icmp ult i64 %i.e, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11415)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11415, !noalias !11416, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !11415, !noalias !11416, !nonnull !14, !noundef !14 ; 3 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.f, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.u, ptr %i.r, align 8, !alias.scope !11415, !noalias !11416
  %i.v = load <2 x i64>, ptr %i.s, align 8, !noalias !11417
  br label %bb.e

bb.e:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit", %bb.g, %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.thread", %bb.h, %bb.f
  %.sroa.0.017 = phi i64 [ 0, %bb.g ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.thread" ], [ 0, %bb.h ], [ 0, %bb.f ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit" ]
  %i.w = phi <2 x i64> [ undef, %bb.g ], [ undef, %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.thread" ], [ undef, %bb.h ], [ undef, %bb.f ], [ %i.v, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdcb849ed77ec406bE.exit" ]
  store i64 %.sroa.0.017, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.w, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.d
  %i.x = icmp eq i64 %2, %i.g
  br i1 %i.x, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %bb.f
  %storemerge28 = add i64 %2, 1                   ; 4 uses
  store i64 %storemerge28, ptr %i.f, align 8
  %i.y = sub i64 %storemerge28, %i.d              ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.l
  br i1 %i.z, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.preheader", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.preheader": ; preds = %.preheader.preheader
  %3 = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit"

.preheader:                                       ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit"
  %storemerge = add i64 %storemerge29, 1          ; 4 uses
  store i64 %storemerge, ptr %i.f, align 8
  %i.aa = sub i64 %storemerge, %i.d               ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.l
  br i1 %i.ab, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.preheader", %.preheader
  %i.ac = phi i64 [ %i.aa, %.preheader ], [ %i.y, %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.preheader" ] ; 2 uses
  %storemerge29 = phi i64 [ %storemerge, %.preheader ], [ %storemerge28, %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.preheader" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !11418, !nonnull !14, !noundef !14
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %.val5.i = load ptr, ptr %i.af, align 8, !alias.scope !11418, !nonnull !14, !noundef !14
  %i.ag = icmp eq ptr %.val5.i, %.val.i
  br i1 %i.ag, label %.preheader, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.thread": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit", %.preheader, %.preheader.preheader
  %storemerge.lcssa = phi i64 [ %storemerge28, %.preheader.preheader ], [ %storemerge29, %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit" ], [ %storemerge, %.preheader ]
  %.lcssa = phi i64 [ %i.y, %.preheader.preheader ], [ %i.ac, %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit" ], [ %i.aa, %.preheader ] ; 2 uses
  store i64 %.lcssa, ptr %i.b, align 8
  %.not7 = icmp eq i64 %storemerge.lcssa, %i.d
  br i1 %.not7, label %bb.e, label %bb.g

bb.g:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h53492a57da51e173E.exit.thread"
  %i.ah = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i64 %i.l, 1
  %.not8 = icmp ult i64 %.lcssa, %i.ai
  br i1 %.not8, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h106dd0e64d69e612E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.aj = load i64, ptr %i.f, align 8, !noundef !14
  store i64 %i.aj, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.i:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$14step_buffering17h0b117372f35be60dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(136) %1, i64 %2) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load <2 x i64>, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %i.g, align 8
  %i.i = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i64, ptr %i.j, align 8, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load i64, ptr %i.l, align 8, !noundef !14
  %.not = icmp eq i64 %i.k, %i.m
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2d4bf16370b83b6fE.exit", %bb.b, %bb.a
  %i.n = phi i64 [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2d4bf16370b83b6fE.exit" ], [ 0, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !11438, !noalias !11439, !nonnull !14, !noundef !14 ; 3 uses
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !11438, !noalias !11439, !nonnull !14, !noundef !14 ; 4 uses
  %.not8797 = icmp eq ptr %i.r, %i.q
  %.phi.trans.insert107 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  br i1 %.not8797, label %..thread70_crit_edge, label %.lr.ph

..thread70_crit_edge:                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre106 = load i64, ptr %.phi.trans.insert, align 8
  %.pre108 = load i64, ptr %.phi.trans.insert107, align 8
  br label %.thread70

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %.pre = load i64, ptr %1, align 8, !range !44
  %.pre105 = load i64, ptr %i.s, align 8
  %i.u = trunc nuw i64 %.pre to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !11440)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.v, ptr %i.p, align 8, !alias.scope !11440, !noalias !11439
  %i.w = load i64, ptr %i.r, align 8, !noalias !11441, !noundef !14 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noalias !11441, !noundef !14 ; 2 uses
  %i.z = icmp ne i64 %.pre105, %i.w
  %or.cond.peel = select i1 %i.u, i1 %i.z, i1 false
  store i64 1, ptr %1, align 8
  store i64 %i.w, ptr %i.s, align 8
  %i.aa = load i64, ptr %i.t, align 8, !noundef !14 ; 3 uses
  %i.ab = load i64, ptr %.phi.trans.insert107, align 8, !noundef !14 ; 2 uses
  %.not42.peel = icmp eq i64 %i.aa, %i.ab         ; 2 uses
  br i1 %or.cond.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  br i1 %.not42.peel, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.d, align 8, !range !20, !alias.scope !11442, !noundef !14
  %i.ad = icmp eq i64 %i.n, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hcd827c421166612bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = load ptr, ptr %i.e, align 8, !alias.scope !11442, !nonnull !14, !noundef !14
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.n ; 2 uses
  store i64 %i.w, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.y, ptr %i.ag, align 8
  %i.ah = add nuw nsw i64 %i.n, 1                 ; 2 uses
  store i64 %i.ah, ptr %i.f, align 8, !alias.scope !11442
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ai = phi i64 [ %i.n, %bb.d ], [ %i.ah, %bb.g ]
  %.not87.peel = icmp eq ptr %i.v, %i.q
  br i1 %.not87.peel, label %.thread70, label %.lr.ph.peel.newph

bb.i:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hcd827c421166612bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2d4bf16370b83b6fE.exit" unwind label %bb.j

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2d4bf16370b83b6fE.exit": ; preds = %bb.i
  %i.aj = load ptr, ptr %i.e, align 8, !alias.scope !11443, !nonnull !14, !noundef !14
  store <2 x i64> %i.h, ptr %i.aj, align 8
  store i64 1, ptr %i.f, align 8, !alias.scope !11443
  br label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit:                                        ; preds = %.lr.ph.peel.newph, %.lr.ph
  %.lcssa150 = phi i64 [ %i.w, %.lr.ph ], [ %i.at, %.lr.ph.peel.newph ] ; 2 uses
  %.lcssa147 = phi i64 [ %i.y, %.lr.ph ], [ %i.av, %.lr.ph.peel.newph ] ; 2 uses
  %.lcssa144 = phi i64 [ %i.aa, %.lr.ph ], [ %i.aw, %.lr.ph.peel.newph ] ; 2 uses
  %.not42.lcssa = phi i1 [ %.not42.peel, %.lr.ph ], [ %.not42, %.lr.ph.peel.newph ]
  br i1 %.not42.lcssa, label %bb.ac, label %bb.p

.thread70:                                        ; preds = %bb.h, %bb.n, %..thread70_crit_edge
  %i.al = phi i64 [ %.pre108, %..thread70_crit_edge ], [ %i.ab, %bb.h ], [ %i.ax, %bb.n ]
  %i.am = phi i64 [ %.pre106, %..thread70_crit_edge ], [ %i.aa, %bb.h ], [ %i.aw, %bb.n ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.not4274 = icmp eq i64 %i.am, %i.al
  br i1 %.not4274, label %.thread80, label %bb.p

.lr.ph.peel.newph:                                ; preds = %bb.h, %bb.n
  %i.ap = phi i64 [ %i.ba, %bb.n ], [ %i.ai, %bb.h ] ; 4 uses
  %i.aq = phi i64 [ %i.at, %bb.n ], [ %i.w, %bb.h ]
  %i.ar = phi ptr [ %i.as, %bb.n ], [ %i.v, %bb.h ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11444)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  store ptr %i.as, ptr %i.p, align 8, !alias.scope !11444, !noalias !11439
  %i.at = load i64, ptr %i.ar, align 8, !noalias !11445, !noundef !14 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !11445, !noundef !14 ; 2 uses
  %.not155 = icmp eq i64 %i.aq, %i.at
  store i64 1, ptr %1, align 8
  store i64 %i.at, ptr %i.s, align 8
  %i.aw = load i64, ptr %i.t, align 8, !noundef !14 ; 3 uses
  %i.ax = load i64, ptr %.phi.trans.insert107, align 8, !noundef !14 ; 2 uses
  %.not42 = icmp eq i64 %i.aw, %i.ax              ; 2 uses
  br i1 %.not155, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.peel.newph
  br i1 %.not42, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load i64, ptr %i.d, align 8, !range !20, !alias.scope !11442, !noundef !14
  %i.az = icmp eq i64 %i.ap, %i.ay
  br i1 %i.az, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hcd827c421166612bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %.loopexit154

bb.n:                                             ; preds = %bb.k, %bb.o
  %i.ba = phi i64 [ %i.ap, %bb.k ], [ %i.be, %bb.o ]
  %.not87 = icmp eq ptr %i.as, %i.q
  br i1 %.not87, label %.thread70, label %.lr.ph.peel.newph, !llvm.loop !11428

.loopexit154:                                     ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.f
end_hunk_0
