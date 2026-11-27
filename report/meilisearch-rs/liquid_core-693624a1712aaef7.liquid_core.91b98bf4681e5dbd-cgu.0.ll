Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_scalar17hdb9356d7ef3f0b57E":bb.a
  %.sroa.11.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx29, i64 7, i1 false), !alias.scope !560
  %.sroa.1131.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.1131.0.copyload39 = load i8, ptr %.sroa.1131.0..sroa_idx38, align 1, !alias.scope !560
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.f:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload11 = load ptr, ptr %.sroa.9.0..sroa_idx10, align 8, !alias.scope !560
  %.sroa.10.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload21 = load i64, ptr %.sroa.10.0..sroa_idx20, align 8, !alias.scope !560
  %.sroa.11.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx28, i64 7, i1 false), !alias.scope !560
  %.sroa.1131.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.1131.0.copyload37 = load i8, ptr %.sroa.1131.0..sroa_idx36, align 1, !alias.scope !560
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.g:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload9 = load ptr, ptr %.sroa.9.0..sroa_idx8, align 8, !alias.scope !560
  %.sroa.10.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload19 = load i64, ptr %.sroa.10.0..sroa_idx18, align 8, !alias.scope !560
  %.sroa.11.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx27, i64 7, i1 false), !alias.scope !560
  %.sroa.1131.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.1131.0.copyload35 = load i8, ptr %.sroa.1131.0..sroa_idx34, align 1, !alias.scope !560
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.h:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload7 = load ptr, ptr %.sroa.9.0..sroa_idx6, align 8, !alias.scope !560
  %.sroa.10.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload17 = load i64, ptr %.sroa.10.0..sroa_idx16, align 8, !alias.scope !560
  %.sroa.11.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx26, i64 7, i1 false), !alias.scope !560
  %.sroa.1131.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.1131.0.copyload33 = load i8, ptr %.sroa.1131.0..sroa_idx32, align 1, !alias.scope !560
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.i:                                             ; preds = %bb.b
  %i.h = trunc nuw i64 %i.d to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.h, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !561, !noundef !8
  switch i8 %i.k, label %bb.n [
    i8 0, label %bb.l
    i8 -1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.i
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !561, !nonnull !8, !align !10, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !561, !noundef !8
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.l:                                             ; preds = %bb.j
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !561, !nonnull !8, !align !10, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !561, !noundef !8
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.m:                                             ; preds = %bb.j
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !561, !nonnull !8, !align !10, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val10.i.i = load i64, ptr %i.r, align 8, !alias.scope !561, !noundef !8
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.n:                                             ; preds = %bb.j
  %i.s = load i8, ptr %i.i, align 8, !alias.scope !561, !noundef !8
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 17
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.1131.0 = phi i8 [ %.sroa.1131.0.copyload41, %bb.d ], [ %.sroa.1131.0.copyload39, %bb.e ], [ %.sroa.1131.0.copyload37, %bb.f ], [ %.sroa.1131.0.copyload35, %bb.g ], [ %.sroa.1131.0.copyload33, %bb.h ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload25, %bb.d ], [ %.sroa.10.0.copyload23, %bb.e ], [ %.sroa.10.0.copyload21, %bb.f ], [ %.sroa.10.0.copyload19, %bb.g ], [ %.sroa.10.0.copyload17, %bb.h ], [ %i.t, %bb.n ], [ %.val10.i.i, %bb.m ], [ %i.q, %bb.l ], [ %i.n, %bb.k ]
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.copyload15, %bb.d ], [ %.sroa.9.0.copyload13, %bb.e ], [ %.sroa.9.0.copyload11, %bb.f ], [ %.sroa.9.0.copyload9, %bb.g ], [ %.sroa.9.0.copyload7, %bb.h ], [ %i.u, %bb.n ], [ %.val.i.i, %bb.m ], [ %i.o, %bb.l ], [ %i.l, %bb.k ]
  %.sroa.0.0 = phi i64 [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.g ], [ %i.d, %bb.h ], [ 0, %bb.n ], [ 0, %bb.m ], [ 1, %bb.l ], [ 0, %bb.k ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11, i64 7, i1 false)
  %.sroa.1131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.1131.0, ptr %.sroa.1131.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  store i64 7, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h380e564709979831E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #1 !guid !564 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !17, !noundef !8
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.k
    i8 2, label %bb.i
    i8 3, label %switch.lookup
    i8 4, label %bb.j
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.c = load i64, ptr %i.b, align 8, !range !9, !alias.scope !565, !noundef !8 ; 2 uses
  %i.d = add nsw i64 %i.c, -2
  %i.e = icmp samesign ugt i64 %i.c, 1
  %i.f = select i1 %i.e, i64 %i.d, i64 5
  switch i64 %i.f, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit"
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit"

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit"

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit"

bb.g:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit"

bb.h:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit"

