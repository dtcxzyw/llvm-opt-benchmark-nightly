Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.06?download=true
inline.NumInlined: 5983
inline.NumDeleted: 3458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 61
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h49b33fa5244ca7b4E":bb.a
  invoke void @"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE"(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %bb.d unwind label %bb.c, !noalias !647

bb.c:                                             ; preds = %bb.j, %"_ZN4axum7routing11path_router23PathRouter$LT$S$C$_$GT$10with_state28_$u7b$$u7b$closure$u7d$$u7d$17h7167dec8385db05aE.exit.i.i.i", %"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7bfceef80f34547aE.exit.i.i.i.i", %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.p, %bb.o, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.aa, %bb.p ], [ %i.aa, %bb.o ]
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bae05e07c46b566E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %"_ZN4core3ptr181drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$RP$$GT$$GT$17h69b6bb93ddc24a9dE.exit.i.i" unwind label %bb.r, !noalias !647

bb.d:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !range !11, !noalias !648, !noundef !3 ; 3 uses
  %.not.i.i = icmp eq i64 %i.n, 4
  br i1 %.not.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hba8057a3d58e2a21E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.e, align 8, !noalias !648
  %.sroa.49.0.copyload.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !648 ; 3 uses
  %.sroa.510.0.copyload.i.i = load ptr, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !648
  %i.o = icmp eq i64 %i.n, 3
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.510.0.copyload.i.i) ]
  br label %"_ZN4axum7routing11path_router23PathRouter$LT$S$C$_$GT$10with_state28_$u7b$$u7b$closure$u7d$$u7d$17h7167dec8385db05aE.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.618.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.611.0..sroa_idx.i.i, i64 256, i1 false), !noalias !648
  store i64 %i.n, ptr %i.c, align 8, !noalias !649
  store ptr %.sroa.49.0.copyload.i.i, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !649
  store ptr %.sroa.510.0.copyload.i.i, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !649
  %i.p = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !650
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7bfceef80f34547aE.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7bfceef80f34547aE.exit.i.i.i.i": ; preds = %bb.g
  invoke void @"_ZN4axum7routing14method_routing25MethodRouter$LT$S$C$E$GT$10with_state17h7f0aab3bed8b3c2fE"(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.c, ptr noundef nonnull %.val)
          to label %.noexc.i.i unwind label %bb.c, !noalias !647

.noexc.i.i:                                       ; preds = %"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7bfceef80f34547aE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !649
  %.sroa.07.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !651
  %.sroa.3.0.copyload.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !651
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !651
  br label %"_ZN4axum7routing11path_router23PathRouter$LT$S$C$_$GT$10with_state28_$u7b$$u7b$closure$u7d$$u7d$17h7167dec8385db05aE.exit.i.i.i"

"_ZN4axum7routing11path_router23PathRouter$LT$S$C$_$GT$10with_state28_$u7b$$u7b$closure$u7d$$u7d$17h7167dec8385db05aE.exit.i.i.i": ; preds = %.noexc.i.i, %bb.f
  %.sroa.4.0.i.i.i.i = phi ptr [ %.sroa.510.0.copyload.i.i, %bb.f ], [ %.sroa.4.0.copyload.i.i.i.i, %.noexc.i.i ]
  %.sroa.3.0.i.i.i.i = phi ptr [ %.sroa.49.0.copyload.i.i, %bb.f ], [ %.sroa.3.0.copyload.i.i.i.i, %.noexc.i.i ]
  %.sroa.07.0.i.i.i.i = phi i64 [ 3, %bb.f ], [ %.sroa.07.0.copyload.i.i.i.i, %.noexc.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !652
  store i64 %.sroa.07.0.i.i.i.i, ptr %i.b, align 8, !noalias !651
  store ptr %.sroa.3.0.i.i.i.i, ptr %.sroa.4.sroa.5.4..sroa_idx.i.i.i, align 8, !noalias !651
  store ptr %.sroa.4.0.i.i.i.i, ptr %.sroa.4.sroa.6.4..sroa_idx.i.i.i, align 8, !noalias !651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4.sroa.7.4..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(256) %i.j, i64 256, i1 false), !noalias !651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !653
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h24bae860109644adE"(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.sroa.07.0.copyload.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.b)
          to label %.noexc3.i.i unwind label %bb.c, !noalias !647

.noexc3.i.i:                                      ; preds = %"_ZN4axum7routing11path_router23PathRouter$LT$S$C$_$GT$10with_state28_$u7b$$u7b$closure$u7d$$u7d$17h7167dec8385db05aE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.r = load i64, ptr %i.a, align 8, !range !11, !alias.scope !654, !noalias !653, !noundef !3 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.q, label %bb.i

bb.i:                                             ; preds = %.noexc3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.r, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$axum..routing..method_routing..MethodRouter$GT$17h21622140a3c2f6a5E"(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.a)
          to label %bb.q unwind label %bb.c, !noalias !647

bb.k:                                             ; preds = %bb.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !656, !noalias !653 ; 5 uses
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !656, !noalias !653, !nonnull !3, !align !5, !noundef !3 ; 5 uses
  %i.t = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !invariant.load !3, !noalias !657 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i.i.i.i.i.i)
          to label %bb.m unwind label %bb.o, !noalias !657

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !3, !noalias !657 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !13, !invariant.load !3, !noalias !657 ; 2 uses
  %i.y = icmp ult i64 %i.x, -9223372036854775807
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.x) #49, !noalias !657
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !12, !invariant.load !3, !noalias !657 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !13, !invariant.load !3, !noalias !657 ; 2 uses
  %i.af = icmp ult i64 %i.ae, -9223372036854775807
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %.body.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #49, !noalias !657
  br label %.body.i.i

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.j, %.noexc3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !648
  br label %bb.b