"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit": ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.9.0.i = phi ptr [ @0, %bb.d ], [ @1, %bb.e ], [ @2, %bb.f ], [ @3, %bb.g ], [ @4, %bb.h ], [ @5, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %i.k, %bb.h ], [ %i.b, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !8, !noalias !565, !nonnull !8
  %i.n = tail call { ptr, i64 } %i.m(ptr noundef nonnull align 1 %.sroa.0.0.i), !inline_history !566 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br label %bb.k

switch.lookup:                                    ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !19, !noundef !8 ; 2 uses
  %i.s = zext nneg i8 %i.r to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h380e564709979831E", i64 %i.s
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.t = zext nneg i8 %i.r to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h380e564709979831E.802", i64 %i.t
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  br label %bb.k

bb.k:                                             ; preds = %switch.lookup, %bb.a, %bb.j, %bb.i, %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit"
  %.sroa.9.0 = phi i64 [ %i.p, %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit" ], [ 3, %bb.j ], [ 6, %bb.i ], [ 5, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.0.0 = phi ptr [ %i.o, %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he1069be029c29154E.exit" ], [ @18, %bb.j ], [ @41, %bb.i ], [ @40, %bb.a ], [ %switch.load3, %switch.lookup ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %i.u = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %.sroa.9.0, 1
  ret { ptr, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$liquid_core..partials..inmemory..InMemorySource$u20$as$u20$liquid_core..partials..PartialSource$GT$5names17h016650d8027c1ffaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !610 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !611, !nonnull !8, !noundef !8 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.b, align 16, !noalias !612
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !611, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !617
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.g = bitcast <16 x i1> %i.f to i16            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.b, %bb.b ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !618
  %i.k = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -768 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.k to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.g, %bb.b ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.n = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i.i.i.i.i.i.i.i
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %.sroa.01.0.copyload.i.i.i.i, i64 %i.r ; 2 uses
  %i.t = add nsw i64 %i.d, -1                     ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 -40
  %.val.i.i.i.i.i = load ptr, ptr %i.u, align 8, !noalias !619, !nonnull !8, !noundef !8
  %i.v = getelementptr i8, ptr %i.s, i64 -32
  %.val3.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !619, !noundef !8
  %.sroa.0.0.i11.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.w = shl i64 %.sroa.0.0.i11.i.i.i.i, 4        ; 3 uses
  %i.x = icmp ugt i64 %i.d, 1152921504606846975
  %i.y = icmp ugt i64 %i.w, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.x, %i.y
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", !prof !16

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !620
  %i.z = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.w, i64 noundef range(i64 1, 9) 8) #59, !noalias !620 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i"

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #57, !noalias !617
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store ptr %.val.i.i.i.i.i, ptr %i.z, align 8, !noalias !617
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.val3.i.i.i.i.i, ptr %i.ab, align 8, !noalias !617
  store i64 %.sroa.0.0.i11.i.i.i.i, ptr %i.a, align 8, !noalias !617
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !617
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.ac = icmp eq i64 %i.t, 0
  br i1 %i.ac, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h502ef2bd7a3c2c69E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i", %.noexc.i.i.i.i
  %i.ad = phi ptr [ %i.ax, %.noexc.i.i.i.i ], [ %i.z, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ]
  %i.ae = phi i64 [ %i.ba, %.noexc.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 5 uses
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %i.af = phi i16 [ %i.ao, %.noexc.i.i.i.i ], [ %i.q, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %.val510.i.i.i.i.i.i = phi i64 [ %i.ar, %.noexc.i.i.i.i ], [ %i.t, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i.i89.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i7.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ag = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ag, align 16, !noalias !623
  %i.ai = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ai to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i7.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [48 x i8], ptr %.pre.i.i.i.i7.i.i.i.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = add i64 %.val510.i.i.i.i.i.i, -1        ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 -40
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !624, !nonnull !8, !noundef !8
  %i.at = getelementptr i8, ptr %i.aq, i64 -32
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !624, !noundef !8
  %i.au = icmp samesign ult i64 %i.ae, 576460752303423488
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i64, ptr %i.a, align 8, !range !23, !alias.scope !625, !noalias !617, !noundef !8
  %i.aw = icmp eq i64 %i.ae, %i.av
  br i1 %i.aw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i", label %.noexc.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ae, i64 noundef range(i64 1, 0) %.val510.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i" unwind label %bb.e, !noalias !626

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !625, !noalias !617
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.ax = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i" ], [ %i.ad, %._crit_edge20.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ae ; 2 uses
  store ptr %.val.i.i.i.i.i.i.i, ptr %i.ay, align 8, !noalias !627
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.val3.i.i.i.i.i.i.i, ptr %i.az, align 8, !noalias !627
  %i.ba = add nuw nsw i64 %i.ae, 1                ; 2 uses
  store i64 %i.ba, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !625, !noalias !617
  %i.bb = icmp eq i64 %i.ar, 0
  br i1 %i.bb, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h502ef2bd7a3c2c69E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !628
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bc, align 8, !alias.scope !628
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bd, align 8, !alias.scope !628
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hb579c00c95c08444E.exit

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i"
  %i.be = landingpad { ptr, i32 }
          cleanup
  %.val9.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !617 ; 2 uses
  %i.bf = icmp eq i64 %.val9.i.i.i.i, 0
  br i1 %i.bf, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val10.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !617, !nonnull !8, !noundef !8
  %i.bg = shl nuw i64 %.val9.i.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !617
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h502ef2bd7a3c2c69E.exit.i.i.i.i": ; preds = %.noexc.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !629
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hb579c00c95c08444E.exit

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.be

_ZN4core4iter6traits8iterator8Iterator7collect17hb579c00c95c08444E.exit: ; preds = %bb.d, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h502ef2bd7a3c2c69E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !617
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @"_ZN104_$LT$liquid_core..partials..inmemory..InMemorySource$u20$as$u20$liquid_core..partials..PartialSource$GT$7try_get17h8b5af0e8bcf0f51eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #14 personality ptr @rust_eh_personality !guid !646 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !647, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !647, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i = load i64, ptr %i.e, align 8, !alias.scope !647, !noundef !8
  %i.f = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1e824eac2428b02fE(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3), !noalias !647 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !650, !noundef !8 ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !alias.scope !650, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.d ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ad, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.l, align 1, !noalias !651 ; 2 uses
  %i.m = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i"
  %.sroa.06.0.i34.i.i = phi i16 [ %i.ab, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i" ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = add i64 %.sroa.01.0.i.i.i, %i.p
  %i.r = and i64 %i.q, %i.j
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [48 x i8], ptr %i.k, i64 %i.s ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -32
  %.val5.i.i.i = load i64, ptr %i.u, align 8, !noalias !652, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i64 %3, %.val5.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i", !prof !24

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i": ; preds = %.lr.ph.i.i
  %i.v = getelementptr i8, ptr %i.t, i64 -40
  %.val4.i.i.i = load ptr, ptr %i.v, align 8, !noalias !652, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %2, ptr nonnull readonly align 1 %.val4.i.i.i, i64 %3), !alias.scope !653, !noalias !654
  %i.w = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.w, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i", !prof !25

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i", %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.d, label %select.unfold, !prof !14

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i", %.lr.ph.i.i
  %i.aa = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  br label %bb.c

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i"
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !8, !noundef !8
  %i.ag = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !8
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %select.unfold, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit"
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN104_$LT$liquid_core..partials..inmemory..InMemorySource$u20$as$u20$liquid_core..partials..PartialSource$GT$8contains17h8d1b4334e434cd84E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #15 personality ptr @rust_eh_personality !guid !671 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !672, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !672, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load i64, ptr %i.e, align 8, !alias.scope !672, !noundef !8
  %i.f = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1e824eac2428b02fE(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !672 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !675, !noundef !8 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !675, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.d ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ad, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.l, align 1, !noalias !676 ; 2 uses
  %i.m = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i"
  %.sroa.06.0.i34.i.i = phi i16 [ %i.ab, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i" ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = add i64 %.sroa.01.0.i.i.i, %i.p
  %i.r = and i64 %i.q, %i.j
  %i.s = sub nsw i64 0, %i.r
end_hunk_0
begin_hunk_1_@"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$3get17h24c11f3eec04f302E":bb.a
  %i.y = getelementptr inbounds [40 x i8], ptr %i.p, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %.val5.i.i.i = load i64, ptr %i.z, align 8, !noalias !738, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i64 %3, %.val5.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i", !prof !24

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i": ; preds = %.lr.ph.i.i
  %i.aa = getelementptr i8, ptr %i.y, i64 -32
  %.val4.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !738, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %2, ptr nonnull readonly align 1 %.val4.i.i.i, i64 %3), !alias.scope !739, !noalias !740
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ab, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i", !prof !25

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i", %bb.c
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %select.unfold, !prof !14

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i", %.lr.ph.i.i
  %i.af = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i.i, %i.ah
  br label %bb.c

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i"
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.r, label %bb.s

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$5names17h0806a9ed684ca9e4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !741
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !741, !nonnull !8, !noundef !8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !741, !noundef !8 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, 2
  br i1 %i.aq, label %bb.h, label %bb.e, !prof !26

bb.e:                                             ; preds = %select.unfold
  %i.ar = icmp ult i64 %i.ap, 21
  br i1 %i.ar, label %bb.g, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17ha0a4562283ee729bE(ptr noalias noundef nonnull align 8 %i.an, i64 noundef %i.ap, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.h unwind label %bb.o, !noalias !741

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E(ptr noalias noundef nonnull align 8 %i.an, i64 noundef %i.ap)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %select.unfold
  call fastcc void @_ZN9itertools4free4join17h99997d1fd8e5ac17E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !741
  store ptr @47, ptr %i.b, align 8, !noalias !741
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 24, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 0, ptr %.sroa.67.0..sroa_idx.i, align 1, !noalias !741
  %i.as = invoke noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.k, !noalias !741 ; 6 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !741
  %i.at = icmp slt i64 %3, 0
  br i1 %i.at, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !16

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.i
  %i.au = icmp eq i64 %3, 0
  br i1 %i.au, label %bb.l, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !742
  %i.av = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 1) #59, !noalias !742 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc.i unwind label %bb.m, !noalias !743

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.thread21.i

bb.l:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.av, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !744
  store i64 %3, ptr %i.d, align 8, !noalias !741
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !741
  %i.ay = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull align 8 %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 17, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$3get28_$u7b$$u7b$closure$u7d$$u7d$17h0ba886354c5a6783E.exit" unwind label %bb.k, !noalias !741 ; 0 uses

bb.m:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..error..error..InnerError$GT$17hc148546d09e4dc7cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as)
          to label %"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE.exit" unwind label %.body, !noalias !745

.body:                                            ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 64, i64 noundef 8) #59, !noalias !745
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !741
  unreachable

"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE.exit": ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 64, i64 noundef 8) #59, !noalias !745
  br label %.thread21.i

.thread21.i:                                      ; preds = %"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE.exit", %bb.k
  %.pn25.i = phi { ptr, i32 } [ %i.az, %"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE.exit" ], [ %i.ax, %bb.k ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !23, !noalias !741, !noundef !8 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bb, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i", label %bb.n

bb.n:                                             ; preds = %.thread21.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !741, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !746
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i": ; preds = %bb.p, %bb.o, %bb.n, %.thread21.i
  %.pn.pn14.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %.pn25.i, %bb.n ], [ %lpad.thr_comm.i, %bb.o ], [ %.pn25.i, %.thread21.i ]
  resume { ptr, i32 } %.pn.pn14.i

bb.o:                                             ; preds = %bb.f
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i9 = load i64, ptr %i.e, align 8, !noalias !741 ; 2 uses
  %i.bd = icmp eq i64 %.val.i9, 0
  br i1 %i.bd, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = shl nuw i64 %.val.i9, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !741
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i"

"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$3get28_$u7b$$u7b$closure$u7d$$u7d$17h0ba886354c5a6783E.exit": ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !741
  %i.bf = call fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull align 8 %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @49, i64 noundef 18, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !741 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.bg, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.t, %"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$3get28_$u7b$$u7b$closure$u7d$$u7d$17h0ba886354c5a6783E.exit"
  ret void

bb.r:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit"
  %i.bh = getelementptr inbounds i8, ptr %i.y, i64 -8
  %.val = load ptr, ptr %i.bh, align 8
  %i.bi = tail call fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h306f0535c1817d54E"(ptr %.val)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

bb.s:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit"
  %i.bk = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = load <2 x ptr>, ptr %i.aj, align 8
  store <2 x ptr> %i.bm, ptr %0, align 8
  br label %bb.q

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$5names17h0806a9ed684ca9e4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !790 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !791, !nonnull !8, !noundef !8 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.b, align 16, !noalias !792
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !791, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !797
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.g = bitcast <16 x i1> %i.f to i16            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.b, %bb.b ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !798
  %i.k = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -640 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.k to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.g, %bb.b ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.n = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i.i.i.i.i.i.i.i
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [40 x i8], ptr %.sroa.01.0.copyload.i.i.i.i, i64 %i.r ; 2 uses
  %i.t = add nsw i64 %i.d, -1                     ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 -32
  %.val.i.i.i.i.i = load ptr, ptr %i.u, align 8, !noalias !799, !nonnull !8, !noundef !8
  %i.v = getelementptr i8, ptr %i.s, i64 -24
  %.val3.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !799, !noundef !8
  %.sroa.0.0.i11.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.w = shl i64 %.sroa.0.0.i11.i.i.i.i, 4        ; 3 uses
  %i.x = icmp ugt i64 %i.d, 1152921504606846975
  %i.y = icmp ugt i64 %i.w, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.x, %i.y
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", !prof !16

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !800
  %i.z = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.w, i64 noundef range(i64 1, 9) 8) #59, !noalias !800 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i"

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #57, !noalias !797
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store ptr %.val.i.i.i.i.i, ptr %i.z, align 8, !noalias !797
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.val3.i.i.i.i.i, ptr %i.ab, align 8, !noalias !797
  store i64 %.sroa.0.0.i11.i.i.i.i, ptr %i.a, align 8, !noalias !797
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !797
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.ac = icmp eq i64 %i.t, 0
  br i1 %i.ac, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc4a182dfa3df110bE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i", %.noexc.i.i.i.i
  %i.ad = phi ptr [ %i.ax, %.noexc.i.i.i.i ], [ %i.z, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ]
  %i.ae = phi i64 [ %i.ba, %.noexc.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 5 uses
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %i.af = phi i16 [ %i.ao, %.noexc.i.i.i.i ], [ %i.q, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %.val510.i.i.i.i.i.i = phi i64 [ %i.ar, %.noexc.i.i.i.i ], [ %i.t, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i.i89.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i7.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ag = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ag, align 16, !noalias !803
  %i.ai = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -640 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ai to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i7.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [40 x i8], ptr %.pre.i.i.i.i7.i.i.i.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = add i64 %.val510.i.i.i.i.i.i, -1        ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 -32
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !804, !nonnull !8, !noundef !8
  %i.at = getelementptr i8, ptr %i.aq, i64 -24
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !804, !noundef !8
  %i.au = icmp samesign ult i64 %i.ae, 576460752303423488
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i64, ptr %i.a, align 8, !range !23, !alias.scope !805, !noalias !797, !noundef !8
  %i.aw = icmp eq i64 %i.ae, %i.av
  br i1 %i.aw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i", label %.noexc.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ae, i64 noundef range(i64 1, 0) %.val510.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i" unwind label %bb.e, !noalias !806

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !805, !noalias !797
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.ax = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i" ], [ %i.ad, %._crit_edge20.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ae ; 2 uses
  store ptr %.val.i.i.i.i.i.i.i, ptr %i.ay, align 8, !noalias !807
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.val3.i.i.i.i.i.i.i, ptr %i.az, align 8, !noalias !807
  %i.ba = add nuw nsw i64 %i.ae, 1                ; 2 uses
  store i64 %i.ba, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !805, !noalias !797
  %i.bb = icmp eq i64 %i.ar, 0
  br i1 %i.bb, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc4a182dfa3df110bE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !808
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bc, align 8, !alias.scope !808
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bd, align 8, !alias.scope !808
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hba94430ae69249fdE.exit

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i"
  %i.be = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !797 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bf, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !797, !nonnull !8, !noundef !8
  %i.bg = shl nuw i64 %.val.i.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !797
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc4a182dfa3df110bE.exit.i.i.i.i": ; preds = %.noexc.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !809
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hba94430ae69249fdE.exit

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.be

_ZN4core4iter6traits8iterator8Iterator7collect17hba94430ae69249fdE.exit: ; preds = %bb.d, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc4a182dfa3df110bE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !797
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$7try_get17h9678d9ad6eb92616E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !830 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !831, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !831, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load i64, ptr %i.e, align 8, !alias.scope !831, !noundef !8
  %i.f = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1e824eac2428b02fE(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !831 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !834, !noundef !8 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !834, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.d ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ad, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.l, align 1, !noalias !835 ; 2 uses
  %i.m = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i"
  %.sroa.06.0.i34.i.i = phi i16 [ %i.ab, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i" ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = add i64 %.sroa.01.0.i.i.i, %i.p
  %i.r = and i64 %i.q, %i.j
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [40 x i8], ptr %i.k, i64 %i.s ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %.val5.i.i.i = load i64, ptr %i.u, align 8, !noalias !836, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i64 %2, %.val5.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i", !prof !24

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i": ; preds = %.lr.ph.i.i
  %i.v = getelementptr i8, ptr %i.t, i64 -32
  %.val4.i.i.i = load ptr, ptr %i.v, align 8, !noalias !836, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %1, ptr nonnull readonly align 1 %.val4.i.i.i, i64 %2), !alias.scope !837, !noalias !838
  %i.w = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.w, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i", !prof !25

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i", %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.d, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit.thread", !prof !14

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i", %.lr.ph.i.i
  %i.aa = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  br label %bb.c

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i"
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 -16
  %.val = load ptr, ptr %i.ae, align 8, !noundef !8 ; 3 uses
  %i.af = getelementptr i8, ptr %i.t, i64 -8
  %.val4 = load ptr, ptr %i.af, align 8           ; 3 uses
  %i.ag = icmp eq ptr %.val, null
  br i1 %i.ag, label %bb.h, label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit"
  %i.ah = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit.thread"

bb.h:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit"
  %i.aj = tail call fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h306f0535c1817d54E"(ptr %.val4) ; 3 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..error..error..InnerError$GT$17hc148546d09e4dc7cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aj)
          to label %"_ZN4core3ptr160drop_in_place$LT$core..result..Result$LT$alloc..sync..Arc$LT$dyn$u20$liquid_core..runtime..renderable..Renderable$GT$$C$liquid_core..error..error..Error$GT$$GT$17h4b8f76f2616c952eE.exit.i" unwind label %bb.i, !noalias !839

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef 64, i64 noundef 8) #59, !noalias !839
  resume { ptr, i32 } %i.ak

"_ZN4core3ptr160drop_in_place$LT$core..result..Result$LT$alloc..sync..Arc$LT$dyn$u20$liquid_core..runtime..renderable..Renderable$GT$$C$liquid_core..error..error..Error$GT$$GT$17h4b8f76f2616c952eE.exit.i": ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef 64, i64 noundef 8) #59, !noalias !839
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit.thread"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit.thread": ; preds = %._crit_edge.i.i, %"_ZN4core3ptr160drop_in_place$LT$core..result..Result$LT$alloc..sync..Arc$LT$dyn$u20$liquid_core..runtime..renderable..Renderable$GT$$C$liquid_core..error..error..Error$GT$$GT$17h4b8f76f2616c952eE.exit.i", %bb.g, %bb.a
  %.sroa.3.0 = phi ptr [ %.val4, %bb.g ], [ undef, %bb.a ], [ undef, %"_ZN4core3ptr160drop_in_place$LT$core..result..Result$LT$alloc..sync..Arc$LT$dyn$u20$liquid_core..runtime..renderable..Renderable$GT$$C$liquid_core..error..error..Error$GT$$GT$17h4b8f76f2616c952eE.exit.i" ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi ptr [ %.val, %bb.g ], [ null, %bb.a ], [ null, %"_ZN4core3ptr160drop_in_place$LT$core..result..Result$LT$alloc..sync..Arc$LT$dyn$u20$liquid_core..runtime..renderable..Renderable$GT$$C$liquid_core..error..error..Error$GT$$GT$17h4b8f76f2616c952eE.exit.i" ], [ null, %._crit_edge.i.i ]
  %i.al = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.am = insertvalue { ptr, ptr } %i.al, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.am
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$8contains17h09bf1da252216895E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #15 personality ptr @rust_eh_personality !guid !856 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !857, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !857, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load i64, ptr %i.e, align 8, !alias.scope !857, !noundef !8
  %i.f = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1e824eac2428b02fE(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !857 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habd7c78315f3dc08E":bb.a
  %i.fv = add i64 %i.fu, -1                       ; 2 uses
  store i64 %i.fv, ptr %.pre1560.pre.i.i.i, align 8, !noalias !1368
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.ah, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i49.i.i.i.i.i.i"

bb.ah:                                            ; preds = %.thread201.i.i.i.i.i.i
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.aj), !noalias !1337
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i49.i.i.i.i.i.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i49.i.i.i.i.i.i": ; preds = %bb.ah, %.thread201.i.i.i.i.i.i
  %i.fx = load i64, ptr %i.fd, align 8, !noalias !1369, !noundef !8
  %i.fy = add i64 %i.fx, -1                       ; 2 uses
  store i64 %i.fy, ptr %i.fd, align 8, !noalias !1369
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.ai, label %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit.i.i.i.i.i.i"

bb.ai:                                            ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i49.i.i.i.i.i.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.eg), !noalias !1337
  br label %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit.i.i.i.i.i.i"

bb.aj:                                            ; preds = %bb.ab
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !1365, !noundef !8
  %i.gc = add i64 %i.gb, 1                        ; 30 uses
  %i.gd = add i64 %i.ew, -1                       ; 29 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !1370
  %.pr.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !1337 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1365
  %.not22.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not22.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.41.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1337 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 32
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !1337, !noundef !8 ; 3 uses
  %i.gg = icmp ult i64 %.sroa.41.0.copyload.i.i.i.i.i, %i.gf
  br i1 %i.gg, label %bb.al, label %.invoke604.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gh = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !1337, !nonnull !8, !noundef !8 ; 2 uses
  %i.gj = getelementptr inbounds nuw [40 x i8], ptr %i.gi, i64 %.sroa.41.0.copyload.i.i.i.i.i ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 8, !range !13, !noalias !1337, !noundef !8
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %.invoke602.i.i.i.i.i.i, label %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i50.i.i.i.i.i.i", !prof !14

"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i50.i.i.i.i.i.i": ; preds = %bb.al
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !1337, !noundef !8 ; 3 uses
  %i.go = icmp ult i64 %i.gn, %i.gf
  br i1 %i.go, label %bb.am, label %.invoke604.i.i.i.i.i.i

bb.am:                                            ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i50.i.i.i.i.i.i"
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %i.gi, i64 %i.gn ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 8, !range !13, !noalias !1337, !noundef !8
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.cb, label %.invoke602.i.i.i.i.i.i, !prof !26

.invoke604.i.i.i.i.i.i:                           ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i50.i.i.i.i.i.i", %bb.ak
  %i.gs = phi i64 [ %.sroa.41.0.copyload.i.i.i.i.i, %bb.ak ], [ %i.gn, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i50.i.i.i.i.i.i" ]
  %i.gt = phi ptr [ @535, %bb.ak ], [ @538, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i50.i.i.i.i.i.i" ]
  store i64 %i.gd, ptr %i.eh, align 8, !noalias !1326
  store i64 %i.gc, ptr %i.ea, align 8, !noalias !1326
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.gs, i64 noundef %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gt) #57
          to label %.cont605.i.i.i.i.i.i unwind label %bb.fw, !noalias !1337

.cont605.i.i.i.i.i.i:                             ; preds = %.invoke604.i.i.i.i.i.i
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.aj
  store i64 %i.gd, ptr %i.eh, align 8, !noalias !1326
  store i64 %i.gc, ptr %i.ea, align 8, !noalias !1326
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.i.i.i, %.thread.i.i.i
  %.sroa.4.0.copyload.i.i.i443.i.i.i = phi ptr [ %.sroa.4.0.copyload.i.i.i762.i.i.i, %.loopexit.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.lcssa.i.i.i, %.thread.i.i.i ] ; 3 uses
  %.sroa.5126.0.copyload.i.i.i404.i.i.i = phi i64 [ %.sroa.5126.0.copyload.i.i.i763.i.i.i, %.loopexit.i.i.i ], [ %.sroa.5126.0.copyload.i.i.i.lcssa.i.i.i, %.thread.i.i.i ] ; 2 uses
  %.sroa.4128.0.copyload.i.i.i365.i.i.i = phi ptr [ %.sroa.4128.0.copyload.i.i.i764.i.i.i, %.loopexit.i.i.i ], [ %.sroa.4128.0.copyload.i.i.i.lcssa.i.i.i, %.thread.i.i.i ] ; 3 uses
  %.sroa.5129.0.copyload.i.i.i326.i.i.i = phi i64 [ %.sroa.5129.0.copyload.i.i.i765.i.i.i, %.loopexit.i.i.i ], [ %.sroa.5129.0.copyload.i.i.i.lcssa.i.i.i, %.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.gu = load i64, ptr %.pre1560.pre.i.i.i, align 8, !noalias !1372, !noundef !8
  %i.gv = add i64 %i.gu, -1                       ; 2 uses
  store i64 %i.gv, ptr %.pre1560.pre.i.i.i, align 8, !noalias !1372
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %bb.ao, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i56.i.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.an
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.aj), !noalias !1337
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i56.i.i.i.i.i.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i56.i.i.i.i.i.i": ; preds = %bb.ao, %bb.an
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !1375, !noalias !1337, !nonnull !8, !noundef !8 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !1376, !noundef !8
  %i.ha = add i64 %i.gz, -1                       ; 2 uses
  store i64 %i.ha, ptr %i.gy, align 8, !noalias !1376
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i56.i.i.i.i.i.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gx), !noalias !1337
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i56.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1337
  %.sroa.0125.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !1337
  %i.hc = icmp ult i64 %.sroa.5126.0.copyload.i.i.i404.i.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw [64 x i8], ptr %.sroa.4.0.copyload.i.i.i443.i.i.i, i64 %.sroa.5126.0.copyload.i.i.i404.i.i.i
  store ptr %.sroa.4.0.copyload.i.i.i443.i.i.i, ptr %i.w, align 8, !alias.scope !1377, !noalias !1337
  %i.he = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.0125.0.copyload.i.i.i.i.i.i, ptr %i.he, align 8, !alias.scope !1377, !noalias !1337
  %i.hf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i443.i.i.i, ptr %i.hf, align 8, !alias.scope !1377, !noalias !1337
  %i.hg = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.hd, ptr %i.hg, align 8, !alias.scope !1377, !noalias !1337
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1378
  %i.hh = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1378 ; 4 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.ar, label %bb.au, !prof !14

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #57
          to label %.noexc58.i.i.i.i.i.i unwind label %bb.as, !noalias !1378

.noexc58.i.i.i.i.i.i:                             ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr104drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$liquid_core..runtime..expression..Expression$GT$$GT$17h7d6decc7bf18f1eeE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w) #58
          to label %.thread215.i.i.i.i.i.i unwind label %bb.at, !noalias !1337

bb.at:                                            ; preds = %bb.as
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !1337
  unreachable

.body36.i.i.i.i.i.i:                              ; preds = %bb.aw
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$liquid_core..runtime..expression..Expression$GT$$GT$17h69455e0fc12902afE"(ptr nonnull %i.hh, ptr nonnull @244) #58
          to label %common.resume.i.i.i.i unwind label %bb.ca, !noalias !1337

bb.au:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !1337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1337
  %.sroa.0127.0.copyload.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !1337
  %i.hl = icmp ult i64 %.sroa.5129.0.copyload.i.i.i326.i.i.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw [80 x i8], ptr %.sroa.4128.0.copyload.i.i.i365.i.i.i, i64 %.sroa.5129.0.copyload.i.i.i326.i.i.i
  store ptr %.sroa.4128.0.copyload.i.i.i365.i.i.i, ptr %i.v, align 8, !alias.scope !1379, !noalias !1337
  %i.hn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.0127.0.copyload.i.i.i.i.i.i, ptr %i.hn, align 8, !alias.scope !1379, !noalias !1337
  %i.ho = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.4128.0.copyload.i.i.i365.i.i.i, ptr %i.ho, align 8, !alias.scope !1379, !noalias !1337
  %i.hp = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.hm, ptr %i.hp, align 8, !alias.scope !1379, !noalias !1337
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1380
  %i.hq = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1380 ; 3 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.av, label %bb.ay, !prof !14

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #57
          to label %.noexc64.i.i.i.i.i.i unwind label %bb.aw, !noalias !1380

.noexc64.i.i.i.i.i.i:                             ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$$GT$17h0d59931958e0338dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v) #58
          to label %.body36.i.i.i.i.i.i unwind label %bb.ax, !noalias !1337

bb.ax:                                            ; preds = %bb.aw
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !1337
  unreachable

bb.ay:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !1337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1337
  store ptr %i.hh, ptr %i.x, align 8, !noalias !1337
  %i.hu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @244, ptr %i.hu, align 8, !noalias !1337
  %i.hv = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.hq, ptr %i.hv, align 8, !noalias !1337
  %i.hw = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @245, ptr %i.hw, align 8, !noalias !1337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.hx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 120
  %i.hy = load i64, ptr %i.hx, align 8, !alias.scope !1382, !noalias !1335, !noundef !8 ; 7 uses
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %select.unfold.thread.i.i.i.i.i.i, label %bb.az

select.unfold.thread.i.i.i.i.i.i:                 ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1383
  br label %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.sink.split.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ia = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 96
  %i.ib = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 128
  %.val.i66.i.i.i.i.i.i = load i64, ptr %i.ib, align 8, !alias.scope !1382, !noalias !1335, !noundef !8
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 136
  %.val5.i.i.i.i.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !1382, !noalias !1335, !noundef !8
  %i.id = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1e824eac2428b02fE(i64 %.val.i66.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cy, i64 noundef %i.cz), !noalias !1384 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.ie = lshr i64 %i.id, 57
  %i.if = trunc nuw nsw i64 %i.ie to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 104
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !1387, !noalias !1335, !noundef !8 ; 2 uses
  %i.ii = load ptr, ptr %i.ia, align 8, !alias.scope !1387, !noalias !1335, !nonnull !8, !noundef !8 ; 6 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.if, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %.sroa.9.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.az ], [ %i.ja, %bb.bb ]
  %.pn.i.i.i.i.i.i.i.i = phi i64 [ %i.id, %bb.az ], [ %i.jb, %bb.bb ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i, %i.ih ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ij, align 1, !noalias !1388 ; 2 uses
  %i.ik = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i
  %i.il = bitcast <16 x i1> %i.ik to i16          ; 2 uses
  %.not.i.not33.i.i.i.i.i.i.i.i = icmp eq i16 %i.il, 0
  br i1 %.not.i.not33.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ba, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h59bc777169340a16E.exit.thread.i.i.i.i.i.i.i.i"
  %.sroa.06.0.i34.i.i.i.i.i.i.i.i = phi i16 [ %i.iz, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h59bc777169340a16E.exit.thread.i.i.i.i.i.i.i.i" ], [ %i.il, %bb.ba ] ; 3 uses
  %i.im = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i.i.i.i.i.i, i1 true)
  %i.in = zext nneg i16 %i.im to i64
  %i.io = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %i.in
  %i.ip = and i64 %i.io, %i.ih
  %i.iq = sub nsw i64 0, %i.ip
  %i.ir = getelementptr inbounds [40 x i8], ptr %i.ii, i64 %i.iq ; 4 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -24
  %.val5.i.i.i.i.i.i.i.i.i = load i64, ptr %i.is, align 8, !noalias !1389, !noundef !8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cz, %.val5.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h59bc777169340a16E.exit.i.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h59bc777169340a16E.exit.thread.i.i.i.i.i.i.i.i", !prof !24

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h59bc777169340a16E.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.it = getelementptr i8, ptr %i.ir, i64 -32
  %.val4.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.it, align 8, !noalias !1389, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.cy, ptr nonnull readonly align 1 %.val4.i.i.i.i.i.i.i.i.i, i64 %i.cz), !alias.scope !1390, !noalias !1391
  %i.iu = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iu, label %bb.bq, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h59bc777169340a16E.exit.thread.i.i.i.i.i.i.i.i", !prof !25

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h59bc777169340a16E.exit.thread.i.i.i.i.i.i.i.i", %bb.ba
  %i.iv = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.iw = bitcast <16 x i1> %i.iv to i16
  %i.ix = icmp eq i16 %i.iw, 0
  br i1 %i.ix, label %bb.bb, label %select.unfold.i.i.i.i.i.i, !prof !14

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h59bc777169340a16E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h59bc777169340a16E.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i
  %i.iy = add i16 %.sroa.06.0.i34.i.i.i.i.i.i.i.i, -1
  %i.iz = and i16 %i.iy, %.sroa.06.0.i34.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.iz, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ja = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.jb = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %i.ja
  br label %bb.ba

.body70.thread172.i.i.i.i.i.i:                    ; preds = %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.i.i.i.i.i.i, %bb.bl, %bb.bc
  %lpad.thr_comm170.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body70.thread165.i.i.i.i.i.i

select.unfold.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1337
  %.val3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ii, align 16, !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1383
  %i.jc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jd = bitcast <16 x i1> %i.jc to i16          ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.jd, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %select.unfold.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jf = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.je, %select.unfold.i.i.i.i.i.i ] ; 2 uses
  %i.jg = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ii, %select.unfold.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.jf, align 16, !noalias !1393
  %i.jh = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ji = getelementptr inbounds i8, ptr %i.jg, i64 -640 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.jh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.je, %select.unfold.i.i.i.i.i.i ], [ %i.jj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ii, %select.unfold.i.i.i.i.i.i ], [ %i.ji, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.jd, %select.unfold.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jk = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.jl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.jm = zext nneg i16 %i.jl to i64
  %i.jn = and i16 %i.jk, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jo = sub nsw i64 0, %i.jm
  %i.jp = getelementptr inbounds [40 x i8], ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.jo ; 2 uses
  %i.jq = add nsw i64 %i.hy, -1                   ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -32
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !1394, !nonnull !8, !noundef !8
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 -24
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !1394, !noundef !8
  %.sroa.0.0.i11.i.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.hy, i64 4) ; 3 uses
  %i.jv = shl i64 %.sroa.0.0.i11.i.i.i.i.i.i.i.i.i.i.i, 4 ; 3 uses
  %i.jw = icmp ugt i64 %i.hy, 1152921504606846975
  %i.jx = icmp ugt i64 %i.jv, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.jw, %i.jx
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !16

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1395
  %i.jy = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jv, i64 noundef range(i64 1, 9) 8) #59, !noalias !1395 ; 6 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.bc, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.bc:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #57
          to label %.noexc69.i.i.i.i.i.i unwind label %.body70.thread172.i.i.i.i.i.i, !noalias !1383

.noexc69.i.i.i.i.i.i:                             ; preds = %bb.bc
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  store ptr %i.js, ptr %i.jy, align 8, !noalias !1383
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store i64 %i.ju, ptr %i.ka, align 8, !noalias !1383
  store i64 %.sroa.0.0.i11.i.i.i.i.i.i.i.i.i.i.i, ptr %i.o, align 8, !noalias !1383
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr %i.jy, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1383
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  %i.kb = icmp eq i64 %i.jq, 0
  br i1 %i.kb, label %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.sink.split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.kc = phi ptr [ %i.ky, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jy, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.kd = phi i64 [ %i.lb, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ke = phi i16 [ %i.kn, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jn, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.val510.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kq, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jq, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i89.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ke, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kf = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kg = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i89.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.kf, align 16, !noalias !1398
  %i.kh = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ki = getelementptr inbounds i8, ptr %i.kg, i64 -640 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.kh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i89.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ki, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ke, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.kk = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.kl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.km = zext nneg i16 %i.kl to i64
  %i.kn = and i16 %i.kk, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ko = sub nsw i64 0, %i.km
  %i.kp = getelementptr inbounds [40 x i8], ptr %.pre.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ko ; 2 uses
  %i.kq = add i64 %.val510.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kp, i64 -32
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !1399, !nonnull !8, !noundef !8
  %i.kt = getelementptr inbounds i8, ptr %i.kp, i64 -24
  %i.ku = load i64, ptr %i.kt, align 8, !noalias !1399, !noundef !8
  %i.kv = icmp samesign ult i64 %i.kd, 576460752303423488
  tail call void @llvm.assume(i1 %i.kv)
  %i.kw = load i64, ptr %i.o, align 8, !range !23, !alias.scope !1400, !noalias !1383, !noundef !8
  %i.kx = icmp eq i64 %i.kd, %i.kw
  br i1 %i.kx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.noexc.i.i.i.i.i.i.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.kd, i64 noundef range(i64 1, 0) %.val510.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.bd, !noalias !1401

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1400, !noalias !1383
  br label %.noexc.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ky = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.kc, %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.kd ; 2 uses
  store ptr %i.ks, ptr %i.kz, align 8, !noalias !1402
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store i64 %i.ku, ptr %i.la, align 8, !noalias !1402
  %i.lb = add nuw nsw i64 %i.kd, 1                ; 2 uses
  store i64 %i.lb, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1400, !noalias !1383
  %i.lc = icmp eq i64 %i.kq, 0
  br i1 %i.lc, label %_ZN4core4iter6traits8iterator8Iterator7collect17hc2e9e5d7ab5011e8E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !1383 ; 2 uses
  %i.le = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.le, label %.body70.thread165.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val9.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1383, !nonnull !8, !noundef !8
  %i.lf = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.lf, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1383
  br label %.body70.thread165.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hc2e9e5d7ab5011e8E.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload14.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !1403 ; 4 uses
  %.sroa.6.0.copyload16.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1403 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1383
  %i.lg = icmp samesign ult i64 %i.kd, 20
  br i1 %i.lg, label %bb.bg, label %bb.bf, !prof !26

bb.bf:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hc2e9e5d7ab5011e8E.exit.i.i.i.i.i.i.i
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17ha0a4562283ee729bE(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload16.i.i.i.i.i.i.i, i64 noundef %i.hy, ptr noalias noundef nonnull align 1 %i.a)
          to label %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.i.i.i.i.i.i unwind label %bb.bo, !noalias !1404

bb.bg:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hc2e9e5d7ab5011e8E.exit.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hy, 4
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload16.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload16.i.i.i.i.i.i.i, i64 16
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i.i.i.i.i.i, %bb.bg
  %.sroa.0.04.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i123.i.i.i.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.01.i.i.i.i.i.i.i, %bb.bg ] ; 4 uses
  %.pn3.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.04.i.i.i.i.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i.i.i.i.i.i ], [ %.sroa.6.0.copyload16.i.i.i.i.i.i.i, %bb.bg ] ; 6 uses
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.04.i.i.i.i.i.i.i, align 8, !alias.scope !1405, !noalias !1404, !nonnull !8, !align !10, !noundef !8 ; 3 uses
  %i.li = getelementptr i8, ptr %.pn3.i.i.i.i.i.i.i, i64 24
  %.val12.i.i.i.i.i.i.i.i = load i64, ptr %i.li, align 8, !alias.scope !1405, !noalias !1404, !noundef !8 ; 5 uses
  %.val13.i.i.i.i.i.i.i.i = load ptr, ptr %.pn3.i.i.i.i.i.i.i, align 8, !alias.scope !1405, !noalias !1404, !nonnull !8, !align !10, !noundef !8
  %i.lj = getelementptr i8, ptr %.pn3.i.i.i.i.i.i.i, i64 8
  %.val14.i.i.i.i.i.i.i.i = load i64, ptr %i.lj, align 8, !alias.scope !1405, !noalias !1404, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i.i.i.i.i.i.i, i64 %.val14.i.i.i.i.i.i.i.i)
  %i.lk = sub i64 %.val12.i.i.i.i.i.i.i.i, %.val14.i.i.i.i.i.i.i.i
  %i.ll = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val13.i.i.i.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !1406, !noalias !1407 ; 2 uses
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp eq i32 %i.ll, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ln, i64 %i.lk, i64 %i.lm
  %i.lo = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lo, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.pn3.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !1405, !noalias !1404
  %i.lp = icmp eq ptr %.pn3.i.i.i.i.i.i.i, %.sroa.6.0.copyload16.i.i.i.i.i.i.i
  br i1 %i.lp, label %._crit_edge, label %.lr.ph

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i.i.i.i.i2863, ptr noundef nonnull align 8 dereferenceable(16) %i.lr, i64 16, i1 false), !alias.scope !1405, !noalias !1404
  %i.lq = icmp eq ptr %i.lr, %.sroa.6.0.copyload16.i.i.i.i.i.i.i
  br i1 %i.lq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i2863 = phi ptr [ %i.lr, %.preheader.i.i.i.i.i.i.i ], [ %.pn3.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.lr = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i2863, i64 -16 ; 4 uses
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.lr, align 8, !alias.scope !1405, !noalias !1404, !nonnull !8, !align !10, !noundef !8
  %i.ls = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i2863, i64 -8
  %.val10.i.i.i.i.i.i.i.i = load i64, ptr %i.ls, align 8, !alias.scope !1405, !noalias !1404, !noundef !8 ; 2 uses
  %..i.i.i.i.i15.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i.i.i.i.i.i.i, i64 %.val10.i.i.i.i.i.i.i.i)
  %i.lt = sub i64 %.val12.i.i.i.i.i.i.i.i, %.val10.i.i.i.i.i.i.i.i
  %i.lu = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val9.i.i.i.i.i.i.i.i, i64 %..i.i.i.i.i15.i.i.i.i.i.i.i.i), !alias.scope !1408, !noalias !1407 ; 2 uses
  %i.lv = sext i32 %i.lu to i64
  %i.lw = icmp eq i32 %i.lu, 0
  %spec.store.select.i.i.i.i.i16.i.i.i.i.i.i.i.i = select i1 %i.lw, i64 %i.lt, i64 %i.lv
  %i.lx = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.i.i.i.i.i.i.i, 0
  br i1 %i.lx, label %.preheader.i.i.i.i.i.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i.i.i.i.i.i.i, %.lr.ph, %.preheader.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.0.copyload16.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.sroa.6.0.copyload16.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i2863, %.lr.ph ] ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i.i.i.i.i.i, align 8, !alias.scope !1405, !noalias !1409
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa.i.i.i.i.i.i.i, i64 8
  store i64 %.val12.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1405, !noalias !1409
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i.i.i.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.0.i123.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i124.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i123.i.i.i.i.i.i, %i.lh
  br i1 %.not.i124.i.i.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.sink.split.i.i.i.i.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i", %select.unfold.thread.i.i.i.i.i.i
  %.sroa.0.04048.i.ph.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i11.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %select.unfold.thread.i.i.i.i.i.i ]
  %.sroa.6.045.i.ph.i.i.i.i.i.i = phi ptr [ %i.jy, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %select.unfold.thread.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1383
  br label %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.i.i.i.i.i.i

_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.i.i.i.i.i.i: ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i.i.i.i.i.i, %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.sink.split.i.i.i.i.i.i, %bb.bf
  %.sroa.0.04048.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload14.i.i.i.i.i.i.i, %bb.bf ], [ %.sroa.0.04048.i.ph.i.i.i.i.i.i, %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.sink.split.i.i.i.i.i.i ], [ %.sroa.0.0.copyload14.i.i.i.i.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i.i.i.i.i.i ]
  %.sroa.6.045.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.0.copyload16.i.i.i.i.i.i.i, %bb.bf ], [ %.sroa.6.045.i.ph.i.i.i.i.i.i, %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.sink.split.i.i.i.i.i.i ], [ %.sroa.6.0.copyload16.i.i.i.i.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1404
  store i64 %.sroa.0.04048.i.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !1404
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.6.045.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1404
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.hy, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1404
  invoke fastcc void @_ZN9itertools4free4join17h99997d1fd8e5ac17E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc72.i.i.i.i.i.i unwind label %.body70.thread172.i.i.i.i.i.i

.noexc72.i.i.i.i.i.i:                             ; preds = %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1404
  store ptr @258, ptr %i.p, align 8, !noalias !1404
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 14, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1404
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 23
  store i8 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i, align 1, !noalias !1404
  %i.ly = invoke noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.bh unwind label %bb.bj, !noalias !1404 ; 6 uses

bb.bh:                                            ; preds = %.noexc72.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1404
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %i.lz = icmp slt i64 %i.cz, 0
  br i1 %i.lz, label %bb.bi, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !16

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.ma = icmp eq i64 %i.cz, 0
  br i1 %i.ma, label %bb.bk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1410
  %i.mb = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cz, i64 noundef range(i64 1, 9) 1) #59, !noalias !1410 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i", %bb.bh
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.bh ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc.i68.i.i.i.i.i.i unwind label %bb.bm, !noalias !1411