bb.r:                                             ; preds = %.body.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !647
  unreachable

"_ZN4core3ptr181drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$RP$$GT$$GT$17h69b6bb93ddc24a9dE.exit.i.i": ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hba8057a3d58e2a21E.exit": ; preds = %bb.d
  call void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bae05e07c46b566E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f), !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4a68d7c15b635fb2E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9d615c42e7deddb1E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 144
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.01.0.i.i ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 120
  %.val10.i.i = load ptr, ptr %i.g, align 8, !noalias !662, !nonnull !3, !noundef !3
  %i.h = getelementptr i8, ptr %i.f, i64 128
  %.val11.i.i = load i64, ptr %i.h, align 8, !noalias !662, !noundef !3
  %i.i = tail call noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5d5f37a6a7ebf824E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val10.i.i, i64 noundef %.val11.i.i) ; 0 uses
  %i.j = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9d615c42e7deddb1E.exit", label %bb.c

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9d615c42e7deddb1E.exit": ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4ee6d2f69f1b82d6E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7ac6e771ef9b517bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep3 = getelementptr i8, ptr %i.g, i64 %i.d
  %bound0 = icmp ult ptr %0, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %1
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !alias.scope !683, !noalias !684
  %wide.load4 = load <4 x i32>, ptr %i.k, align 4, !alias.scope !683, !noalias !684
  store <4 x i32> zeroinitializer, ptr %i.j, align 4, !alias.scope !683, !noalias !684
  store <4 x i32> zeroinitializer, ptr %i.k, align 4, !alias.scope !683, !noalias !684
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %wide.load, ptr %i.l, align 4, !alias.scope !685, !noalias !686
  store <4 x i32> %wide.load4, ptr %i.m, align 4, !alias.scope !685, !noalias !686
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7ac6e771ef9b517bE.exit", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.o = and i64 %i.d, 4
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.q = load i32, ptr %i.p, align 4, !range !20, !alias.scope !687, !noalias !688, !noundef !3
  store i32 0, ptr %i.p, align 4, !alias.scope !687, !noalias !688
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i32 %i.q, ptr %i.r, align 4, !noalias !686
  %i.s = add i64 %.ph, 1                          ; 2 uses
  %i.t = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = icmp eq i64 %i.e, %.neg
  br i1 %i.u, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7ac6e771ef9b517bE.exit", label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.v = phi i64 [ %i.ae, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.af, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.x = load i32, ptr %i.w, align 4, !range !20, !alias.scope !687, !noalias !688, !noundef !3
  store i32 0, ptr %i.w, align 4, !alias.scope !687, !noalias !688
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i32 %i.x, ptr %i.y, align 4, !noalias !686
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.ab = load i32, ptr %i.aa, align 4, !range !20, !alias.scope !690, !noalias !688, !noundef !3
  store i32 0, ptr %i.aa, align 4, !alias.scope !690, !noalias !688
  %i.ac = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  store i32 %i.ab, ptr %i.ad, align 4, !noalias !691
  %i.ae = add i64 %i.v, 2                         ; 2 uses
  %i.af = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.e
  br i1 %i.ag, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7ac6e771ef9b517bE.exit", label %scalar.ph, !llvm.loop !681

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7ac6e771ef9b517bE.exit": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ae, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !692
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4fca23dfa112146cE"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hec7bd355aae9cb0aE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.val15.i = phi i64 [ %i.p, %bb.h ], [ %.sroa.6.0.copyload, %bb.b ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.q, %bb.h ], [ 0, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !711
  store i64 0, ptr %i.c, align 8, !noalias !711
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !711
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !711
  store i32 -536870880, ptr %i.j, align 8, !noalias !711
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !711
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 2, !noalias !711
  store ptr %i.c, ptr %i.b, align 8, !noalias !711
  store ptr @53, ptr %i.k, align 8, !noalias !711
  %i.m = invoke noundef zeroext i1 @"_ZN80_$LT$anki..storage..card..ReviewOrderSubclause$u20$as$u20$core..fmt..Display$GT$3fmt17hec0e211e7671992cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %.loopexit.i, !noalias !712

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #46
          to label %bb.i unwind label %bb.g, !noalias !712

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.f, label %bb.h, !prof !7

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @54, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #47
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !712

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !712
  unreachable

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !711
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !714
  %i.p = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hec7bd355aae9cb0aE.exit", label %bb.c