.noexc.i68.i.i.i.i.i.i:                           ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bk, %.noexc72.i.i.i.i.i.i
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.thread70.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.mb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.cy, i64 %i.cz, i1 false), !noalias !1412
  store i64 %i.cz, ptr %i.r, align 8, !noalias !1404
  %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1404
  %.sroa.539.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.cz, ptr %.sroa.539.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1404
  %i.me = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull align 8 %i.ly, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @259, i64 noundef 16, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.bl unwind label %bb.bj, !noalias !1404 ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1404
  %i.mf = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull align 8 %i.ly, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @260, i64 noundef 17, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.bz unwind label %.body70.thread172.i.i.i.i.i.i, !noalias !1404 ; 0 uses

bb.bm:                                            ; preds = %bb.bi
  %i.mg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..error..error..InnerError$GT$17hc148546d09e4dc7cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ly)
          to label %"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE.exit.i.i.i.i.i.i" unwind label %.body121.i.i.i.i.i.i, !noalias !1413

.body121.i.i.i.i.i.i:                             ; preds = %bb.bm
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ly, i64 noundef 64, i64 noundef 8) #59, !noalias !1413
end_hunk_2
begin_hunk_3_@_ZN11liquid_core5model4find4find17h92df724bd0696f7dE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2325
  call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  br i1 %i.hp, label %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h8ce9839e73f01db8E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h77ef5d1c15c6010fE.exit.i.i121"
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.cb

bb.cb:                                            ; preds = %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17he64a3f8fcc982ba4E.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.hu = phi ptr [ %i.hn, %.lr.ph.i.i.i.i ], [ %i.hv, %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17he64a3f8fcc982ba4E.exit.i.i.i.i" ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2336
  store ptr %i.hu, ptr %i.j, align 8, !noalias !2337
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  %i.hw = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !2340, !noalias !2341, !noundef !8 ; 3 uses
  %i.hx = load i64, ptr %i.m, align 8, !range !23, !alias.scope !2340, !noalias !2341, !noundef !8
  %i.hy = sub i64 %i.hx, %i.hw
  %i.hz = icmp ult i64 %i.hy, 2
  br i1 %i.hz, label %bb.cc, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i.i.i.i.i.i", !prof !14

bb.cc:                                            ; preds = %bb.cb
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.hw, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2342

.noexc18.i.i:                                     ; preds = %bb.cc
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2341
  br label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i.i.i.i.i.i"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i.i.i.i.i.i": ; preds = %.noexc18.i.i, %bb.cb
  %i.ia = phi i64 [ %i.hw, %bb.cb ], [ %.pre.i.i.i.i.i.i.i.i.i, %.noexc18.i.i ] ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1
  call void @llvm.assume(i1 %i.ib)
  %i.ic = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2341, !nonnull !8, !noundef !8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia
  store i16 8236, ptr %i.id, align 1, !noalias !2344
  %i.ie = add nuw i64 %i.ia, 2
  store i64 %i.ie, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2337
  store ptr %i.j, ptr %i.i, align 8, !noalias !2337
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4d8e5fcecdcd7a49E", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2345
  store ptr @34, ptr %i.h, align 8, !noalias !2346
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2346
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2346
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2346
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2346
  %i.if = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @443, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %.noexc19.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2347, !inline_history !35

.noexc19.i.i:                                     ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2345
  br i1 %i.if, label %.invoke.i.i, label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17he64a3f8fcc982ba4E.exit.i.i.i.i", !prof !38

.invoke.i.i:                                      ; preds = %.noexc19.i.i, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i120"
  %i.ig = phi ptr [ @803, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i120" ], [ @804, %.noexc19.i.i ]
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @475, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ig) #57
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2342

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17he64a3f8fcc982ba4E.exit.i.i.i.i": ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2336
  %i.ih = icmp eq ptr %i.hv, %i.hl
  br i1 %i.ih, label %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h8ce9839e73f01db8E.exit.i.i", label %bb.cb

"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h8ce9839e73f01db8E.exit.i.i": ; preds = %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17he64a3f8fcc982ba4E.exit.i.i.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h77ef5d1c15c6010fE.exit.i.i121"
  %.sroa.0169.0.copyload170 = load i64, ptr %i.m, align 8, !noalias !2348
  %.sroa.6171.0.copyload173 = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !2348
  %.sroa.8174.0.copyload176 = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !2348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2325
  br label %_ZN9itertools4free4join17hd70962721adf0556E.exit

"_ZN103_$LT$liquid_core..model..value..cow..ValueCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h7d0ca898b3bb4052E.exit": ; preds = %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit.i97
  %i.ii = extractvalue { ptr, ptr } %i.gf, 0      ; 2 uses
  %.not86 = icmp eq ptr %i.ii, null
  br i1 %.not86, label %.thread285, label %bb.cd

bb.cd:                                            ; preds = %"_ZN103_$LT$liquid_core..model..value..cow..ValueCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h7d0ca898b3bb4052E.exit"
  %i.ij = extractvalue { ptr, ptr } %i.gf, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ij) ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 176
  %i.il = load ptr, ptr %i.ik, align 8, !invariant.load !8, !nonnull !8
  %i.im = invoke { ptr, ptr } %i.il(ptr noundef nonnull align 1 %i.ii)
          to label %bb.ce unwind label %bb.az     ; 2 uses

.thread285:                                       ; preds = %"_ZN103_$LT$liquid_core..model..value..cow..ValueCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h7d0ca898b3bb4052E.exit"
  store i64 0, ptr %i.an, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 0, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br label %_ZN9itertools4free4join17hd70962721adf0556E.exit

bb.ce:                                            ; preds = %bb.cd
  %i.ir = extractvalue { ptr, ptr } %i.im, 0      ; 14 uses
  %i.is = extractvalue { ptr, ptr } %i.im, 1      ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2354
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !invariant.load !8, !alias.scope !2355, !noalias !2356, !nonnull !8 ; 2 uses
  invoke void %i.iu(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 1 %i.ir)
          to label %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ec24f515532391bE.exit.i.i.i.i" unwind label %bb.cf, !noalias !2354, !inline_history !2181

bb.cf:                                            ; preds = %bb.ce
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ec24f515532391bE.exit.i.i.i.i": ; preds = %bb.ce
  %i.iw = load i64, ptr %i.f, align 8, !range !39, !noalias !2354, !noundef !8 ; 3 uses
  %.not.i.i.i.i129 = icmp eq i64 %i.iw, 2
  br i1 %.not.i.i.i.i129, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ec24f515532391bE.exit.i.i.i.i"
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2354 ; 3 uses
  %.sroa.65.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.65.0.copyload.i.i.i.i = load i64, ptr %.sroa.65.0..sroa_idx.i.i.i.i, align 8, !noalias !2354 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 31
  %.sroa.79.0.copyload.i.i.i.i = load i8, ptr %.sroa.79.0..sroa_idx.i.i.i.i, align 1, !noalias !2354 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2354
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !invariant.load !8, !alias.scope !2355, !noalias !2357, !nonnull !8 ; 2 uses
  invoke void %i.iy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %i.ir)
          to label %bb.cn unwind label %bb.cl, !noalias !2354, !inline_history !2184

bb.ch:                                            ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ec24f515532391bE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2354
  %i.iz = load ptr, ptr %i.is, align 8, !invariant.load !8, !alias.scope !2355 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke void %i.iz(ptr noundef nonnull align 1 %i.ir)
          to label %bb.cj unwind label %bb.ck, !noalias !2354

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !range !23, !invariant.load !8, !alias.scope !2355 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !range !33, !invariant.load !8, !alias.scope !2355 ; 2 uses
  %i.je = icmp ult i64 %i.jd, -9223372036854775807
  call void @llvm.assume(i1 %i.je)
  %i.jf = icmp eq i64 %i.jb, 0
  br i1 %i.jf, label %bb.dg, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.cj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.ir, i64 noundef %i.jb, i64 noundef range(i64 1, -9223372036854775807) %i.jd) #59, !noalias !2354
  br label %bb.dg

bb.ck:                                            ; preds = %bb.ci
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !range !23, !invariant.load !8, !alias.scope !2355 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !range !33, !invariant.load !8, !alias.scope !2355 ; 2 uses
  %i.jl = icmp ult i64 %i.jk, -9223372036854775807
  call void @llvm.assume(i1 %i.jl)
  %i.jm = icmp eq i64 %i.ji, 0
  br i1 %i.jm, label %.thread, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.ck
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.ir, i64 noundef %i.ji, i64 noundef range(i64 1, -9223372036854775807) %i.jk) #59, !noalias !2354
  br label %.thread

bb.cl:                                            ; preds = %bb.co, %bb.cg
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.jo = icmp eq i64 %i.iw, 0
  br i1 %i.jo, label %bb.dc, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jp = icmp ne i8 %.sroa.79.0.copyload.i.i.i.i, -1
  %i.jq = icmp eq i64 %.sroa.65.0.copyload.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.jp, i1 true, i1 %i.jq
  br i1 %or.cond.i.i.i.i, label %bb.dc, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %.sroa.65.0.copyload.i.i.i.i, i64 noundef 1) #59, !noalias !2358
  br label %bb.dc

bb.cn:                                            ; preds = %bb.cg
  %i.jr = load i64, ptr %i.e, align 8, !noalias !2354, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2354
  %i.js = call i64 @llvm.uadd.sat.i64(i64 %i.jr, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i130 = call noundef i64 @llvm.umax.i64(i64 %i.js, i64 4) ; 2 uses
  %i.jt = shl i64 %.sroa.0.0.i.i.i.i.i130, 5      ; 3 uses
  %i.ju = icmp ugt i64 %i.js, 576460752303423487
  %i.jv = icmp ugt i64 %i.jt, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ju, %i.jv
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.co, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", !prof !16

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %bb.cn
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2359
  %i.jw = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jt, i64 noundef range(i64 1, 9) 8) #59, !noalias !2359 ; 8 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %bb.cn
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %bb.cn ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.jt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #57
          to label %.noexc.i.i.i.i unwind label %bb.cl, !noalias !2354

.noexc.i.i.i.i:                                   ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  %.sroa.615.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.615.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !2354
  store i64 %i.iw, ptr %i.jw, align 8, !noalias !2354
  %.sroa.4.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx13.i.i.i.i, align 8, !noalias !2354
  %.sroa.514.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store i64 %.sroa.65.0.copyload.i.i.i.i, ptr %.sroa.514.0..sroa_idx.i.i.i.i, align 8, !noalias !2354
  %.sroa.716.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 31
  store i8 %.sroa.79.0.copyload.i.i.i.i, ptr %.sroa.716.0..sroa_idx.i.i.i.i, align 1, !noalias !2354
  store i64 %.sroa.0.0.i.i.i.i.i130, ptr %i.g, align 8, !noalias !2354
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.jw, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2354
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !2354
  call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2364
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.79.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  br label %bb.cq

bb.cq:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i.i.i.i.i", %bb.cp
  %i.jy = phi ptr [ %i.ks, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i.i.i.i.i" ], [ %i.jw, %bb.cp ]
  %.sroa.6166.0.copyload168 = phi i64 [ %i.ku, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i.i.i.i.i" ], [ 1, %bb.cp ] ; 6 uses
  invoke void %i.iu(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %i.ir)
          to label %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ec24f515532391bE.exit.i.i.i.i.i.i" unwind label %bb.cr, !noalias !2365, !inline_history !2181

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cz, %bb.cy, %bb.cr
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.jz, %bb.cr ], [ %i.kv, %bb.cy ], [ %i.kv, %bb.cz ], [ %i.kv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$GT$17h83285c1ddc03f86fE"(ptr nonnull align 1 %i.ir, ptr nonnull readonly align 8 dereferenceable(56) %i.is) #58
          to label %.body.i.i.i.i unwind label %bb.da, !noalias !2366

bb.cr:                                            ; preds = %bb.cq
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit.i.i.i.i.i.i"

"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ec24f515532391bE.exit.i.i.i.i.i.i": ; preds = %bb.cq
  %i.ka = load i64, ptr %i.d, align 8, !range !39, !noalias !2365, !noundef !8 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ka, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ec24f515532391bE.exit.i.i.i.i.i.i"
  %.sroa.53.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2365 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2365 ; 3 uses
  %.sroa.79.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.79.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !2365 ; 2 uses
  %i.kb = icmp samesign ult i64 %.sroa.6166.0.copyload168, 288230376151711744
  call void @llvm.assume(i1 %i.kb)
  %i.kc = load i64, ptr %i.g, align 8, !range !23, !alias.scope !2367, !noalias !2354, !noundef !8
  %i.kd = icmp eq i64 %.sroa.6166.0.copyload168, %i.kc
  br i1 %i.kd, label %bb.cx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i.i.i.i.i"

bb.ct:                                            ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ec24f515532391bE.exit.i.i.i.i.i.i"
  %i.ke = load ptr, ptr %i.is, align 8, !invariant.load !8, !alias.scope !2368 ; 2 uses
  %.not.i.i.i.i.i.i.i131 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i.i.i.i131, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  invoke void %i.ke(ptr noundef nonnull align 1 %i.ir)
          to label %bb.cv unwind label %bb.cw, !noalias !2365

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.kf = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !range !23, !invariant.load !8, !alias.scope !2368 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.ki = load i64, ptr %i.kh, align 8, !range !33, !invariant.load !8, !alias.scope !2368 ; 2 uses
  %i.kj = icmp ult i64 %i.ki, -9223372036854775807
  call void @llvm.assume(i1 %i.kj)
  %i.kk = icmp eq i64 %i.kg, 0
  br i1 %i.kk, label %bb.db, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i133"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i133": ; preds = %bb.cv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.ir, i64 noundef %i.kg, i64 noundef range(i64 1, -9223372036854775807) %i.ki) #59, !noalias !2365
  br label %bb.db

bb.cw:                                            ; preds = %bb.cu
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !range !23, !invariant.load !8, !alias.scope !2368 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.kp = load i64, ptr %i.ko, align 8, !range !33, !invariant.load !8, !alias.scope !2368 ; 2 uses
  %i.kq = icmp ult i64 %i.kp, -9223372036854775807
  call void @llvm.assume(i1 %i.kq)
  %i.kr = icmp eq i64 %i.kn, 0
  br i1 %i.kr, label %.body.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i132"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i132": ; preds = %bb.cw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.ir, i64 noundef %i.kn, i64 noundef range(i64 1, -9223372036854775807) %i.kp) #59, !noalias !2365
  br label %.body.i.i.i.i

bb.cx:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2365
  invoke void %i.iy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.ir)
          to label %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$9size_hint17h3d57cf575314cd18E.exit.i.i.i.i.i.i" unwind label %bb.cy, !noalias !2365, !inline_history !2184

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$9size_hint17h3d57cf575314cd18E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i_crit_edge.i.i.i.i", %bb.cs
  %i.ks = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$9size_hint17h3d57cf575314cd18E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.jy, %bb.cs ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [32 x i8], ptr %i.ks, i64 %.sroa.6166.0.copyload168 ; 5 uses
  %.sroa.614.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.614.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i64 7, i1 false), !noalias !2365
  store i64 %i.ka, ptr %i.kt, align 8, !noalias !2365
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store ptr %.sroa.53.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2365
  %.sroa.513.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2365
  %.sroa.715.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kt, i64 31
  store i8 %.sroa.79.0.copyload.i.i.i.i.i.i, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !2365
  %i.ku = add nuw nsw i64 %.sroa.6166.0.copyload168, 1 ; 2 uses
  store i64 %i.ku, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2367, !noalias !2354
  br label %bb.cq

bb.cy:                                            ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$9size_hint17h3d57cf575314cd18E.exit.i.i.i.i.i.i", %bb.cx
  %i.kv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.kw = icmp eq i64 %i.ka, 0
  br i1 %i.kw, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit.i.i.i.i.i.i", label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kx = icmp ne i8 %.sroa.79.0.copyload.i.i.i.i.i.i, -1
  %i.ky = icmp eq i64 %.sroa.6.0.copyload.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.kx, i1 true, i1 %i.ky
  br i1 %or.cond.i.i.i.i.i.i, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.6.0.copyload.i.i.i.i.i.i, i64 noundef 1) #59, !noalias !2369
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit.i.i.i.i.i.i"

"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$9size_hint17h3d57cf575314cd18E.exit.i.i.i.i.i.i": ; preds = %bb.cx
  %i.kz = load i64, ptr %i.c, align 8, !noalias !2365, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2365
  %i.la = call i64 @llvm.uadd.sat.i64(i64 %i.kz, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.sroa.6166.0.copyload168, i64 noundef range(i64 1, 0) %i.la, i64 noundef 8, i64 noundef 32)
          to label %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$9size_hint17h3d57cf575314cd18E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.cy, !noalias !2370