bb.i:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !715
  resume { ptr, i32 } %lpad.phi.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hec7bd355aae9cb0aE.exit": ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !715
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h527cec97f1340fcfE"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hdd52ec6782c86f26E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h52964d961d8c21beE"(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9ad67bb37f95b97bE":bb.a

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i.loopexit.unr-lcssa": ; preds = %.preheader.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i", label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i.loopexit.unr-lcssa", %.preheader.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.at, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i.loopexit.unr-lcssa" ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.as, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod10 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.av, align 8, !alias.scope !1299, !noalias !1297, !noundef !3 ; 3 uses
  %i.aw = icmp sgt i64 %.val.i.i.i.i.i.i.epil, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = or i64 %.val.i.i.i.i.i.i.epil, 1
  %i.ay = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = xor i64 %i.ay, 63
  %i.ba = mul nuw nsw i64 %i.az, 9
  %i.bb = add nuw nsw i64 %i.ba, 73
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = add i64 %.val.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.i.i.epil.init
  %i.be = add i64 %i.bd, %i.bc
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i": ; preds = %.preheader.i.i.i.i.i.epil.preheader, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i.loopexit.unr-lcssa", %"_ZN4core6option15Option$LT$T$GT$6map_or17h030e630cf0cb108cE.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h030e630cf0cb108cE.exit.i.i.i.i" ], [ %i.as, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i.loopexit.unr-lcssa" ], [ %i.be, %.preheader.i.i.i.i.i.epil.preheader ]
  %i.bf = add i64 %i.u, %.sroa.02.0.i.i.i.i.i
  %i.bg = add i64 %i.bf, %.sroa.0.0.i.i.i.i.i.i   ; 2 uses
  %i.bh = or i64 %i.bg, 1
  %i.bi = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bj = xor i64 %i.bi, 63
  %i.bk = mul nuw nsw i64 %i.bj, 9
  %i.bl = add nuw nsw i64 %i.bk, 73
  %i.bm = lshr i64 %i.bl, 6
  %i.bn = add i64 %i.bg, %.sroa.02.0.i
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.e
  br i1 %i.bq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h6bf2ac84dda11d3cE.exit", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h6bf2ac84dda11d3cE.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i", %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.bo, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5bc1c4f0bad6c911E.exit.i" ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9ae353aeea71339dE"(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h730b421975de40efE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 40
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h826a1d45d114c21cE.exit.i", %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.br, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h826a1d45d114c21cE.exit.i" ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %i.bq, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h826a1d45d114c21cE.exit.i" ]
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1311, !noundef !3 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = or i64 %i.h, 1
  %i.k = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = xor i64 %i.k, 63
  %i.m = mul nuw nsw i64 %i.l, 9
  %i.n = add nuw nsw i64 %i.m, 73
  %i.o = lshr i64 %i.n, 6
  %i.p = add nuw nsw i64 %i.o, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1311, !nonnull !3, !noundef !3 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1311, !noundef !3 ; 5 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h826a1d45d114c21cE.exit.i", label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.e
  %xtraiter = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.t, 1
  br i1 %i.v, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.preheader.new:               ; preds = %.preheader.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.t, -2
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.an, %.preheader.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.am, %.preheader.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.04.0.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1312, !noalias !1311, !noundef !3
  %i.x = or i64 %.val.i.i.i.i.i.i, 1
  %i.y = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = xor i64 %i.y, 63
  %i.aa = mul nuw nsw i64 %i.z, 9
  %i.ab = add nuw nsw i64 %i.aa, 73
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = add i64 %i.ac, %.sroa.02.0.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val.i.i.i.i.i.i.1 = load i64, ptr %i.af, align 8, !alias.scope !1312, !noalias !1311, !noundef !3
  %i.ag = or i64 %.val.i.i.i.i.i.i.1, 1
  %i.ah = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = xor i64 %i.ah, 63
  %i.aj = mul nuw nsw i64 %i.ai, 9
  %i.ak = add nuw nsw i64 %i.aj, 73
  %i.al = lshr i64 %i.ak, 6
  %i.am = add i64 %i.al, %i.ad                    ; 3 uses
  %i.an = add nuw i64 %.sroa.04.0.i.i.i.i.i.i, 2  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i.unr-lcssa", label %.preheader.i.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i.unr-lcssa": ; preds = %.preheader.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i", label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i.unr-lcssa", %.preheader.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.an, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i.unr-lcssa" ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i.unr-lcssa" ]
  %lcmp.mod11 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.ao, align 8, !alias.scope !1312, !noalias !1311, !noundef !3
  %i.ap = or i64 %.val.i.i.i.i.i.i.epil, 1
  %i.aq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %i.ar = xor i64 %i.aq, 63
  %i.as = mul nuw nsw i64 %i.ar, 9
  %i.at = add nuw nsw i64 %i.as, 73
  %i.au = lshr i64 %i.at, 6
  %i.av = add i64 %i.au, %.sroa.02.0.i.i.i.i.i.i.epil.init
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i.unr-lcssa", %.preheader.i.i.i.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i.unr-lcssa" ], [ %i.av, %.preheader.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.aw = or i64 %.lcssa, 1
  %i.ax = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = xor i64 %i.ax, 63
  %i.az = mul nuw nsw i64 %i.ay, 9
  %i.ba = add nuw nsw i64 %i.az, 73
  %i.bb = lshr i64 %i.ba, 6
  %i.bc = add i64 %.lcssa, 1
  %i.bd = add i64 %i.bc, %i.bb
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h826a1d45d114c21cE.exit.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h826a1d45d114c21cE.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i", %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.bd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.i.i.i" ], [ 0, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bf = load i8, ptr %i.be, align 8, !range !22, !alias.scope !1311, !noundef !3
  %i.bg = shl nuw nsw i8 %i.bf, 1
  %spec.select.i.i.i.i = zext nneg i8 %i.bg to i64
  %i.bh = add i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i
  %i.bi = add i64 %i.bh, %spec.select.i.i.i.i     ; 2 uses
  %i.bj = or i64 %i.bi, 1
  %i.bk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bj, i1 true)
  %i.bl = xor i64 %i.bk, 63
  %i.bm = mul nuw nsw i64 %i.bl, 9
  %i.bn = add nuw nsw i64 %i.bm, 73
  %i.bo = lshr i64 %i.bn, 6
  %i.bp = add i64 %i.bi, %.sroa.02.0.i
  %i.bq = add i64 %i.bp, %i.bo                    ; 2 uses
  %i.br = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.e
  br i1 %i.bs, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h730b421975de40efE.exit", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h730b421975de40efE.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h826a1d45d114c21cE.exit.i", %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.bq, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h826a1d45d114c21cE.exit.i" ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9cb8c973f3cd5a37E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha7e68b2e014664bcE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %0, %scevgep3
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <2 x i64>, ptr %i.j, align 8, !alias.scope !1327, !noalias !1328
  %wide.load4 = load <2 x i64>, ptr %i.k, align 8, !alias.scope !1327, !noalias !1328
  %i.l = trunc <2 x i64> %wide.load to <2 x i32>
  %i.m = trunc <2 x i64> %wide.load4 to <2 x i32>
  %i.n = getelementptr [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <2 x i32> %i.l, ptr %i.n, align 4, !alias.scope !1329, !noalias !1330
  store <2 x i32> %i.m, ptr %i.o, align 4, !alias.scope !1329, !noalias !1330
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1324

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha7e68b2e014664bcE.exit", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.q = phi i64 [ %i.u, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.v, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load i64, ptr %i.r, align 8, !noalias !1328, !noundef !3
  %i.s = trunc i64 %.val16.i.prol to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.q
  store i32 %i.s, ptr %i.t, align 4, !noalias !1331
  %i.u = add i64 %i.q, 1                          ; 3 uses
  %i.v = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1325

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha7e68b2e014664bcE.exit", label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.y = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i64, ptr %i.z, align 8, !noalias !1328, !noundef !3
  %i.aa = trunc i64 %.val16.i to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  store i32 %i.aa, ptr %i.ab, align 4, !noalias !1331
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val16.i.1 = load i64, ptr %i.ad, align 8, !noalias !1328, !noundef !3
  %i.ae = trunc i64 %.val16.i.1 to i32
  %i.af = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  store i32 %i.ae, ptr %i.ag, align 4, !noalias !1331
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val16.i.2 = load i64, ptr %i.ai, align 8, !noalias !1328, !noundef !3
  %i.aj = trunc i64 %.val16.i.2 to i32
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store i32 %i.aj, ptr %i.al, align 4, !noalias !1331
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val16.i.3 = load i64, ptr %i.an, align 8, !noalias !1328, !noundef !3
  %i.ao = trunc i64 %.val16.i.3 to i32
  %i.ap = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  store i32 %i.ao, ptr %i.aq, align 4, !noalias !1331
  %i.ar = add i64 %i.y, 4                         ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha7e68b2e014664bcE.exit", label %scalar.ph, !llvm.loop !1326

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha7e68b2e014664bcE.exit": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1328
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9d2f1206af5aa0d2E"(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h67627e5ab4cc30c2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 72
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h13b351622e81e484E.exit.i", %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.ck, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h13b351622e81e484E.exit.i" ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %i.cj, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h13b351622e81e484E.exit.i" ]
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.04.0.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.g = load i64, ptr %i.f, align 8, !range !23, !alias.scope !1353, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, -9223372036854775807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  br i1 %.not.i.i.i.i, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h13b351622e81e484E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.g, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1359, !noundef !3 ; 4 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i64 %.val2.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = or i64 %.val2.i.i.i.i.i.i.i.i.i, 1
  %i.k = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = xor i64 %i.k, 63
  %i.m = mul nuw nsw i64 %i.l, 9
  %i.n = add nuw nsw i64 %i.m, 73
  %i.o = lshr i64 %i.n, 6
  %i.p = add nuw i64 %.val2.i.i.i.i.i.i.i.i.i, 1
  %i.q = add nuw i64 %i.p, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !1359, !noundef !3 ; 4 uses
  %.not.i5.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i5.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = or i64 %.val.i.i.i.i.i.i.i.i.i, 1
  %i.u = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = xor i64 %i.u, 63
  %i.w = mul nuw nsw i64 %i.v, 9
  %i.x = add nuw nsw i64 %i.w, 73
  %i.y = lshr i64 %i.x, 6
  %i.z = add nuw i64 %.val.i.i.i.i.i.i.i.i.i, 1
  %i.aa = add nuw i64 %i.z, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1359, !nonnull !3, !noundef !3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1359, !noundef !3 ; 6 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN5prost8encoding7message11encoded_len17h65210d003c78d99bE.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.i
  %xtraiter = and i64 %i.ae, 1
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %.preheader.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new:     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ae, -2
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bd, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bc, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !1360, !noalias !1359, !noundef !3 ; 3 uses
  %i.aj = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aj)