"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$9size_hint17h3d57cf575314cd18E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$9size_hint17h3d57cf575314cd18E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2367, !noalias !2354
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2c6b0f3db5785f3cE.exit.i.i.i.i.i.i"

bb.da:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit.i.i.i.i.i.i"
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !2365
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i132", %bb.cw, %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit.i.i.i.i.i.i"
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit.i.i.i.i.i.i" ], [ %i.kl, %bb.cw ], [ %i.kl, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i132" ]
  call fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$kstring..string_cow..KStringCowBase$GT$$GT$17h9c724b5b2410ddefE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #58, !noalias !2354
  br label %.thread

bb.db:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i133", %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2364
  %.sroa.0161.0.copyload162 = load i64, ptr %i.g, align 8, !noalias !2355
  %.sroa.5163.0.copyload165 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2354
  br label %bb.dg

.body.i.i.i:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i127", %bb.df
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !2354
  unreachable

bb.dc:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.cm, %bb.cl, %bb.cf
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.iv, %bb.cf ], [ %i.jn, %bb.cl ], [ %i.jn, %bb.cm ], [ %i.jn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.lc = load ptr, ptr %i.is, align 8, !invariant.load !8, !alias.scope !2371, !noalias !2372 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not.i1.i.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void %i.lc(ptr noundef nonnull align 1 %i.ir)
          to label %bb.de unwind label %bb.df, !noalias !2373

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ld = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !range !23, !invariant.load !8, !alias.scope !2371, !noalias !2372 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.lg = load i64, ptr %i.lf, align 8, !range !33, !invariant.load !8, !alias.scope !2371, !noalias !2372 ; 2 uses
  %i.lh = icmp ult i64 %i.lg, -9223372036854775807
  call void @llvm.assume(i1 %i.lh), !noalias !2372
  %i.li = icmp eq i64 %i.le, 0
  br i1 %i.li, label %.thread, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i128"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i128": ; preds = %bb.de
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.ir, i64 noundef %i.le, i64 noundef range(i64 1, -9223372036854775807) %i.lg) #59, !noalias !2373
  br label %.thread

bb.df:                                            ; preds = %bb.dd
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !range !23, !invariant.load !8, !alias.scope !2371, !noalias !2372 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !range !33, !invariant.load !8, !alias.scope !2371, !noalias !2372 ; 2 uses
  %i.lo = icmp ult i64 %i.ln, -9223372036854775807
  call void @llvm.assume(i1 %i.lo), !noalias !2372
  %i.lp = icmp eq i64 %i.ll, 0
  br i1 %i.lp, label %.body.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i127"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i127": ; preds = %bb.df
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.ir, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) %i.ln) #59, !noalias !2373
  br label %.body.i.i.i

bb.dg:                                            ; preds = %bb.db, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.cj
  %.sroa.6166.0 = phi i64 [ 0, %bb.cj ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ], [ %.sroa.6166.0.copyload168, %bb.db ] ; 2 uses
  %.sroa.5163.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.cj ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ], [ %.sroa.5163.0.copyload165, %bb.db ] ; 2 uses
  %.sroa.0161.0 = phi i64 [ 0, %bb.cj ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ], [ %.sroa.0161.0.copyload162, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2353
  store i64 %.sroa.0161.0, ptr %i.an, align 8
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.5163.0, ptr %.sroa.5163.0..sroa_idx, align 8
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.6166.0, ptr %.sroa.6166.0..sroa_idx, align 8
  br label %bb.bx

.body125.thread:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dh, %bb.ca
  %.pn88.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp312, %bb.ca ], [ %i.lq, %bb.dh ], [ %lpad.loopexit.split-lp312, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$kstring..string_cow..KStringCowBase$GT$$GT$17h9c724b5b2410ddefE"(ptr noalias noundef align 8 dereferenceable(24) %i.an) #58
  br label %.thread

.body125:                                         ; preds = %.thread194
  call fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$kstring..string_cow..KStringCowBase$GT$$GT$17h9c724b5b2410ddefE"(ptr noalias noundef align 8 dereferenceable(24) %i.an) #58
  br i1 %.sroa.011.3199, label %.thread, label %.body

end_hunk_3
begin_hunk_4_@_ZN11liquid_core6parser6parser3Exp5parse17h423b1436e3d7d0afE:bb.a
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ch, ptr %.sroa.6.0..sroa_idx2, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !6302
  %i.cj = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !6302 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.af, label %bb.ai, !prof !14

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 88) #57
          to label %.noexc unwind label %bb.ag, !noalias !6302

.noexc:                                           ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..parser..filter_chain..FilterChain$GT$17h28e7c5e59733d0d7E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #58
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cj, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  store ptr %i.cj, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @307, ptr %i.cn, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN11liquid_core6parser6parser3Exp6as_str17hf017b4e58f9bda0aE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 !guid !6303 {
bb.a:
  %i.a = tail call fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_ZN11liquid_core6parser6parser3Raw15into_renderable17hc75aa409bb2a1c06E(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !6319 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !16

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0                        ; 2 uses
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !6320
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, 9) 1) #59, !noalias !6320 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57, !noalias !6321
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %0, i64 %1, i1 false), !noalias !6322
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !6323
  %i.e = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !6323 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h84f7760046049159E.exit", !prof !14

bb.c:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #57
          to label %.noexc unwind label %bb.d, !noalias !6323

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br i1 %i.b, label %"_ZN4core3ptr52drop_in_place$LT$liquid_core..parser..text..Text$GT$17hf4de9044444cef14E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !6324
  br label %"_ZN4core3ptr52drop_in_place$LT$liquid_core..parser..text..Text$GT$17hf4de9044444cef14E.exit"

"_ZN4core3ptr52drop_in_place$LT$liquid_core..parser..text..Text$GT$17hf4de9044444cef14E.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h84f7760046049159E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"
  store i64 %1, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @308, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11liquid_core6parser6parser3Tag10parse_pair17h1fbc62ede14ea312E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !6477 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [120 x i8], align 8               ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [120 x i8], align 8               ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [56 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0141.0.copyload = load ptr, ptr %i.r, align 8 ; 8 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 10 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noundef !8 ; 3 uses
  %.val27 = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val27, i64 32
  %i.v = load i64, ptr %i.u, align 8, !noundef !8 ; 3 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %.invoke

bb.b:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2c6d313f02e398b5E.exit", %bb.az
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body131

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.val27, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.t ; 3 uses
  %i.aa = load i8, ptr %i.z, align 8, !range !13, !noundef !8
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  %.sroa.0.0.in.v.i = select i1 %i.ab, i64 32, i64 16
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !noundef !8
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #57
          to label %.noexc39 unwind label %.thread334

.noexc39:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !8 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.v
  br i1 %i.ae, label %bb.f, label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.a
  %i.af = phi i64 [ %i.t, %bb.a ], [ %i.ad, %bb.e ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.af, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #57
          to label %.cont unwind label %.thread334

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.ad ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !range !13, !noundef !8
  %i.ai = trunc nuw i8 %i.ah to i1
  %.sroa.0.0.in.v.i40 = select i1 %i.ai, i64 32, i64 16
  %.sroa.0.0.in.i41 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.0.0.in.v.i40
  %.sroa.0.0.i42 = load i64, ptr %.sroa.0.0.in.i41, align 8, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !8, !align !10, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !8
  store ptr %i.ak, ptr %i.q, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.0.0.i, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.0.0.i42, ptr %i.ap, align 8
  %i.aq = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.g unwind label %.thread334 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 5 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 13 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6478)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !6478, !noundef !8 ; 7 uses
  %i.aw = icmp eq i64 %i.av, 0                    ; 2 uses
  br i1 %i.aw, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.val.i = load i64, ptr %i.ax, align 8, !alias.scope !6478, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.val5.i = load i64, ptr %i.ay, align 8, !alias.scope !6478, !noundef !8
  %i.az = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1e824eac2428b02fE(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ar, i64 noundef %i.as), !noalias !6478 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6480)
  %i.ba = lshr i64 %i.az, 57
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !6481, !noundef !8 ; 2 uses
  %i.be = load ptr, ptr %i.at, align 8, !alias.scope !6481, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bw, %bb.j ]
  %.pn.i.i = phi i64 [ %i.az, %bb.h ], [ %i.bx, %bb.j ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.bd     ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !6482 ; 2 uses
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.thread.i.i"
  %.sroa.06.0.i34.i.i = phi i16 [ %i.bv, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.thread.i.i" ], [ %i.bh, %bb.i ] ; 3 uses
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.01.0.i.i.i, %i.bj
  %i.bl = and i64 %i.bk, %i.bd
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [40 x i8], ptr %i.be, i64 %i.bm ; 4 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %.val5.i.i.i = load i64, ptr %i.bo, align 8, !noalias !6483, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.as, %.val5.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.thread.i.i", !prof !24

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.i.i": ; preds = %.lr.ph.i.i
  %i.bp = getelementptr i8, ptr %i.bn, i64 -32
  %.val4.i.i.i = load ptr, ptr %i.bp, align 8, !noalias !6483, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.ar, ptr nonnull readonly align 1 %.val4.i.i.i, i64 %i.as), !alias.scope !6484, !noalias !6485
  %i.bq = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bq, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2c6d313f02e398b5E.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.thread.i.i", !prof !25

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.thread.i.i", %bb.i
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.bs = bitcast <16 x i1> %i.br to i16
  %i.bt = icmp eq i16 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %select.unfold, !prof !14

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.i.i", %.lr.ph.i.i
  %i.bu = add i16 %.sroa.06.0.i34.i.i, -1
  %i.bv = and i16 %i.bu, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bw = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.bx = add i64 %.sroa.01.0.i.i.i, %i.bw
  br label %bb.i

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2c6d313f02e398b5E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he8c29125e0b177caE.exit.i.i"
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !8, !align !10, !noundef !8
  %i.ca = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !8, !align !11, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %.sroa.0141.0.copyload, ptr %i.p, align 8
  %.sroa.8.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.8.0..sroa_idx135, align 8
  %.sroa.10.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx139, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !invariant.load !8, !nonnull !8
  invoke void %i.cd(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 1 %i.bz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %4)
          to label %bb.bi unwind label %bb.b

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6486)
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !6486, !noundef !8 ; 7 uses
  %i.cg = icmp eq i64 %i.cf, 0                    ; 2 uses
  br i1 %i.cg, label %select.unfold218, label %bb.k

bb.k:                                             ; preds = %select.unfold
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val.i46 = load i64, ptr %i.ch, align 8, !alias.scope !6486, !noundef !8
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val5.i47 = load i64, ptr %i.ci, align 8, !alias.scope !6486, !noundef !8
  %i.cj = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1e824eac2428b02fE(i64 %.val.i46, i64 %.val5.i47, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ar, i64 noundef %i.as), !noalias !6486 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6488)
  %i.ck = lshr i64 %i.cj, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !6489, !noundef !8 ; 2 uses
  %i.co = load ptr, ptr %4, align 8, !alias.scope !6489, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i48 = insertelement <16 x i8> poison, i8 %i.cl, i64 0
  %.sroa.0.15.vec.insert.i.i.i49 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i48, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.sroa.9.0.i.i.i50 = phi i64 [ 0, %bb.k ], [ %i.dg, %bb.m ]
  %.pn.i.i51 = phi i64 [ %i.cj, %bb.k ], [ %i.dh, %bb.m ]
  %.sroa.01.0.i.i.i52 = and i64 %.pn.i.i51, %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.01.0.i.i.i52
  %.sroa.0.0.copyload.i27.i.i53 = load <16 x i8>, ptr %i.cp, align 1, !noalias !6490 ; 2 uses
  %i.cq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i53, %.sroa.0.15.vec.insert.i.i.i49
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i.not33.i.i54 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.not33.i.i54, label %._crit_edge.i.i60, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %bb.l, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.thread.i.i"
  %.sroa.06.0.i34.i.i56 = phi i16 [ %i.df, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.thread.i.i" ], [ %i.cr, %bb.l ] ; 3 uses
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i56, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = add i64 %.sroa.01.0.i.i.i52, %i.ct
  %i.cv = and i64 %i.cu, %i.cn
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr inbounds [40 x i8], ptr %i.co, i64 %i.cw ; 4 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %.val5.i.i.i57 = load i64, ptr %i.cy, align 8, !noalias !6491, !noundef !8
  %.not.i.i.i.i.i.i58 = icmp eq i64 %i.as, %.val5.i.i.i57
  br i1 %.not.i.i.i.i.i.i58, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.thread.i.i", !prof !24

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.i.i": ; preds = %.lr.ph.i.i55
  %i.cz = getelementptr i8, ptr %i.cx, i64 -32
  %.val4.i.i.i64 = load ptr, ptr %i.cz, align 8, !noalias !6491, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i.i65 = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.ar, ptr nonnull readonly align 1 %.val4.i.i.i64, i64 %i.as), !alias.scope !6492, !noalias !6493
  %i.da = icmp eq i32 %bcmp.i.i.i.i.i.i65, 0
  br i1 %i.da, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6446ad5ec1455ae6E.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.thread.i.i", !prof !25