end_hunk_1
begin_hunk_2_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha24d9b7817c9abf5E":bb.a
"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i.i.i.i"
  %i.al = icmp ne ptr %i.ac, %.sroa.7.0.copyload
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.an = load i8, ptr %i.ac, align 1, !noalias !1533, !noundef !3
  %i.ao = shl nuw nsw i32 %i.r, 18
  %i.ap = and i32 %i.ao, 1835008
  %i.aq = shl nuw nsw i32 %i.ah, 6
  %i.ar = and i8 %i.an, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  %i.au = or disjoint i32 %i.at, %i.ap
  br label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i.i.i.i", %bb.e, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i.i.i.i"
  %i.av = phi ptr [ %i.ac, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.t, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.n, %bb.e ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.au, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.aa, %bb.e ] ; 2 uses
  %i.aw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.aw)
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.ax, %i.l
  %i.az = add i64 %i.ay, %i.j                     ; 5 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i, label %bb.c [
    i32 12288, label %select.unfold.i.i.i.i
    i32 32, label %select.unfold.i.i.i.i
  ]

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e6c5d112f4a3529E.exit.i.i.i.i.i.i": ; preds = %bb.c
  %.not.i.i.i.i.i.i.i = icmp ne i64 %.sroa.4.0.copyload, %.pre.i.i.i1415.i.i.i.i
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.e, i1 true, i1 %.not.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h554769e2f9972526E.exit"