._crit_edge.i.i60:                                ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.thread.i.i", %bb.l
  %i.db = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i53, splat (i8 -1)
  %i.dc = bitcast <16 x i1> %i.db to i16
  %i.dd = icmp eq i16 %i.dc, 0
  br i1 %i.dd, label %bb.m, label %select.unfold218, !prof !14

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.i.i", %.lr.ph.i.i55
  %i.de = add i16 %.sroa.06.0.i34.i.i56, -1
  %i.df = and i16 %i.de, %.sroa.06.0.i34.i.i56    ; 2 uses
  %.not.i.not.i.i59 = icmp eq i16 %i.df, 0
  br i1 %.not.i.not.i.i59, label %._crit_edge.i.i60, label %.lr.ph.i.i55

bb.m:                                             ; preds = %._crit_edge.i.i60
  %i.dg = add i64 %.sroa.9.0.i.i.i50, 16          ; 2 uses
  %i.dh = add i64 %.sroa.01.0.i.i.i52, %i.dg
  br label %bb.l

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6446ad5ec1455ae6E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h27eb331e1f788518E.exit.i.i"
  %i.di = getelementptr inbounds i8, ptr %i.cx, i64 -16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !8, !align !10, !noundef !8
  %i.dk = getelementptr inbounds i8, ptr %i.cx, i64 -8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !8, !align !11, !noundef !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !invariant.load !8, !nonnull !8
  %i.do = invoke { ptr, ptr } %i.dn(ptr noundef nonnull align 1 %i.dj)
          to label %bb.ax unwind label %.thread334 ; 2 uses

select.unfold218:                                 ; preds = %._crit_edge.i.i60, %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !6494
  %i.dp = tail call noundef dereferenceable_or_null(12) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 12, i64 noundef range(i64 1, 9) 1) #59, !noalias !6494 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %select.unfold218
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc66 unwind label %.thread334, !noalias !6495

.noexc66:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %select.unfold218
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.dp, ptr noundef nonnull align 1 dereferenceable(12) @309, i64 12, i1 false), !noalias !6496
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 12, ptr %i.dr, align 8
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.dp, ptr %.sroa.4170.0..sroa_idx, align 8
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 12, ptr %.sroa.5171.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %i.k, align 8
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$13new_from_span17hebe500a03703d2cbE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.q unwind label %.thread334

bb.p:                                             ; preds = %.thread261
  br i1 %.sroa.011.2268, label %.thread223, label %.thread

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !6497)
  %i.ds = load ptr, ptr %i.at, align 8, !alias.scope !6497, !nonnull !8, !noundef !8 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.ds, align 16, !noalias !6498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6499
  br i1 %i.aw, label %.thread228, label %bb.r

.thread228:                                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6499
  br label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.dt = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.du, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i
  %i.dw = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dv, %bb.r ] ; 2 uses
  %i.dx = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ds, %bb.r ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dw, align 16, !noalias !6500
  %i.dy = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -640 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.dy to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.r
  %.sroa.5.0.i.i = phi ptr [ %i.dv, %bb.r ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i = phi ptr [ %i.ds, %bb.r ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.du, %bb.r ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.eb = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = and i16 %i.eb, %.lcssa.i.i.i.i.i.i.i
  %i.ef = sub nsw i64 0, %i.ed
  %i.eg = getelementptr inbounds [40 x i8], ptr %.sroa.01.0.copyload.i.i.i.i, i64 %i.ef ; 2 uses
  %i.eh = add nsw i64 %i.av, -1                   ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !6501, !nonnull !8, !noundef !8
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 -24
  %i.el = load i64, ptr %i.ek, align 8, !noalias !6501, !noundef !8
  %.sroa.0.0.i11.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.av, i64 4) ; 3 uses
  %i.em = shl i64 %.sroa.0.0.i11.i.i.i.i, 4       ; 3 uses
  %i.en = icmp ugt i64 %i.av, 1152921504606846975
  %i.eo = icmp ugt i64 %i.em, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.en, %i.eo
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.s, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", !prof !16

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !6502
  %i.ep = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.em, i64 noundef range(i64 1, 9) 8) #59, !noalias !6502 ; 6 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.s, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i"

bb.s:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %._crit_edge20.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #57
          to label %.noexc69 unwind label %.thread327, !noalias !6499

.noexc69:                                         ; preds = %bb.s
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store ptr %i.ej, ptr %i.ep, align 8, !noalias !6499
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %i.el, ptr %i.er, align 8, !noalias !6499
  store i64 %.sroa.0.0.i11.i.i.i.i, ptr %i.c, align 8, !noalias !6499
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.ep, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6499
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !6499
  call void @llvm.experimental.noalias.scope.decl(metadata !6503)
  call void @llvm.experimental.noalias.scope.decl(metadata !6504)
  %i.es = icmp eq i64 %i.eh, 0
  br i1 %i.es, label %.thread239, label %.lr.ph.i.i.i.i.i.i

.thread239:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6499
  br label %bb.y

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i", %.noexc.i.i.i.i
  %i.et = phi ptr [ %i.fp, %.noexc.i.i.i.i ], [ %i.ep, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ]
  %i.eu = phi i64 [ %i.fs, %.noexc.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 6 uses
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %i.ev = phi i16 [ %i.fe, %.noexc.i.i.i.i ], [ %i.ee, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %.val510.i.i.i.i.i.i = phi i64 [ %i.fh, %.noexc.i.i.i.i ], [ %i.eh, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i89.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i7.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ev, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ew = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ex = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ew, align 16, !noalias !6505
  %i.ey = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 -640 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ey to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i7.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ev, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fb = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.fc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = and i16 %i.fb, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ff = sub nsw i64 0, %i.fd
  %i.fg = getelementptr inbounds [40 x i8], ptr %.pre.i.i.i7.i.i.i.i.i.i, i64 %i.ff ; 2 uses
  %i.fh = add i64 %.val510.i.i.i.i.i.i, -1        ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 -32
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !6506, !nonnull !8, !noundef !8
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 -24
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !6506, !noundef !8
  %i.fm = icmp samesign ult i64 %i.eu, 576460752303423488
  call void @llvm.assume(i1 %i.fm)
  %i.fn = load i64, ptr %i.c, align 8, !range !23, !alias.scope !6507, !noalias !6499, !noundef !8
  %i.fo = icmp eq i64 %i.eu, %i.fn
  br i1 %i.fo, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i", label %.noexc.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.eu, i64 noundef range(i64 1, 0) %.val510.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i" unwind label %bb.t, !noalias !6508

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6507, !noalias !6499
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.fp = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i" ], [ %i.et, %._crit_edge20.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.eu ; 2 uses
  store ptr %i.fj, ptr %i.fq, align 8, !noalias !6509
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %i.fl, ptr %i.fr, align 8, !noalias !6509
  %i.fs = add nuw nsw i64 %i.eu, 1                ; 2 uses
  store i64 %i.fs, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6507, !noalias !6499
  %i.ft = icmp eq i64 %i.fh, 0
  br i1 %i.ft, label %bb.v, label %.lr.ph.i.i.i.i.i.i

bb.t:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i"
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !6499 ; 2 uses
  %i.fv = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fv, label %.thread223, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6499, !nonnull !8, !noundef !8
  %i.fw = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !6499
  br label %.thread223

bb.v:                                             ; preds = %.noexc.i.i.i.i
  %.sroa.0142.0.copyload143 = load i64, ptr %i.c, align 8, !noalias !6510 ; 4 uses
  %.sroa.6.0.copyload145 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6510 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6499
  %i.fx = icmp samesign ult i64 %i.eu, 20
  br i1 %i.fx, label %bb.x, label %bb.w, !prof !26

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17ha0a4562283ee729bE(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload145, i64 noundef %i.av, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.y unwind label %bb.av

bb.x:                                             ; preds = %bb.v
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload145, i64 noundef %i.av)
  br label %bb.y

.thread327:                                       ; preds = %bb.y, %bb.s
  %lpad.thr_comm.split-lp252 = landingpad { ptr, i32 }
          cleanup
  br label %.thread223

bb.y:                                             ; preds = %bb.x, %.thread239, %.thread228, %bb.w
  %.sroa.0142.0236 = phi i64 [ 0, %.thread228 ], [ %.sroa.0142.0.copyload143, %bb.x ], [ %.sroa.0142.0.copyload143, %bb.w ], [ %.sroa.0.0.i11.i.i.i.i, %.thread239 ]
  %.sroa.6.0233 = phi ptr [ inttoptr (i64 8 to ptr), %.thread228 ], [ %.sroa.6.0.copyload145, %bb.x ], [ %.sroa.6.0.copyload145, %bb.w ], [ %i.ep, %.thread239 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.0142.0236, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.6.0233, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.av, ptr %.sroa.9.0..sroa_idx, align 8
  invoke fastcc void @_ZN9itertools4free4join17h99997d1fd8e5ac17E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.aa unwind label %.thread327

bb.z:                                             ; preds = %.thread305
  br i1 %.sroa.09.2312, label %.thread261, label %.thread

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !6511)
  %i.fy = load ptr, ptr %4, align 8, !alias.scope !6511, !nonnull !8, !noundef !8 ; 4 uses
  %.val3.i.i70 = load <16 x i8>, ptr %i.fy, align 16, !noalias !6512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6513
  br i1 %i.cg, label %.thread269, label %bb.ab

.thread269:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6513
  br label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.fz = icmp sgt <16 x i8> %.val3.i.i70, splat (i8 -1)
  %i.ga = bitcast <16 x i1> %i.fz to i16          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i82 = icmp eq i16 %i.ga, 0
  br i1 %.not13.i.i.i.i.i.i.i82, label %.lr.ph.i.i.i.i.i.i.i114, label %._crit_edge20.i.i.i.i.i.i.i83

.lr.ph.i.i.i.i.i.i.i114:                          ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i114
  %i.gc = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i.i114 ], [ %i.gb, %bb.ab ] ; 2 uses
  %i.gd = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i114 ], [ %i.fy, %bb.ab ]
  %.val11.i.i.i.i.i.i.i115 = load <16 x i8>, ptr %i.gc, align 16, !noalias !6514
  %i.ge = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i115, splat (i8 -1)
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -640 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i116 = bitcast <16 x i1> %i.ge to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i117 = icmp eq i16 %.cast.i.i.i.i.i.i.i116, 0
  br i1 %.not.i.i.i.i.i.i.i117, label %.lr.ph.i.i.i.i.i.i.i114, label %._crit_edge20.i.i.i.i.i.i.i83

._crit_edge20.i.i.i.i.i.i.i83:                    ; preds = %.lr.ph.i.i.i.i.i.i.i114, %bb.ab
  %.sroa.5.0.i.i84 = phi ptr [ %i.gb, %bb.ab ], [ %i.gg, %.lr.ph.i.i.i.i.i.i.i114 ]
  %.sroa.01.0.copyload.i.i.i.i85 = phi ptr [ %i.fy, %bb.ab ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i114 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i86 = phi i16 [ %i.ga, %bb.ab ], [ %.cast.i.i.i.i.i.i.i116, %.lr.ph.i.i.i.i.i.i.i114 ] ; 3 uses
  %i.gh = add i16 %.lcssa.i.i.i.i.i.i.i86, -1
  %i.gi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i86, i1 true)
  %i.gj = zext nneg i16 %i.gi to i64
  %i.gk = and i16 %i.gh, %.lcssa.i.i.i.i.i.i.i86
  %i.gl = sub nsw i64 0, %i.gj
  %i.gm = getelementptr inbounds [40 x i8], ptr %.sroa.01.0.copyload.i.i.i.i85, i64 %i.gl ; 2 uses
  %i.gn = add nsw i64 %i.cf, -1                   ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 -32
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !6515, !nonnull !8, !noundef !8
  %i.gq = getelementptr inbounds i8, ptr %i.gm, i64 -24
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !6515, !noundef !8
  %.sroa.0.0.i11.i.i.i.i87 = call noundef i64 @llvm.umax.i64(i64 %i.cf, i64 4) ; 3 uses
  %i.gs = shl i64 %.sroa.0.0.i11.i.i.i.i87, 4     ; 3 uses
  %i.gt = icmp ugt i64 %i.cf, 1152921504606846975
  %i.gu = icmp ugt i64 %i.gs, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i88 = or i1 %i.gt, %i.gu
  br i1 %or.cond.i.i.i.i.i.i.i88, label %bb.ac, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i89", !prof !16

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i89": ; preds = %._crit_edge20.i.i.i.i.i.i.i83
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !6516
  %i.gv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gs, i64 noundef range(i64 1, 9) 8) #59, !noalias !6516 ; 6 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.ac, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90"

bb.ac:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i89", %._crit_edge20.i.i.i.i.i.i.i83
  %.sroa.4.0.ph.i.i.i.i.i113 = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i89" ], [ 0, %._crit_edge20.i.i.i.i.i.i.i83 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i113, i64 %i.gs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #57
          to label %.noexc118 unwind label %.thread330, !noalias !6513

.noexc118:                                        ; preds = %bb.ac
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i89"
  store ptr %i.gp, ptr %i.gv, align 8, !noalias !6513
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i64 %i.gr, ptr %i.gx, align 8, !noalias !6513
  store i64 %.sroa.0.0.i11.i.i.i.i87, ptr %i.b, align 8, !noalias !6513
  %.sroa.4.0..sroa_idx.i.i.i.i91 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.gv, ptr %.sroa.4.0..sroa_idx.i.i.i.i91, align 8, !noalias !6513
  %.sroa.64.0..sroa_idx.i.i.i.i92 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i92, align 8, !noalias !6513
  call void @llvm.experimental.noalias.scope.decl(metadata !6517)
  call void @llvm.experimental.noalias.scope.decl(metadata !6518)
  %i.gy = icmp eq i64 %i.gn, 0
  br i1 %i.gy, label %.thread280, label %.lr.ph.i.i.i.i.i.i93