select.unfold.i.i.i.i:                            ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i", %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i", %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e6c5d112f4a3529E.exit.i.i.i.i.i.i"
  %i.ba = phi i64 [ %i.j, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e6c5d112f4a3529E.exit.i.i.i.i.i.i" ], [ %i.az, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i" ], [ %i.az, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i" ]
  %i.bb = phi ptr [ %i.k, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e6c5d112f4a3529E.exit.i.i.i.i.i.i" ], [ %i.av, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i" ], [ %i.av, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i" ]
  %.pre.i.i.i13.i.i.i.i = phi i64 [ %.pre.i.i.i1415.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e6c5d112f4a3529E.exit.i.i.i.i.i.i" ], [ %i.az, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i" ], [ %i.az, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i" ]
  %.pn24.i.i.i.i = phi i64 [ %.sroa.4.0.copyload, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e6c5d112f4a3529E.exit.i.i.i.i.i.i" ], [ %i.j, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i" ], [ %i.j, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h85fd5d74ddb378deE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.4.1.i.i.i.i.i.i = sub nuw i64 %.pn24.i.i.i.i, %.pre.i.i.i1415.i.i.i.i ; 4 uses
  %.sroa.0.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.pre.i.i.i1415.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.pn24.i.i.i.i, %.pre.i.i.i1415.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha172c09d234ded32E.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1534
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.sroa.4.1.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1535
  %i.bc = load i64, ptr %i.c, align 8, !range !14, !noalias !1534, !noundef !3
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = load i64, ptr %i.f, align 8, !range !6, !noalias !1534, !noundef !3 ; 3 uses
  br i1 %i.bd, label %bb.g, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d9ed5eff258b2c4E.exit.i.i.i.i.i", !prof !7

bb.g:                                             ; preds = %bb.f
  %i.bf = load i64, ptr %i.g, align 8, !noalias !1534
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.be, i64 %i.bf) #47, !noalias !1535
  unreachable

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d9ed5eff258b2c4E.exit.i.i.i.i.i": ; preds = %bb.f
  %i.bg = load ptr, ptr %i.g, align 8, !noalias !1534, !nonnull !3, !noundef !3 ; 2 uses
  %i.bh = icmp ule i64 %.sroa.4.1.i.i.i.i.i.i, %i.be
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1534
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %.sroa.0.1.i.i.i.i.i.i, i64 %.sroa.4.1.i.i.i.i.i.i, i1 false), !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1537
  store i64 %i.be, ptr %i.b, align 8, !noalias !1538
  store ptr %i.bg, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1538
  store i64 %.sroa.4.1.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1539
  call void @"_ZN7unicase16UniCase$LT$S$GT$3new17hdbc055ce15bb1c54E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1537
  %i.bi = call noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hd7dba6151ee5fe09E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !1541 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1539
  br label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha172c09d234ded32E.exit.i.i.i.i"

"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha172c09d234ded32E.exit.i.i.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d9ed5eff258b2c4E.exit.i.i.i.i.i", %select.unfold.i.i.i.i
  br i1 %i.m, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h554769e2f9972526E.exit", label %bb.b

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h554769e2f9972526E.exit": ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h3e6c5d112f4a3529E.exit.i.i.i.i.i.i", %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha172c09d234ded32E.exit.i.i.i.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha4a49f0028201af4E"(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  %.val5.i = add i64 %.sroa.4.0.copyload, %i.a
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1544
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha6b2b048901af1a5E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 2                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387902
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.r, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i32, ptr %i.h, align 4, !noalias !1553, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp ne i32 %.val16.i, 0
  %i.i = zext i32 %.val16.i to i64
  %.sroa.0.0.i.i.i = zext i1 %.not.i.i.i to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.j, align 8, !noalias !1554
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.i, ptr %i.k, align 8, !noalias !1554
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.val16.i.1 = load i32, ptr %i.m, align 4, !noalias !1553, !noundef !3 ; 2 uses
  %.not.i.i.i.1 = icmp ne i32 %.val16.i.1, 0
  %i.n = zext i32 %.val16.i.1 to i64
  %.sroa.0.0.i.i.i.1 = zext i1 %.not.i.i.i.1 to i64
  %i.o = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i64 %.sroa.0.0.i.i.i.1, ptr %i.p, align 8, !noalias !1554
  %i.q = getelementptr i8, ptr %i.o, i64 24
  store i64 %i.n, ptr %i.q, align 8, !noalias !1554
  %i.r = add i64 %i.g, 2                          ; 3 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit.loopexit.unr-lcssa", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit.loopexit.unr-lcssa": ; preds = %bb.c
  %i.t = and i64 %i.d, 4
  %lcmp.mod.not = icmp eq i64 %i.t, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit.loopexit.unr-lcssa", %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.s, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i32, ptr %i.u, align 4, !noalias !1553, !noundef !3 ; 2 uses
  %.not.i.i.i.epil = icmp ne i32 %.val16.i.epil, 0
  %i.v = zext i32 %.val16.i.epil to i64
  %.sroa.0.0.i.i.i.epil = zext i1 %.not.i.i.i.epil to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store i64 %.sroa.0.0.i.i.i.epil, ptr %i.w, align 8, !noalias !1554
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.v, ptr %i.x, align 8, !noalias !1554
  %i.y = add i64 %.epil.init, 1
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit": ; preds = %.epil.preheader, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit.loopexit.unr-lcssa", %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h817d34f08a2b9ab8E.exit.loopexit.unr-lcssa" ], [ %i.y, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1553
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha71d3ee06380152aE"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h3ef620541b8fe718E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha9eb16f8c9b7bfa9E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb6c0a89c44dcbe85E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %0, %scevgep3
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <2 x i64>, ptr %i.j, align 8, !alias.scope !1569, !noalias !1570
  %wide.load4 = load <2 x i64>, ptr %i.k, align 8, !alias.scope !1569, !noalias !1570
  %i.l = trunc <2 x i64> %wide.load to <2 x i32>
  %i.m = trunc <2 x i64> %wide.load4 to <2 x i32>
  %i.n = getelementptr [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <2 x i32> %i.l, ptr %i.n, align 4, !alias.scope !1571, !noalias !1572
  store <2 x i32> %i.m, ptr %i.o, align 4, !alias.scope !1571, !noalias !1572
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1566

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb6c0a89c44dcbe85E.exit", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.q = phi i64 [ %i.u, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.v, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load i64, ptr %i.r, align 8, !noalias !1570, !noundef !3
  %i.s = trunc i64 %.val16.i.prol to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.q
  store i32 %i.s, ptr %i.t, align 4, !noalias !1573
  %i.u = add i64 %i.q, 1                          ; 3 uses
  %i.v = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1567

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb6c0a89c44dcbe85E.exit", label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.y = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i64, ptr %i.z, align 8, !noalias !1570, !noundef !3
  %i.aa = trunc i64 %.val16.i to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  store i32 %i.aa, ptr %i.ab, align 4, !noalias !1573
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val16.i.1 = load i64, ptr %i.ad, align 8, !noalias !1570, !noundef !3
  %i.ae = trunc i64 %.val16.i.1 to i32
  %i.af = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  store i32 %i.ae, ptr %i.ag, align 4, !noalias !1573
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val16.i.2 = load i64, ptr %i.ai, align 8, !noalias !1570, !noundef !3
  %i.aj = trunc i64 %.val16.i.2 to i32
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store i32 %i.aj, ptr %i.al, align 4, !noalias !1573
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val16.i.3 = load i64, ptr %i.an, align 8, !noalias !1570, !noundef !3
  %i.ao = trunc i64 %.val16.i.3 to i32
  %i.ap = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  store i32 %i.ao, ptr %i.aq, align 4, !noalias !1573
  %i.ar = add i64 %i.y, 4                         ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb6c0a89c44dcbe85E.exit", label %scalar.ph, !llvm.loop !1568

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb6c0a89c44dcbe85E.exit": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1570
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17had8f0f6202caeb59E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc7105e8bb403b972E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hada0e49a4d5ec210E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hdf5efe881deef188E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 72
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf8c898384cc5cd8cE.exit.i", %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.r, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf8c898384cc5cd8cE.exit.i" ] ; 2 uses
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1582
  call void @_ZN4anki6search6writer10write_node17h30c7bf3b7a7a23aeE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1584
  call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !1585, !noalias !1583, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = load i64, ptr %i.i, align 8, !alias.scope !1585, !noalias !1583, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m)
          to label %bb.e unwind label %bb.d, !noalias !1586

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #46
          to label %common.resume.i.i.i.i unwind label %bb.h, !noalias !1587

bb.e:                                             ; preds = %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf8c898384cc5cd8cE.exit.i" unwind label %bb.f, !noalias !1587

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i.i unwind label %bb.g, !noalias !1587

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !1587
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.f, %bb.d
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.n, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !1587
  unreachable

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf8c898384cc5cd8cE.exit.i": ; preds = %bb.e
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1582
  %i.r = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.g
  br i1 %i.s, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hdf5efe881deef188E.exit", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hdf5efe881deef188E.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf8c898384cc5cd8cE.exit.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hae6111acfcaf7219E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfca88ba4ee28d9aeE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1f016d193c0a7e8fE.exit" unwind label %bb.b

end_hunk_2
begin_hunk_3_@_ZN10anki_proto6search10sort_order5Value5merge17he41bf539ec4fc3bcE:bb.a

bb.z:                                             ; preds = %bb.y
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.thread45 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable

"_ZN4core3ptr60drop_in_place$LT$anki_proto..search..sort_order..Builtin$GT$17h881cb3a8f2b046ceE.exit.i": ; preds = %bb.y
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %"_ZN4core3ptr130drop_in_place$LT$anki_proto..search..sort_order..Value..merge$LT$$RF$mut$u20$$RF$$u5b$u8$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haacb4247541f8c58E.exit"

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$anki_proto..search..sort_order..Value$GT$$GT$17hdde81d36d175cfa0E"(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.ac unwind label %.thread50

.thread50:                                        ; preds = %bb.ab
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %.thread45

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core3ptr130drop_in_place$LT$anki_proto..search..sort_order..Value..merge$LT$$RF$mut$u20$$RF$$u5b$u8$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haacb4247541f8c58E.exit"

"_ZN4core3ptr130drop_in_place$LT$anki_proto..search..sort_order..Value..merge$LT$$RF$mut$u20$$RF$$u5b$u8$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haacb4247541f8c58E.exit": ; preds = %"_ZN4core3ptr60drop_in_place$LT$anki_proto..search..sort_order..Builtin$GT$17h881cb3a8f2b046ceE.exit.i", %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.ad:                                            ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$anki_proto..search..sort_order..Builtin$GT$17h881cb3a8f2b046ceE"(ptr noalias noundef align 8 dereferenceable(32) %i.e) #46
          to label %.thread45 unwind label %bb.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 329406144173384851) i64 @"_ZN113_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h4168f07261be828fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 56
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 329406144173384851) i64 @"_ZN113_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hc69f61a348d58911E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 56
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 1114112) i32 @"_ZN121_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17h32b4c24e6570a49eE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3033, !noundef !3
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !3033
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN121_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17h3b94bb1dad519703E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !3050, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %0, align 8, !alias.scope !3050
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3053, !nonnull !3, !align !5, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3053
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3055, !noalias !3056, !noundef !3
  %.not.i8.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i.i.i, label %.loopexit.i.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hffcacbda111a4064E.exit.lr.ph.i.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hffcacbda111a4064E.exit.lr.ph.i.i.i": ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hffcacbda111a4064E.exit.i.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hffcacbda111a4064E.exit.i.i.i": ; preds = %bb.b, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hffcacbda111a4064E.exit.lr.ph.i.i.i"
  call void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha2bab6006658d197E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f), !noalias !3057
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !3058
  switch i64 %.pr.i.i.i, label %bb.c [
    i64 2, label %.loopexit.i.i
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hffcacbda111a4064E.exit.i.i.i"
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !3059, !noalias !3060, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hffcacbda111a4064E.exit.i.i.i"

bb.c:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hffcacbda111a4064E.exit.i.i.i"
  %.sroa.5.8.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !3061 ; 8 uses
  %.sroa.7.8..sroa.2.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.8.copyload.i.i = load i64, ptr %.sroa.7.8..sroa.2.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !3061 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3053
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3053, !nonnull !3, !align !10, !noundef !3 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3053, !noundef !3 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %.sroa.5.8.copyload.i.i, %.sroa.7.8.copyload.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %.sroa.5.8.copyload.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not5.i.i.i = icmp ult i64 %.sroa.5.8.copyload.i.i, %i.l
  br i1 %.not5.i.i.i, label %bb.g, label %.split.i.i.i

bb.f:                                             ; preds = %bb.g, %.split.i.i.i, %bb.d
  %i.n = icmp eq i64 %.sroa.7.8.copyload.i.i, 0
  br i1 %i.n, label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_128_$u7b$$u7b$closure$u7d$$u7d$17h4317ef5204fcf980E.exit", label %bb.h

.split.i.i.i:                                     ; preds = %bb.e
  %i.o = icmp eq i64 %.sroa.5.8.copyload.i.i, %i.l
  br i1 %i.o, label %bb.f, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.5.8.copyload.i.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !3062, !noalias !3053, !noundef !3
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.f, label %bb.j

bb.h:                                             ; preds = %bb.f
  %.not6.i.i.i = icmp ult i64 %.sroa.7.8.copyload.i.i, %i.l
  br i1 %.not6.i.i.i, label %bb.i, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.h
  %i.s = icmp eq i64 %.sroa.7.8.copyload.i.i, %i.l
  br i1 %i.s, label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_128_$u7b$$u7b$closure$u7d$$u7d$17h4317ef5204fcf980E.exit", label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.7.8.copyload.i.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !3062, !noalias !3053, !noundef !3
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_128_$u7b$$u7b$closure$u7d$$u7d$17h4317ef5204fcf980E.exit", label %bb.j

.loopexit.i.i:                                    ; preds = %bb.b, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hffcacbda111a4064E.exit.i.i.i", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3053
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #47, !noalias !3053
  unreachable

bb.j:                                             ; preds = %bb.i, %.split7.i.i.i, %bb.g, %.split.i.i.i, %bb.c
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %.sroa.5.8.copyload.i.i, i64 noundef %.sroa.7.8.copyload.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #47, !noalias !3053
  unreachable

"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_128_$u7b$$u7b$closure$u7d$$u7d$17h4317ef5204fcf980E.exit": ; preds = %bb.f, %.split7.i.i.i, %bb.i
  %i.w = sub nuw i64 %.sroa.7.8.copyload.i.i, %.sroa.5.8.copyload.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.5.8.copyload.i.i
  %i.y = insertvalue { ptr, i64 } poison, ptr %i.x, 0
  %i.z = insertvalue { ptr, i64 } %i.y, i64 %i.w, 1
  ret { ptr, i64 } %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef range(i8 0, 3) i8 @"_ZN121_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17hc7fcfdd592a0b995E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #16 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3065, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.b, ptr %0, align 8, !alias.scope !3065
  %i.c = load float, ptr %i.a, align 4, !noalias !3065, !noundef !3 ; 2 uses
  %i.d = fcmp oeq float %i.c, 1.000000e+00
  %i.e = fcmp une float %i.c, 0.000000e+00
  %..i.i.i = zext i1 %i.e to i8
  %.sroa.0.0.i.i.i = select i1 %i.d, i8 2, i8 %..i.i.i
  ret i8 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef { i8, i32 } @"_ZN121_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17heb542b5df68a0897E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3068, !noundef !3
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !3068
  ret { i8, i32 } zeroinitializer
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @"_ZN122_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusion$u20$as$u20$prost..message..Message$GT$11encoded_len17haf2597f3e218ee44E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN5prost8encoding7message20encoded_len_repeated17h7abed909c72c45dfE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60f1983ef717f3feE.exit.i.i.i"
  %.sroa.04.0.i.i.i = phi i64 [ %i.bl, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60f1983ef717f3feE.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.bk, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60f1983ef717f3feE.exit.i.i.i" ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.04.0.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3082)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !3083, !noundef !3 ; 4 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = icmp sgt i64 %.val.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = or i64 %.val.i.i.i.i.i.i, 1
  %i.j = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = mul nuw nsw i64 %i.k, 9
  %i.m = add nuw nsw i64 %i.l, 73
  %i.n = lshr i64 %i.m, 6
  %i.o = add nuw i64 %.val.i.i.i.i.i.i, 1
  %i.p = add nuw i64 %i.o, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.p, %bb.b ], [ 0, %.preheader.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3083, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !3083, !noundef !3 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60f1983ef717f3feE.exit.i.i.i", label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.c, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.c ]
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !3084, !noalias !3083, !noundef !3 ; 4 uses
  %i.x = getelementptr i8, ptr %i.v, i64 40
  %.val13.i.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !3084, !noalias !3083 ; 4 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %i.y = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = or i64 %.val.i.i.i.i.i.i.i.i.i, 1
  %i.aa = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = xor i64 %i.aa, 63
  %i.ac = mul nuw nsw i64 %i.ab, 9
  %i.ad = add nuw nsw i64 %i.ac, 73
  %i.ae = lshr i64 %i.ad, 6
  %i.af = add nuw i64 %.val.i.i.i.i.i.i.i.i.i, 1
  %i.ag = add nuw i64 %i.af, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i.i ]
  %.not.i5.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val13.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i5.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp sgt i64 %.val13.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = or i64 %.val13.i.i.i.i.i.i.i.i.i, 1
  %i.aj = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = xor i64 %i.aj, 63
  %i.al = mul nuw nsw i64 %i.ak, 9
  %i.am = add nuw nsw i64 %i.al, 73
  %i.an = lshr i64 %i.am, 6
  %i.ao = add nuw i64 %.val13.i.i.i.i.i.i.i.i.i, 1
  %i.ap = add nuw i64 %i.ao, %i.an
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.f ], [ 0, %bb.e ]
  %i.aq = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ar = or i64 %i.aq, 1
  %i.as = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = xor i64 %i.as, 63
  %i.au = mul nuw nsw i64 %i.at, 9
  %i.av = add nuw nsw i64 %i.au, 73
  %i.aw = lshr i64 %i.av, 6
  %i.ax = add i64 %i.aq, %.sroa.02.0.i.i.i.i.i.i.i.i.i
  %i.ay = add i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.t
  br i1 %i.ba, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60f1983ef717f3feE.exit.i.i.i", label %.preheader.i.i.i.i.i.i.i

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60f1983ef717f3feE.exit.i.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i", %bb.c
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ay, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i" ]
  %i.bb = add i64 %i.t, %.sroa.0.0.i.i.i.i.i.i
  %i.bc = add i64 %i.bb, %.sroa.0.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bd = or i64 %i.bc, 1
  %i.be = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  %i.bf = xor i64 %i.be, 63
  %i.bg = mul nuw nsw i64 %i.bf, 9
  %i.bh = add nuw nsw i64 %i.bg, 73
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = add i64 %i.bc, %.sroa.02.0.i.i.i
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %i.d
  br i1 %i.bm, label %_ZN5prost8encoding7message20encoded_len_repeated17h7abed909c72c45dfE.exit, label %.preheader.i