.thread280:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6513
  br label %bb.ai

.lr.ph.i.i.i.i.i.i93:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90", %.noexc.i.i.i.i102
  %i.gz = phi ptr [ %i.hv, %.noexc.i.i.i.i102 ], [ %i.gv, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90" ]
  %i.ha = phi i64 [ %i.hy, %.noexc.i.i.i.i102 ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90" ] ; 6 uses
  %.lcssa14.i.i.i.i.i.i94 = phi ptr [ %.lcssa13.i.i.i.i.i.i99, %.noexc.i.i.i.i102 ], [ %.sroa.5.0.i.i84, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90" ] ; 2 uses
  %i.hb = phi i16 [ %i.hk, %.noexc.i.i.i.i102 ], [ %i.gk, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90" ] ; 2 uses
  %.val510.i.i.i.i.i.i95 = phi i64 [ %i.hn, %.noexc.i.i.i.i102 ], [ %i.gn, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90" ] ; 2 uses
  %.pre.i.i.i89.i.i.i.i.i.i96 = phi ptr [ %.pre.i.i.i7.i.i.i.i.i.i100, %.noexc.i.i.i.i102 ], [ %.sroa.01.0.copyload.i.i.i.i85, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i90" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i97 = icmp eq i16 %i.hb, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i97, label %.lr.ph.i.i.i.i.i.i.i.i.i109, label %._crit_edge20.i.i.i.i.i.i.i.i.i98

.lr.ph.i.i.i.i.i.i.i.i.i109:                      ; preds = %.lr.ph.i.i.i.i.i.i93, %.lr.ph.i.i.i.i.i.i.i.i.i109
  %i.hc = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.i.i.i109 ], [ %.lcssa14.i.i.i.i.i.i94, %.lr.ph.i.i.i.i.i.i93 ] ; 2 uses
  %i.hd = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i.i.i.i109 ], [ %.pre.i.i.i89.i.i.i.i.i.i96, %.lr.ph.i.i.i.i.i.i93 ]
  %.val11.i.i.i.i.i.i.i.i.i110 = load <16 x i8>, ptr %i.hc, align 16, !noalias !6519
  %i.he = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i110, splat (i8 -1)
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -640 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i111 = bitcast <16 x i1> %i.he to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i112 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i111, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i112, label %.lr.ph.i.i.i.i.i.i.i.i.i109, label %._crit_edge20.i.i.i.i.i.i.i.i.i98

._crit_edge20.i.i.i.i.i.i.i.i.i98:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i109, %.lr.ph.i.i.i.i.i.i93
  %.lcssa13.i.i.i.i.i.i99 = phi ptr [ %.lcssa14.i.i.i.i.i.i94, %.lr.ph.i.i.i.i.i.i93 ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i.i.i109 ]
  %.pre.i.i.i7.i.i.i.i.i.i100 = phi ptr [ %.pre.i.i.i89.i.i.i.i.i.i96, %.lr.ph.i.i.i.i.i.i93 ], [ %i.hf, %.lr.ph.i.i.i.i.i.i.i.i.i109 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i101 = phi i16 [ %i.hb, %.lr.ph.i.i.i.i.i.i93 ], [ %.cast.i.i.i.i.i.i.i.i.i111, %.lr.ph.i.i.i.i.i.i.i.i.i109 ] ; 3 uses
  %i.hh = add i16 %.lcssa.i.i.i.i.i.i.i.i.i101, -1
  %i.hi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i101, i1 true)
  %i.hj = zext nneg i16 %i.hi to i64
  %i.hk = and i16 %i.hh, %.lcssa.i.i.i.i.i.i.i.i.i101
  %i.hl = sub nsw i64 0, %i.hj
  %i.hm = getelementptr inbounds [40 x i8], ptr %.pre.i.i.i7.i.i.i.i.i.i100, i64 %i.hl ; 2 uses
  %i.hn = add i64 %.val510.i.i.i.i.i.i95, -1      ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hm, i64 -32
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !6520, !nonnull !8, !noundef !8
  %i.hq = getelementptr inbounds i8, ptr %i.hm, i64 -24
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !6520, !noundef !8
  %i.hs = icmp samesign ult i64 %i.ha, 576460752303423488
  call void @llvm.assume(i1 %i.hs)
  %i.ht = load i64, ptr %i.b, align 8, !range !23, !alias.scope !6521, !noalias !6513, !noundef !8
  %i.hu = icmp eq i64 %i.ha, %i.ht
  br i1 %i.hu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i103", label %.noexc.i.i.i.i102

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i103": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i98
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ha, i64 noundef range(i64 1, 0) %.val510.i.i.i.i.i.i95, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i107" unwind label %bb.ad, !noalias !6522

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i107": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i103"
  %.pre.i.i.i.i108 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i91, align 8, !alias.scope !6521, !noalias !6513
  br label %.noexc.i.i.i.i102

.noexc.i.i.i.i102:                                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i107", %._crit_edge20.i.i.i.i.i.i.i.i.i98
  %i.hv = phi ptr [ %.pre.i.i.i.i108, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i..noexc_crit_edge.i.i.i.i107" ], [ %i.gz, %._crit_edge20.i.i.i.i.i.i.i.i.i98 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %i.ha ; 2 uses
  store ptr %i.hp, ptr %i.hw, align 8, !noalias !6523
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i64 %i.hr, ptr %i.hx, align 8, !noalias !6523
  %i.hy = add nuw nsw i64 %i.ha, 1                ; 2 uses
  store i64 %i.hy, ptr %.sroa.64.0..sroa_idx.i.i.i.i92, align 8, !alias.scope !6521, !noalias !6513
  %i.hz = icmp eq i64 %i.hn, 0
  br i1 %i.hz, label %bb.af, label %.lr.ph.i.i.i.i.i.i93

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3cdede3579fc9442E.exit.i.i.i.i.i.i103"
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i104 = load i64, ptr %i.b, align 8, !noalias !6513 ; 2 uses
  %i.ib = icmp eq i64 %.val.i.i.i.i104, 0
  br i1 %i.ib, label %.thread261, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val9.i.i.i.i105 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i91, align 8, !noalias !6513, !nonnull !8, !noundef !8
  %i.ic = shl nuw i64 %.val.i.i.i.i104, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i105, i64 noundef %i.ic, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !6513
  br label %.thread261

bb.af:                                            ; preds = %.noexc.i.i.i.i102
  %.sroa.0152.0.copyload153 = load i64, ptr %i.b, align 8, !noalias !6524 ; 4 uses
  %.sroa.6154.0.copyload156 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i91, align 8, !noalias !6524 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6513
  %i.id = icmp samesign ult i64 %i.ha, 20
  br i1 %i.id, label %bb.ah, label %bb.ag, !prof !26

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17ha0a4562283ee729bE(ptr noalias noundef nonnull align 8 %.sroa.6154.0.copyload156, i64 noundef %i.cf, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.ai unwind label %bb.at

bb.ah:                                            ; preds = %bb.af
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E(ptr noalias noundef nonnull align 8 %.sroa.6154.0.copyload156, i64 noundef %i.cf)
  br label %bb.ai

.thread330:                                       ; preds = %bb.ai, %bb.ac
  %lpad.thr_comm.split-lp295 = landingpad { ptr, i32 }
          cleanup
  br label %.thread261

bb.ai:                                            ; preds = %bb.ah, %.thread280, %.thread269, %bb.ag
  %.sroa.0152.0277 = phi i64 [ 0, %.thread269 ], [ %.sroa.0152.0.copyload153, %bb.ah ], [ %.sroa.0152.0.copyload153, %bb.ag ], [ %.sroa.0.0.i11.i.i.i.i87, %.thread280 ]
  %.sroa.6154.0274 = phi ptr [ inttoptr (i64 8 to ptr), %.thread269 ], [ %.sroa.6154.0.copyload156, %bb.ah ], [ %.sroa.6154.0.copyload156, %bb.ag ], [ %i.gv, %.thread280 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.0152.0277, ptr %i.i, align 8
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.6154.0274, ptr %.sroa.6154.0..sroa_idx, align 8
  %.sroa.9157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.cf, ptr %.sroa.9157.0..sroa_idx, align 8
  invoke fastcc void @_ZN9itertools4free4join17h99997d1fd8e5ac17E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.aj unwind label %.thread330

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 120, i1 false)
  %i.ie = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.g)
          to label %bb.ak unwind label %.thread317 ; 5 uses

.thread317:                                       ; preds = %bb.ao, %bb.aj
  %.sroa.09.3.ph = phi i1 [ true, %bb.aj ], [ false, %bb.ao ]
  %lpad.thr_comm315 = landingpad { ptr, i32 }
          cleanup
  br label %.thread305

.thread334:                                       ; preds = %.invoke, %bb.d, %bb.f, %bb.n, %bb.o, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6446ad5ec1455ae6E.exit", %bb.ax, %bb.ay, %bb.ap
  %lpad.thr_comm.split-lp316 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ie, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.if = icmp slt i64 %i.as, 0
  br i1 %i.if, label %bb.al, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !16

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.ak
  %i.ig = icmp eq i64 %i.as, 0
  br i1 %i.ig, label %bb.an, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !6525
  %i.ih = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.as, i64 noundef range(i64 1, 9) 1) #59, !noalias !6525 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.al, label %bb.an

bb.al:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.ak
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.ak ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc123 unwind label %bb.ar, !noalias !6526

.noexc123:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.an
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.thread305

bb.an:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ih, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.ar, i64 %i.as, i1 false), !noalias !6527
  store i64 %i.as, ptr %i.f, align 8
  %.sroa.4207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4207.0..sroa_idx, align 8
  %.sroa.5208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.as, ptr %.sroa.5208.0..sroa_idx, align 8
  %i.ik = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull align 8 %i.ie, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @310, i64 noundef 9, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ao unwind label %bb.am     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.il = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull align 8 %i.ie, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @311, i64 noundef 14, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ap unwind label %.thread317 ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.im = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull align 8 %i.ie, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @312, i64 noundef 16, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.be unwind label %.thread334 ; 0 uses

bb.aq:                                            ; preds = %bb.ba
  store ptr %i.ju, ptr %0, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jx, ptr %i.in, align 8
  br label %"_ZN4core3ptr62drop_in_place$LT$liquid_core..parser..parser..TagTokenIter$GT$17h0454adf9d759a708E.exit"

bb.ar:                                            ; preds = %bb.al
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #58
          to label %.thread305 unwind label %bb.as

bb.as:                                            ; preds = %.thread, %bb.ar
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

.thread305:                                       ; preds = %bb.am, %bb.ar, %.thread317
  %.sroa.09.2312 = phi i1 [ %.sroa.09.3.ph, %.thread317 ], [ true, %bb.ar ], [ true, %bb.am ] ; 2 uses
  %.pn310 = phi { ptr, i32 } [ %lpad.thr_comm315, %.thread317 ], [ %i.io, %bb.ar ], [ %i.ij, %bb.am ] ; 4 uses
  %.val.i.i = load i64, ptr %i.d, align 8, !range !23, !noundef !8 ; 2 uses
  %i.iq = icmp eq i64 %.val.i.i, 0
  br i1 %i.iq, label %bb.z, label %.split337

.split337:                                        ; preds = %.thread305
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i = load ptr, ptr %i.ir, align 8, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !6528
  br i1 %.sroa.09.2312, label %.thread261, label %.thread

bb.at:                                            ; preds = %bb.ag
  %lpad.thr_comm294 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.is = icmp eq i64 %.sroa.0152.0.copyload153, 0
  br i1 %i.is, label %.thread261, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.it = shl nuw i64 %.sroa.0152.0.copyload153, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6154.0.copyload156) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6154.0.copyload156, i64 noundef %i.it, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %.thread261

.thread261:                                       ; preds = %.split337, %.thread330, %bb.au, %bb.at, %bb.ad, %bb.ae, %bb.z
  %.sroa.011.2268 = phi i1 [ true, %bb.ad ], [ false, %bb.z ], [ false, %.split337 ], [ true, %bb.ae ], [ true, %bb.at ], [ true, %bb.au ], [ true, %.thread330 ] ; 2 uses
  %.pn.pn.pn266 = phi { ptr, i32 } [ %i.ia, %bb.ad ], [ %.pn310, %bb.z ], [ %.pn310, %.split337 ], [ %i.ia, %bb.ae ], [ %lpad.thr_comm294, %bb.at ], [ %lpad.thr_comm294, %bb.au ], [ %lpad.thr_comm.split-lp295, %.thread330 ] ; 4 uses
  %.val.i.i125 = load i64, ptr %i.e, align 8, !range !23, !noundef !8 ; 2 uses
  %i.iu = icmp eq i64 %.val.i.i125, 0
  br i1 %i.iu, label %bb.p, label %.split

.split:                                           ; preds = %.thread261
  %i.iv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i126 = load ptr, ptr %i.iv, align 8, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i126, i64 noundef %.val.i.i125, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !6529
  br i1 %.sroa.011.2268, label %.thread223, label %.thread

end_hunk_4