_ZN5prost8encoding7message20encoded_len_repeated17h7abed909c72c45dfE.exit: ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60f1983ef717f3feE.exit.i.i.i", %bb.a
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.bk, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60f1983ef717f3feE.exit.i.i.i" ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !noundef !3 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5prost8encoding7message20encoded_len_repeated17h7abed909c72c45dfE.exit
  %i.bq = or i32 %i.bo, 1
  %i.br = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true)
  %i.bs = xor i32 %i.br, 31
  %i.bt = mul nuw nsw i32 %i.bs, 9
  %i.bu = add nuw nsw i32 %i.bt, 73
  %i.bv = lshr i32 %i.bu, 6
  %narrow.i = add nuw nsw i32 %i.bv, 1
  %i.bw = zext nneg i32 %narrow.i to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN5prost8encoding7message20encoded_len_repeated17h7abed909c72c45dfE.exit, %bb.g
  %.sroa.0.0 = phi i64 [ %i.bw, %bb.g ], [ 0, %_ZN5prost8encoding7message20encoded_len_repeated17h7abed909c72c45dfE.exit ]
  %i.bx = add i64 %.sroa.0.0.i.i.i, %i.d
  %i.by = add i64 %i.bx, %.sroa.0.0
  ret i64 %i.by
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @"_ZN126_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionNote$u20$as$u20$prost..message..Message$GT$11encoded_len17h2f0840c885bde09fE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %i.b, 1
  %i.e = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw i64 %i.b, 1
  %i.l = add nuw i64 %i.k, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN5prost8encoding7message20encoded_len_repeated17haafeb79fbcd6b3c5E.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ab, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.aa, %.preheader.i ], [ 0, %bb.c ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.04.0.i.i.i
  %i.s = tail call fastcc noundef i64 @"_ZN122_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusion$u20$as$u20$prost..message..Message$GT$11encoded_len17haf2597f3e218ee44E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) ; 2 uses
  %i.t = or i64 %i.s, 1
  %i.u = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = xor i64 %i.u, 63
  %i.w = mul nuw nsw i64 %i.v, 9
  %i.x = add nuw nsw i64 %i.w, 73
  %i.y = lshr i64 %i.x, 6
  %i.z = add i64 %i.s, %.sroa.02.0.i.i.i
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  %i.ab = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.p
  br i1 %i.ac, label %_ZN5prost8encoding7message20encoded_len_repeated17haafeb79fbcd6b3c5E.exit, label %.preheader.i

_ZN5prost8encoding7message20encoded_len_repeated17haafeb79fbcd6b3c5E.exit: ; preds = %.preheader.i, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aa, %.preheader.i ]
end_hunk_3
